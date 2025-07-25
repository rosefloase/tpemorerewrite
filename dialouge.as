package  {
	public class dialouge{
		
		public var jsonobject:String = (<![CDATA[
{
    "data": 
        {
		"computer": [
			{"text":"* this is the greatest computer ever.", "loop":"talk2"},
			{"text":"* it has an intel 3770-i7, an nvidia quatro 2200k, and 16 gigs of ram", "loop":"talk1"},
			{"text":"* do u wanna buy it? (please say yes)", "loop":"talk1", "link":"/computer/"},
        		{"text":"* sigh... okay", "loop":"talk1"}
                ],
		"dog": [ 
			{"text":"* hi! i'm a dog", "loop":"talk2"},
			{"text":"* i'm still like if a dog was a dog", "loop":"talk2"},
			{"text":"* and this... is still some lesbian's more page!", "loop":"talk2"},
			{"text":"* unlike the last flash, this one is open-source :D", "loop":"talk1"},
			{"text":"* would you like to go to it now?", "loop":"talk1", "link":"https://github.com/rosefloase/tpemorerewrite"},
			{"text":"* that's fine. you can always go check it out on the rosefloase github", "loop":"talk1"},
			{"text":"* profile later! :p", "loop":"talk1"}
		],
		"guestbook": [ 
			{"text":"* (you notice a guestbook on top of a box)", "loop":"idle"},
			{"text":"* (you open to the first page, and see many entries...)", "loop":"idle"},
			{"text":"* (however, there is also a bookmark present)", "loop":"idle"},
			{"text":"* (do you go to the bookmark?)", "loop":"idle"},
			{"text":"* [sign the guestbook]", "loop":"idle", "link":"https://thepersonever.atabook.org/"},
			{"text":"* (do you look at the old messages?)", "loop":"idle"},
			{"text":"* [look at 123guestbook archive]", "loop":"idle", "link":"/guestbook/backup/1"},
			{"text":"* (you decide to leave it alone)", "loop":"idle"}
		]
        }
    
}
		]]> ).toString();
	}
	
}
