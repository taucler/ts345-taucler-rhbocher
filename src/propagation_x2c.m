function [x2c] = propagation_x2c(c2x, h, input)
%PROPAGATION_X2C Summary of this function goes here
%   Detailed explanation goes here

full_h = full(h);
[l,c] = size(full_h);
x2c=zeros(l,c);
for colonne = 1:c
    for ligne = 1:l
        if h(ligne,colonne)==1
            somme = 0;
            indices = find(h(:,colonne));
            for i = indices(:)'
                if i ~= colonne
                    somme = somme + c2x(i,colonne);
                end
            end
            somme = somme + input(ligne, 1);
            x2c(ligne,colonne) = somme;
        end
    end
end
end

