# VP3
VIDEO PLAYER X3 - flash video player that allows splitting content three ways, between video, audio, and subtitles

## Operation

1.	Begin media loading - vid, aud, sub
2.	Fire event when loaded, autoplay if allowed
3.	Listen for vid progress to control subtitle display

## Rough Roadmap

1.	~~choose a simple subtitle format: [KateXML](http://wiki.xiph.org/OggKate#An_XML_representation)~~
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
12.	release!

## Documentation

start the instance out with a videofile, play it or don't, and apply additional options

```as3
	VP3(videoPath:String=null,autoPlay:Boolean=true,options:Object={});
```

## Code Examples

```as3
	var vp3:VP3 = new VP3('video.mp4'); //	create an instance of vp3, queue up a video to autoplay
	stage.addChild(vp3); //	add the instance to the display stack
```

```as3
	var vp3:VP3 = new VP3({	//	create an instance of vp3 with options
		autoplay:false,	//	play media as soon as it's all loaded
		muteVideo:false		//	use mp3 audio on top of video audio
	});
	stage.addchild(vp3);
	vp3.load({
			video:'video.f4v',
			audio:'narration.mp3',
			subtitles:'subtitles.vtt'
	});
	vp3.addEventListener(Event.COMPLETE, function(e:Event):void	{
		VP3(e.target).play();
	}
```