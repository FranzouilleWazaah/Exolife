function histo=histogramme(img_input)



wd = size(img_input, 1);
he = size(img_input, 2);

retour=zeros(1,256);
for i = 1:wd
    for j = 1:he
               y=img_input(i,j)
        retour(1,y+1) =  retour(1,y+1)+1;
end,
end


x=[1:256];
for each = 1:256
n(each)=retour(1,each);

end
//n=[table_vide(1,1):table_vide(1,10)];
clf; bar(x,n)
endfunction
