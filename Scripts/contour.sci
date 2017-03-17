function rendue=contours(img_input)

sizex =size(img_input, 1);
sizey =size(img_input, 2);

//Create an empty image
img_1 = zeros(sizex,sizey);



//Create an empty image
img_2 = zeros(sizex,sizey);


//Create an empty image
rendue = zeros(sizex,sizey);

for i = 2:sizex-1,
  for j = 2:sizey-1,
      img_1(i,j)= img_input(i-1,j-1) -  img_input(i+1,j-1) + (img_input(i-1,j))*2  - (img_input(i+1,j))*2 + img_input(i-1,j+1) - img_input(i+1,j+1);    
      
  end,
  end
  
 for i = 2:sizex-1,
 for j = 2:sizey-1,

  img_2(i,j) = img_input(i-1,j-1) - img_input(i-1,j+1) + (img_input(i,j-1))*2 - (img_input(i,j+1))*2 + img_input(i+1,j-1) - img_input(i+1,j+1);

      
      
 end,
  end
  
  
  for i = 2:sizex-1,
 for j = 2:sizey-1,

  rendue(i,j) = sqrt(  (img_1(i,j)*img_1(i,j)) + (img_2(i,j)*img_2(i,j))   );

      
      
 end,
end
endfunction
