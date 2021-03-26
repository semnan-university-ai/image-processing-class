keanu=imread('C:\Users\PC\Desktop\9.jpg');
disp('tul va raze tasvir ra baraye crop moshakhas konid:');
row_start=input('crop az che arzi shoroo shavad?');
row_end=input('crop dar che arzi tamam shavad?');
col_start=input('crop az che sotooni shoroo shavad?');
col_end=input('crop dar che arzi tamam shavad?');
%cropping image
cropped=keanu(row_start:row_end,col_start:col_end,:);
figure(1),imshow(keanu),title('axe asli');
figure(2),imshow(cropped),title('axe crop shode');
