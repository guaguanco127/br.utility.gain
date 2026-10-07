# Max/MSP Abstraction: br.utility.gain.2.0  
   
By Brian Riordan  
[guaguanco127@gmail.com](mailto:guaguanco127@gmail.com)  
[brianriordanmusic@gmail.com](mailto:brianriordanmusic@gmail.com)  
[https://www.brianriordanmusic.com/](https://www.brianriordanmusic.com/) 
  
Repository for br.utility.gain.2.0, with all related files, can be found here: [https://github.com/guaguanco127/br.utility.gain](https://github.com/guaguanco127/br.utility.gain)  
Additional programs can be found here: [https://github.com/guaguanco127/br.max](https://github.com/guaguanco127/br.max)

These files were created with Max 9.

## Table of Contents 

[About](#About)   
[Which file?](#Files)  
[What is an abstraction?](#Abstraction)  
[How To Install](#Install)  
[How To Use](#Use) 

## <a name="About"></a>About

A click-free gain in decibels: -72 dB is silence, 0 dB leaves the signal unchanged, and +35 dB is the top (the same top as Ableton Utility's Gain). Jumping a gain straight to a new value cuts the wave mid-swing, and that jump is heard as a click. br.utility.gain glides to each new value over 10 ms instead: too fast to hear as a fade, smooth enough that nothing clicks, and the bottom of the range lands on true silence. Works at any sample rate.

## <a name="Files"></a>Which file?

| File | What it is |
|---|---|
| br.utility.gain.2.0 | Mono, no UI. The plain object to patch with |
| br.utility.gain.stereo.2.0 | Stereo, no UI. One gain for both channels, so L and R stay together |
| br.utility.gain.ui.2.0 | Mono, with a Gain dial, ready for a [bpatcher] |
| br.utility.gain.stereo.ui.2.0 | Stereo, with a Gain dial, ready for a [bpatcher] |
| _br.utility.gain.example.2.0 | Example patch: open this first |

The UI versions contain the plain version and have the same inlets and outlets, so either swaps in without rewiring. Open a UI version in patching mode for comments on how it is built.

## <a name="Abstraction"></a>What is an Abstraction?

An abstraction is a subpatcher that is saved as an external file, and can be used just like a standard Max object. As long as your abstraction can be found in the Max file path, you can type its name into a new object box and it will be loaded directly into your patch.  

By saving your logic in an abstraction, you can create modules that can be used in future work with little or no additional programming.

## <a name="Install"></a>How To Install

1. Make sure you have Max 9 installed, and that the Max patch you are using is saved inside a folder.  

2. Copy the .maxpat files you want into the same folder as your patch. The UI versions need their plain version next to them (br.utility.gain.stereo.ui.2.0 uses br.utility.gain.stereo.2.0).

3. In your patch, create an object called br.utility.gain.stereo.2.0 (or any other name from the table above, without .maxpat). For a version with a dial, create a [bpatcher] and choose br.utility.gain.stereo.ui.2.0.maxpat as its patcher.

## <a name="Use"></a>How To Use

Mono (br.utility.gain.2.0 and .ui.2.0):

| Inlet | Control | Type | Range | Default |
|---|---|---|---|---|
| 1 | Audio In | Signal | | |
| 2 | Gain | Signal or Float (UI: Float only) | -72 to 35 dB, -72 = silent, 0 = unchanged | 0 |

Outlet 1: Audio Out (Signal)

Stereo (br.utility.gain.stereo.2.0 and .stereo.ui.2.0):

| Inlet | Control | Type | Range | Default |
|---|---|---|---|---|
| 1 | Left In | Signal | | |
| 2 | Right In | Signal | | |
| 3 | Gain | Signal or Float (UI: Float only) | -72 to 35 dB, -72 = silent, 0 = unchanged | 0 |

Outlets 1 / 2: Left Out / Right Out (Signal)

Every change glides over 10 ms, so you can turn the gain while audio plays. The gain inlet also takes a signal, so an LFO can make a tremolo (the example patch shows one). The Gain dial puts 0 dB at 12 o'clock, with more room for fine moves near unity. In the UI versions a number into the Gain inlet moves the dial, so the screen always shows what you hear. Hover any inlet or outlet in Max for its description.

Double-click the object to see inside it and study how it was built.
