//fonction histogramme

function histo_out = histogramme(image)

histo_out = zeros(1,256);
histo_cumul = zeros(1,256);

    sizeX=size(img_input,1);
    sizeY=size(img_input,2);


    for i=1:sizeX
        for j=1:sizeY
            //valeur de gris du pixel
            pixel = image(i,j);
            histo_out(pixel+1)=histo_out(pixel+1)+1
        end
    end


figure
plot2d(histo_out);
endfunction
