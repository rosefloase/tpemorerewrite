package  {
	public class dialouge{
		
		public var jsonobject:String = (<![CDATA[
{
    "data": 
        {
		"computer": [
			{"text":"* woof", "loop":"talk2"},
			{"text":"* woofmeow", "loop":"talk1"},
			{"text":"* okay so do you want to go to this", "loop":"talk1", "link":"/computer/"},
        		{"text":"* sigh... okay", "loop":"talk1"}
                ],
		"dog": [ 
			{"text":"* hi! i'm a dog", "loop":"talk2"},
			{"text":"* i'm still like if a dog was a dog", "loop":"talk2"},
			{"text":"* and this... is still some lesbian's more page!", "loop":"talk2"},
			{"text":"* unlike the last flash, this one is open-source :D", "loop":"talk1"},
			{"text":"* would you like to go to it now?", "loop":"talk1", "link":"https://github.com/rosefloase/tpemorerewrite", "https":"true"}
		]
        }
    
}
		]]> ).toString();
	}
	
}
