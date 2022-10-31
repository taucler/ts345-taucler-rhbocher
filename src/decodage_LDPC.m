function [Ly] = decodage_LDPC(Lc, h)
%DECODAGE_LDPC Summary of this function goes here
%   Detailed explanation goes here

[l,c] = size(h);
c2x = zeros(l,c);
x2c = zeros(l,c);

for i=1:15
    c2x= propagation_c2x(x2c, h);
    x2c = propagation_x2c(c2x, h, Lc);
end

Ly = zeros(1,c);
for i = 1:c
    Ly(i) = sum(c2x(:,i));
end

Ly = transpose(Ly);

end

