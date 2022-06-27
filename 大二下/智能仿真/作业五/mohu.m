clc;

clear;


fismat = newfits('home');

fismat = addvar(fismat,'input','????',[0,100]);

fismat = addvar(fismat,'input','??',[0,10]);
fismat = addvar(fismat,'output','???',[0 100]);




fismat = addvar(fismat,'input',1,'?','trapmf',[0 0 60 80]);

fismat = addvar(fismat,'input',1,'?','trapmf',[60 80 100 100]);
fismat = addvar(fismat,'input',2,'?','trapmf',[1 5 10 10]);
fismat = addvar(fismat,'input',2,'??','trapmf',[0 0 60 80]);
fismat = addvar(fismat,'input',1,'?','trapmf',[0 0 60 80]);
fismat = addvar(fismat,'input',1,'?','trapmf',[0 0 60 80]);
fismat = addvar(fismat,'input',1,'?','trapmf',[0 0 60 80]);
fismat = addvar(fismat,'input',1,'?','trapmf',[0 0 60 80]);