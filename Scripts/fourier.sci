// fonction tfdd
// Calcule la transformée de Fourier directe discrète, en 2 dimensions.
// @param Img Image à partir de laquelle la transformée de Fourier est calculée. L'image doit être en niveau de gris.
// @return ImgTrans Résultat de la transformée de Fourier appliquée à l'image Img.
function [retour] = fourier(img_input)
 // On récupère la taille de l'image passée en paramètre
 [hg, wd] = size(img_input);
 // On créé l'image de retour, de même taille que l'image passée en paramètre, et on l'initialise à 0
 retour = zeros(hg, wd);
 // On boucle pour chaque pixel de l'image résultat
 for u = 1 : hg

 for v = 1 : wd

 // On boucle pour chaque pixel de l'image passée en paramètre
 for x = 1 : hg
 for y = 1 : wd

 // On applique la formule de la transformée de Fourier directe discrète sur le pixel traité
 retour(u, v) = retour(u, v) + img_input(x, y) * exp( ( ( -2 * %i * %pi ) ) * ( ( ( u - 1 ) * ( x - 1 ) / hg ) + ( ( v - 1 ) * ( y - 1 ) / wd ) ) )
 end;
 end;
 end;
 end;
endfunction
