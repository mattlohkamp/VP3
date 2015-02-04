# VP3
VIDEO PLAYER X3 - flash video player that allows splitting content three ways, between video, audio, and subtitles

## Operation

1.  Begin video loading
2.  Play video when ready

## Rough Roadmap

1.  choose a subtitle format that supports basic typographic styling + positioning, ideally allows for arbitrary attributes:
    1.  [Kate](http://wiki.xiph.org/OggKate#Metadata)
    2.  [SAMI](http://en.wikipedia.org/wiki/SAMI)
    3.  [SMIL](http://www.w3.org/TR/SMIL/)
    4.  [TTML](http://www.w3.org/TR/ttaf1-dfxp/)
2.	implement video playback
3.	implement audio playback
4.	implement basic subtitle display + timing
5.	implement advanced subtitle display + styling
6.	add API for controls
7.	basic video playback GUI?
8.	mid-playback media switch? (vid / aud / sub?)
9.	playback queue?
10.	smarter buffering / preloading functionality?
11.	bugtest / fix inevitable sync issues
12. release!

## Documentation

start the instance out with a videofile, play it or don't, and apply additional options

```as
    VP3(videoPath:String=null,autoPlay:Boolean=true,options:Object={});
```

## Code Examples

```as3
	var vp3:VP3 = new VP3('video.mp4'); //  create an instance of vp3, queue up a video to autoplay
	stage.addChild(vp3); //  add the instance to the display stack
```

```actionscript3
	var vp3:VP3 = new VP3(); //  create an instance of vp3
	stage.addchild(vp3);
	vp3.load({
	    video:'',
	    audio:'',
	    subtitles:''
	});
```