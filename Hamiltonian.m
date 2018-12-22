function [H,X]=Hamiltonian(N,L,delta ,s_v) 
%%%% s_v: is a switch for plotting the Potential with wave function
%%%% at the same time
%%  setting constant
h=1;
m=1;
%%   Creating Main Matrice(-d^2/dx^2 H) %%%%%%%%%%
A=ones(1,N);
A=-2*diag(A);
B=ones(1,N-1);    
B=diag(B);
B=[zeros(1,N-1);B];
B=[B,zeros(N,1)];
B=B+B.';
B=B+A;
%% Constructing hamiltonian
v=set_potential_matrice(N, L , delta);
X=-L/2+delta:delta:L/2;
if s_v==1
hold on
yyaxis right
plot(X,v,'Color','blue' , 'DisplayName' , 'V(x)')
ylabel('V(x)')
end
v=diag(v);

H=-h/(2*m*(delta^2))*B+v;
H(1, :)=zeros(1,N);
H(N, :)=zeros(1,N);

end