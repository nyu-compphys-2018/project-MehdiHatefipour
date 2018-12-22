clc; close all; clear all;
L=10;
N=200
delta=(L)/N;
step_time=0.005;
time=0.35;
NameOFEntrance ='Gaussian';
[H,X]=Hamiltonian(N,L,delta ,1) ;
[Energy , eigenvectors] =sort_energy(H);
% plot_eigen(X, Energy,eigenvectors ,5)
animation_time(X, Energy , eigenvectors ,NameOFEntrance,time,step_time,L)
