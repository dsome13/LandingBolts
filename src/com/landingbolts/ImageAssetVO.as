package com.landingbolts
{
	[Bindable]
	public class ImageAssetVO
	{
		public var url:String = "";
		public var width:int = 0;
		public var height:int = 0;
		public var label:String = "";
		
		public function ImageAssetVO(url:String, width:int, height:int, label:String = "")
		{
			this.url = url;
			this.width = width;
			this.height = height;
			this.label = label;
			
		}
	}
}