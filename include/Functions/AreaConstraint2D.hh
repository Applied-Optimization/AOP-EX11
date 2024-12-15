#pragma once

#include <FunctionBase/FunctionBaseSparse.hh>

//== NAMESPACES ===================================================================

namespace AOPT {

    //== CLASS DEFINITION =========================================================
    class AreaConstraint2D : public FunctionBaseSparse {
    public:
        // Area constraint: 1/2*det(v_01 | V02) >= eps
        // f = -1/2*(x1 - x0)(y2 - y0) - (x2 - x0)(y1 - y0)) + eps <= 0
        // constructor
        AreaConstraint2D(const int _n, const int _idx0, const double _idx1, const double _idx2, const double _eps = 1e-10)
                : FunctionBaseSparse(), n_(_n), idx0_(_idx0), idx1_(_idx1), idx2_(_idx2), eps_(_eps) {}

        // number of unknowns
        inline virtual int n_unknowns() override { return n_; }

        // function evaluation
        // _x stores the coordinates of all nodes
        inline virtual double eval_f(const Vec &_x) override {
            //------------------------------------------------------//
            //Todo: implement the constraint function value
            
            double x0 = _x[2 * idx0_];
            double y0 = _x[2 * idx0_ + 1];
            double x1 = _x[2 * idx1_];
            double y1 = _x[2 * idx1_ + 1];
            double x2 = _x[2 * idx2_];
            double y2 = _x[2 * idx2_ + 1];

            return -0.5 * ((x1 - x0) * (y2 - y0) - (x2 - x0) * (y1 - y0)) + eps_;
            
            //------------------------------------------------------//
        }

        // gradient evaluation
        inline virtual void eval_gradient(const Vec &_x, Vec &_g) override {
            _g.setZero();  // Reset the gradient vector
        //------------------------------------------------------//

            double x0 = _x[2 * idx0_];
            double y0 = _x[2 * idx0_ + 1];
            double x1 = _x[2 * idx1_];
            double y1 = _x[2 * idx1_ + 1];
            double x2 = _x[2 * idx2_];
            double y2 = _x[2 * idx2_ + 1];

            _g[2 * idx0_]     = -0.5 * ((y1 - y2));
            _g[2 * idx0_ + 1] = -0.5 * ((x2 - x1));
            _g[2 * idx1_]     = -0.5 * ((y2 - y0));
            _g[2 * idx1_ + 1] = -0.5 * ((x0 - x2));
            _g[2 * idx2_]     = -0.5 * ((y0 - y1));
            _g[2 * idx2_ + 1] = -0.5 * ((x1 - x0));

        //------------------------------------------------------//
        }


        inline virtual void eval_hessian(const Vec &_x, SMat &_h) override {
        _h.setZero();  // Reset Hessian matrix
        //------------------------------------------------------//

        std::vector<T> triplets;  // To store non-zero elements for sparse matrix

        // Hessian contributions for idx0

        triplets.emplace_back(2 * idx0_, 2 * idx1_ + 1,  0.5);
        triplets.emplace_back(2 * idx0_, 2 * idx2_ + 1, -0.5);
        triplets.emplace_back(2 * idx0_ + 1, 2 * idx1_, -0.5);
        triplets.emplace_back(2 * idx0_ + 1, 2 * idx2_,  0.5);

        // Hessian contributions for idx1

        triplets.emplace_back(2 * idx1_, 2 * idx0_ + 1, -0.5);
        triplets.emplace_back(2 * idx1_ + 1, 2 * idx0_,  0.5);
        triplets.emplace_back(2 * idx1_, 2 * idx2_ + 1,  0.5);
        triplets.emplace_back(2 * idx1_ + 1, 2 * idx2_, -0.5);

        // Hessian contributions for idx2

        triplets.emplace_back(2 * idx2_, 2 * idx0_ + 1,  0.5);
        triplets.emplace_back(2 * idx2_ + 1, 2 * idx0_, -0.5);
        triplets.emplace_back(2 * idx2_, 2 * idx1_ + 1, -0.5);
        triplets.emplace_back(2 * idx2_ + 1, 2 * idx1_,  0.5);

        // Set the sparse matrix from the triplets
        _h.setFromTriplets(triplets.begin(), triplets.end());
    
        //------------------------------------------------------//
        }


    private:
        int n_;
        // index of the nodes
        int idx0_;
        int idx1_;
        int idx2_;

        double eps_;
    };

//=============================================================================
}






