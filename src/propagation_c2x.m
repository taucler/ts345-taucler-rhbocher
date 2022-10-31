function [c2x] = propagation_c2x(x2c, h)
%PROPAGATION_X2C Summary of this function goes here
%   Detailed explanation goes here
full_h = full(h);
[l,c] = size(full_h);
c2x = zeros(l,c);

for colonne = 1:c
    for ligne = 1:l
        if h(ligne,colonne)==1
            res = 0;
            indices = find(h(ligne,:));
            for i = indices
                if i ~= ligne
                    res = res * tanh(x2c(ligne,i)/2);
                end
            end
            res = 2*atanh(res);
            c2x(ligne,colonne) = res;
        end
    end
end
end