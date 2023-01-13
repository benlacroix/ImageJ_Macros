
// get image IDs of all open images 

dir = getDirectory("Choose a Directory"); 
ids=newArray(nImages); 
nImagesTot = nImages
for (i=1;i<=nImagesTot;i++) { 
Ê Ê Ê Ê selectImage(1); 
Ê Ê Ê Ê title = getImageID; 
Ê Ê Ê Ê print(title); 
Ê Ê Ê Ê saveAs("tiff", dir+title+"_2016_"+d2s(i,1)); 
close ();
}






