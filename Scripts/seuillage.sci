//A function to apply a "seuillage" filter
//imagesrc : The base matrix of the image
//seuil : The value of the seuil
function rendue=seuillage(img_input,seuil)
    //Get the sizes of the image
    [wd,he]=size(img_input);
    //Create an empty render image
    rendue=zeros(wd,he);
    //For each line of the image
    for i=1:he
        //For each colum of the image (each pixel)
        for j=1:wd
            //Get the value of the pixel
            pixel = img_input(j,i);
            //Choose which value to assign
            if pixel < seuil then
                //Set to black
                rendue(j,i) = 0;
            else
                //Set to white
                rendue(j,i) = 255;
            end
        end
    end
endfunction
