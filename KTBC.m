function [K,T,B,C] = KTBC(n)

%Create the four special matrices assuming n>1

K = toeplitz([2 -1 zeros(1, n-2)]);

T = K; 
T(1,1) = 1;

B = K; 
B(1,1) = 1;
B(n,n) = 1;  

C = K; 
C(1,n) = -1;
C(n,1) = -1;

end

