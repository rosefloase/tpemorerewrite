package  {
	import flash.display.*;
	import flash.events.*;
	import flash.external.*;
	import flash.text.*;

	public class main extends MovieClip {
		
	//	public var BALLS:testmc = new testmc;
		private var tf:TextField = new TextField();

		public function main() {
			trace("woof?");

			stage.addChild(tf);
			tf.width = 500;
			tf.text = "I AM A GOD. FEAR ME, BYTECODE HEATHENS!"
		}

		public function starteverything(){
			var button:sexybutton = new sexybutton();
			stage.addChild(button);
		}

	}
	
}
