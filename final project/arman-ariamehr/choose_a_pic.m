function [output , letter] = choose_a_pic()
    add1 = 'D:\programming\MATLAB\image_processing\final\final_ta_file\';
    guess = randi([1 62]);
    if guess == 1
        add2 = 'A.txt';
        letter = 'A';
    elseif guess == 2
        add2 = 'B.txt';
        letter = 'B';
    elseif  guess == 3
        add2 = 'C.txt';
        letter = 'C';
    elseif  guess == 4
        add2 = 'D.txt';
        letter = 'D';
    elseif  guess == 5
        add2 = 'E.txt';
        letter = 'E';
    elseif  guess == 6
        add2 = 'F.txt';
        letter = 'F';
    elseif  guess == 7
        add2 = 'G.txt';
        letter = 'G';
    elseif  guess == 8
        add2 = 'H.txt';
        letter = 'H';
    elseif  guess == 9
        add2 = 'I.txt';
        letter = 'I';
    elseif guess == 10
        add2 = 'J.txt';
        letter = 'J';
    elseif guess == 11
        add2 = 'K.txt';
        letter = 'K';
    elseif guess == 12
        add2 = 'L.txt';
        letter = 'L';
    elseif guess == 13
        add2 = 'M.txt';
        letter = 'M';
    elseif guess == 14
        add2 = 'N.txt';
        letter = 'N';
    elseif guess == 15
        add2 = 'O.txt';
        letter = 'O';
    elseif guess == 16
        add2 = 'P.txt';
        letter = 'P';
    elseif guess == 17
        add2 = 'Q.txt';
        letter = 'Q';
    elseif guess == 18
        add2 = 'R.txt';
        letter = 'R';
    elseif guess == 19
        add2 = 'S.txt';
        letter = 'S';
    elseif guess == 20
        add2 = 'T.txt';
        letter = 'T';
    elseif guess == 21
        add2 = 'U.txt';
        letter = 'U';
    elseif guess == 22
        add2 = 'V.txt';
        letter = 'V';
    elseif guess == 23
        add2 = 'W.txt';
        letter = 'W';
    elseif guess == 24
        add2 = 'X.txt';
        letter = 'X';
    elseif guess == 25
        add2 = 'Y.txt';
        letter = 'Y';
    elseif guess == 26
        add2 = 'Z.txt';
        letter = 'Z';
    elseif guess == 27
        add2 = '0.txt';
        letter = '0';
    elseif guess == 28
        add2 = '1.txt';
        letter = '1';
    elseif guess == 29
        add2 = '2.txt';
        letter = '2';
    elseif guess == 30
        add2 = '3.txt';
        letter = '3';
    elseif guess == 31
        add2 = '4.txt';
        letter = '4';
    elseif guess == 32
        add2 = '5.txt';
        letter = '5';
    elseif guess == 33
        add2 = '6.txt';
        letter = '6';
    elseif guess == 34
        add2 = '7.txt';
        letter = '7';
    elseif guess == 35
        add2 = '8.txt';
        letter = '8';
    elseif guess == 36
        add2 = '9.txt';
        letter = '9';
    elseif guess == 37
        add2 = 'a1.txt';
        letter = 'a';
    elseif guess == 38
        add2 = 'b1.txt';
        letter = 'b';
    elseif guess == 39
        add2 = 'c1.txt';
        letter = 'c';
    elseif guess == 40
        add2 = 'd1.txt';
        letter = 'd';
    elseif guess == 41
        add2 = 'e1.txt';
        letter = 'e';
    elseif guess == 42
        add2 = 'f1.txt';
        letter = 'f';
    elseif guess == 43
        add2 = 'g1.txt';
        letter = 'g';
    elseif guess == 44
        add2 = 'h1.txt';
        letter = 'h';
    elseif guess == 45
        add2 = 'i1.txt';
        letter = 'i';
    elseif guess == 46
        add2 = 'j1.txt';
        letter = 'j';
    elseif guess == 47
        add2 = 'k1.txt';
        letter = 'k';
    elseif guess == 48
        add2 = 'l1.txt';
        letter = 'l';
    elseif guess == 49
        add2 = 'm1.txt';
        letter = 'm';
    elseif guess == 50
        add2 = 'n1.txt';
        letter = 'n';
    elseif guess == 51
        add2 = 'o1.txt';
        letter = 'o';
    elseif guess == 52
        add2 = 'p1.txt';
        letter = 'p';
    elseif guess == 53
        add2 = 'q1.txt';
        letter = 'q';
    elseif guess == 54
        add2 = 'r1.txt';
        letter = 'r';
    elseif guess == 55
        add2 = 's1.txt';
        letter = 's';
    elseif guess == 56
        add2 = 't1.txt';
        letter = 't';
    elseif guess == 57
        add2 = 'u1.txt';
        letter = 'u';
    elseif guess == 58
        add2 = 'v1.txt';
        letter = 'v';
    elseif guess == 59
        add2 = 'w1.txt';
        letter = 'w';
    elseif guess == 60
        add2 = 'x1.txt';
        letter = 'x';
    elseif guess == 61
        add2 = 'y1.txt';
        letter = 'y';
    elseif guess == 62
        add2 = 'z1.txt';
        letter = 'z';
    end
    address = [add1 add2];
    output = dlmread(address);
end

