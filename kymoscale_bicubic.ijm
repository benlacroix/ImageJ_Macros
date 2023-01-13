// This macro processes all the files in a folder and any subfolders.


macro "kymoscale_bicubic"{

  extension = ".tif";
  dir1 = getDirectory("Choose Source Directory ");
  dir2 = getDirectory("Choose Destination Directory ");
  setBatchMode(true);
  n = 0;
  processFolder(dir1);

  function processFolder(dir1) {
     list = getFileList(dir1);
     for (i=0; i<list.length; i++) {
                       processImage(dir1, list[i]);
      }
  }

  function processImage(dir1, name) {
     open(dir1+name);
     print(n++, name);
     run("Fire");
	getDimensions(width, height, channels, slices, frames);
Ê	run("Scale...", "x=2 y=2 width=["+width*2+"] height=["+height*2+"] interpolation=None create title=scale");
     saveAs(extension, dir2+"kymoscale_" +i+".tif");
     close();
  }



