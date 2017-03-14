//1 Load Image
img_input=readpbm("C:\Users\DimitriXPS\Documents\GitHub\Exolife\Exolife\Images\Mission 1\Encelade_surface.pbm");
//2 Display Image
display_gray(img_input);
// Size of input image
sizex = size(img_input, 1)
sizey = size(img_input, 2)
//Create output image
img_output=zeros(sizex,sizey)

for i=1:sizex
    for j=1:sizey
        if img_input(i,j) > 210 then
           img_output(i,j) = 255;
    end,
end;
end;
display_gray(img_output);
