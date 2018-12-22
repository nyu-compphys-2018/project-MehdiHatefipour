function [Energy , eigenvectors] =sort_energy(H)
[a,b]=eig(H);
[d, ind]=sort(diag(b));
Energy=b(ind , ind);
eigenvectors=a(:,ind);
Energy([1,2],:) = [];
Energy(:,[1,2]) = [];
eigenvectors(:,[1,2])=[];
end