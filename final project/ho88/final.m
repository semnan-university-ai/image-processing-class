clc;
close all;
clear;

% read_data_files();

load data

data = uint8(data);
image_count = 150;
row_plot = 15;
col_plot = 10;
data_count = length(data);
numbers_count = 5;
width = 500;
height = 200;
out_folder_path = 'out';


adding_noise = true;
adding_shape = true;
adding_rotation = true;
noise_density = 0.03;

subplot_all_img = false;
do_new_process = true;


correct_count = 0;

if do_new_process
   
    f = figure('visible', 'off');
% f.Position = [0 0 1000 1000];

if subplot_all_img
   delete(fullfile(out_folder_path, '*.*'));
end


for j=1 : image_count
   
    rand_nums = randi([1 data_count], 1, numbers_count);

    captcha_image = [];

    for i=1: length(rand_nums)

        img = data(:,:,rand_nums(i));
        if adding_rotation
            img = add_rotation(img);
        end
    %     if adding_blur
    %         img = add_blur(img);
    %     end
        captcha_image = [captcha_image img] 
        captcha_text(i) = filenames(rand_nums(i))
    end



    captcha_image = imresize(captcha_image, [height width]);

    if adding_noise
        captcha_image = add_noise(captcha_image, noise_density);
    end


    if adding_shape
        captcha_image = add_shape(captcha_image);
    end
    
    ocr_text = ocr_detection(captcha_image);
    
    
%     pl(j) = subplot(row_plot, col_plot, j);
%     
%     pos = get(pl(j), 'position');
    
    dim1 = [0.15 0.13 1 0.1];
    dim2 = [0.15 0.05 1 0.1];
    dim3 = [0.6 0.13 0.05 0.1];
    
%     dim4 = [pos(1)+(0.15*pos(3)) pos(2)+(0.11*pos(4)) 0.5*pos(3) 0.03*pos(4)];
%     dim6 = [pos(1)+(0.6*pos(3)) pos(2)+(0.11*pos(4)) 0.05*pos(3) 0.1*pos(4)];
    
    
    imshow(im2bw(captcha_image, 0.3));


    annotation('textbox', dim1, ...
        'String', strcat('Original Captcha Text :', captcha_text), ...
        'Color', [1 0.5 0], ...
        'FontWeight', 'bold', ...
        'EdgeColor', 'none');

    annotation('textbox', dim2, ...
        'String', strcat('OCR Detected Text  : ', ocr_text), ...
        'Color', [0 0.5 0], ...
        'FontWeight', 'bold', ...
        'EdgeColor', 'none');
    if strlength(captcha_text)==strlength(ocr_text)
        if captcha_text == ocr_text
            an = annotation('ellipse', dim3, 'FaceColor', 'g', 'EdgeColor', 'g');
            correct_count = correct_count + 1;
        else
            an = annotation('ellipse', dim3, 'FaceColor', 'r', 'EdgeColor', 'r');
        end
    else
        an = annotation('ellipse', dim3, 'FaceColor', 'r', 'EdgeColor', 'r');
    end
    
    
    save_img(out_folder_path, j, captcha_text);
    
end




figure;

cats = categorical({'OCR-Deteced', 'Not-Detected'});
values = [correct_count image_count-correct_count];
bar(cats, values);

    
end

f = figure;
f.Position = [0 0 1500 1500];

if subplot_all_img
    
   img_files = dir(out_folder_path);
   cnt = 1;
   for i=1:length(img_files)
      if isfolder(img_files(i).name)
          continue;
      end
      
      I = imread(fullfile(out_folder_path,img_files(i).name));
       subplot(row_plot, col_plot, cnt);
       imshow(I);title(img_files(i).name);
       cnt = cnt + 1;
   end
    
end

disp('============== Process Done ===================')









% captcha_text
% disp('======');
% ocr_detection(captcha_image)




% imshow(im2bw(captcha_image, 0.3));
% 
% 
%     annotation('textbox', [0.15 0.13 1 0.1], ...
%         'String', strcat('Original Captcha Text :', captcha_text), ...
%         'Color', [1 0.5 0], ...
%         'FontWeight', 'bold', ...
%         'EdgeColor', 'none');
% 
%     annotation('textbox', [0.15 0.05 1 0.1], ...
%         'String', strcat('OCR Detected Text  : ', ocr_text), ...
%         'Color', [0 0.5 0], ...
%         'FontWeight', 'bold', ...
%         'EdgeColor', 'none');
%     if strlength(captcha_text)==strlength(ocr_text)
%         if captcha_text == ocr_text
%             an = annotation('ellipse', [0.6 0.13 0.05 0.1], 'FaceColor', 'g', 'EdgeColor', 'g');
%             correct_count = correct_count + 1;
%         else
%             an = annotation('ellipse', [0.6 0.13 0.05 0.1], 'FaceColor', 'r', 'EdgeColor', 'r');
%         end
%     else
%         an = annotation('ellipse', [0.6 0.13 0.05 0.1], 'FaceColor', 'r', 'EdgeColor', 'r');
%     end






% captcha_numbers = [ round(rand(1, numbers_count) * 10) - 1 ];
% captcha_numbers = uint8(captcha_numbers);
% 
% captcha_image = zeros(size(numbers(:,:,1)));
% captcha_image = numbers(:,:,1);
% 
% for i = 2 : numbers_count
%     if captcha_numbers(1,i) == 0
%         captcha_numbers(1,i) = 1;
%     end
% 	captcha_image = [ captcha_image numbers(:,:,captcha_numbers(1,i)) ];
% end
% 
% captcha_image = imresize(captcha_image, [height width]);
% imshow(im2bw(captcha_image, 0.3));
% 
% ocr(captcha_image)