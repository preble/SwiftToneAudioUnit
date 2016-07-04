# SwiftToneAudioUnit

Demonstrates how to create an AudioUnit with a render callback implemented in Swift.
The provided callback generates a 440Hz tone.

## Is this a good idea?

In order to avoid glitches in your audio unit's output it's critical that the render callback
returns as quickly as possible. This means that you must avoid both computationally expensive operations, as well
as blocking operations such as network and file I/O, locks/mutexes/semaphores, and memory allocation.

Although the code in this particular implementation of the render callback is very simple and uses only structs,
it's difficult to know for certain what the Swift runtime is doing under the covers.
Michael Tyson has specifically advised against using Swift in his blog post,
[Four common mistakes in audio development][mistakes].

For as simple as this callback is, it may as well be written in C. Most are not this simple, so the question
seems to be one of risk versus the specifics of what you need to do in your render callback.
If you have sufficiently Swifty data structures driving your render callback behavior there is a development time cost
to funnel them all into C structures. Some applications simply don't need perfect audio playback.
At this time I don't think there is an absolute answer to the question.

[mistakes]: http://atastypixel.com/blog/four-common-mistakes-in-audio-development/
