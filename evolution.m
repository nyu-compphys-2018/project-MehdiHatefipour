function [psi_t , probability_t ]= evolution(X , Energy , eigenvectors ,t ,NameOFEntrance )
psi_t=  U(Energy , eigenvectors ,t)* Entrance(X,NameOFEntrance , eigenvectors) ;
probability_t=psi_t.*conj(psi_t);

end