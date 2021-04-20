clc
clear data;
clear all;
image=zeros(1000,1000);
% for i=190:320
%     for j=260:280
%         plane(i,j) = 1;
%     end
% end
% 
% %balaye d
% for i=170:190
%     for j=200:280
%         plane(i,j) = 1;
%     end
% end
% 
% %payine d
% for i=300:320
%     for j=200:280
%         plane(i,j) = 1;
%     end
% end
% %rasm L
% for i=300:320
%     for j=200:280
%         plane(i,j) = 1;
%     end
% end

%D
image(600:620,500:580)=1;
 image(480:500,500:580)=1;
image(490:600,560:580)=1;
%l

 image(480:620,460:480)=1;
image(600:620,420:480)=1;

 image(580:620,420:440)=1;
 %
 image(600:620,400:420)=1;
 %
 
 image(480:620,380:400)=1;
 image(600:620,350:380)=1;
 image(580:620,330:350)=1;
 image(580:600,300:350)=1;
 
 %%noghte
 image(650:680,400:420)=1;
 image(650:680,440:460)=1;

imshow(image);