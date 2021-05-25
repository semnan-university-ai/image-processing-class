<div dir="rtl">
  
  توضيحات
    </div>
    
    
  
<div dir="rtl">
 

يك تابع براي فراخواني داده هاي برنامه تعريف كرديم بنام 
Load_data 
</div>
    
<div dir="rtl">
function [alphabet] =load_data()

alphabet(:,:,1) = dlmread('..\ALPHABET\A.txt');
alphabet(:,:,2) = dlmread('..\ALPHABET\B.txt');
alphabet(:,:,3) = dlmread('..\ALPHABET\C.txt');
alphabet(:,:,4) = dlmread('..\ALPHABET\D.txt');
alphabet(:,:,5) = dlmread('..\ALPHABET\E.txt');
alphabet(:,:,6) = dlmread('..\ALPHABET\F.txt');
alphabet(:,:,7) = dlmread('..\ALPHABET\G.txt');
alphabet(:,:,8) = dlmread('..\ALPHABET\H.txt');
alphabet(:,:,9) = dlmread('..\ALPHABET\I.txt');
alphabet(:,:,10) = dlmread('..\ALPHABET\J.txt');
alphabet(:,:,11) = dlmread('..\ALPHABET\K.txt');
alphabet(:,:,12) = dlmread('..\ALPHABET\L.txt');
alphabet(:,:,13) = dlmread('..\ALPHABET\M.txt');
alphabet(:,:,14) = dlmread('..\ALPHABET\N.txt');
alphabet(:,:,15) = dlmread('..\ALPHABET\O.txt');
alphabet(:,:,16) = dlmread('..\ALPHABET\P.txt');
alphabet(:,:,17) = dlmread('..\ALPHABET\Q.txt');
alphabet(:,:,18) = dlmread('..\ALPHABET\R.txt');
alphabet(:,:,19) = dlmread('..\ALPHABET\S.txt');
alphabet(:,:,20) = dlmread('..\ALPHABET\T.txt');
alphabet(:,:,21) = dlmread('..\ALPHABET\U.txt');
alphabet(:,:,22) = dlmread('..\ALPHABET\V.txt');
alphabet(:,:,23) = dlmread('..\ALPHABET\W.txt');
alphabet(:,:,24) = dlmread('..\ALPHABET\X.txt');
alphabet(:,:,25) = dlmread('..\ALPHABET\Y.txt');
alphabet(:,:,26) = dlmread('..\ALPHABET\Z.txt');

alphabet = uint8(alphabet);
  
</div>
