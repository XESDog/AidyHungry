package views.mediators{
	import org.puremvc.as3.interfaces.INotification;
	import org.puremvc.as3.patterns.mediator.Mediator;
	
	public class AppMediator extends Mediator
	{
		public static const NAME:String = "app_Mediator";
		/**
		 * 
		 * @param	mediatorName
		 * @param	viewComponent 值是文档类
		 */
		public function AppMediator(mediatorName:String=null, viewComponent:Object=null) 
		{
			super(mediatorName, viewComponent);
		}
		/* public function */
		
		/* override function */
		override public function onRegister():void 
		{
			super.onRegister();
		}
		override public function onRemove():void 
		{
			super.onRemove();
		}
		override public function listNotificationInterests():Array 
		{
			return [];
		}
		override public function handleNotification(notification:INotification):void 
		{
			super.handleNotification(notification);
			switch (notification.getName()) 
			{
				case "":
				break;
				default:
			}
		}
		/* private function */
	}
	
}