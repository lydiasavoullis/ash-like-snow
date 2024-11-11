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
~characters+=kent
~currentSpeaker = comic
{ChangeSprite("Kent", "kent_normal")}
Hey!
~currentSpeaker = you
Ugh not you again.
~currentSpeaker = comic
{ChangeSprite("Kent", "kent_amused")}
Can't say I'm too pleased to see you either.
I guess we need another incident.
~currentSpeaker = you
It would take more than a terrorist attack to get rid of me.
~currentSpeaker = comic
I guess we'll have to wait for the next nuclear war.
~currentSpeaker = you
You can't joke about things like that!
~currentSpeaker = comic
{ChangeSprite("Kent", "kent_happy")}
You're right. I might spoil the next issue of the Calamity for you.
~currentSpeaker = you
How is work going?
~currentSpeaker = comic
{ChangeSprite("Kent", "kent_sad")}
You just had to ruin the vibe {you}.
~currentSpeaker = you
So...not great?
~currentSpeaker = comic
{ChangeSprite("Kent", "kent_normal")}
Well I still have a job, so that's good.
And my boss has been pretty pleased with all the stuff to report on.
I'm so glad there are more disasters to provide us with lots of great content.
The only difficulty is trying not to wring my hands around his neck every time he opens his mouth and spurts out something hideously insensive.
~currentSpeaker = you
Yuck.
Well, good luck on trying to not murder your boss.
~currentSpeaker = comic
I take it one day at a time.
~currentSpeaker = you
Um, how's your boyfriend doing?
~currentSpeaker = comic
{ChangeSprite("Kent", "kent_side_serious")}
He's ok.
His lungs have cleared up a bit.
~currentSpeaker = you
That's good.
~currentSpeaker = comic
{ChangeSprite("Kent", "kent_normal")}
I bought him some kind of spa retreat this weekend.
It's meant to help with the breathing issues.
~currentSpeaker = you 
I hope that helps.
~currentSpeaker = comic
I think it will.
But I do have a bit of a dilema now.
~currentSpeaker = you
What's that?
~currentSpeaker = comic
Well DorkCon is this weekend and I have no one to go with.
~currentSpeaker = you
That's such a shame.
~currentSpeaker = comic
Such a shame indeed.
...
~currentSpeaker = you
No.
Absolutely not.
~currentSpeaker = comic
{ChangeSprite("Kent", "kent_sad")}
...
~currentSpeaker = you
I know you have other friends.
You can't ask one of them?
~currentSpeaker = comic
{ChangeSprite("Kent", "kent_amused")}
I need fresh blood.
A new convert.
~currentSpeaker = you
I'm not a nerd.
~currentSpeaker = comic
{ChangeSprite("Kent", "kent_normal")}
You used to be a hacker for a living.
~currentSpeaker = you
That is cool, not nerdy.
~currentSpeaker = comic
You work in a bookstore.
~currentSpeaker = you
Fair point.
Fine. I give in. 
As long as I don't have to wear anything.
~currentSpeaker = comic
{ChangeSprite("Kent", "kent_amused")}
I don't think they'll let you in naked.
They're not THAT open minded.
~currentSpeaker = you
I mean that I'm not wearing a stupid elf costume!
Like, I'm just going to wear normal clothes.
~currentSpeaker = comic
{ChangeSprite("Kent", "kent_side_normal")}
Sounds boring, but suit yourself.
~currentSpeaker = you
I will suit myself.
~currentSpeaker = comic
{ChangeSprite("Kent", "kent_normal")}
I'll send you the details later.
See ya!
~characters-=kent
~currentSpeaker = you
<i>I'm definitely not wearing an elf costume!</i>
->->

==lavender_solo_ending==
~characters+=lavender
{ChangeSprite("Lavender", "lavender_normal")}
~currentSpeaker = snob
Hello.
~currentSpeaker = you
Hi.
~currentSpeaker = snob
Why do you look like that?
~currentSpeaker = you
What do I look like?
{ChangeSprite("Lavender", "lavender_thinking")}
~currentSpeaker = snob
You seem sad.
~currentSpeaker = you
Very observant, aren't you?
{ChangeSprite("Lavender", "lavender_angry")}
~currentSpeaker = snob
I'm just asking.
There's no need for the sarcasm.
~currentSpeaker = you
Sorry.
{ChangeSprite("Lavender", "lavender_serious")}
~currentSpeaker = snob
What's going on?
~currentSpeaker = you
Just thinking about things.
~currentSpeaker = snob
What things?
~currentSpeaker = you
Well, I feel like I could have done better, you know?
{ChangeSprite("Lavender", "lavender_normal")}
~currentSpeaker = snob
It's not an emotion I am particularly familiar with.
Although...I am perhaps starting to feel it as well now.
~currentSpeaker = you
I don't know how I could have done better.
~currentSpeaker = snob
I don't know either.
I mean, perhaps I could have made up with {webdev}.
But she didn't give me a chance.
What could I do?
~currentSpeaker = you
I suppose you couldn't have done anything else really.
~currentSpeaker = snob
Too much has happened.
What do you think you should have done?
~currentSpeaker = you
Made more of an effort at my job.
I should have taken things more seriously.
You probably agree with me.
~currentSpeaker = snob
Nah.
~currentSpeaker = you
Huh?
~currentSpeaker = snob
I don't come here for some serious conversations with serious people.
I don't want to hang out with someone who's constantly deliberating over every decision...every action they're taking.
That doesn't sound fun. 
~currentSpeaker = you
Ok, I think I undestand now.
~currentSpeaker = snob
I think I understand too.
I've had the same issue as you.
I've been too concerned with keeping up productivity.
Doing the same thing over and over again, and wanting the same results.
Life doesn't work like that though.
And art doesn't either.
~currentSpeaker = you
I'm guessing you want to switch things up with your business?
~currentSpeaker = snob
Correct.
I want to make stuff that I actually want to make.
And I want to be more involved with the stuff that I make.
I've ordered a new sewing machine and I'm going to design stuff all by myself. 
~currentSpeaker = you
Well that's good.
~currentSpeaker = snob
And you will be my model.
~currentSpeaker = you
No.
{ChangeSprite("Lavender", "lavender_angry")}
~currentSpeaker = snob
Yes.
~currentSpeaker = you
Absolutely not.
{ChangeSprite("Lavender", "lavender_thinking")}
~currentSpeaker = snob
C'mon.
Just think about it.
You will get paid.
~currentSpeaker = you
...
Would I have to wear anything made of raw meat, or styrofoam?
{ChangeSprite("Lavender", "lavender_shocked")}
~currentSpeaker = snob
What!?
{ChangeSprite("Lavender", "lavender_angry")}
Where did you get such an idea from?
~currentSpeaker = you
Rich people are weird.
And have very impractical fashion sense. 
{ChangeSprite("Lavender", "lavender_mean")}
~currentSpeaker = snob
I promise nothing gross or unsightly.
{ChangeSprite("Lavender", "lavender_normal")}
My reputation is on the line.
I would never make you wear something distasteful.
{ChangeSprite("Lavender", "lavender_thinking")}
Anyway I'll give you time to think about it...
{ChangeSprite("Lavender", "lavender_normal")}
In the meantime, can you come to a fashion show tonight?
~currentSpeaker = you
Sure, I can do tonight.
~currentSpeaker = snob
{ChangeSprite("Lavender", "lavender_happy")}
REALLY?!
~currentSpeaker = you
I'm not doing anything so I might as well.
{PlayAnimation("Lavender", "shake")}
{ChangeSprite("Lavender", "lavender_happy")}
Eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
~currentSpeaker = you
OK. Please calm down before I change my mind.
{ChangeSprite("Lavender", "lavender_normal")}
~currentSpeaker = snob
I will send details later.
See you tonight!
Hehehe...
~characters-=lavender
~currentSpeaker = you
<i>That was so strange...</i>
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