function psi0= Entrance(X,NameOFEntrance, eigenvectors)
if NameOFEntrance== 'Gaussian'
% psi0=((exp(-(X-1).^2))).';
psi0=((exp(-((X-3)/0.5).^2)).*exp(-20j*X)).';
% psi0=( eigenvectors(:,3));
end

end