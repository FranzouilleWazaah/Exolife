//Apply a median filter to the image
//imgsrc : the image to apply the filter
function rendue=median(img_input,marge)
    //The size of the images
    [wd,he]=size(img_input);
    //Create an empty image
    rendue = zeros(wd,he);
    //For each lines
    for i=1:he
        //For each columns
        for j=1:wd
            pixel = img_input(j,i)
            if j-1 > 0 & j+1 < wd & i-1 > 0 & i+1 < he then
                valeur = []
                ncx = 2
                ncy = 2
                for y=1:3
                    for x=1:3
                        valeur(length(valeur)+1) = img_input(j+(x-ncx),i+(y-ncy))
                    end
                end
                valeur = gsort(valeur,"g","i")
                avg = 0
                for a=1:length(valeur)
                    avg = avg + valeur(a)
                end
                avg = avg / length(valeur)
                if img_input(j,i) > avg+marge | img_input(j,i) < (avg-marge) then
                    rendue(j,i) = valeur(round(length(valeur)/2))
                else
                    rendue(j,i) = img_input(j,i)
                end
            end
        end
    end
endfunction
