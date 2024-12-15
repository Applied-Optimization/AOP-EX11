# CMake generated Testfile for 
# Source directory: /home/deepshukla/aopt-exercise11/aopt-exercise11/InteriorPoint
# Build directory: /home/deepshukla/aopt-exercise11/aopt-exercise11/build/InteriorPoint
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(AreaConstraint2D.CheckFunctions "/home/deepshukla/aopt-exercise11/aopt-exercise11/build/Build/bin/InteriorPoint-test" "--gtest_filter=AreaConstraint2D.CheckFunctions" "--gtest_color=yes")
set_tests_properties(AreaConstraint2D.CheckFunctions PROPERTIES  SKIP_REGULAR_EXPRESSION "\\[  SKIPPED \\]" _BACKTRACE_TRIPLES "/usr/share/cmake-3.28/Modules/GoogleTest.cmake;402;add_test;/home/deepshukla/aopt-exercise11/aopt-exercise11/InteriorPoint/CMakeLists.txt;29;gtest_add_tests;/home/deepshukla/aopt-exercise11/aopt-exercise11/InteriorPoint/CMakeLists.txt;0;")
add_test(InteriorPointProblem.CheckFunctions "/home/deepshukla/aopt-exercise11/aopt-exercise11/build/Build/bin/InteriorPoint-test" "--gtest_filter=InteriorPointProblem.CheckFunctions" "--gtest_color=yes")
set_tests_properties(InteriorPointProblem.CheckFunctions PROPERTIES  SKIP_REGULAR_EXPRESSION "\\[  SKIPPED \\]" _BACKTRACE_TRIPLES "/usr/share/cmake-3.28/Modules/GoogleTest.cmake;402;add_test;/home/deepshukla/aopt-exercise11/aopt-exercise11/InteriorPoint/CMakeLists.txt;29;gtest_add_tests;/home/deepshukla/aopt-exercise11/aopt-exercise11/InteriorPoint/CMakeLists.txt;0;")
add_test(InteriorPointMethod.CheckMinimum "/home/deepshukla/aopt-exercise11/aopt-exercise11/build/Build/bin/InteriorPoint-test" "--gtest_filter=InteriorPointMethod.CheckMinimum" "--gtest_color=yes")
set_tests_properties(InteriorPointMethod.CheckMinimum PROPERTIES  SKIP_REGULAR_EXPRESSION "\\[  SKIPPED \\]" _BACKTRACE_TRIPLES "/usr/share/cmake-3.28/Modules/GoogleTest.cmake;402;add_test;/home/deepshukla/aopt-exercise11/aopt-exercise11/InteriorPoint/CMakeLists.txt;29;gtest_add_tests;/home/deepshukla/aopt-exercise11/aopt-exercise11/InteriorPoint/CMakeLists.txt;0;")
