# AuthoringAssignment3
## PersonalityTestAPP

This processing sketch is a programming that can use preference of music to analyse personality of a person.
## GUI
This sketch imports the controlP5 library to build the interface. The reason why I choose controlP5 instead of the Interfascia is that the Interfascia will reduce the resolution of the text.
The background contains a logo and text which designed by myself. There are 4 buttons, a play button, a stop button, and two select buttons.
## Data
The external data is a csv Kaggle data set (Kaggle 2017). In this sketch, there are 6 data are used to calculate, which are acousticness, danceability, energy, loudness, valence, and tempo.
## Algorithm
The algorithm uses the data to calculate the Big Five personality (Roccas, Sagiv, Schwartz, & Knafo, 2002).
Openness to experience is related to acousticness, the higher acousticness represents the normal and conventional music. Then the value of the maximum acousticness – the minimum acousticness can reflect the variety of the person’s preference, so the openness to experience is inventive or curious, otherwise, it is consistent or cautious.
Conscientiousness is also related to acousticness. The average acousticness of the samples are about 0.12, so if someone’ s average acousticness is bigger than 0.12, his conscientiousness should be efficient or organised, otherwise it will be extravagant or careless.
Extroversion is related to energy, tempo and danceability. When one of these values is bigger than the average value, then the person is outgoing or energetic, otherwise is solitary or reserved.
Agreeableness is related to tempo and acousticness. If one of them is bigger than the average value, the person is friendly or compassionate, otherwise is challenging or callous.
Also, neuroticism is related to tempo and acoustic. The difference is that both bigger than the average value means the personality is resilient or confident, the contrast is sensitive or nervous.
## Improvable aspects
This result might be less accuracy. Due to the calling of the data is row by row instead of by random way. In addition, the algorithm only uses 6 arguments to calculate, not accurate enough. In the future, adding the audio of the music might help to get more realistic results.
