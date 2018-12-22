function animation_time(X, Energy , eigenvectors ,NameOFEntrance,time,step_time , L)
yyaxis left
axis([-L/2 L/2 -2 4]);
for t=0:step_time:time
[psi_t , probability_t ]= evolution(X , Energy , eigenvectors ,t ,NameOFEntrance );

p=line(X, probability_t,'Color','red', 'DisplayName' , '|\psi(x)|^{2}');
pp=line(X, real(psi_t) ,'Color','black' ,'DisplayName' , '\psi(x)');
% text(3.5,2.5, '\psi(x)=e^{-x^2}');
xlabel('X');
ylabel('\psi(x), |\psi(x)|^{2}');
legend();
title([ 'Time evolution t='  num2str(t)]);
drawnow;
delete(p)
delete(pp)
if t==0
    pause(1);
end
end
line(X, probability_t,'Color','red', 'DisplayName' , '|\psi(x)|^{2}');
line(X, real(psi_t) ,'Color','black' ,'DisplayName' , '\psi(x)');
legend( );

hold off
end