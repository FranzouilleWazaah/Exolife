img_input=readpbm("C:\Users\DimitriXPS\Documents\GitHub\Exolife\Exolife\Images\Mission 2/Mars_surface.pbm");
display_gray(img_input);
MoyMatrice=mean(img_input(:));
PourcentageMethane = ((MoyMatrice/256)*100);
disp(PourcentageMethane);
