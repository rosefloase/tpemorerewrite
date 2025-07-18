package  {
	import flash.display.*;
	import flash.events.*;
	import flash.text.*;

	public class sexybutton extends MovieClip {
		
		public var displaymc = new testmc;

		public function sexybutton() {
			// woof
			this.addEventListener(MouseEvent.CLICK, thisistemp);
		}

		public function init(){
			addChild(displaymc);
			trace("added kid");
		}

		private function thisistemp(ILOVEHANDLINGSHIT){
			trace("clicked! i am "+displaymc);
		}

	}
	
}
