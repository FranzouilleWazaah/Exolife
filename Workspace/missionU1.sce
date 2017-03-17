//sobel operator
image=readpbm("C:\Users\DimitriXPS\Documents\GitHub\Exolife\Exolife\Images\Mission 10\U1_surface.pbm");

sizex =size(image, 1);
sizey =size(image, 2);

//Create an empty image
imgun = zeros(sizex,sizey);



//Create an empty image
imgdeu = zeros(sizex,sizey);


//Create an empty image
retour = zeros(sizex,sizey);

for i = 2:sizex-1,
  for j = 2:sizey-1,
      imgun(i,j)= image(i-1,j-1) -  image(i+1,j-1) + (image(i-1,j))*2  - (image(i+1,j))*2 + image(i-1,j+1) - image(i+1,j+1);    
      
  end,
  end
  
 for i = 2:sizex-1,
 for j = 2:sizey-1,

  imgdeu(i,j) = image(i-1,j-1) - image(i-1,j+1) + (image(i,j-1))*2 - (image(i,j+1))*2 + image(i+1,j-1) - image(i+1,j+1);

      
      
 end,
  end
  
  
  for i = 2:sizex-1,
 for j = 2:sizey-1,

  retour(i,j) = sqrt(  (imgun(i,j)*imgun(i,j)) + (imgdeu(i,j)*imgdeu(i,j))   );

      
      
 end,
  end
  
  


display_gray(median(retour,1));
