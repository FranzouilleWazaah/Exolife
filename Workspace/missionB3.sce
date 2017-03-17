img_input = readpbm("C:\Users\DimitriXPS\Documents\GitHub\Exolife\Exolife\Images\Mission 7\HD215497.pbm");
    // dossier destination images séparées
imgDestination = ("C:\Users\DimitriXPS\Documents\GitHub\Exolife\Exolife\Stockage_Images_Missions\")

      
    // filtre jaune + normalisation
imgEau = normalisation(intervalleColor(img_input,0,64))
    //filtre rouge + normalisation      
imgZonesRouge = normalisation(intervalleColor(img_input,65,128))
    // filtre bleu + normalisation       
imgZonesBleuVegetation = normalisation(intervalleColor(img_input,127,189))
    // filtre vert + normalisation 
imgVolcansMontagnes = normalisation(intervalleColor(img_input,191,255))

// écritures des images selon intervalles

writepbm(imgEau,imgDestination+"MissionB3_Eau.pbm");
writepbm(imgZonesRouge,imgDestination+"MissionB3_ZonesRouge.pbm");
writepbm(imgZonesBleuVegetation,imgDestination+"MissionB3_ZonesBleuVegetation.pbm");
writepbm(imgVegetation,imgDestination+"MissionB3_VolcansMontagnes.pbm");
