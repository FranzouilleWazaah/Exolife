img_input=readpbm("C:\Users\DimitriXPS\Documents\GitHub\Exolife\Exolife\Images\Mission 9\Gliese 581d V2.pbm");

img_out = intervalleColor(normalisation(contours2(img_input)),100,255)
display_gray(img_out)
