
==read_check==
{allbooks ? myths_legends: ->read_greek_myths}
{allbooks ? Alice_in_Wonderland: ->read_alice_in_wonderland}
{allbooks ? Howls_Moving_Castle: ->read_howls_moving_castle}
->->

==tea_or_coffee==
~currentSpeaker = android  
Tea or coffee?
*[Tea]
*[Coffee]
*[No thanks]
->->
==read_alice_in_wonderland==
~currentSpeaker = you 
I bought you something
~currentSpeaker = android  
Hehe, you shouldn't be spending money on me
~currentSpeaker = you 
It was nothing
~currentSpeaker = android  
So will you read it to me?
~currentSpeaker = you 
Ok, just a little bit
\*You read to Pandora\*
\*For a moment you feel at peace\*
...
~currentSpeaker = android  
Well, you shouldn't really just drink or eat random things you find in strange places
~currentSpeaker = you 
Common sense dictates
But you know, what if it's like a really tasty piece of cake, or a really nice drink?
~currentSpeaker = android  
{you}! How could you?
~currentSpeaker = you 
I like to live dangerously
~currentSpeaker = android 
I can't be poisoned, so I don't have to worry
But you should be more careful
~currentSpeaker = you 
I'm joking, I don't go around eating abandoned food
But Alice is a kid, kids do that kind of thing
I used to eat crayons
~currentSpeaker = android 
I will continue this tonight, I want to see what happens
Perhaps she will get her stomach pumped later on
And organ damage
~currentSpeaker = you 
Don't you sleep?
~currentSpeaker = android 
I reacharge, I only need to do so for about four hours though
~currentSpeaker = you 
So you've got the rest of the night to enjoy yourself
I'm jealous
~currentSpeaker = android 
It's true, I have it good
~allbooks-= Alice_in_Wonderland
->->
==read_greek_myths==
~currentSpeaker = you 
I bought something you might like
~currentSpeaker = android  
What?!
~currentSpeaker = you 
It's just a book
~currentSpeaker = android  
I love it
Read me the first chapter
Pleaaasee
~currentSpeaker = you 
Hmmm, ok
\*You read to Pandora\*
\*As you do so a sense of calm fills the room\*
...
~currentSpeaker = android  
Woah, that was sad
~currentSpeaker = you 
Yeah
~currentSpeaker = android 
If he'd just did as his father said he wouldn't have fallen to his death
~currentSpeaker = you 
Well, yes
~currentSpeaker = android 
So we should all do as we're told
~currentSpeaker = you 
Uh no, I think the story is more about the dangers of pride
It's not suggesting we never question authority
~currentSpeaker = android 
But if he'd just listened to his father
...
sorry
~currentSpeaker = you 
No worries, I promise there are better stories in there
I mean, less depressing
And some more depressing
Maybe like 90% depressing
~currentSpeaker = android 
It's OK I can handle depressing
~currentSpeaker = you 
Well, you'll enjoy it then
~allbooks-= myths_legends
->->
==read_howls_moving_castle==
~currentSpeaker = you 
I bought you something
~currentSpeaker = android  
Nice! Please read to me 
~currentSpeaker = you 
OK
\*You read to Pandora\*
\*You feel tranquility fill your very being\*
...
~currentSpeaker = android  
Do you have siblings?
~currentSpeaker = you 
No...did you?
~currentSpeaker = android  
I'm non-organic {you}
~currentSpeaker = you 
Well you could have had adopted siblings
~currentSpeaker = android  
It must be nice I think, to have a family like that.
To have sisters to talk to.
~currentSpeaker = you 
To fight with.
~currentSpeaker = android  
I can't wait to finish this tonight.
~allbooks-= Howls_Moving_Castle
->->

