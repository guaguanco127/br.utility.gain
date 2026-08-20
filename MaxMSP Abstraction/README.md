# Max/MSP Abstraction: br.utility.gain.abs.1.0  
   
By Brian Riordan  
[guaguanco127@gmail.com](mailto:guaguanco127@gmail.com)  
[brianriordanmusic@gmail.com](mailto:brianriordanmusic@gmail.com)  
[https://www.brianriordanmusic.com/](https://www.brianriordanmusic.com/) 
  
Repository for br.utility.gain.1.0, with all related files, can be found here: [https://github.com/guaguanco127/br.utility.gain.1.0](https://github.com/guaguanco127/br.utility.gain.1.0)  
Additional programs can be found here: [https://github.com/guaguanco127/plugins](https://github.com/guaguanco127/plugins)

These files were created with Max/MSP version 8.5.6.

## Table of Contents 

[About](#About)   
[What is an abstraction?](#Abstraction)  
[How To Install](#Install)  
[How To Use](#Use) 
 
 

## <a name="About"></a>About

This is a basic abstraction for Max/MSP that allows the user to adjust the volume of a stereo signal. The decibel range is from -72 dB to +35 dB.
-72 dB is converted to negative infinity dB.
Currently works in any sample rate or bit depth.  

There are two different versions:

The first one, br.utility.gain.abs.1.0.maxpat, is an abstraction build using gen~.  

The second one, br.utility.gain.basic.abs.1.0.maxpat, uses only MSP objects without the use of gen~. This version is more basic and heavily commented. It appears in presentation mode with a [live.dial] object inside so you could use it inside of a [bpatcher]

The purpose for having these two different versions is so that novices to Max/MSP can learn how basic devices can be created by observing the basic version. Additionally, those familiar to Max/MSP that are novices to gen~ can learn by comparing the two versions. Additionally, the basic version is ready for a [bpatcher] while the other version can be used with signals to control the decibels.

## <a name="Abstraction"></a>What is an Abstraction?

An abstraction is a subpatcher that is saved as an external file, and can be used just like a standard Max object. As long as your abstraction can be found in the Max file path, you can type its name into a new object box and it will be loaded directly into your patch.  

By saving your logic in an abstraction, you can create modules that can be used in future work with little or no additional programming. This allows you to parlay your Max knowledge into more efficient work in the future, and will help you create programming systems that are modular and easier to maintain.

## <a name="Install"></a>How To Install

1. Make sure you have Max/MSP 8 installed in your computer. And, make sure you are using a Max patch that is inside of a folder.  

2. For the normal version of this abstraction, copy and paste br.utility.gain.abs.1.0.maxpat inside of the same folder as the Max patch you are using.     
  
3. For the basic version of this abstraction, copy and paste br.utility.gain.basic.abs.1.0.maxpat inside of the same folder as the Max patch you are using. 

4. In the Max patch you are using, create an object called br.utility.gain.abs.1.0 (or br.utility.gain.basic.abs.1.0 for the basic version.)

## <a name="Use"></a>How To Use

The first two inlets are for the left and the right stereo signals. The far right inlet is for a float to adjust the decibels between -72.0 and +35.0 dB  

Double click on the object and you can see inside of the object. This way you can study how it was built. 
    



 





