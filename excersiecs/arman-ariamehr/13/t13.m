FilterSpec = {'*.jpg' ; '*.jpeg' ; '*.png' ; '*.PNG' ; '*.*'};
[name, path] = uigetfile(FilterSpec,'choose a file');
address = [path name];
input_im = imread(address);
if size(input_im , 3) == 3
    image = rgb2gray(input_im);
else
    image = input_im;
end
amount = input('amount of making noise picture : ');
chart = zeros(1,amount);
for i = 1 : amount 
    percent = randi([1 100]) / 100;
    noise = imnoise(image , 'salt & pepper' , percent);
    avg = mean(mean(noise));
    chart(1,i) = avg;
end
plot(chart);