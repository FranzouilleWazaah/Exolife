//addition
img_input1=readpbm("C:\Users\DimitriXPS\Documents\GitHub\Exolife\Exolife\Images\Mission 4\Jupiter1.pbm");
img_input2=readpbm("C:\Users\DimitriXPS\Documents\GitHub\Exolife\Exolife\Images\Mission 4\Jupiter2.pbm");

sizex = size(img_input1, 1)
sizey = size(img_input1, 2)

for i = 2:sizex-1
    for j = 2:sizey-1
        if img_input1(i,j) == 255 then 
            img_input1(i,j) = img_input2(i,j);
        elseif img_input1(i,j) == 0 then
            img_input1(i,j) = img_input2(i,j);
        else 
            img_input1(i,j) = img_input1(i,j);
        end,
            if (img_input1(i,j) == 255) & ((img_input1(i-1,j-1) == 0) | (img_input1(i-1,j) == 0)           | (img_input1(i-1,j+1) == 0) | (img_input1(i,j-1) == 0) | (img_input1(i,j+1) == 0)             | (img_input1(i+1,j-1) == 0) | (img_input1(i+1,j) == 0) | (img_input1(i+1,j+1) == 0)) then
                img_input1(i,j) = 0;    
        end,
     end,
end

sizex = size(img_input1, 1)
sizey = size(img_input1, 2)

for i = 2:sizex-1
    for j = 2:sizey-1
        if img_input1(i,j) == 255 then 
            img_input1(i,j) = img_input2(i,j);
        elseif img_input1(i,j) == 0 then
            img_input1(i,j) = img_input2(i,j);
        else 
            img_input1(i,j) = img_input1(i,j);
           end, 
            if (img_input1(i,j) == 255) & ((img_input1(i-1,j-1) == 0) | (img_input1(i-1,j) == 0)           | (img_input1(i-1,j+1) == 0) | (img_input1(i,j-1) == 0) | (img_input1(i,j+1) == 0)             | (img_input1(i+1,j-1) == 0) | (img_input1(i+1,j) == 0) | (img_input1(i+1,j+1) == 0)) then
                img_input1(i,j) = 0;
            end,
            if img_input1(i,j) == 255 then
                img_input1(i,j) = ( img_input1(i-1,j) + img_input1(i+1,j)) /2;
                end,
                if img_input1(i,j) == 0 & img_input1(i-1,j-1) <> 0 & img_input1(i-1,j)<> 0 & img_input1(i-1,j+1)<> 0 & img_input1(i+1,j-1)<> 0 & img_input1(i+1,j)<> 0 & img_input1(i+1,j+1)<> 0 then
                    img_input1(i,j) = ( img_input1(i-1,j) + img_input1(i+1,j)) /2;    
            end,
     end,
end

display_gray(img_input1);



