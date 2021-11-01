float[] acousticness = new float[1230];
float[]danceability = new float[1230];
float[]energy = new float[1230];
float[]loudness = new float[1230];
float[]valence = new float[1230];
float[]tempo = new float[1230];

float maxAcousticness = acousticness[0],minAcousticness = acousticness[0];
float averageEnergy,averageAcousticness,averageDanceability,averageLoudness,averageValence,averageTempo;
float totalAcousticness = 0,totalDanceability = 0,totalEnergy = 0,totalLoudness = 0,totalValence = 0,totalTempo = 0;
String openness,extroversion,conscientiousness,agreeableness,neuroticism;


//calculate the personality
void drawResult(){
  if (j > 0){
  averageAcousticness = totalAcousticness/j;
  averageDanceability = totalDanceability/j;
  averageEnergy = totalEnergy/j;
  averageLoudness = totalLoudness/j;
  averageValence = totalValence/j;
  averageTempo = totalTempo/j;
  }
  if (j<5){
    text("Not enough data to answer.\nPlease select at least 3 songs.\nClick play to restart.",.4*width, .6*height,600,300);
    }
  else{
    for(int n = 0; n < acousticness.length; n++){
        if(acousticness[n]>maxAcousticness){
          maxAcousticness = acousticness[n];
        }
        if(acousticness[n]<minAcousticness){
          minAcousticness = acousticness[n];
        }
    }
    if((maxAcousticness-minAcousticness) >= 0.1){
      openness="\nOpenness to experience:inventive/curious ";
    } 
    else{openness="\nOpenness to experience:consistent/cautious";}
    
    if(averageEnergy>0.71||averageTempo>118||averageDanceability>0.62){
      extroversion = "\nExtroversion:outgoing/energetic ";    
    } 
    else{extroversion="\nExtroversion:solitary/reserved ";}
    
    if(averageAcousticness>0.12){
      conscientiousness="\nConscientiousness:efficient/organised ";
    }
    else{
      conscientiousness="\nConscientiousness:extravagant/careless";
    }
    
    if(averageTempo>118||averageAcousticness>0.12){
      agreeableness = "\nAgreeableness:friendly/compassionate ";
    }
    else{
      agreeableness = "\nAgreeableness:challenging/callous";
    }
    
    if (averageAcousticness>0.12&&averageTempo>118){
      neuroticism="\nNeuroticism:resilient/confident ";
  }
    else{
      neuroticism="\nNeuroticism:sensitive/nervous ";
    }
    
    text("Your personality is: "+ openness + extroversion + conscientiousness + agreeableness + neuroticism, .3*width, .25*height,800,300);
    }  
    
    j = 0;
}
