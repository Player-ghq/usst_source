
% ?????????
clear;
clc;
CH=[305350,290724,286729,307683,316666,...          %1980~1984  
312616,303340,330303,411923,461066,...  
398623,415604,495671,623054,566471,...              %1990~1994  
736870,867224,965320,1032576,1097133,...    
1214912,1344097,1477483,1671072,1966223,...         %2000~2004  
2308786,2774308,3571451,4604285,5121681,...  
6066351,7522103,8570348,9635025,10534526,...        %2010~2014  
11226186,11232108].'*1e-6;
  
US=[2862475,3210950,3345000,3638125,4040700,...     %1980~1984  
4346750,4590125,4870225,5252625,5657700,...  
5979575,6174050,6539300,6878700,7308775,...         %1990~1994  
7664050,8100175,8608525,9089150,9660625,...  
10284750,10621825,10977525,11510675,12274925,...    %2000~2004  
13093700,13855900,14477625,14718575,14418725,...  
14964400,15517925,16155250,16691500,17393100,...    %2010~2014  
18120700,18624450].'*1e-6;

y = [1980:2016].';

[~,~,CH_mu] = polyfit(y,CH,0);
[~,~,US_mu] = polyfit(y,US,0);


f = @(p,y) p(1)*y.^3 + p(2)*y.^2 + p(3)*y + p(4);

y = (y-CH_mu(1))/CH_mu(2);

CH_p = lsqcurvefit(f,[1,0,0,0],y,CH);


USA_p = lsqcurvefit(f,[1,0,0,0],y,US);
