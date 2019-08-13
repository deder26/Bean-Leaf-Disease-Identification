% Project Title: Bean Leaf Disease Identification

clc
close all 
clear all

    

%plotroc(ACTUAL,PREDICTED);
set(gca,'xticklabel',{'Number of Images','Brown Spot','Halo Blight','Healthy Leaf'});
c = categorical({'Number of Images','Brown Spot','Halo Blight','Healthy Leaf'});
data = [10 10 10;8 0 2;0 10 0;1 0 9];
bar(c,data)

