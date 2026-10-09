# Max/MSP Patches, Abstractions, Externals, RNBO, VSTs, and Ableton Max for Live 

## br.utility.gain.2.2
   
By Brian Riordan  
[guaguanco127@gmail.com](mailto:guaguanco127@gmail.com)  
[brianriordanmusic@gmail.com](mailto:brianriordanmusic@gmail.com)  
[https://www.brianriordanmusic.com/](https://www.brianriordanmusic.com/) 
  
Repository for br.utility.gain.2.2, with all related files, can be found here: [https://github.com/guaguanco127/br.utility.gain](https://github.com/guaguanco127/br.utility.gain)  
Additional programs can be found here: [https://github.com/guaguanco127/br.max](https://github.com/guaguanco127/br.max)

These files were created with Max 9, or RNBO.

## Links

[About](#About)  
[Max/MSP Abstraction](https://github.com/guaguanco127/br.utility.gain/tree/main/MaxMSP%20Abstraction) To use as an abstraction within Max/MSP   
[Max/MSP RNBO for External or VST](https://github.com/guaguanco127/br.utility.gain/tree/main/RNBO%20Patchers%20for%20External%20or%20VST) To build your own Max external, or a VST or AU audio plugin (needs RNBO)  
[Ableton Max for Live Device](https://github.com/guaguanco127/br.utility.gain/tree/main/Ableton%20Max%20For%20Live) To use inside of Ableton Suite   

## <a name="About"></a>About

A click-free gain in decibels: -72 dB is silence, 0 dB leaves the signal unchanged, and +35 dB is the top (the same top as Ableton Utility's Gain). Jumping a gain straight to a new value cuts the wave mid-swing, and that jump is heard as a click. br.utility.gain glides to each new value over 10 ms instead: too fast to hear as a fade, smooth enough that nothing clicks, and the bottom of the range lands on true silence. Works at any sample rate.

You can use it as an abstraction within Max/MSP or as a Max for Live device within Ableton Live Suite. With RNBO you can also build your own Max external or VST/AU plugin from the included RNBO patch.

## <a name="New22"></a>What's new in 2.2

- The [State outlet](#State) is now on the UI versions only (the ones with a dial). It reports the dial, so turning it, numbers into the inlets and preset recalls all show up, with the same names and the same position as in 2.1.
- The plain versions (no UI) and the RNBO patch no longer have a State outlet: whatever drives them already knows the values. Their outlets are audio only again, as in 2.0.
- The Max for Live device is unchanged apart from the version number.

## <a name="New21"></a>What's new in 2.1

- New [State outlet](#State): every abstraction and the RNBO patch now send `gain <dB>` (for example `gain -6.`) out of their last outlet the moment it changes, so a display, Mira or another patch can follow along.
- The inlets and the audio outlets are unchanged. Only the file names move from 2.0 to 2.1.
- The Max for Live device is unchanged apart from the version number.

## <a name="New"></a>What's new in 2.0

- The glide now lands on true silence at -72 dB (1.0 used a 5 ms smoother that never fully reached 0), and it glides over 10 ms.
- Mono and stereo versions, each with or without a Gain dial (see [Which file?](#Files)).
- The gain inlet takes a signal as well as a number, so an LFO can make a tremolo.
- One RNBO patch now makes both the Max external and the VST3/AU plugin. Prebuilt externals are no longer included: the abstraction does the same job and more, so build an external only if you need one.
- The Max for Live parameter is named Gain (1.0's was "live.dial"), so it reads clearly in Live's automation lanes. The separate "basic" device is gone; the commented teaching version now lives in the UI abstractions.
- File names changed (no more `.abs`), and the plain name is now the mono version: 1.0's stereo object is now br.utility.gain.stereo.2.2. Its inlets are in the same order: L, R, Gain, with the same -72 to 35 dB range.

## <a name="Files"></a>Which file?

| File | What it is |
|---|---|
| br.utility.gain.2.2 | Mono, no UI. The plain object to patch with |
| br.utility.gain.stereo.2.2 | Stereo, no UI. One gain for both channels, so L and R stay together |
| br.utility.gain.ui.2.2 | Mono, with a Gain dial, ready for a [bpatcher] |
| br.utility.gain.stereo.ui.2.2 | Stereo, with a Gain dial, ready for a [bpatcher] |
| _br.utility.gain.example.2.2 | Example patch: open this first (its stereo core tab shows br.utility.gain.stereo.2.2, the plain stereo version) |

The UI versions contain the plain version and have the same inlets and audio outlets (plus State last), so either swaps in without rewiring. Open a UI version in patching mode for comments on how it is built.

## <a name="Use"></a>How To Use

Mono (br.utility.gain.2.2 and .ui.2.2):

| Inlet | Control | Type | Range | Default |
|---|---|---|---|---|
| 1 | Audio In | Signal | | |
| 2 | Gain | Signal or Float (UI: Float only) | -72 to 35 dB, -72 = silent, 0 = unchanged | 0 |

Outlet 1: Audio Out (Signal)  
Outlet 2 (UI version only): State (Message), see [State outlet](#State)

Stereo (br.utility.gain.stereo.2.2 and .stereo.ui.2.2):

| Inlet | Control | Type | Range | Default |
|---|---|---|---|---|
| 1 | Left In | Signal | | |
| 2 | Right In | Signal | | |
| 3 | Gain | Signal or Float (UI: Float only) | -72 to 35 dB, -72 = silent, 0 = unchanged | 0 |

Outlets 1 / 2: Left Out / Right Out (Signal)  
Outlet 3 (UI version only): State (Message), see [State outlet](#State)

Every change glides over 10 ms, so you can turn the gain while audio plays. The gain inlet also takes a signal, so an LFO can make a tremolo (the example patch shows one). The Gain dial puts 0 dB at 12 o'clock, with more room for fine moves near unity. In the UI versions a number into the Gain inlet moves the dial, so the screen always shows what you hear. Hover any inlet or outlet in Max for its description.

## <a name="State"></a>State outlet

The last outlet of the UI versions (State) sends the current gain as a named message the moment it changes: `gain <dB>` (for example `gain -6.`). Use it to keep a display, Mira or another patch in sync. Pick it out by name with [route gain], not by position, so your patch keeps working if a later version adds controls. Repeats are filtered out.

| Message | Type | Range |
|---|---|---|
| gain | Float | -72 - 35 dB, -72 = silent |

The plain versions have no State outlet: whatever drives them already knows the values. The example patch has a State outlet tab that shows all of this.

