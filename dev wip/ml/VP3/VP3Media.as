package ml.VP3	{
	import ml.media.AudioPlayer;
	public class VP3Media	{
		private var video:VP3Video;
		private var audio:VP3Audio;
		private var text:VP3Text;

		private var vp:BasicVideoPlayer;
		private var ap:AudioPlayer;
		private var tt:TimedText;
		public function VP3Media():void	{
			trace(this,'is constructed');

			tt = new TimedText();
		}
	}
}