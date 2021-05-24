function [] = save_img(folder_path, file_num, file_name)
    
    filename = sprintf('%d-%s.png',file_num, file_name);
    full_filename = fullfile(folder_path, filename);
%     imwrite(img, full_filename);
    saveas(gcf, full_filename);
end