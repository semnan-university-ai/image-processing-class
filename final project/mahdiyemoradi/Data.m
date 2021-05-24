function alphabet = Data()

    alphabet(:,:,1) = dlmread('F:\m\caphtcha\1.txt');
    alphabet(:,:,2) = dlmread('F:\m\caphtcha\2.txt');
    alphabet(:,:,3) = dlmread('F:\m\caphtcha\3.txt');
    alphabet(:,:,4) = dlmread('F:\m\caphtcha\4.txt');
    alphabet(:,:,5) = dlmread('F:\m\caphtcha\5.txt');
    alphabet(:,:,6) = dlmread('F:\m\caphtcha\6.txt');
    alphabet(:,:,7) = dlmread('F:\m\caphtcha\7.txt');
    alphabet(:,:,8) = dlmread('F:\m\caphtcha\8.txt');
    alphabet(:,:,9) = dlmread('F:\m\caphtcha\9.txt');
    alphabet(:,:,10) = dlmread('F:\m\caphtcha\0.txt');
    
    alphabet = uint8(alphabet);
   
end

