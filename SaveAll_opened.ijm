
// get image IDs of all open images 

dir = getDirectory("Choose a Directory"); 
ids=newArray(nImages); 
nImagesTot = nImages
for (i=1;i<=nImagesTot;i++) { 
� � � � selectImage(1); 
� � � � title = getImageID; 
� � � � print(title); 
� � � � saveAs("tiff", dir+title+"_2016_"+d2s(i,1)); 
close ();
}






