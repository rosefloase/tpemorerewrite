package  {
	import flash.display.*;
	import flash.events.*;
	import flash.external.*;
	import flash.text.*;
	import flash.utils.*;
	import flash.net.*;
	import flash.geom.ColorTransform;

	public class main extends MovieClip { // todo: figure out which variables should be public, private, or nonexistent when the flash is done
		public var textbox;
		public var selectrect:MovieClip = new MovieClip();
		public var classname;
		public var currentmc;
		private var chatindex = 0;

		var rootie = this;
		var jsonpackage:dialouge = new dialouge;
		var json = (JSON.parse(jsonpackage.jsonobject)).data;

		public function main() {
			// i love constructing!
		}

		private function starteverything(){
			// first, add textbox
			textbox = new textboxanim;
			stage.addChild(textbox);
			textbox.x = 320;
			textbox.y = 388.45;

			// then add buttons
			addbutton(computer, -344.9, -769.75);
			addbutton(godot, -245, 90);
			addbutton(guestbook, -95, 30);
			addbutton(globe, 69, -211);

			// rectangle used for stealing inputs when the textbox is open
			selectrect.graphics.beginFill(0x000000, 0);
			selectrect.graphics.drawRect(0, 0, 640, 480);
			selectrect.graphics.endFill();
			stage.addChild(selectrect);
			stage.setChildIndex(selectrect, stage.numChildren-1);
		}

		private function addbutton(gif, x, y){
			var button:sexybutton = new sexybutton();
			button.displaymc = new gif;
			button.init();
			rootie.mainmc.addChild(button)
			button.x = x
			button.y = y

			button.addEventListener(MouseEvent.CLICK, function(event:MouseEvent):void {
				tbchange(gif);
			});
		}

		private function allowclick(){
			stage.setChildIndex(selectrect, 0);
			dogmc.addEventListener(MouseEvent.CLICK, function(event:MouseEvent):void {
				tbchange(dog);
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
				if (json[classname][chatindex].link == undefined){
					textbox.tb.gotoAndStop("main");
					stage.setChildIndex(textbox, stage.numChildren-1);
					stage.setChildIndex(selectrect, stage.numChildren-1);
					selectrect.buttonMode = true;
				}
				else{
					textbox.tb.gotoAndPlay("question");
					stage.setChildIndex(selectrect, stage.numChildren-1);
					stage.setChildIndex(textbox, stage.numChildren-1);

					textbox.tb.yesbutton.addEventListener(MouseEvent.CLICK, function(event:MouseEvent):void {
						var epicrequest:URLRequest;

						epicrequest = new URLRequest(json[classname][chatindex-1].link);
   						navigateToURL(epicrequest);
					});
					textbox.tb.nobutton.addEventListener(MouseEvent.CLICK, function(event:MouseEvent):void {
						tbchange(currentmc);
					});
				}	

				textbox.tb.dude.text = json[classname][chatindex].text; // dude. dude why is the .txt so deep. eff em ell
				rootie.dogmc.gotoAndPlay(json[classname][chatindex].loop);
				chatindex += 1;
			}
			else{
				selectrect.removeEventListener(MouseEvent.CLICK, evilrectangle);
				selectrect.buttonMode = false;
				stage.setChildIndex(selectrect, 0);
				textbox.gotoAndPlay("fall");
				rootie.dogmc.gotoAndPlay("idle");
				chatindex = 0;
			}
		}

		private function evilrectangle(handleeeeeeeeeee){ // I LOVE NOT BEING ABLE TO REMOVE ANON FUNCTIONS!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
			tbchange(currentmc);
		}

	}
	
}
