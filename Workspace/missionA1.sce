//1 Chargement de l'image
img_input=readpbm("C:\Users\DimitriXPS\Documents\GitHub\Exolife\Exolife\Images\Mission 1\Encelade_surface.pbm");
//2 Affichage image
display_gray(img_input);
// Taille de l'entrée de l'image
sizex = size(img_input, 1)
sizey = size(img_input, 2)
//Création image sortie
img_output=zeros(sizex,sizey);
// boucle pour modifier tous les pixels au dessus de 210
for i=1:sizex
    for j=1:sizey
        if img_input(i,j) > 210 then
           img_output(i,j) = 255;
    end,
end;
end;
display_gray(img_output);

