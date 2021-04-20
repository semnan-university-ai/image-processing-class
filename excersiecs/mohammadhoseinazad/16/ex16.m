image=imread("D:\matlab\math\bin\benchmark\zelda.png");

 for i=250:280
     for j=310:350
        image(i,j)=image(i+30,j);
     end
 
 end
  for i=250:280
     for j=210:250
        image(i,j)=image(i,j+200);
     end
 
 end
 imshow(image)

% 
%    t=0.12;
%    ca=imbinarize(image,t);
%    c=~ca;
%    se=strel('square',1);
%    eye_dil=imdilate(c,se);
%    d=imcrop(eye_dil,[110 105 110 33]); 
%    subplot(2,1,1),imshow(image);
%    subplot(2,1,2),imshow(eye_dil);