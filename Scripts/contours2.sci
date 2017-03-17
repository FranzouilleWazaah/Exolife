function img_out=contours2(img_input)
    filterx = [-1 -2 -1;0 0 0;1 2 1]
    imgfx = convolution(img_input,filterx,6)
    
    filtery = [-1 0 1;-2 0 2;-1 0 1]
    imgfy = convolution(img_input,filtery,6)
    
    [wd,he]=size(imgfx);
    //Create an empty image
    img_out = zeros(wd,he);
    //For each lines
    for i=1:he
        //For each columns
        for j=1:wd
            pix1 = imgfx(j,i);
            pix2 = imgfy(j,i);
            img_out(j,i) = sqrt(pix1^2 + pix2^2);
        end
    end
endfunction
