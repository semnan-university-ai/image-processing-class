address = 'my_name\';

add5 = [address 'ä.txt'];
add4 = [address 'Ç.txt'];
add3 = [address 'ã.txt'];
add2 = [address 'Ñ.txt'];
add1 = [address 'Â.txt'];

let5 = dlmread(add5);
let4 = dlmread(add4);
let3 = dlmread(add3);
let2 = dlmread(add2);
let1 = dlmread(add1);

my_name = [let5 let4 let3 let2 let1];
imshow(my_name);