  
input=imread('C:\Users\nmzis\OneDrive\Documents\GitHub\image-processing-class\benchmark\lena.png');
subplot(2,2,1), imshow(input), title('RGB Scale image');
subplot(1,2,2), imshow(output), title('Gray Scale  image')
[x,y,~] = size(input);

for i = 1:1:x
   for j = 1:1:y
      output(i,j) = 0.90*input(i,j);
   end
end

