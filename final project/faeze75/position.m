function px =position()
px={};
py={};
for i=1:8
    px{i}=randi([1 300]);
    py{i}=randi([1 100]);
    
end 
line([px{1} px{2}],[py{1} py{2}] ,'Color','white');
line([px{3} px{4}],[py{3} py{4}] ,'Color','white');
line([px{5} px{6}],[py{5} py{6}] ,'Color','white');
line([px{7} px{8}],[py{7} py{8}] ,'Color','white');
end
