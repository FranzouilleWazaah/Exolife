// Fonction normalisation
function retour=normalisation(img_input)
    //Hauteur et largeur de l'image
    [wd,he]=size(img_input)
    //Création d'un retour avec des 0
    retour=zeros(wd,he)
    //Niveau minimum de gris
    nivgrismin=min(img_input);
    //Niveau maximum de gris
    nivgrismax=max(img_input);
    //boucle taille
    for i=1:wd
        for j=1:he
            //valeur de gris du pixel
            pixel = img_input(i,j);
            //Soustraction de la valeur minimal 
            pixel = pixel - nivgrismin;
            //normalisation de la valeur
            pixel = round((pixel*255)/(nivgrismax-nivgrismin));
            // enregistrement de la valeur du pixel sur le retour
            retour(i,j)=pixel;
        end            
    end
endfunction
