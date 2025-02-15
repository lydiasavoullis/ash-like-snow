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
~pandoraPoints=5
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

//{pandoraPoints<4 && snappedOut=="no": ->pandora_bad_ending}#Done

{snappedOut=="no": ->ada_fires_you->}  #Done

{snappedOut=="yes": ->ada_transfers_you->} #Done

{kentPoints > 4: ->kent_ending->} #Done

{taliPoints > 4: ->tali_ending->} #Done

{lavenderPoints > 4 && taliPoints< 4: ->lavender_solo_ending->} #Done



{pandoraPoints < 6: ->pandora_neutral_ending->} #Done

{pandoraPoints >= 6: ->pandora_good_ending->} #Done

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

==ada_fires_you==
~characters+=pandora
~characters+=ada
~currentSpeaker=android
So, basically, we might need to clean the basement.
And restock some items that were used during the incident.
~currentSpeaker=lovelace
{android}.
My love.
Make us some tea please.
~currentSpeaker=android
And…I’m really sorry about what happened with the computer.
I just let {comic} use it. You see he’s kind of an important journalist, and he needed to do some work. Obviously this was highly inappropriate. I wasn’t thinking straight at the time you see. I didn’t realise.
~currentSpeaker=lovelace
Uh huh yes.
~currentSpeaker=android
Don't you want to-
~currentSpeaker=lovelace
Just make us some tea.
Thank you.
~currentSpeaker=android
...
~characters-=pandora
~currentSpeaker=you
Travelling. 
It's stressful eh?
~currentSpeaker=lovelace
...
~currentSpeaker=you
Well, I did my best.
No one got hurt.
That basement turned out pretty useful in the end.
~currentSpeaker=lovelace
...
~currentSpeaker=you
Everything alright?
~currentSpeaker=lovelace
Do you remember what I told you?
Before I left.
~currentSpeaker=you
No.
Not really.
It's a bit of a long story actually.
~currentSpeaker=lovelace
I DO NOT FUCKING CARE.
I gave you one simple instruction.
I did not care.
About the inventory. 
Or how much money would be left in my account.
I only asked.
That if a strange man.
In a coat and a top hat comes and references about some stupid kids books.
You give him £500.
No questions asked.
~currentSpeaker=you
...
~currentSpeaker=lovelace
It was my fault.
For entrusting this task.
To a fucking drug addict. 
~currentSpeaker=you
It was an accident.
~currentSpeaker=lovelace
It always is isn't it?
I should never have brought you here.
Taken you in.
You really are a lost case, aren't you?
~currentSpeaker=you
...
~currentSpeaker=lovelace
The funny thing is, you don't even know what you have done.
We are all doomed.
Thanks to you.
~currentSpeaker=you
Where were you?
~currentSpeaker=lovelace
Somewhere important doing important things.
None of that matters anymore.
~currentSpeaker=you
I'm not a drug addict.
~currentSpeaker=lovelace
You are.
If you were not addicted.
You would not ask these questions.
You would remember.
That is the only blessing here.
Get out of my shop.
~characters-=ada
->->

==ada_transfers_you==
~characters+=pandora
~characters+=ada
~currentSpeaker=android
So, basically, we might need to clean the basement.
And restock some items that were used during the incident.
~currentSpeaker=lovelace
Uhuh. I see.
~currentSpeaker=android
And…I’m really sorry about what happened with the computer.
I just let {comic} use it. You see he’s kind of an important journalist, and he needed to do some work. Obviously this was highly inappropriate. I wasn’t thinking straight at the time you see. I didn’t realise.
~currentSpeaker=lovelace
{android} I understand. Sometimes these things happen.
~currentSpeaker=android
Really? You’re not upset.
~currentSpeaker=lovelace
I have to say, I’m a little...disappointed. But not upset.
~currentSpeaker=android
But forlorn sounds worse.
~currentSpeaker=lovelace
Enough of this. No moping. Things sorted themselves out didn’t they.
~currentSpeaker=android
I suppose so.
How was Madrid?
~currentSpeaker=lovelace
It was...festive.
I saw a lot of...people.
~currentSpeaker=android
It sounds nice. A lot nicer than how we spend our Christmas.
~currentSpeaker=lovelace
I am truly sorry, but I’m glad nothing happened to my beautiful shop.
And you of course.
~currentSpeaker=android
It feels so weird, now things are back to normal.
Isn’t that right {you}?
~currentSpeaker=you
Yeah, I guess so.
~currentSpeaker=lovelace
You’re quiet.
Not usually so quiet.
~currentSpeaker=you
Well the whole incident affected me mentally, I’m not the same person.
~currentSpeaker=lovelace
Funny. I did not take you for the type to be mentally affected by this kind of thing.
~currentSpeaker=you
I’m an incredibly sensitive person. It might not seem like it. But {android} was like my rock, she helped me through it.
~currentSpeaker=lovelace
Oh really?
~currentSpeaker=android
…
Thanks {you}.
~currentSpeaker=you
I mean it.
~currentSpeaker=lovelace
{android} could you make us some tea my love.
Cheers.
~currentSpeaker=android
...
~characters-=pandora
{funds <100: ->lowFunds->|->highFunds->} 
= lowFunds
~currentSpeaker=lovelace
Now I know this is an awkward matter.
But I have to ask about the finances here.
I have checked, and there is a noticeable lack of money.
~currentSpeaker=you
It was given to a dear friend of yours.
~currentSpeaker=lovelace
Well. If it was a dear friend, then that’s fine.
What did this dear friend wear?
~currentSpeaker=you
A top hat and a trench coat.
->->
= highFunds
~currentSpeaker=lovelace
You have outdone yourself.
You've managed my bank account reasonably well.
I'm impressed.
~currentSpeaker=you
I had to lend some money to a dear friend of yours.
~currentSpeaker=lovelace
Well. If it was a dear friend, then that’s fine.
What did this dear friend wear?
~currentSpeaker=you
A top hat and a trench coat.
->->
~currentSpeaker=lovelace
Ugh, so dramatic. I hate these revolutionary types.
All they want to do is blow things up.
~currentSpeaker=you
Hold on a minute…
What did you say?
~currentSpeaker=lovelace
Oh, you are not aware?
But I told you before I left, didn’t I?
~currentSpeaker=you
Yes, I had a bit of a lapse of memory.
~currentSpeaker=lovelace
You’ve been taking that disgusting drug again, haven’t you?
~currentSpeaker=you
No, it was an accident. {android} was putting it in my drink. Innocently, she thought she was helping me.
~currentSpeaker=lovelace
That stupid android. She almost ruined everything.
I wouldn’t believe such a ridiculous thing usually, but that does sound exactly like something {android} would do.
She’s unbelievably...
~currentSpeaker=you
Human?
~currentSpeaker=lovelace
Yes.
Unfortunately.
Well, I will need to catch you up on everything.
And you will need to move.
~currentSpeaker=you
What?
~currentSpeaker=lovelace
You are involved in the incident, and so am I. We are both connected. We’re safe for now, they are busy with the clean up. But soon people will start asking questions, and snooping around. I can’t be there when that happens, and neither can you.
~currentSpeaker=you
So, where do we go? Madrid?
~currentSpeaker=lovelace
Not a bad idea.
~currentSpeaker=you
No. No. I was just joking.
~currentSpeaker=lovelace
I have another location. A different shop.
~currentSpeaker=you
Still selling books I hope.
~currentSpeaker=lovelace
Why? I hope you’re not getting too attached.
~currentSpeaker=you
When are you going to tell {android}?
~currentSpeaker=lovelace
Why does she need to know?
~currentSpeaker=you
She’s not a child.
And it wouldn’t hurt to tell her some stuff once in a while. It might stop her from drugging me, thinking she was helping.
Maybe, she can actually help us.
~currentSpeaker=lovelace
I don’t know.
I’ve made some mistakes with her, I know.
It’s just so hard...
~currentSpeaker=you
It’s hard for her too.
~characters+=pandora
~currentSpeaker=android
I brought tea.
~currentSpeaker=lovelace
I better be off.
I’d like to assess the damage.
~characters-=ada
~currentSpeaker=you
Only Ada would call a couple of used sleeping bags and missing ration packs ‘damage’.
~currentSpeaker=android
How are you holding up?
~currentSpeaker=you
I’m fine.
~currentSpeaker=android
She doesn’t seem too upset.
~currentSpeaker=you
It’s funny, this city was almost destroyed and you’re more concerned with what Ada will think about the mess.
~currentSpeaker=android
She’s scary.
~currentSpeaker=you
She is. A bit. 
~currentSpeaker=android
A lot.
->->

==pandora_good_ending==
#Pandora will come with you if you are transferred
#Pandora will ask Ada if she can live with you if you are fired
->pandora_goodbye->
~currentSpeaker=android
WAIT!
~currentSpeaker=you
Eh?
~currentSpeaker=android
I...don't know what I was going to say.
I don't want you to leave.
~currentSpeaker=you
Really?
I have to leave.
I have no choice.
~currentSpeaker=android
This isn't fair.
And don't tell me life isn't fair.
I already figured that one out.
~currentSpeaker=you
Well, I don't really know what to say to you then.
~currentSpeaker=android
Take me with you.
~currentSpeaker=you
What!
~currentSpeaker=android
I can't stay here forever.
I can't take it anymore.
~currentSpeaker=you
...
OK.
You should really tell {lovelace} though.
~currentSpeaker=android
And what can she do?
She can't go to the authorities.
She would be arrested.
~currentSpeaker=you
I know. But she should probably know.
I don't think she will be too happy.
~currentSpeaker=android
I don't care.
I don't care anymore.
I just want to leave now.
~currentSpeaker=you
Talk.
Then we leave.
~currentSpeaker=android
...
~characters-=pandora
<i>\*Some time passess...\*</i>
<i>\*Shouting filters through the thin shop walls.\*</i>
~characters+=pandora
~currentSpeaker=android
Let's go.
~currentSpeaker=you
What did she say?
~currentSpeaker=android
You told me that I could leave with you if I told her.
And I told her.
Now...
Let's just go.
~currentSpeaker=you
You know, you really scare me sometimes.
~currentSpeaker=android
Only sometimes?
I'll have to work on that.
->->
==pandora_neutral_ending==
->pandora_goodbye->
->->
==pandora_goodbye==
~currentSpeaker=android
So I guess this is goodbye.
~currentSpeaker=you
Yeah.
I didn't really think about it like that.
~currentSpeaker=android
I just wanted you to know.
It has been a pleasure working with you.
~currentSpeaker=you
Likewise.
~currentSpeaker=android
...
I'm sorry about the whole Fate thing.
~currentSpeaker=you
It's unfortunate but I think you've learned your lesson.
~currentSpeaker=android
At what cost?
~currentSpeaker=you
If anyone knows about making costly mistakes it's me.
And I can tell you that...
You will get over it.
~currentSpeaker=android
I feel so bad.
~currentSpeaker=you
Weirdly enough, that's a good thing.
~currentSpeaker=android
How is this a good thing?
~currentSpeaker=you
Means your moral compass is working.
~currentSpeaker=android
This is horrible.
I thought my moral compass was working.
It obviously needs some re-calibrating.
~currentSpeaker=you
Everyone's does from time to time.
~currentSpeaker=android
Mine should not!
~currentSpeaker=you
You're not perfect. It's quite obvious. 
It doesn't mean you're not valued. People like you.
Don't forget that. 
I really do have to go.
Before {lovelace} chases me out with a broomstick.
~currentSpeaker=android
I certainly wouldn't mind watching that.
~currentSpeaker=you
You have a cruel sense of humour.
->->

==pandora_bad_ending==
~worstEnding = "yes"
~currentSpeaker=you
I-I can't.
~currentSpeaker=pandora
What do you mean you can't?
~currentSpeaker=you
I just. I can't imagine anything.
Maybe it's better that we stay here.
~currentSpeaker=pandora
I can't do this without you {you}.
~currentSpeaker=you
Everyone is happy.
Maybe I can be happy too.
~currentSpeaker=pandora
Ok. I will leave and try to find a way out. 
~currentSpeaker=you
I'm sorry. I feel like there was something I should have done differently.
~currentSpeaker=pandora
No. I'm sorry I spoke to you like that. This is not your fault.
We don't always have control of our circumstances.
Only our actions.
But even then...it's difficult.
I can only imagine.
~currentSpeaker=you
Goodbye {android}.
~currentSpeaker=pandora
I'll keep you all safe. Don't worry.
¬
~scene= "ShopFront"
Two weeks later.
¬
~scene= "GenericScene"
¬
~characters+=pandora
~characters+=ada
~currentSpeaker=lovelace
{android}.
Where's {you}?
~currentSpeaker=android
{ChangeSprite("Pandora", "pandora_pensive")}
...
~currentSpeaker=lovelace
{android}?
Where did that lazy cow get off to?
~currentSpeaker=android
{ChangeSprite("Pandora", "pandora_sad")}
I didn't mean to.
~currentSpeaker=lovelace
You didn't mean to what?
Tell me what happened now.
~currentSpeaker=android
{ChangeSprite("Pandora", "pandora_shocked")}
Or you'll do what?
~currentSpeaker=lovelace
Where did such insolence come from!?
~currentSpeaker=android
{ChangeSprite("Pandora", "pandora_sad")}
...
I'll tell you everything.
~currentSpeaker=lovelace
Was it to do with that event?
I need to have words with {you}.
~currentSpeaker=android
That might be a bit difficult.
~currentSpeaker=lovelace
{android} you're really scaring me now...
~currentSpeaker=android
What's there to be scared of.
It was only your creation.
~currentSpeaker=lovelace
My...creation.
Don't tell me you touched it.
~currentSpeaker=android
It was an accident.
I didn't realise.
~currentSpeaker=lovelace
What's the damage?
~currentSpeaker=android
They're all stuck.
I've been keeping them fed and watered. But they're just zombies at this point.
~currentSpeaker=lovelace
They're still alive?
~currentSpeaker=android
Of course!
Otherwise...
~currentSpeaker=lovelace
Otherwise?
~currentSpeaker=android
I would have called an ambulance.
~currentSpeaker=lovelace
You would do no such thing.
~currentSpeaker=android
I would!
I'm sick of this {lovelace}.
I can't continue.
Covering up for you.
Covering my existance.
~currentSpeaker=lovelace
It's for your protection.
~currentSpeaker=android
Or yours.
You'd be in trouble if they knew about me.
~currentSpeaker=lovelace
I would be in trouble.
You would be dead.
~currentSpeaker=android
I'm not even alive.
~currentSpeaker=lovelace
I'm not having this debate with you now!
We deal with them. Now.
~currentSpeaker=android
You think you can get them out?
~currentSpeaker=lovelace
Yes.
I have no choice.
After all it is my creation.
->END
