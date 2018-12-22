function v=V(x)
%%%%%%%% width of well
w=4;
%% Oscillator    
% v=0.5*(x^2);
%% simple q well

%  v=0;
%% WELL
% 
% if x<w/2 && x>-w/2
%     v=0;
% else
%     v=300;
% end
%% small bump
% if x<0.01 && x>-0.01
%     v=1000;
% else
%     v=0;
% end
%% TUNNEL

% if x<w/2 && x>-w/2
%     v=200;
% else
%     v=0;
% end
%% Two DELTA wells
% if x==w/2 || x==-w/2
%     v=-300;
% else
%     v=0;
% end



%% Two DELTA FUNCTION
% if x==0.5 || x==-0.5
%     v=-300;
% else
%     v=0;
% end
%% One delta Function
% if x==0
%     v=3000;
% else
%     v=0;
% end
%% step

% if x<0
%     v=0;
% else
%     v=300;
% end
%% linear
% 
if x>0 && x<w
    v=(300/w)*(x-w)+100;
else
    v=100;
end

%%  exponential well

% v=-100*exp(-(x^2)/10);
%%  exponential Barrier
% v=100*exp(-(x^2)/10);


end
   