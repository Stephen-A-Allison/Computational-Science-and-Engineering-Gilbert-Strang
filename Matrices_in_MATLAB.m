clc
clearvars -except W samp

%% 3-by-3 stiffness matrix 

K = [2 -1 0 ; -1 2 -1; 0 -1 2]

%% 8-by-8 Idenity matrix 

eye(8)

%% 7-by-1 unit column vector 

ones(7,1)

%% 8-by-1 main diagonal 

2 * eye(8)

%% 7-by-1 super-diagonal of -1's

E = -diag(ones(7,1),1)

%% 7-by-1 sub-diagonal of -1's

E = -diag(ones(7,1),-1);

% or >> E'

%% 8-by-8 tridiagonal matrix 

K = 2 * eye(8) + E + E'

%% first row  of toeplitz matrix 

row1 = [2 -1 zeros(1,6)]

%% toeplitx matrix 

K = toeplitz(row1);

%% unsymmetric constant diagonal matrix 

row1 = [ 1 0 0 ];      % 1-by-3 row vector
col1 = [ 1  -1 0 0 ];    % 4-by-1 column vector

toeplitz(col1,row1)

%% M-function KTBC

[K,T,B,C] = KTBC(8)

%% M-function det_Four_Spec_Mat: returns determinants for the special four matrices 

[det_K, det_T, det_B, det_C] = det_Four_Spec_Mat(K,T,B,C)

%% M-function sparseKTBCcode

sparseKTBCcode('K',10,false) % used to make larger matrix size 

%% 
