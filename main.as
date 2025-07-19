package  {
	import flash.display.*;
	import flash.events.*;
	import flash.external.*;
	import flash.text.*;
	import flash.utils.*;
	import flash.net.*;
	import flash.geom.ColorTransform;

	public class main extends MovieClip { // todo: figure out which variables should be public, private, or nonexistent when the flash is done
		public var xcenter = 313;
		public var ycenter = 229.75;
		public var textbox;
		public var selectrect:MovieClip = new MovieClip();
		public var classname;
		public var currentmc;
		private var chatindex = 0;

		var stringjson;
		var json;
  		var urlLoader:URLLoader = new URLLoader();
		public var jsonloaded = false;

		public function main() {
			// i love constructing!
			var jsonurl = "dialouge.json";
			var jsonloaded = false
			var req:URLRequest;

			var urlRequest:URLRequest  = new URLRequest(jsonurl);

  			urlLoader.addEventListener(Event.COMPLETE, completeHandler);

  			try{
  				urlLoader.load(urlRequest);
  			} catch (error:Error) {
   				trace("Cannot load : " + error.message);
  			}
		}

		private function completeHandler(asdf):void {
   			 var loader:URLLoader = URLLoader(urlLoader);
				stringjson = loader.data;
  			  json = JSON.parse(loader.data);
			  json = json.data;
			  jsonloaded = true;
		}

		public function starteverything(){
			// first, add textbox
			textbox = new textboxanim;
			stage.addChild(textbox);
			textbox.x = 320;
			textbox.y = 388.45;

			// then add buttons
			addbutton(testmc, 177.75, 100.05);
			addbutton(othertestmc, 428.95, 334.3);

			// rectangle used for stealing inputs when the textbox is open
			selectrect.graphics.beginFill(0x000000, 0);
			selectrect.graphics.drawRect(0, 0, 640, 480);
			selectrect.graphics.endFill();
			stage.addChild(selectrect);
			stage.setChildIndex(selectrect, 0);
		}

		private function addbutton(gif, x, y){
			var button:sexybutton = new sexybutton();
			button.displaymc = new gif;
			button.init();
			stage.addChild(button)
			button.x = x
			button.y = y

			button.addEventListener(MouseEvent.CLICK, function(event:MouseEvent):void {
				tbchange(gif);
			});
		}

		public function tbchange(whatmc){ // todo: clean this up when the flash is like. completely done.
			currentmc = whatmc;
			classname = getQualifiedClassName(whatmc);

			switch (textbox.currentstate){
				case "hidden":
					textbox.gotoAndPlay("rise");
					selectrect.addEventListener(MouseEvent.CLICK, evilrectangle);

				break;
				default: 
			}
			if (json[classname][chatindex] != null){
				textbox.tb.dude.text = json[classname][chatindex].text; // dude. dude why is the .txt so deep. eff em ell
				stage.setChildIndex(textbox, stage.numChildren-1);
				stage.setChildIndex(selectrect, stage.numChildren-1);
				chatindex += 1;
			}
			else{
				selectrect.removeEventListener(MouseEvent.CLICK, evilrectangle);
				stage.setChildIndex(selectrect, 0);
				textbox.gotoAndPlay("fall");
				chatindex = 0;
			}
		}

		private function evilrectangle(handleeeeeeeeeee){ // I LOVE NOT BEING ABLE TO REMOVE ANON FUNCTIONS!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
			tbchange(currentmc);
		}

	}
	
}
