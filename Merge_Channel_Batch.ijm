macro "batch_merge_channels"{
    setBatchMode(true);
    file1 = getDirectory("CYAN");
    //you can change the name of the inquiry to whatever wavelength you need, e.g. CY5
    list1 = getFileList(file1);
    //gets the list of files in the folder DAPI
    n1 = lengthOf(list1);
    //gets the number of files in folder DAPI, it should be the same as the number 
    //of files in folder GFP
    file2 = getDirectory("MAG");
    list2 = getFileList(file2); 
    file3 = getDirectory("Merge");
    //the output folder. When started first the number of files is 0
    list3 = getFileList(file3);
    n2 = lengthOf(list3);
    small = n1;
    //condition for for-loop

    for(i = n2 + 1; i < small; i++) {
      //i will always follow the aborted number of merges, you might not have the problem, 
      //but with small memory and a huge set of images it is useful
      //name = list2[i];
	 //name = "merge_"[i];
      //not to lose your track, though you can change it to anything else
      open(file1 + list1[i]);
      open(file2 + list2[i]);
      run("Merge Channels...", "c6=[" + list2[i] + "] c5=[" + list1[i] + "] create keep");
	//create composite
      saveAs("tiff", file3 + "merge_" +i-1+".tif" );

    }
}
