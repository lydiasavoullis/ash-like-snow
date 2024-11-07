==ending_simulation==
The text box will now be set inactive.
~textBoxIsActive = "false"
You can't see this text.
~textBoxIsActive = "true"
You can see this text
->sim_snapped_out->
->sim_pandora->
->sim_kent->
->sim_tali->
->sim_lavender->

->ending_check

==sim_snapped_out==
*[snapped out yes]
~snappedOut="yes"
->->
*[snapped out no]
~snappedOut="no"
->->
==sim_pandora==
*[pandora points low]
~pandoraPoints=1
->->
*[pandora points med]
~pandoraPoints=6
->->
*[pandora points high]
~pandoraPoints=8
->->
==sim_kent==
*[kent points low]
~kentPoints=1
->->
*[kent points high]
~kentPoints=5
->->
==sim_tali==
*[tali points low]
~taliPoints=1
->->
*[tali points high]
~taliPoints=5
->->
==sim_lavender==
*[lavender points low]
~lavenderPoints=1
->->
*[lavender points high]
~lavenderPoints=5
->->




==ending_check==
#everyone is stuck in the virtual world.
#no other endings if you get this one
#also there is no day 14
{pandoraPoints<4 && snappedOut=="no": ->pandora_bad_ending}

{snappedOut=="no": ->ada_fires_you->} 
{snappedOut=="yes": ->ada_transfers_you->} 

{kentPoints > 4: ->kent_ending->} 

{taliPoints > 4: ->tali_ending->} 

{lavenderPoints > 4 && taliPoints< 4: ->lavender_solo_ending->} 



{pandoraPoints < 6: ->pandora_neutral_ending->} 

{pandoraPoints >= 6: ->pandora_good_ending->} 

->END

==tali_ending==
~characters+=tali 
~currentSpeaker = webdev 
{ChangeSprite("Tali", "tali_happy")}
{you}!
~currentSpeaker = you
Hey!
~currentSpeaker = webdev 
{ChangeSprite("Tali", "tali_normal")}
How have you been?
~currentSpeaker = you
I've had better days.
How about you?
~currentSpeaker = webdev
Happy to be alive as always.
~currentSpeaker = you
As always?
{ChangeSprite("Tali", "tali_exasperated")}
~currentSpeaker = webdev
I'm trying to stay positive.
~currentSpeaker = you
Me too.
{ChangeSprite("Tali", "tali_normal")}
~currentSpeaker = webdev
I'm trying to stay positive.
Perhaps it's pointless.
But in the end, things are not too bad. I'm healthy, I have a place to live and I still have a job.
~currentSpeaker = you
How are things at work?
{ChangeSprite("Tali", "tali_exasperated")}
~currentSpeaker = webdev
You know how it is.
{ChangeSprite("Tali", "tali_normal")}
Things picked up quickly after the incident. Buisiness slowly creaked back to it's usual pace.
~currentSpeaker = you
And {snob}?
~currentSpeaker = webdev
{lavenderPoints >4: ->tali_lavender_make_up_ending| ...} 
~currentSpeaker = you
{ChangeSprite("Tali", "tali_serious")}
I assume not great.
~currentSpeaker = webdev
{ChangeSprite("Tali", "tali_sad")}
We're not speaking anymore.
~currentSpeaker = you
Well give it some more time.
~currentSpeaker = webdev
{ChangeSprite("Tali", "tali_serious")}
Maybe...
{ChangeSprite("Tali", "tali_normal")}
I have to go, but we should keep in touch.
Here's my number.
~currentSpeaker = you
Thank you!
~currentSpeaker = webdev
{ChangeSprite("Tali", "tali_serious")}
Sorry, I hope I haven't overstepped.
~currentSpeaker = you
No. Not at all. 
I'm happy.
I just thought...
Maybe I went too far in the basement.
~currentSpeaker = webdev
{ChangeSprite("Tali", "tali_normal")}
We all make mistakes.
I really do have to go now.
See you around.
~characters-=tali 
->->

==kent_ending==
You got a kent ending.
->->

==lavender_solo_ending==
you got a solo lavender ending.
->->

==tali_lavender_make_up_ending==
{ChangeSprite("Tali", "tali_normal")}
~currentSpeaker = webdev
Things have been a bit better.
We're talking at least. 
~characters+=lavender
~currentSpeaker = you
Speak of the devil!
{ChangeSprite("Lavender", "lavender_angry")}
~currentSpeaker = snob
Is it company policy to slander all your customers?
~currentSpeaker = you
No. Just specifically you.
~currentSpeaker = snob
{ChangeSprite("Lavender", "lavender_thinking")}
I dislike being singled out like this.
~currentSpeaker = webdev
...
~currentSpeaker = snob
{ChangeSprite("Lavender", "lavender_normal")}
What are you doing here {webdev}?
~currentSpeaker = webdev
Honestly I just came to see {you}.
~currentSpeaker = snob
{ChangeSprite("Lavender", "lavender_angry")}
I suppose you've found my replacement already.
~currentSpeaker = webdev
Not true {snob}.
No one could replace you.
~currentSpeaker = snob
Hmph.
Ok.
I suppose you're right. No one could replace me. 
~currentSpeaker = webdev
I have an idea!
We should all meet up together.
Outside of this shop.
~currentSpeaker = snob
Don't you think maybe the shop assistant would embarrass us. 
~currentSpeaker = you
I can behave.
I promise.
~currentSpeaker = snob
Don't do that with your eyes. you're freaking me out.
~currentSpeaker = you
<i>\*staring intensifies\*</i>
~currentSpeaker = you
Ok. Ok. You win.
~currentSpeaker = webdev
Yay! This will be fun.
We can bake a cake in {snob}'s appartment.
~currentSpeaker = snob
Why my appartment?
~currentSpeaker = webdev
Because yours is the nicest.
~currentSpeaker = snob
We haven't seen the other options.
~currentSpeaker = you
...
My oven is broken.
~currentSpeaker = webdev
So is mine.
~currentSpeaker = snob
What a coincidence.
I suppose it will have to be mine then.
~currentSpeaker = webdev
You're the best!
~currentSpeaker = snob
Hmmm.
Do either of you know how to bake a cake?
~currentSpeaker = webdev
No. I assumed you knew.
~currentSpeaker = you
I assumed you knew too {snob}, probably because you're dressed like one.
~currentSpeaker = snob
Haha how amusing.
Especially from someone dressed like a custard tart.
~currentSpeaker = you
Custard tart?
~currentSpeaker = webdev
That sounds delicious. Maybe that's what we should bake first.
~currentSpeaker = you
How do I look like a custard tart?
~currentSpeaker = webdev
Your shirt is very yellow.
~currentSpeaker = you
It's GOLD.
For fuck's sake.
~currentSpeaker = snob
I can get a couple of receipes up on my holopad.
~currentSpeaker = you
My shirt is not yellow.
~currentSpeaker = webdev
That's a great idea.
~currentSpeaker = snob
Look on the bright side {you}, if you spill custard on your shirt, it won't even show.
~currentSpeaker = webdev
I'll go shopping for some baking equiment.
~currentSpeaker = snob
Not without me!
~currentSpeaker = webdev
Ok, wait until I get off work and we can go together.
~currentSpeaker = snob
Sounds like a plan.
Bye {you}. 
~characters-=lavender
~currentSpeaker = webdev
Bye {you}. See you later.
~characters-=tali
~currentSpeaker = you
...
What have I gotten myself into?
->->

==pandora_good_ending==
#Pandora will come with you if you are transferred
#Pandora will ask Ada if she can live with you if you are fired
You got a pandora good ending.
->->

==pandora_neutral_ending==
#Pandora will not come with you if you are transferred
#Pandora will say goodbye to you forever if you are fired
You got a pandora neutral ending.
->->

==pandora_bad_ending==
You got the worst ending.
~worstEnding = "yes"
->END

==ada_fires_you==
Ada fires you.
->->

==ada_transfers_you==
Ada transfers you.
->->