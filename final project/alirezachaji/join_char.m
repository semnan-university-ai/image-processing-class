function pic=join_char(pic,alphabet,height,width,n)
for i=1:n
   r=randi(270);
   m=size(imbinarize(captcha_rotate(alphabet(:,:,i),r)));
   mm=zeros(m(1),m(2));
   mm=imbinarize(captcha_rotate(alphabet(:,:,i),r));
   mm=imresize(mm,[floor(height) floor(width/n)]);
   h=size(mm);
   for j=1:h(1)
       for k=1:h(2)
           c=(i-1)*h(2)+k;
           pic(j,c)=mm(j,k);         
       end
   end
end  
end