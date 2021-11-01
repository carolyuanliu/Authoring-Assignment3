String artist;
String title;




void drawTitleAndArtist(Table t, int i){
    artist = t.getString(i,"artist");
    title = t.getString(i,"title");    
    textSize(34);
    fill(255);
    text("Title: "+title, width/4, .5*height,450,400);
    text("Artist: "+artist, width/4, .65*height,450,400);
    
    artist = t.getString(i+1,"artist");
    title = t.getString(i+1,"title");    
    textSize(34);
    text("Title: "+title, .6*width, .5*height,450,400);
    text("Artist: "+artist, .6*width, .65*height,450,400);
}

//set the events of buttons
public void play(){ 
  background(background);
  display();
  j = 0;
  k = 1;
}

void display(){
  fill(#ffb026);
  textSize(34);
  text("Please select one you prefer,you can click stop when you want to check result.", width/3, .2*height,600,400);
  drawTitleAndArtist(dataSource,0); 
  selectA.show();
  selectB.show();
}




public void selectA(){
  int rows = dataSource.getRowCount();  
   background(background);
   acousticness[j] = dataSource.getFloat(j,"acousticness");
   totalAcousticness += acousticness[j];
   danceability[j] = dataSource.getFloat(j,"danceability");
   totalDanceability += danceability[j];
   energy[j] = dataSource.getFloat(j,"energy");
   totalEnergy += energy[j];
   loudness[j] = dataSource.getFloat(j,"loudness");
   totalLoudness += loudness[j];
   valence[j] = dataSource.getFloat(j,"valence");
   totalValence += valence[j];
   tempo[j] = dataSource.getFloat(j,"tempo"); 
   totalTempo += tempo[j]; 
   
   if(j<rows){
      j+=2;
   } 
   drawTitleAndArtist(dataSource, j); 
}


public void selectB(){ 
   int rows = dataSource.getRowCount();
   background(background);
  
   acousticness[k] = dataSource.getFloat(k,"acousticness");
   totalAcousticness = totalAcousticness+acousticness[k];
   danceability[k] = dataSource.getFloat(k,"danceability");
   totalDanceability = totalDanceability + danceability[k];
   energy[k] = dataSource.getFloat(k,"energy");
   totalEnergy = totalEnergy + energy[k];
   loudness[k] = dataSource.getFloat(k,"loudness");
   totalLoudness = totalLoudness+loudness[k];
   valence[k] = dataSource.getFloat(k,"valence");
   totalValence = totalValence + valence[k];
   tempo[k] = dataSource.getFloat(k,"tempo"); 
   totalTempo = totalTempo + tempo[k];   
    if(j<rows){
      j+=2;
   }
   drawTitleAndArtist(dataSource,j);  
}

public void stop(){
  background(background);
  textSize(32);
  fill(#ffb026);  
  drawResult();
  selectA.hide();
  selectB.hide();
}
