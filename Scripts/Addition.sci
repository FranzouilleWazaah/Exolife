// fonction qui additionne 2 images
function render=soustraction(img_input1,img_input2)
    //Largeur et hauteur
    [wd,he]=size(img_input1);
    // On créer une image vierge
    render = zeros(wd,he);
    // Pour chaque colonne
    for i=1:he
        // Pour chaque ligne
        for j=1:wd
            pixels1 = img_input1(j,i);
            pixels2 = img_input2(j,i);

// on rentre l'addition dans l'image vierge
            render(j,i) = max(pix1 + pix2,0);
        end
    end
endfunction
