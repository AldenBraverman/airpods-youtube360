<p align="center">
  <h3 align="center">Apple Airpods Playback for Youtube 360 Video</h3>

<!-- Project Goal -->
## Project Goal

Leverage [Apple's WebKit](https://developer.apple.com/documentation/webkit/wkwebview) to load Youtube in-app. Our goal is to [Control 360 Videos](https://developers.google.com/youtube/iframe_api_reference#Example_Control_Spherical_Videos) with Apple Airpods as our playback device. Youtube 360 is one of the only user accessible platforms for distributing First Order Ambisonic Audio. 

<!-- GETTING STARTED -->
## Usage of Apple's Headphone Motion

* [Unity Headphone Motion Plugin](https://github.com/anastasiadevana/HeadphoneMotion) - This plugin exposes parts of the Native iOS API to allow Airpods to print Pitch, Roll, Yaw values. It is written in Objective-C++(?) and has little use outside of Unity
* [Ukaton Airpods Tracking on Web](https://twitter.com/ConcreteSciFi/status/1310451660842385411) - These guys also worked on the Bose AR intiative, zakaton in particular had referred me to the [Bose AR Web SDK](https://github.com/zakaton/Bose-Frames-Web-SDK) after finding the [project](https://github.com/AldenBraverman/BoseAR-Mach1-Plugin-Control) I had made for Bose AR. Mach1 eventually created an OSC controller for Airpods, their [implementation](https://github.com/Mach1Studios/M1-AirPodOSC) may be the cleanest out there (much better than what I did for Bose AR). I reached out to Ukaton about if the source from this tweet was accessible, they sent me the source for the [Xcode Project](https://github.com/Ukaton-Inc/WebKit-Pro) and [Web Interface](https://glitch.com/edit/#!/webkit-pro?path=README.md%3A1%3A0). I don't believe this code is functional, but it is worth reviewing.

<!-- ROADMAP -->
## Roadmap
This repo acts to build an iOS application that meets the project goal. I am following Mario Eguiluz Alebicto's [Mastering iOS 14 Programming -- 4th Edition](https://www.dropbox.com/sh/ix7jyvwvjgwmgjl/AACWX7p2cOMt9biYZYuuXVvha?dl=0) to meet the techinical needs of the project. Content creation resources for Youtube 360 Video's can be found below
* [Ambisonics in Nuendo 11](https://www.youtube.com/watch?v=-PRjLar7lyw)
* [Ambisonics in Reaper with Mach1](https://www.youtube.com/watch?v=vIpPwKCZpbo)
* [Spatial Media Metadata Injector](https://github.com/google/spatial-media/releases)



