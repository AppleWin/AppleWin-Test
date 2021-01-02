Keys:
-----
. Press 1-3 for AY0 channels A,B,C
. Press 4-6 for AY1 channels A,B,C
. ESC to quit

Info:
-----
Both AY's are initially setup with:
. ABC tone channels disabled
. ABC volume=15 (max) and period=0x400

Then the keys just toggle the tone channel enable bits.

Under emulation, enabling A+B then toggling B off and on again will produce different combined tones, depending on the alignment of A and B. But on real h/w, the combined tone is just a louder version of the single-channel tone. This can be seen if you sample the output of a real MB/Phasor.

Presumably emulation restarts the tone when its enabled; whereas on real h/w it's always actively oscillating at that period, just with or without the output enabled.