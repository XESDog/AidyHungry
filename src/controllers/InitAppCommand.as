package controllers{
	import org.puremvc.as3.interfaces.INotification;
	import org.puremvc.as3.patterns.command.SimpleCommand;
	
	public class InitAppCommand extends SimpleCommand
	{
		override public function execute(notification:INotification):void 
		{
			super.execute(notification);
		}
	}
	
}