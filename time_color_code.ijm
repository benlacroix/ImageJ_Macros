dir2 = getDirectory("Choose Destination Directory ");

run("Time-Lapse Color Coder", "lut=Fire start=1 end=15");
selectWindow("MAX_colored");
name=getTitle;
saveAs("jpeg", dir2+"name_" ++);
     close();

run("Time-Lapse Color Coder", "lut=Spectrum start=1 end=15");
selectWindow("MAX_colored");
name=getTitle;
saveAs("jpeg", dir2+"name_"++);
     close();

run("Time-Lapse Color Coder", "lut=Ice start=1 end=15");
selectWindow("MAX_colored");
name=getTitle;
saveAs("jpeg", dir2+"name_");
     close();

run("Time-Lapse Color Coder", "lut=[16 Colors] start=1 end=15");
selectWindow("MAX_colored");
saveAs(extension, dir2+"MAX_colored_" +i+".tif");
     close();

run("Time-Lapse Color Coder", "lut=[6 Shades] start=1 end=15");
selectWindow("MAX_colored");
saveAs(extension, dir2+"MAX_colored_" +i+".tif");
     close();

run("Time-Lapse Color Coder", "lut=Cool start=1 end=15");
selectWindow("MAX_colored");
saveAs(extension, dir2+"MAX_colored_" +i+".tif");
     close();

run("Time-Lapse Color Coder", "lut=Glasbey start=1 end=15");
selectWindow("MAX_colored");
saveAs(extension, dir2+"MAX_colored_" +i+".tif");
     close();

run("Time-Lapse Color Coder", "lut=[Green Fire Blue] start=1 end=15");
selectWindow("MAX_colored");
saveAs(extension, dir2+"MAX_colored_" +i+".tif");
     close();

run("Time-Lapse Color Coder", "lut=ICA start=1 end=15");
selectWindow("MAX_colored");
saveAs(extension, dir2+"MAX_colored_" +i+".tif");
     close();

run("Time-Lapse Color Coder", "lut=ICA2 start=1 end=15");
selectWindow("MAX_colored");
saveAs(extension, dir2+"MAX_colored_" +i+".tif");
     close();

run("Time-Lapse Color Coder", "lut=Jet start=1 end=15");
selectWindow("MAX_colored");
saveAs(extension, dir2+"MAX_colored_" +i+".tif");
     close();

run("Time-Lapse Color Coder", "lut=Phase start=1 end=15");
selectWindow("MAX_colored");
saveAs(extension, dir2+"MAX_colored_" +i+".tif");
     close();

run("Time-Lapse Color Coder", "lut=UnionJack start=1 end=15");
selectWindow("MAX_colored");
saveAs(extension, dir2+"MAX_colored_" +i+".tif");
     close();
