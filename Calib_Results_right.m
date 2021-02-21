% Intrinsic and Extrinsic Camera Parameters
%
% This script file can be directly executed under Matlab to recover the camera intrinsic and extrinsic parameters.
% IMPORTANT: This file contains neither the structure of the calibration objects nor the image coordinates of the calibration points.
%            All those complementary variables are saved in the complete matlab data file Calib_Results.mat.
% For more information regarding the calibration model visit http://www.vision.caltech.edu/bouguetj/calib_doc/


%-- Focal length:
fc = [ 562.254541726260640 ; 536.212604992101550 ];

%-- Principal point:
cc = [ 230.672270128398340 ; 261.583065556063900 ];

%-- Skew coefficient:
alpha_c = 0.000000000000000;

%-- Distortion coefficients:
kc = [ 0.359686114830487 ; -0.252357842072915 ; -0.001063560296754 ; -0.101265278364730 ; 0.000000000000000 ];

%-- Focal length uncertainty:
fc_error = [ 24.927141562117601 ; 17.326588014802166 ];

%-- Principal point uncertainty:
cc_error = [ 24.527759944489876 ; 9.420826185276177 ];

%-- Skew coefficient uncertainty:
alpha_c_error = 0.000000000000000;

%-- Distortion coefficients uncertainty:
kc_error = [ 0.106733297349783 ; 0.146117422891739 ; 0.006307771745686 ; 0.023514207359075 ; 0.000000000000000 ];

%-- Image size:
nx = 640;
ny = 480;


%-- Various other variables (may be ignored if you do not use the Matlab Calibration Toolbox):
%-- Those variables are used to control which intrinsic parameters should be optimized

n_ima = 20;						% Number of calibration images
est_fc = [ 1 ; 1 ];					% Estimation indicator of the two focal variables
est_aspect_ratio = 1;				% Estimation indicator of the aspect ratio fc(2)/fc(1)
center_optim = 1;					% Estimation indicator of the principal point
est_alpha = 0;						% Estimation indicator of the skew coefficient
est_dist = [ 1 ; 1 ; 1 ; 1 ; 0 ];	% Estimation indicator of the distortion coefficients


%-- Extrinsic parameters:
%-- The rotation (omc_kk) and the translation (Tc_kk) vectors for every calibration image and their uncertainties

%-- Image #1:
omc_1 = [ -1.961243e+00 ; -1.928597e+00 ; 8.190033e-01 ];
Tc_1  = [ 7.523160e+01 ; -2.096160e+02 ; 1.543515e+03 ];
omc_error_1 = [ 3.316562e-02 ; 2.305573e-02 ; 3.742438e-02 ];
Tc_error_1  = [ 6.765323e+01 ; 2.703532e+01 ; 4.147806e+01 ];

%-- Image #2:
omc_2 = [ 2.188219e+00 ; 1.927910e+00 ; -9.894033e-01 ];
Tc_2  = [ 1.774874e+02 ; -1.851916e+02 ; 1.604914e+03 ];
omc_error_2 = [ 1.602874e-02 ; 2.134662e-02 ; 5.207396e-02 ];
Tc_error_2  = [ 7.068319e+01 ; 2.844103e+01 ; 4.369984e+01 ];

%-- Image #3:
omc_3 = [ NaN ; NaN ; NaN ];
Tc_3  = [ NaN ; NaN ; NaN ];
omc_error_3 = [ NaN ; NaN ; NaN ];
Tc_error_3  = [ NaN ; NaN ; NaN ];

%-- Image #4:
omc_4 = [ NaN ; NaN ; NaN ];
Tc_4  = [ NaN ; NaN ; NaN ];
omc_error_4 = [ NaN ; NaN ; NaN ];
Tc_error_4  = [ NaN ; NaN ; NaN ];

%-- Image #5:
omc_5 = [ -2.059878e+00 ; -1.334764e+00 ; 4.556610e-01 ];
Tc_5  = [ 2.491928e+02 ; -9.948085e+01 ; 1.780922e+03 ];
omc_error_5 = [ 2.287205e-02 ; 2.521498e-02 ; 4.490865e-02 ];
Tc_error_5  = [ 7.849694e+01 ; 3.207793e+01 ; 4.656944e+01 ];

%-- Image #6:
omc_6 = [ 2.164986e+00 ; 1.398203e+00 ; -1.025289e+00 ];
Tc_6  = [ 1.305634e+02 ; -4.995737e+00 ; 1.978275e+03 ];
omc_error_6 = [ 1.990938e-02 ; 2.153654e-02 ; 5.005141e-02 ];
Tc_error_6  = [ 8.711216e+01 ; 3.516257e+01 ; 5.432061e+01 ];

%-- Image #7:
omc_7 = [ -2.436616e+00 ; -1.901252e+00 ; 1.709996e-01 ];
Tc_7  = [ 2.147615e+02 ; -1.060124e+02 ; 1.866726e+03 ];
omc_error_7 = [ 3.069786e-02 ; 2.861944e-02 ; 7.428839e-02 ];
Tc_error_7  = [ 8.287979e+01 ; 3.356326e+01 ; 5.275309e+01 ];

%-- Image #8:
omc_8 = [ NaN ; NaN ; NaN ];
Tc_8  = [ NaN ; NaN ; NaN ];
omc_error_8 = [ NaN ; NaN ; NaN ];
Tc_error_8  = [ NaN ; NaN ; NaN ];

%-- Image #9:
omc_9 = [ -2.026397e+00 ; -2.023546e+00 ; 8.629052e-01 ];
Tc_9  = [ 6.289357e+02 ; -7.263160e+01 ; 2.205936e+03 ];
omc_error_9 = [ 3.147221e-02 ; 2.336334e-02 ; 5.112985e-02 ];
Tc_error_9  = [ 9.828940e+01 ; 4.080681e+01 ; 6.264263e+01 ];

%-- Image #10:
omc_10 = [ -2.075845e+00 ; -1.147160e+00 ; 5.953822e-01 ];
Tc_10  = [ 5.060493e+02 ; -2.050528e+02 ; 2.041908e+03 ];
omc_error_10 = [ 2.371644e-02 ; 2.279191e-02 ; 4.551586e-02 ];
Tc_error_10  = [ 9.066935e+01 ; 3.761311e+01 ; 5.326149e+01 ];

%-- Image #11:
omc_11 = [ NaN ; NaN ; NaN ];
Tc_11  = [ NaN ; NaN ; NaN ];
omc_error_11 = [ NaN ; NaN ; NaN ];
Tc_error_11  = [ NaN ; NaN ; NaN ];

%-- Image #12:
omc_12 = [ NaN ; NaN ; NaN ];
Tc_12  = [ NaN ; NaN ; NaN ];
omc_error_12 = [ NaN ; NaN ; NaN ];
Tc_error_12  = [ NaN ; NaN ; NaN ];

%-- Image #13:
omc_13 = [ -1.382722e+00 ; -1.818506e+00 ; 2.230350e-01 ];
Tc_13  = [ 5.430333e+02 ; -2.913904e+02 ; 2.005196e+03 ];
omc_error_13 = [ 1.569361e-02 ; 3.384568e-02 ; 3.332208e-02 ];
Tc_error_13  = [ 8.951147e+01 ; 3.717798e+01 ; 5.743785e+01 ];

%-- Image #14:
omc_14 = [ 1.897885e+00 ; 1.644874e+00 ; -1.215623e+00 ];
Tc_14  = [ 6.454488e+02 ; 1.192776e+02 ; 2.531665e+03 ];
omc_error_14 = [ 2.258815e-02 ; 2.320978e-02 ; 4.575946e-02 ];
Tc_error_14  = [ 1.122588e+02 ; 4.675088e+01 ; 7.052486e+01 ];

%-- Image #15:
omc_15 = [ -2.182259e+00 ; -7.742777e-01 ; 1.310728e+00 ];
Tc_15  = [ 9.070668e+02 ; 2.775752e+01 ; 2.757339e+03 ];
omc_error_15 = [ 3.288299e-02 ; 1.729125e-02 ; 4.062220e-02 ];
Tc_error_15  = [ 1.233881e+02 ; 5.147057e+01 ; 7.310901e+01 ];

%-- Image #16:
omc_16 = [ -1.988500e+00 ; -1.894997e+00 ; 7.477329e-01 ];
Tc_16  = [ 8.493658e+02 ; 3.943654e+00 ; 2.609499e+03 ];
omc_error_16 = [ 3.173426e-02 ; 3.601360e-02 ; 6.475087e-02 ];
Tc_error_16  = [ 1.172877e+02 ; 4.871094e+01 ; 7.521275e+01 ];

%-- Image #17:
omc_17 = [ -1.242766e+00 ; -1.846814e+00 ; 1.463820e-01 ];
Tc_17  = [ 9.040678e+02 ; -3.925029e+02 ; 2.516276e+03 ];
omc_error_17 = [ 1.401153e-02 ; 3.546024e-02 ; 3.440231e-02 ];
Tc_error_17  = [ 1.139040e+02 ; 4.761104e+01 ; 7.507067e+01 ];

%-- Image #18:
omc_18 = [ NaN ; NaN ; NaN ];
Tc_18  = [ NaN ; NaN ; NaN ];
omc_error_18 = [ NaN ; NaN ; NaN ];
Tc_error_18  = [ NaN ; NaN ; NaN ];

%-- Image #19:
omc_19 = [ -8.484883e-01 ; -1.732810e+00 ; 8.944567e-01 ];
Tc_19  = [ 1.169770e+03 ; -4.202705e+02 ; 2.884469e+03 ];
omc_error_19 = [ 2.377775e-02 ; 3.236835e-02 ; 2.387870e-02 ];
Tc_error_19  = [ 1.316450e+02 ; 5.481923e+01 ; 8.446644e+01 ];

%-- Image #20:
omc_20 = [ -9.610210e-01 ; -2.637919e+00 ; 1.287607e+00 ];
Tc_20  = [ 1.079309e+03 ; -3.138210e+02 ; 2.960927e+03 ];
omc_error_20 = [ 3.742290e-02 ; 2.959760e-02 ; 3.059213e-02 ];
Tc_error_20  = [ 1.315424e+02 ; 5.562500e+01 ; 8.595509e+01 ];

