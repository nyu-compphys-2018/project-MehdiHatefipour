function v=set_potential_matrice(N, L , delta)
v=zeros(1,N);


for i=1:N
    x=-L/2+(i-1)*delta;
    v(i)=V(x);
end

end