//Fonction qui permet d'isoler les intervalles de gris
//img_input : l'image source
//valeur_mini : valeur minimum
//valeur_max : valeur maximum
function img_vierge_intervalle=intervalleColor(img_input,valeur_mini,valeur_max)
    //Largeur-hauteur de l'image
    [wd,he]=size(img_input);
    //Création image vierge
    img_vierge_intervalle = zeros(wd,he);
    //Pour chaque colonne
    for i=1:he
        //Pour chaque ligne
        for j=1:wd
            pixel = img_input(j,i);
            if pixel < valeur_max & pixel > valeur_mini then
                img_vierge_intervalle(j,i) = pixel;
            end
        end
    end
endfunction
