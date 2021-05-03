
> # Exercise 7
> اشکال هندسی مربع، مستطیل، لوزی، مثلث را بدون توابع متلب رسم کنید.
***
>CODE

<div dir="rtl">
رسم مثلث
</div>

```ruby
subplot(2,2,1);
x_triangle = [0 2 4];
y_triangle = [0 4 0];
fill(x_triangle, y_triangle, 'g')
axis([0 10 0 10]);
```

<div dir="rtl">
رسم مربع
</div>

```ruby
subplot(2,2,2);
x_square = [0 0 4 4];
y_square = [0 4 4 0];
fill(x_square, y_square, 'b')
axis([0 10 0 10]);
```

<div dir="rtl">
رسم مستطیل
</div>

```ruby
subplot(2,2,3);
x_Rectangle = [0 4 4 0 0];
y_Rectangle = [0 0 7 7 0];
fill(x_Rectangle, y_Rectangle, 'r')
axis([0 10 0 10]);
```

<div dir="rtl">
رسم لوزی
</div>

```ruby
subplot(2,2,4);
x_Diamond = [2 2.5 2 1.5];
y_Diamond = [5 2.5 0 2.5];
c_Diamond = [1 0.8 0.3];
fill(x_Diamond, y_Diamond,c_Diamond)
axis([0 10 0 10]);
```

![7](https://user-images.githubusercontent.com/57560004/116742008-0844fb00-aa0c-11eb-9f40-87c1c4549b14.jpg)

***
