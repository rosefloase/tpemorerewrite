package  {
	import flash.display.*;
	import flash.events.*;
	import flash.external.*;
	import flash.text.*;
	import flash.utils.*;
	import flash.net.*;

	public class main extends MovieClip { // todo: figure out which variables should be public, private, or nonexistent when the flash is done
		public var xcenter = 313;
		public var ycenter = 229.75;
		public var textbox;
		private var chatindex = 0;
		public var jsonloaded = false;

		var stringjson;
		var json;
  		var urlLoader:URLLoader = new URLLoader();

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
			addbutton(testmc, 520.3, 380.05);
			addbutton(othertestmc, 244.05, 181.55);
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
			var classname = getQualifiedClassName(whatmc);
			switch (textbox.currentstate){
				case "hidden":
					textbox.gotoAndPlay("rise");

					break;
				default: 
			}
			if (json[classname][chatindex] != null){
				textbox.tb.dude.text = json[classname][chatindex].text; // dude. dude why is the .txt so deep. eff em ell
				stage.setChildIndex(textbox, stage.numChildren-1);
				chatindex += 1;
			}
			else{
				textbox.gotoAndPlay("fall");
				chatindex = 0;
			}
		}

	}
	
}
