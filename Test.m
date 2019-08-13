
for i=1:30
    disp(['Processing frame no.',num2str(i)]);
    img=imread(['Test\',num2str(i),'.jpg']);
    img = imresize(img,[512,512]);
    imshow(img);title('Leaf Image');
    [feat_disease seg_img] =  EvaluateFeatures(img);
    Test_Feat(i,:) = feat_disease;
    save Test_Feat;
    close all
end

disp('Test done');