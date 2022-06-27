
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


CH_corr = corrcoef(y,CH)
US_corr = corrcoef(y,US)


[~,~,CH_mu] = polyfit(y,CH,0);
[~,~,US_mu] = polyfit(y,US,0);

t = figure(1);
t.Position=[400,200,900,400];
subplot(1,2,1);
plot(y,CH,'b*');

title('China GDP from 1980 to 2016');
xlabel('Year');
ylabel('CHINA GDP(trillion)');   

subplot(1,2,2);
plot(y,US,'b*');

title('USA GDP from 1980 to 2016');
xlabel('Year');
ylabel('USA GDP(trillion)');   

saveas(gcf,'2gdp.jpg');


pk = 1;

for i = 1:5
    
    [p,~,~]= polyfit(y,CH,i);
    
    CH_f = polyval(p,y,[],CH_mu);
    
    pk = pk + 1;
    f_pk = figure(pk);
    f_pk.Position = [400,200,900,400];
    subplot(1,2,1);
    
    plot(y,CH,'b*',y,CH_f,'r-');
    title('China GDP from 1980 to 2016');
    xlabel('Year');
    ylabel('CHINA GDP(trillion)');   
    
    subplot(1,2,2);
    res = CH - CH_f;
    

    
    plot(y,res,'r.-');
    title(['Residuals for the Quadratic Polynomial Model','(n=',num2str(i),')']);
    xlabel('Year');
    ylabel('CHINA GDP(trillion)'); 
    
    CH_SSE(i) = sum(res.^2);
    CH_SST(i) = (length(CH)-1)*var(CH);
    CH_R_sqr(i) = 1-CH_SSE(i)/CH_SST(i);
    
    str = strcat('China_poly(n=',num2str(i),').jpg');
    saveas(gcf,str);
   
end



for i = 1:5
    
    [p,~,~]= polyfit(y,US,i);
    
    US_f = polyval(p,y,[],US_mu);
    pk = pk+ 1;
    f_pk = figure(pk);
    f_pk.Position = [400,200,900,400];
    
    
    subplot(1,2,1);
    plot(y,US,'b*',y,US_f,'r-');
    title('USA GDP from 1980 to 2016');
    xlabel('Year');
    ylabel('USA GDP(trillion)');   
    
    subplot(1,2,2);
    res = US - US_f;
    
    plot(y,res,'r.-');
    title(['Residuals for the Quadratic Polynomial Model','(n=',num2str(i),')']);
    xlabel('Year');
    ylabel('USA GDP(trillion)'); 
    
    US_SSE(i) = sum(res.^2);
    US_SST(i) = (length(US)-1)*var(US);
    US_R_sqr(i) = 1-US_SSE(i)/US_SST(i);
    
    str = strcat('USA_poly(n=',num2str(i),').jpg');
    saveas(gcf,str);
   
end






    
    











