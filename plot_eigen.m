function plot_eigen(X, Energy,eigenvectors ,N)

Name='Square Well';
hold on
for i=N:-1:1
    yyaxis left
plot( X, eigenvectors(:,i) , 'DisplayName' , ['\Psi_' num2str(i-1) '(x)' '  E_' num2str(i-1)  '=' num2str(round(Energy(i,i)*100)/100)]);
end
xlabel('X');
ylabel('\psi(x)');
legend();
title([ Name ]);
hold off
end