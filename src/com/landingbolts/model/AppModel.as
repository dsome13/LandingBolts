package com.landingbolts.model
{
	
	import com.google.analytics.AnalyticsTracker;
	
	import flash.events.EventDispatcher;
	
	[Bindable]
	public class AppModel extends EventDispatcher
	{
		private static var modelLocator:AppModel;
		
		public var analyticsTracker:AnalyticsTracker;
		public function analyticsTrackPageview(pageViewURL:String):void
		{
			// ex pageViewURL = "Home" 	
			// ex pageViewURL = "Day One" 	
			
			// Track if it's on the production server or dev
			// 		prod sends info to UA-36337912-2
			// 		dev sends info to UA-36337912-1
			
			if(analyticsTracker)
				this.analyticsTracker.trackPageview(pageViewURL);
		}
		
		public function analyticsTrackEvent(category:String, action:String, label:String = null, value:int = 0):void
		{
			// ex category = "Day" 	
			// ex action = "clicked" 	
			// ex label = "day one"
			
			if(analyticsTracker)
				this.analyticsTracker.trackEvent(category, action, label, value);
		}
		
		//--------------------------------------------------------------------------
		public function AppModel() 
		{
			if(modelLocator != null) 
				throw new Error( "Only one AppModel instance should be instantiated" );
		}
		
		
		public static function getInstance():AppModel
		{
			if(modelLocator == null)
			{
				modelLocator = new AppModel();
			}
			return modelLocator;
		}
		
		//--------------------------------------------------------------------------
		// WORKFLOW STATES
		//--------------------------------------------------------------------------
		protected var _workflowState:Number = VIEWING_BLANK;
		public function get workflowState():Number
		{
			return _workflowState;
		}
		
		public function set workflowState(workflowState:Number):void
		{
			_workflowState = workflowState;
		}
		
		public var VIEWING_BLANK:Number 			= 0;
		public var VIEWING_HOME:Number 				= 50; // home page
		public var VIEWING_DAY_ONE:Number 			= 100; 
		public var VIEWING_DAY_TWO:Number 			= 200; 
		public var VIEWING_DAY_THREE:Number 		= 300; 
		public var VIEWING_DAY_FOUR:Number 			= 400; 
		public var VIEWING_DAY_FIVE:Number 			= 500; 
		public var VIEWING_DAY_SIX:Number 			= 600; 
		public var VIEWING_DAY_SEVEN:Number 		= 700; 
		public var VIEWING_DAY_EIGHT:Number 		= 800; 
		public var VIEWING_DAY_NINE:Number 			= 900; 
		public var VIEWING_DAY_TEN:Number 			= 1000; 
		public var VIEWING_DAY_ELEVEN:Number 		= 1100; 
		public var VIEWING_DAY_TWELVE:Number 		= 1200; 
		public var VIEWING_DAY_THIRTEEN:Number 		= 1300; 
		public var VIEWING_DAY_FOURTEEN:Number 		= 1400; 

	}
}