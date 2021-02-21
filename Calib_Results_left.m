% Intrinsic and Extrinsic Camera Parameters
%
% This script file can be directly executed under Matlab to recover the camera intrinsic and extrinsic parameters.
% IMPORTANT: This file contains neither the structure of the calibration objects nor the image coordinates of the calibration points.
%            All those complementary variables are saved in the complete matlab data file Calib_Results.mat.
% For more information regarding the calibration model visit http://www.vision.caltech.edu/bouguetj/calib_doc/


%-- Focal length:
fc = [ 574.276807728040010 ; 557.136687864597430 ];

%-- Principal point:
cc = [ 238.427082927314870 ; 245.733893045488630 ];

%-- Skew coefficient:
alpha_c = 0.000000000000000;

%-- Distortion coefficients:
kc = [ 0.300592096606064 ; -0.195178919597010 ; -0.013172690525756 ; -0.087957896296187 ; 0.000000000000000 ];

%-- Focal length uncertainty:
fc_error = [ 24.262832939804497 ; 21.721487805263973 ];

%-- Principal point uncertainty:
cc_error = [ 22.450316004951866 ; 8.764217436796253 ];

%-- Skew coefficient uncertainty:
alpha_c_error = 0.000000000000000;

%-- Distortion coefficients uncertainty:
kc_error = [ 0.130786458135640 ; 0.487573958145341 ; 0.009212070965191 ; 0.024463554532901 ; 0.000000000000000 ];

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
omc_1 = [ 2.002837e+00 ; 2.055387e+00 ; -1.224499e-01 ];
Tc_1  = [ 2.734624e+01 ; -2.529675e+02 ; 1.448092e+03 ];
omc_error_1 = [ 2.392788e-02 ; 2.958368e-02 ; 5.167538e-02 ];
Tc_error_1  = [ 5.680979e+01 ; 2.362388e+01 ; 5.311885e+01 ];

%-- Image #2:
omc_2 = [ 1.998080e+00 ; 1.666204e+00 ; -5.115256e-02 ];
Tc_2  = [ 6.163734e+01 ; -2.327366e+02 ; 1.533928e+03 ];
omc_error_2 = [ 2.297316e-02 ; 2.864842e-02 ; 4.401757e-02 ];
Tc_error_2  = [ 6.010325e+01 ; 2.511554e+01 ; 5.567282e+01 ];

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
omc_5 = [ -2.197121e+00 ; -1.839285e+00 ; -3.670844e-01 ];
Tc_5  = [ -1.575869e+01 ; -1.417303e+02 ; 1.708150e+03 ];
omc_error_5 = [ 1.959028e-02 ; 2.717376e-02 ; 5.701292e-02 ];
Tc_error_5  = [ 6.683332e+01 ; 2.686050e+01 ; 6.484629e+01 ];

%-- Image #6:
omc_6 = [ 2.089942e+00 ; 1.163690e+00 ; -5.185488e-02 ];
Tc_6  = [ -2.358184e+02 ; -9.214752e+01 ; 1.788762e+03 ];
omc_error_6 = [ 2.197379e-02 ; 2.654261e-02 ; 3.798015e-02 ];
Tc_error_6  = [ 7.018262e+01 ; 2.793308e+01 ; 6.822848e+01 ];

%-- Image #7:
omc_7 = [ 1.997676e+00 ; 1.761388e+00 ; 7.134519e-01 ];
Tc_7  = [ -9.526313e+01 ; -1.648819e+02 ; 1.761946e+03 ];
omc_error_7 = [ 3.010457e-02 ; 2.241552e-02 ; 4.138591e-02 ];
Tc_error_7  = [ 6.913599e+01 ; 2.730520e+01 ; 7.399440e+01 ];

%-- Image #8:
omc_8 = [ NaN ; NaN ; NaN ];
Tc_8  = [ NaN ; NaN ; NaN ];
omc_error_8 = [ NaN ; NaN ; NaN ];
Tc_error_8  = [ NaN ; NaN ; NaN ];

%-- Image #9:
omc_9 = [ 1.960541e+00 ; 1.979137e+00 ; -6.198540e-02 ];
Tc_9  = [ -2.507809e+01 ; -1.152826e+02 ; 2.298200e+03 ];
omc_error_9 = [ 2.548166e-02 ; 2.973987e-02 ; 5.155733e-02 ];
Tc_error_9  = [ 8.973226e+01 ; 3.641766e+01 ; 8.435176e+01 ];

%-- Image #10:
omc_10 = [ -2.255473e+00 ; -1.643740e+00 ; -2.023993e-01 ];
Tc_10  = [ 1.038481e+01 ; -2.380912e+02 ; 2.072981e+03 ];
omc_error_10 = [ 2.550302e-02 ; 2.769892e-02 ; 5.947215e-02 ];
Tc_error_10  = [ 8.120775e+01 ; 3.314807e+01 ; 7.460229e+01 ];

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
omc_13 = [ -1.439485e+00 ; -2.477334e+00 ; -2.746900e-01 ];
Tc_13  = [ 6.955675e+01 ; -3.293473e+02 ; 2.108447e+03 ];
omc_error_13 = [ 1.737169e-02 ; 4.062643e-02 ; 5.370654e-02 ];
Tc_error_13  = [ 8.263975e+01 ; 3.457079e+01 ; 7.776378e+01 ];

%-- Image #14:
omc_14 = [ 1.927001e+00 ; 1.343114e+00 ; -3.656698e-01 ];
Tc_14  = [ -2.503859e+02 ; 5.399299e+01 ; 2.592924e+03 ];
omc_error_14 = [ 1.933124e-02 ; 2.876536e-02 ; 3.771957e-02 ];
Tc_error_14  = [ 1.015647e+02 ; 3.993100e+01 ; 9.472473e+01 ];

%-- Image #15:
omc_15 = [ -2.574425e+00 ; -1.186564e+00 ; 5.188616e-01 ];
Tc_15  = [ -1.921336e+02 ; -2.961527e+01 ; 2.870853e+03 ];
omc_error_15 = [ 3.367443e-02 ; 1.649327e-02 ; 6.115109e-02 ];
Tc_error_15  = [ 1.126648e+02 ; 4.477094e+01 ; 1.018829e+02 ];

%-- Image #16:
omc_16 = [ 2.050508e+00 ; 2.085494e+00 ; 1.926280e-03 ];
Tc_16  = [ -1.391844e+02 ; -4.512465e+01 ; 2.737838e+03 ];
omc_error_16 = [ 3.394930e-02 ; 3.540781e-02 ; 7.385662e-02 ];
Tc_error_16  = [ 1.072306e+02 ; 4.285438e+01 ; 1.051379e+02 ];

%-- Image #17:
omc_17 = [ -1.253561e+00 ; -2.534244e+00 ; -2.513834e-01 ];
Tc_17  = [ 2.444810e-01 ; -4.324476e+02 ; 2.758564e+03 ];
omc_error_17 = [ 1.770891e-02 ; 4.384802e-02 ; 5.896205e-02 ];
Tc_error_17  = [ 1.082544e+02 ; 4.518657e+01 ; 1.029796e+02 ];

%-- Image #18:
omc_18 = [ NaN ; NaN ; NaN ];
Tc_18  = [ NaN ; NaN ; NaN ];
omc_error_18 = [ NaN ; NaN ; NaN ];
Tc_error_18  = [ NaN ; NaN ; NaN ];

%-- Image #19:
omc_19 = [ -1.125872e+00 ; -2.388015e+00 ; 6.918341e-01 ];
Tc_19  = [ 1.481349e+02 ; -4.388591e+02 ; 3.261203e+03 ];
omc_error_19 = [ 2.922609e-02 ; 3.738369e-02 ; 2.714599e-02 ];
Tc_error_19  = [ 1.276105e+02 ; 5.173705e+01 ; 1.221782e+02 ];

%-- Image #20:
omc_20 = [ 9.868239e-01 ; 2.233692e+00 ; -7.296546e-01 ];
Tc_20  = [ 1.903100e+01 ; -3.531195e+02 ; 3.256443e+03 ];
omc_error_20 = [ 1.457674e-02 ; 3.921547e-02 ; 3.049665e-02 ];
Tc_error_20  = [ 1.274158e+02 ; 5.276605e+01 ; 1.130936e+02 ];

