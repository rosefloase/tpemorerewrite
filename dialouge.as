package  {
	import flash.display.*;

	public class dialouge extends MovieClip {
		
		public var jsonobject:String = (<![CDATA[
{
    "data": 
        {
            "computer": [
                    {"text":"* woof", "loop":"talk2"},
                    {"text":"* woofmeow", "loop":"talk1"},
		    {"text":"* okay so do you want to go to this", "loop":"talk1", "link":"/computer/"},
                    {"text":"* sigh... okay", "loop":"talk1"}
                ]
        }
    
}
		]]> ).toString();

		public function dialouge() {
			// woof
		}

	}
	
}
