function ut=U(Energy , eigenvectors  , t)

ut=eigenvectors*diag(exp(-1j*t*diag(Energy)))*eigenvectors.';

end