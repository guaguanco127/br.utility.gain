# Max/MSP External: br.utility.gain.1.0~  
   
By Brian Riordan  
[guaguanco127@gmail.com](mailto:guaguanco127@gmail.com)  
[brianriordanmusic@gmail.com](mailto:brianriordanmusic@gmail.com)  
[https://www.brianriordanmusic.com/](https://www.brianriordanmusic.com/) 
  
Repository for br.utility.gain.1.0, with all related files, can be found here: [https://github.com/guaguanco127/br.utility.gain.1.0](https://github.com/guaguanco127/br.utility.gain.1.0)  
Additional programs can be found here: [https://github.com/guaguanco127/plugins](https://github.com/guaguanco127/plugins)

These files were created with Max/MSP version 8.5.6.

## Table of Contents 

[About](#About)   
[What is an External for Max/MSP?](#External)  
[How To Install](#Install)  
[How To Use](#Use) 
 
 

## <a name="About"></a>About

This is a basic external for Max/MSP that allows the user to adjust the volume of a stereo signal. The decibel range is from -72 dB to +35 dB.
-72 dB is converted to negative infinity dB.
Currently works in any sample rate or bit depth.  

The two versions present in this folder are for either Macintosh or Windows. 

## <a name="External"></a>What is an External for Max/MSP?

An external is a type of object that does not come with your Max/MSP library. Unlike the typical objects that you can call on all versions of Max/MSP, an external must be installed on the users computer a specific way. 

## <a name="Install"></a>How To Install

1. Make Sure Max/MSP 8 is installed in your computer, and make sure it is turned off.

2. In your documents folder, find the Max 8 folder

3. If a folder called "Externals" is not there, then create one in this location. 

4. For Macintosh, copy and paste br.utility.gain.1.0~.mxo into this Externals folder

5. For Windows, copy and paste br.utility.gain.1.0~.mxe64 into this folder

6. Open Max/MSP

7. At the top of the screen find the dropdown menu called "Options" then select "File Preferences"

8. Find an empty userpath and select "choose"

9. From here, find and select the "Externals" folder where the external file was pasted to. Please note that you only have to select this user path within the File Preferences once.

## <a name="Use"></a>How To Use

Open up a patch in Max/MSP, create a new object called br.utility.gain.1.0~

If the installation worked then the object will now exist in your patch. 

This external works almost like the abstraction version. However, you are unable to click inside of an external. 

The first two inlets are for the left and the right stereo signals. The 3rd inlet takes a float message between -72.0 and +35.0 to adjust the decibels.


    



 





