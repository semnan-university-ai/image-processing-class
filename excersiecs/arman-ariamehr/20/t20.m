address = 'my_name\';

add5 = [address '�.txt'];
add4 = [address '�.txt'];
add3 = [address '�.txt'];
add2 = [address '�.txt'];
add1 = [address '�.txt'];

let5 = dlmread(add5);
let4 = dlmread(add4);
let3 = dlmread(add3);
let2 = dlmread(add2);
let1 = dlmread(add1);

my_name = [let5 let4 let3 let2 let1];
imshow(my_name);