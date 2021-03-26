
### question Info :

###### 
open the code ex19.m with mathlab press **run** button :rocket: 

<div dir = "rtl">
از حروف یک حرف را انتخاب کرده و عکس آن را از پوشه می یابد و تغییرات را اعمال می کند
</div>

```matlab
for i=1:4
    alphabetic=char(randi(+'AZ'));
    m=imread("C:\Users\nmzis\OneDrive\Desktop\t\"+alphabetic+".png");
    m1=imbinarize(m,0.0001);
    m2=imresize(m1,[200,200]);
    list = [list; m2]; 

end

```

با تشکر از @ https://github.comalirezachaji


improved code of (https://github.com/semnan-university-ai/image-processing-class/blob/main/excersiecs/alirezachaji/14/Exce14.m)

![img](https://github.com/semnan-university-ai/image-processing-class/blob/main/excersiecs/mohammadhoseinazad/17/ex17.png)

