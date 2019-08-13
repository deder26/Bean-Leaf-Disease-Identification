% Training Part

%Features of Brown Spot

for i=1:40
   
    disp(['Processing frame no.',num2str(i)]);
    img=imread(['brown spot\',num2str(i),'.jpg']);
    img = imresize(img,[512,512]);
    imshow(img);title('Leaf Image');
    [feat_disease seg_img] =  EvaluateFeatures(img);
    Brown_Feat(i,:) = feat_disease;
   
    save Brown_Feat;
    close all
end


%Features of Halo Blight
for i=1:55
  
    disp(['Processing frame no.',num2str(i)]);
    img=imread(['halo\',num2str(i),'.jpg']);
    img = imresize(img,[512,512]);
    imshow(img);title('Leaf Image');
    [feat_disease seg_img] =  EvaluateFeatures(img);
    Halo_Feat(i,:) = feat_disease;
  
    save Halo_Feat;
    close all
end

% Features of Healthy Leaf
for i=1:55
  
    disp(['Processing frame no.',num2str(i)]);
    img=imread(['healthy\',num2str(i),'.jpg']);
    img = imresize(img,[512,512]);
    imshow(img);title('Leaf Image');
    [feat_disease seg_img] =  EvaluateFeatures(img);
    Healthy_Feat(i,:) = feat_disease;
   
    save Healthy_Feat;
    close all
end

disp('Train done');