package  {
	import flash.display.*;
	import flash.events.*;
	import flash.external.*;
	import flash.text.*;

	public class main extends MovieClip {
		public var xcenter = 313;
		public var ycenter = 229.75;
		
		public var textbox:textboxanim = new textboxanim

		public function main() {
			// i love constructing!
		}

		public function starteverything(){
			// start with buttons
			addbutton(testmc, 520.3, 380.05);
			addbutton(othertestmc, 244.05, 181.55);

			// finally, add textbox
			stage.addChild(textbox);
			textbox.x = 320;
			textbox.y = 388.45;
		}

		private function addbutton(gif, x, y){
			var button:sexybutton = new sexybutton();
			button.displaymc = new gif;
			button.init();
			stage.addChild(button)
			button.x = x
			button.y = y
		}

		public function tbchange(){
			textbox.gotoAndPlay("rise");
		}

	}
	
}
