#Code Book for project assignment to class Getting and cleaning data on Coursera

For information on how the data was tydied and how the script works, please refer to the readme.md


##Subject and Activity

* subject_id:
  Integer identifying the testsubject participating in activities
  
* activity: 
  Name of activity completed
  + laying
  + sitting
  + standing
  + walking
  + walking downstairs
  + walking upstairs

##Measures
All measures describe the mean of the measures of an activity performed per subject. For all measures the mean of measured values was used. Averaging the signals in a signal window sample. These are used on the angle() variable.


###Time related measures
Time domain signals were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. 

###Acceleration measures
Acceleration signal was then separated into body and gravity acceleration signals using another low pass Butterworth filter with a corner frequency of 0.3 Hz. Measures were taken along the x-,y-, and z-axis.

###Jerk measures
Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals. 

###Magnitude measures
The magnitude of the three-dimensional signals were calculated using the Euclidean norm. 

####Mean of time related body acceleration measures along all three axes:
* time_body_acceleration.mean.x                                
* time_body_acceleration.mean.y                                
* time_body_acceleration.mean.z      

####Standard deviation of time related body acceleration measures along all three axes:
* time_body_acceleration.standard_deviation.x                  
* time_body_acceleration.standard_deviation.y                  
* time_body_acceleration.standard_deviation.z  

####Mean of time related gravity acceleration measures along all three axes:
* time_gravity_acceleration.mean.x                              
* time_gravity_acceleration.mean.y                              
* time_gravity_acceleration.mean.z     

####Standard deviation of time related gravity acceleration measures along all three axes:
* time_gravity_acceleration.standard_deviation.x                
* time_gravity_acceleration.standard_deviation.y                
* time_gravity_acceleration.standard_deviation.z   

####Mean of time related body acceleration jerk along all three axes:
* time_body_acceleration_jerk.mean.x                           
* time_body_acceleration_jerk.mean.y                           
* time_body_acceleration_jerk.mean.z        

####Standard deviation of time related body acceleration jerk along all three axes:
* time_body_acceleration_jerk.standard_deviation.x             
* time_body_acceleration_jerk.standard_deviation.y             
* time_body_acceleration_jerk.standard_deviation.z        

####Mean of time related body gyroscope measures along all three axes:
* time_body_gyroscope.mean.x                                   
* time_body_gyroscope.mean.y                                   
* time_body_gyroscope.mean.z         

####Standard deviatio of time related body gyroscope measures along all three axes:
* time_body_gyroscope.standard_deviation.x                     
* time_body_gyroscope.standard_deviation.y                     
* time_body_gyroscope.standard_deviation.z 

####Mean of time related gyroscope acceleration jerk along all three axes:
* time_body_gyroscope_jerk.mean.x                              
* time_body_gyroscope_jerk.mean.y                              
* time_body_gyroscope_jerk.mean.z 

####Standard deviation of time related gyroscope acceleration jerk along all three axes:
* time_body_gyroscope_jerk.standard_deviation.x                
* time_body_gyroscope_jerk.standard_deviation.y                
* time_body_gyroscope_jerk.standard_deviation.z  

####Mean of time related body acceleration magnitude:
* time_body_acceleration_magnitude.mean 

####Standard deviation of time related body acceleration magnitude:
* time_body_acceleration_magnitude.standard_deviation        

####Mean of time related gravity acceleration magnitude:
* time_gravity_acceleration_magnitude.mean  

####Standard deviation of time related gravity acceleration magnitude:
* time_gravity_acceleration_magnitude.standard_deviation        

####Mean of time related body acceleration jerk magnitude:
* time_body_acceleration_jerk_magnitude.mean    

####Standard deviation of time related body acceleration jerk magnitude:
* time_body_acceleration_jerk_magnitude.standard_deviation     

####Mean of time related body gyroscope magnitude:
* time_body_gyroscope_magnitude.mean              

####Standard deviation of time related body gyroscope magnitude:
* time_body_gyroscope_magnitude.standard_deviation   

####Mean of time related body gyroscope jerk magnitude:
* time_body_gyroscope_jerk_magnitude.mean    

####Standard deviation of time related body gyroscope erk magnitude:
* time_body_gyroscope_jerk_magnitude.standard_deviation  


###Frequency domain measures
Fast Fourier Transform (FFT) was applied to these signals. 
mean.frequency: Weighted average of the frequency components to obtain a mean frequency.

* frequency_body_acceleration.mean.x                           
* frequency_body_acceleration.mean.y                           
* frequency_body_acceleration.mean.z                           
* frequency_body_acceleration.standard_deviation.x             
* frequency_body_acceleration.standard_deviation.y             
* frequency_body_acceleration.standard_deviation.z             
* frequency_body_acceleration.mean.frequency.x                 
* frequency_body_acceleration.mean.frequency.y                 
* frequency_body_acceleration.mean.frequency.z                 
* frequency_body_acceleration_jerk.mean.x                     
* frequency_body_acceleration_jerk.mean.y                      
* frequency_body_acceleration_jerk.mean.z         
* frequency_body_acceleration_jerk.standard_deviation.x        
* frequency_body_acceleration_jerk.standard_deviation.y        
* frequency_body_acceleration_jerk.standard_deviation.z        
* frequency_body_acceleration_jerk.mean.frequency.x            
* frequency_body_acceleration_jerk.mean.frequency.y            
* frequency_body_acceleration_jerk.mean.frequency.z
* frequency_body_gyroscope.mean.x                              
* frequency_body_gyroscope.mean.y                              
* frequency_body_gyroscope.mean.z                 
* frequency_body_gyroscope.standard_deviation.x                
* frequency_body_gyroscope.standard_deviation.y                
* frequency_body_gyroscope.standard_deviation.z                
* frequency_body_gyroscope.mean.frequency.x                    
* frequency_body_gyroscope.mean.frequency.y                    
* frequency_body_gyroscope.mean.frequency.z                    
* frequency_body_acceleration_magnitude.mean               
* frequency_body_acceleration_magnitude.standard_deviation
* frequency_body_acceleration_magnitude.mean.frequency
* frequency_body_acceleration_jerk_magnitude.mean 
* frequency_body_acceleration_jerk_magnitude.standard_deviation
* frequency_body_acceleration_jerk_magnitude.mean.frequency   
* frequency_body_gyroscope_magnitude.mean                      
* frequency_body_gyroscope_magnitude.standard_deviation      
* frequency_body_gyroscope_magnitude.mean.frequency           
* frequency_body_gyroscope_jerk_magnitude.mean                 
* frequency_body_gyroscope_jerk_magnitude.standard_deviation   
* frequency_body_gyroscope_jerk_magnitude.mean.frequency  
