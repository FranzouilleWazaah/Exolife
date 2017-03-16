// fonction qui additionne 2 images
function render=addition(img1,img2)
    //Largeur et hauteur
    [wd,he]=size(img1);
    // On créer une image vierge pour la remplir des 2 images
    render = zeros(wd,he);
    // Pour chaque colonne
    for i=1:he
        // Pour chaque ligne
        for j=1:wd
            pixel1 = img1(j,i);
            pixel2 = img2(j,i);

// on rentre l'addition dans l'image vierge
            render(j,i) = max(pixel1 + pixel2,0);
        end
    end
endfunction
