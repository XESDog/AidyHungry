package  
{
	import flash.display.DisplayObjectContainer;
	import org.puremvc.as3.patterns.facade.Facade;
	import views.mediators.AppMediator;
	import controllers.InitAppCommand;
	/**
	 * 
	 * 单例模式类
	 * @describe 		...
	 * @author			Mr.zheng
	 * @time
	 */
	public class ApplicationFacade extends Facade{
		private static var _instance:ApplicationFacade = null;
		public function ApplicationFacade(single:Single){
			if(single == null)
			{
				throw new Error("Can't create instance , Single is Null!");
			}
		}
		/**
		 * 单例引用
		 */
		public static function get instance():ApplicationFacade
		{
			if(_instance == null)
			{
				_instance = new ApplicationFacade(new Single());
			}
			return _instance;
		}
		
		//start-----------------------------------------------------------------------------
		private var _contextView:DisplayObjectContainer;
		/**
		 * mvc初始化完毕
		 */
		public static const MVC_OVER:String = "mvc_over";
		/** override function */
		override protected function initializeModel():void 
		{
			super.initializeModel();
		}
		override protected function initializeController():void 
		{
			super.initializeController();
			registerCommand(MVC_OVER, InitAppCommand);
		}
		override protected function initializeView():void 
		{
			super.initializeView();
		}
		/* public function */
		public function setup(contextView:DisplayObjectContainer):void {
			this._contextView = contextView;
			registerMediator(new AppMediator(AppMediator.NAME, _contextView));
			sendNotification(MVC_OVER,contextView);
		}
		/* private function */
	}
}
class Single{}