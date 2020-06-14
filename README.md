# SmartGuard

Problem statement:
Infrastructure is getting “smart”, with sensors and Internet of things (IoT) increasingly embedded in the built environment (e.g. Punggol Digital District). How might we leverage a network of smart infrastructure in the built environment to make better and more timely sense of emergency incidents (e.g. detection of fires developing, building collapses, falls, road traffic accidents etc.) and trigger early intervention measures, without the need to activate precious emergency resources?

Our solution: SmartGuard is an all in one cloud-based AI-driven mobile application that takes data collected from sensors and IoT embedded in our community together with public reporting to predicting anomaly or potential hazard within the community. This is achieved using our state-of-the-art Machine learning algorithms to do fire and anomaly detection via public accessible data such as https://data.gov.sg/.
This aim of this application is to facilitate the flow of valuable information between users to ensure that everyone is alert about potential hazard near them and hence allowing them to carry out early-stage interventions and as result prevent wastage of emergency resource.

<User manual>
  -Anyone can download and login in the SmartGuard mobile application using their SingPass.
  
  -Public data collected about the weather and temperature will be used to train the anomaly detection model to predict potential threat that might be caused as a result of harsh weather condition such as tree family and even fire. This will alert the user to take necessary action to avoid or prevent it. 
  
  -Public reporting is also key for mass sharing of data and incident report on potential hazards. User can report and upload images on potential hazard, fire or threats near them to alert others that are on this application to stay alert too. The computer vision model built in the application will also be able to detect on deep reporting of the incident via its fire and smoke classifier. 
  
  

Youtube pitch for SmartGuard:

Live Demo video for the SmartGuard application: https://www.youtube.com/watch?v=1Ymmxh6YF3k&feature=youtu.be

Link to download SmartGuard app: https://drive.google.com/file/d/1dMdrhrmIjKu9gJbgrAMLKwUJNwjzxwdd/view?usp=sharing



## Getting Started

This project is a starting point for a Flutter application.

Load the flutter file into your SDK, set up emulator Nexus 6 with Pie OS for ideal virtual device. 

Alternativly you can download the *app-release.apk* and install it into your mobile application for testing.

They are two submodule consisting of the code for anomly detection and fire detection alogrithms. Please click on it to access that code.

-Fire_Image_Classifier @d10a95b

-weather-anomaly @13cd811

All ML model has be implemented into the flutter application. 

Fire_Image_Classifier
This is an image classifier model that categorize the image into 3 categories: Fire, Smoke and Normal. Its trained with more than three thousand images and using IBM Cloud Annotation image classifier which employ TensorFlow.

The model will also provide a confidence score for each category with a high accuracy.

Refer to training-log.txt for full training detail.
