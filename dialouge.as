package  {
	import flash.display.*;

	public class dialouge extends MovieClip {
		
		public var jsonobject:String = (<![CDATA[
{
    "data": 
        {
            "testmc": [
                {"text": "* test 1", "loop":"talk1"},
                {"text": "* test 2 :o", "loop":"talk2"}
            ],
            "othertestmc": [
                    {"text":"* woof", "loop":"talk2"},
                    {"text":"* woofmeow", "loop":"talk1"}
                ]
        }
    
}
		]]> ).toString();

		public function dialouge() {
			// woof
		}

	}
	
}
