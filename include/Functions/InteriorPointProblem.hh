#pragma once


#include <FunctionBase/FunctionBaseSparse.hh>


//== NAMESPACES ===============================================================

namespace AOPT {

    //== CLASS DEFINITION =========================================================
    class InteriorPointProblem : public FunctionBaseSparse {
    public:
        // default constructor
        InteriorPointProblem(FunctionBaseSparse *_obj, const std::vector<FunctionBaseSparse *> &_constraints)
        : FunctionBaseSparse(), obj_(_obj), constraints_(_constraints), t_(1.0) {
            v_ = Vec(obj_->n_unknowns());
            M_ = SMat(obj_->n_unknowns(), obj_->n_unknowns());
            N_ = SMat(obj_->n_unknowns(), obj_->n_unknowns());
        }

        // defualt destructor
        virtual ~InteriorPointProblem() {};

        // access log-barrier parameter
        double &t() { return t_; }

        // number of unknowns
        virtual int n_unknowns() override { return obj_->n_unknowns(); }

        // function evaluation
        virtual double eval_f(const Vec &_x) override {
            //------------------------------------------------------//
            //TODO: add function value (objective function + barrier function)

            double f = obj_->eval_f(_x);

            // Add barrier terms for each constraint

            for (auto *constraint : constraints_) {
                double barrier = log_of_minus_function(constraint, _x);
                f -= (1.0 / t_) * barrier;
            }
            return f;
            
            //------------------------------------------------------//
        }

        // gradient evaluation
        virtual void eval_gradient(const Vec &_x, Vec &_g) override {
            //------------------------------------------------------//
            //TODO: add gradients (objective function + barrier function)
        
            // Compute objective function gradient

            obj_->eval_gradient(_x, _g);

            // Add barrier term gradients for each constraint

            Vec barrier_grad(_g.size());
            barrier_grad.setZero();
            for (auto *constraint : constraints_) {
                add_grad_of_log_of_function(constraint, _x, barrier_grad);
                _g -= (1.0 / t_) * barrier_grad;  // Subtract scaled barrier gradient
            }
            
            //------------------------------------------------------//
        }

        // hessian matrix evaluation
        virtual void eval_hessian(const Vec &_x, SMat &_H) override {
            //------------------------------------------------------//
            //TODO: add hessian matrices (objective function + barrier function)
            
            obj_->eval_hessian(_x, _H);

            // Add barrier term Hessians for each constraint

            Vec barrier_grad(_H.size());
                for (auto *constraint : constraints_) {
                SMat barrier_hessian;
                barrier_hessian.resize(_H.rows(), _H.cols());
                barrier_hessian.setZero();
                add_hess_of_log_of_function(constraint, _x, barrier_hessian);

                _H += (-1.0 / t_) * barrier_hessian;  // Add to the total Hessian
            }

            //------------------------------------------------------//
        }


    private:
        double log_of_minus_function(FunctionBaseSparse *_o, const Vec &_x) {
            auto f = _o->eval_f(_x);
            if (f >= 0) {
                std::cerr << "Warning: Function value is non-negative, barrier term undefined." << std::endl;
                return std::numeric_limits<double>::infinity();  // or handle the error gracefully
            }
            return log(-f);
        }

        void add_grad_of_log_of_function(FunctionBaseSparse *_o, const Vec &_x, Vec &_g) {
            v_.setZero();
            _o->eval_gradient(_x, v_);

            _g += 1.0 / _o->eval_f(_x) * v_;
        }

        void add_hess_of_log_of_function(FunctionBaseSparse *_o, const Vec &_x, SMat &_H) {
            // get f, grad, hess
            double d = _o->eval_f(_x);

            _o->eval_gradient(_x, v_);
            _o->eval_hessian(_x, M_);

            triplets_.clear();
            triplets_.reserve(v_.size() * v_.size());

            //N = v*v.transpose()
            N_.setZero();
            for(auto i=0u; i<v_.size(); ++i)
                if(v_[i] != 0) {
                    for(auto j=0u; j<v_.size(); ++j) {
                        if(v_[j] != 0) {
                            triplets_.emplace_back(i,j,v_[i]*v_[j]);
                        }
                    }
                }
            N_.setFromTriplets(triplets_.begin(), triplets_.end());
            _H += (1.0 / d) * M_ - (1.0 / (d * d)) * N_;
        }

    private:

        // objective function
        FunctionBaseSparse *obj_;

        // constraint functions
        std::vector<FunctionBaseSparse *> constraints_;

        // log barrier parameter
        double t_;


        // temp varibles
        Vec v_;
        SMat M_;
        SMat N_;
        std::vector<T> triplets_;
    };
    //=============================================================================

}