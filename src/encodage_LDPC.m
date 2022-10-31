function [b_encode] = encodage_LDPC(b,g)
%ENCODAGE_LDPC Summary of this function goes here
%   Detailed explanation goes here
b_encode = transpose(b)*g;
b_encode = transpose(b_encode);
b_encode = mod(b_encode,2);
end

