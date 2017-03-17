//Apply a filter to the image
//imgsrc : the image to apply the filter
//filter : 
function rendue=convolution(img_input,filter,coef)
    //The size of the images
    [wd,he]=size(img_input);
    //The size of the mask
    [mwd,mhe]=size(filter);
    //Calculate the center
    mcx = ceil(mwd/2)
    mcy = ceil(mhe/2)
    //Create an empty image
    rendue = zeros(wd,he);
    //For each lines
    for i=1:he
        //For each columns
        for j=1:wd
            //The rendered pixel
            rpix = 0
            skip = 0
            //For each lines of the mask
            for y=1:mhe
                //For each columns of the mask
                for x=1:mwd
                    nx = j+(x-mcx)
                    ny = i+(y-mcy)
                    if nx > 0 & nx < wd & ny > 0 & ny < he then
                        //Get the color of the neighbour pixel
                        pix = img_input(nx,ny);
                        //Add the value to the sum
                        rpix = rpix + (filter(x,y)*pix)
                    else
                        skip = 1
                    end
                end
            end
            if skip == 0 then
                rpix = round(rpix/coef)
                rendue(j,i) = rpix
            else
                rendue(j,i) = 0
            end
        end
    end
endfunction
