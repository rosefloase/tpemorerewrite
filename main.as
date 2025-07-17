package  {
	import flash.display.*;
	import flash.events.*;
	import flash.external.*;
	import flash.text.*;

	public class main extends MovieClip {
		public var xcenter = 313;
		public var ycenter = 229.75;
		
		public var _rootie = this;
		private var tf:TextField = new TextField();

		public function main() {
			// i love constructing!
		}

		public function starteverything(){
			var button:sexybutton = new sexybutton();
			var otherbutton:sexybutton = new sexybutton();
			button.displaymc = new testmc;
			otherbutton.displaymc = new othertestmc;
			button.init();
			otherbutton.init();

			stage.addChild(button);
			stage.addChild(otherbutton)
			button.x = 520.3;
			button.y = 380.05;
			otherbutton.x = 244.05;
			otherbutton.y = 181.55;

			// i hope that you guys get this. i don't. (lying for the joke)
		}

	}
	
}
