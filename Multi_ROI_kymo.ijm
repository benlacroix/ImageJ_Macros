macro "multi_kymo"{

path = getDirectory("Choose saving directory");
nb_tracks = roiManager("count");

for (i=0; i<nb_tracks; i++){
	roiManager("Select", i);
	run("MultipleKymograph ", "linewidth=1");
	saveAs("Tiff",path+"kymo_" +i+".tif" );
	run("Close");
}
}
