%%
close all;
clear all;
clc;
%%
%Kinect Depth camera parameters
fx_d =  5.7616540758591043e+02;
fy_d = 5.7375619782082447e+02;
cx_d = 3.2442516903961865e+02;
cy_d = 2.3584766381177013e+02;

% Extrinsic parameters between RGB and Depth camera for Kinect V1
% Rotation matrix
R =  inv([  9.9998579449446667e-01, 3.4203777687649762e-03, -4.0880099301915437e-03;
    -3.4291385577729263e-03, 9.9999183503355726e-01, -2.1379604698021303e-03;
    4.0806639192662465e-03, 2.1519484514690057e-03,  9.9998935859330040e-01]);
% Translation vector.
T = -[  2.2142187053089738e-02, -1.4391632009665779e-04, -7.9356552371601212e-03 ]';

%% load left and right images in order to reconstract them.
%3D reconstruction

%% Left images prameters
colorImage = imread('LeftRgbobjects_scene21.png');
IL= rgb2gray(colorImage);
left_depth = imread('LeftDepthobjects_scene21.png');
depth = double(left_depth);
[leftNR,leftNC]=size(IL); % image left size

%information that we gain in calibration part for laef images
% %-- Focal length:fc = [ 574.276807728040010 ; 557.136687864597430 ];
% %-- Principal point:cc = [ 238.427082927314870 ; 245.733893045488630 ];
%-- Focal length:
Rgb_left_fx = 574.276807728040010 ;
Rgb_left_fy =  557.136687864597430; 
Rgb_left_cx = 238.427082927314870; 
Rgb_left_cy =  245.733893045488630; 
%use disparity for finidng depth
% figure, subplot(1,2,1), imshow(IL);
% subplot(1,2,2), imshow(IR);
% %%%RightRgbobjects_scene21
% disparityRange = [-5 5];
% disparityMap = disparity(IL,IR);
% figure ;
% clf;imshow(disparityMap);
% title('Disparity Map');
% colormap(gca,jet) 
% colorbar


%% comput the real world points with the depth image information
%LEFT CAMERA
%points in world coordinate
PW = zeros(leftNR,leftNC,3);
kl=0;
leftcor = zeros(leftNR * leftNC, 3);
leftcol = zeros(leftNR * leftNC, 3);
% we have depth ccamera intrinsics, each pixel (x_d,y_d) of the depth 
% camera can be projected to metric 3D space using the following formula:
for i= 1:leftNR
    for j=1:leftNC
        
     PW(i, j,  1) =(j - cx_d) * depth(i, j) / fx_d;
     PW(i, j,  2) =(i - cy_d) * depth(i, j) / fy_d;
     PW(i, j,  3) = depth(i,j);
     
        if PW(i, j, 3) > 0
            PWL = [PW(i, j, 1), PW(i, j, 2), PW(i, j, 3)];
            PWL_T = R * PWL' + T;
            LP2D_rgb_i = round((PWL_T(1)* Rgb_left_fx / PWL_T(3)) + Rgb_left_cx);
            LP2D_rgb_j= round((PWL_T (2) * Rgb_left_fy /  PWL_T(3)) + Rgb_left_cy);
            
            
              if LP2D_rgb_i > 0 && LP2D_rgb_j > 0 && LP2D_rgb_i < leftNC  && LP2D_rgb_j < leftNR;
                color = colorImage(LP2D_rgb_j, LP2D_rgb_i, :);
                kl = kl + 1;
                
                leftcor(kl,:)= PWL_T;
                leftcol(kl,:)= color;  
              end
        end
    end
end


leftcor = leftcor(1:kl, :);
leftcol = leftcol(1:kl, :);

new_p = zeros( kl , 3);
%[-0.02472,0.69856,-0.10670];
%rotationvector =[-0.0251142470641891;0.809210743700067;-0.166663116253217];
%p=[-851.141043476789;90.4413924970427;438.086537754770]-[65.25456;16.49713;118.90881];
%p =[-916.3956;73.9443;319.1777];
%p =[-990.3956;7.9443;301.1777];
%Translationvector =[-851.141043476789;90.4413924970427;438.086537754770];
%[-307.31898,16.49959,142.11173];
Rotationvector = [ -0.03577  ; 0.72453  ;-0.12164 ];
Translationvector = [ -883.17935  ; 71.32935 ; 467.33186 ];

rotation_m = rotationVectorToMatrix(Rotationvector);
rotation_m = inv(rotation_m); 
for com=1:kl
new_p(com, :) = (rotation_m *  leftcor(com, :)' + Translationvector)';
end   
leftcor = new_p;


colorL= (leftcol/255 );
figure, pcshow(leftcor,colorL); title("3D Reconstruction of Left Image");

%% Image right 
%read and display all information about right image of objects 
%read right image convert to grey scale 
colorImageRight = imread('RightRgbobjects_scene21.png');
IR= rgb2gray(colorImageRight);
%read right depth image of the scene and display it as depth map
right_depth = imread('RightDedpthobjects_scene21.png');
Right_depth = double(right_depth);
% surf(Right_depth, IR, 'FaceColor', 'texturemap', 'EdgeColor', 'none' );
%  title("Depth map");
%  view(158, 38);

%Information about right images from Calib_Results_right.m
% %-- Focal length:fc = [ 562.254541726260640 ; 536.212604992101550 ];
% %-- Principal point:cc = [ 230.672270128398340 ; 261.583065556063900 ];
%-- Focal length:

Rgb_right_fx =  562.254541726260640; 
Rgb_right_fy =  536.212604992101550; 
Rgb_right_cx =  230.672270128398340; 
Rgb_right_cy =  261.583065556063900; 

%find points in world coordinate
%image right size 
[rightNR,rightNC]=size(IR);
PWR = zeros(rightNR,rightNC,3);
rightcor = zeros(rightNR * rightNC, 3);
rightcol = zeros(rightNR * rightNC, 3);
kR=0;
% we have depth camera intrinsic parameters, each pixel (x_d,y_d) of the depth 
% camera can be projected to metric 3D space using the following formula:
for i= 1:rightNR
    for j=1:rightNC
        
     PWR(i, j,  1) =( j - cx_d) * Right_depth(i, j) / fx_d;
     PWR(i, j,  2) =( i- cy_d) * Right_depth(i, j) / fy_d;
     PWR(i, j,  3) = Right_depth(i,j);
     
        if PWR(i, j, 3) > 0
            PWRi = [PWR(i, j, 1), PWR(i, j, 2), PWR(i, j, 3)];
            PWR_T = R * PWRi' + T;
            RP2D_rgb_i = round((PWR_T(1)* Rgb_right_fx / PWR_T(3)) + Rgb_right_cx);
            RP2D_rgb_j= round((PWR_T (2) * Rgb_right_fy /  PWR_T(3)) + Rgb_right_cy);
            
              if RP2D_rgb_i > 0 && RP2D_rgb_j > 0 && RP2D_rgb_i < rightNC  && RP2D_rgb_j < rightNR;
                colorR = colorImageRight(RP2D_rgb_j, RP2D_rgb_i, :);
                kR = kR + 1;
                rightcor(kR,:)= PWR_T;
                rightcol(kR,:)= colorR;  
              end
        end
    end
end


rightcor = rightcor(1:kR, :);
rightcol = rightcol(1:kR, :);
colorR= (rightcol/255);
pcshow(rightcor,colorR);title("3D Reconstruction of Right Image");

%% combining two Images right and left for final reconstruction 
[lr,lc]=size(leftcor);
[rr,rc]=size(rightcor);
finalsize= lr+rr;

corfinal=zeros(finalsize,3);
colorfinal=zeros(finalsize,3);
K=0;
for i=1: lr
    K= K+1;
    corfinal(K,:)= leftcor(i,:);
    colorfinal(K,:)= leftcol(i,:);
end


for i=1: rr
    K = K+1; 
    corfinal(K,:) = rightcor(i,:);
    colorfinal(K,:)= rightcol(i,:);
end
colfin = colorfinal / 256;
pcshow(corfinal, colfin);title("Final 3D Reconstruction");

    
    
    
    







