package com.landingbolts.model
{
	
	import com.landingbolts.ImageAssetVO;
	
	import flash.events.EventDispatcher;
	
	[Bindable]
	public class AssetsModel extends EventDispatcher
	{
		private static var modelLocator:AssetsModel;
		
		public var tile_landing_bolts:ImageAssetVO = new ImageAssetVO("assets/images/tile_landing_bolts.jpg", 1500, 1489, "Landing Bolts");
		
		public var tile_day_01:ImageAssetVO = new ImageAssetVO("assets/images/tile_day_01.jpg", 1500, 583, "Day 1");
		public var tile_day_02:ImageAssetVO = new ImageAssetVO("assets/images/tile_day_02.jpg", 1500, 587, "Day 2");
		public var tile_day_03:ImageAssetVO = new ImageAssetVO("assets/images/tile_day_03.jpg", 1500, 585, "Day 3");
		public var tile_day_04:ImageAssetVO = new ImageAssetVO("assets/images/tile_day_04.jpg", 1500, 594, "Day 4");
		public var tile_day_05:ImageAssetVO = new ImageAssetVO("assets/images/tile_day_05.jpg", 1500, 579, "Day 5");
		public var tile_day_06:ImageAssetVO = new ImageAssetVO("assets/images/tile_day_06.jpg", 1500, 590, "Day 6");
		public var tile_day_07:ImageAssetVO = new ImageAssetVO("assets/images/tile_day_07.jpg", 1500, 591, "Day 7");
		public var tile_day_08:ImageAssetVO = new ImageAssetVO("assets/images/tile_day_08.jpg", 1500, 583, "Day 8");
		public var tile_day_09:ImageAssetVO = new ImageAssetVO("assets/images/tile_day_09.jpg", 1500, 585, "Day 9");
		public var tile_day_10:ImageAssetVO = new ImageAssetVO("assets/images/tile_day_10.jpg", 1500, 588, "Day 10");
		public var tile_day_11:ImageAssetVO = new ImageAssetVO("assets/images/tile_day_11.jpg", 1500, 586, "Day 11");
		public var tile_day_12:ImageAssetVO = new ImageAssetVO("assets/images/tile_day_12.jpg", 1500, 589, "Day 12");
		public var tile_day_13:ImageAssetVO = new ImageAssetVO("assets/images/tile_day_13.jpg", 1500, 585, "Day 13");
		public var tile_day_14:ImageAssetVO = new ImageAssetVO("assets/images/tile_day_14.jpg", 1500, 584, "Day 14");
		
		public var tile_videos:ImageAssetVO = new ImageAssetVO("assets/images/tile_videos.jpg", 1500, 820, "Videos");
		public var tile_about:ImageAssetVO = new ImageAssetVO("assets/images/tile_about.jpg", 1500, 1497, "About");
		
		public var day_01:ImageAssetVO = new ImageAssetVO("assets/images/day_01.jpg", 1100, 5787, "Day One");
		public var day_02:ImageAssetVO = new ImageAssetVO("assets/images/day_02.jpg", 1100, 5787, "Day Two");
		public var day_03:ImageAssetVO = new ImageAssetVO("assets/images/day_03.jpg", 1100, 5911, "Day Three");
		public var day_04:ImageAssetVO = new ImageAssetVO("assets/images/day_04.jpg", 1100, 6378, "Day Four");
		public var day_05:ImageAssetVO = new ImageAssetVO("assets/images/day_05.jpg", 1100, 5359, "Day Five");
		public var day_06:ImageAssetVO = new ImageAssetVO("assets/images/day_06.jpg", 1100, 5551, "Day Six");
		public var day_07:ImageAssetVO = new ImageAssetVO("assets/images/day_07.jpg", 1100, 5468, "Day Seven");
		public var day_08:ImageAssetVO = new ImageAssetVO("assets/images/day_08.jpg", 1100, 6051, "Day Eight");
		public var day_09:ImageAssetVO = new ImageAssetVO("assets/images/day_09.jpg", 1100, 5397, "Day Nine");
		public var day_10:ImageAssetVO = new ImageAssetVO("assets/images/day_10.jpg", 1100, 5875, "Day Ten");
		public var day_11:ImageAssetVO = new ImageAssetVO("assets/images/day_11.jpg", 1100, 5993, "Day Eleven");
		public var day_12:ImageAssetVO = new ImageAssetVO("assets/images/day_12.jpg", 1100, 5738, "Day Twelve");
		public var day_13:ImageAssetVO = new ImageAssetVO("assets/images/day_13.jpg", 1100, 4905, "Day Thirteen");
		public var day_14:ImageAssetVO = new ImageAssetVO("assets/images/day_14.jpg", 1100, 5512, "Day Fourteen");
		
		//--------------------------------------------------------------------------
		public function AssetsModel() 
		{
			if(modelLocator != null) 
				throw new Error( "Only one AssetsModel instance should be instantiated" );
		}
		
		
		public static function getInstance():AssetsModel
		{
			if(modelLocator == null)
			{
				modelLocator = new AssetsModel();
			}
			return modelLocator;
		}
		
	}
}