==trader_satisfied==
{ChangeSprite("Stranger", "shadow_neutral")}
~characters+=stranger
~currentSpeaker=you
…
~currentSpeaker = trader
Hello again
So do you have what I asked for?
~currentSpeaker=you
Not what you asked for. But this USB should have enough credit on it.
{ChangeSprite("Stranger", "shadow_sad")}
~currentSpeaker = trader
Are you sure?
~currentSpeaker=you
Ada asked me to give it to you.
{ChangeSprite("Stranger", "shadow_neutral")}
~currentSpeaker = trader
Well I suppose that's good enough for me.
It just makes me feel silly for telling you that riddle.
~currentSpeaker=you
I don't mind.
~characters-=stranger
==trader_happy==
{ChangeSprite("Stranger", "shadow_neutral")}
~characters+=stranger
~currentSpeaker=you
…
~currentSpeaker = trader
Hello again
So do you have what I asked for?
~currentSpeaker=you
Yes…I have it.
{ChangeSprite("Stranger", "shadow_amused")}
~currentSpeaker = trader
Excellent.
~currentSpeaker=you
Can I ask you–
{ChangeSprite("Stranger", "shadow_sad")}
~currentSpeaker = trader
No.
~currentSpeaker=you
Why?
~currentSpeaker = trader
You just have to trust me.
~currentSpeaker=you
Trust you? I don’t even know who you are.
{ChangeSprite("Stranger", "shadow_neutral")}
~currentSpeaker = trader
You trust Ada, right? You know that she wanted you to do this, otherwise you wouldn’t be doing this right?

{snappedOut == "true":
    ~currentSpeaker=you
    I remember Ada asking me to give money to a strange man when he asks for it.
    I was being drugged by someone, so I can't remember some details.
    {ChangeSprite("Stranger", "shadow_sad")}
    ~currentSpeaker = trader
    Drugged by someone?
    ~currentSpeaker=you
    I understand, it sounds dodgy. I swear I wouldn't touch that stuff if you paid me. 
    ~currentSpeaker = trader
    Do you need me to get rid of this individual?
    ~currentSpeaker = you
    No! It's ok. Don't worry.
  - else:
    ~currentSpeaker=you
    I can’t exactly remember her asking me, but somehow I know this is what she wanted.
    {ChangeSprite("Stranger", "shadow_sad")}
    ~currentSpeaker = trader
    You can’t remember….
    You’re not taking it again, are you?
    ~currentSpeaker=you
    Excuse me?
    {ChangeSprite("Stranger", "shadow_neutral")}
    ~currentSpeaker = trader
    Fate. It makes you forget things. Look, you have to stop it.
    ~currentSpeaker=you
    I’ve been clean for 9 months. 
    But…no that can’t be right
    {ChangeSprite("Stranger", "shadow_sad")}
    ~currentSpeaker = trader
    I don’t know what’s going on with you, but Ada trusted you. I don’t know why, but it doesn’t matter now. You need to get your shit together.
    I can’t risk telling you anymore.
    You need to figure it out yourself. 
}
~currentSpeaker=android
Hey, what’s going on over there?
{ChangeSprite("Stranger", "shadow_neutral")}
~currentSpeaker = trader
I need to go.
Goodbye {you}.
~characters-=stranger
->continue_day_12
==trader_unhappy==
~characters+=stranger
~currentSpeaker=you
…
{ChangeSprite("Stranger", "shadow_neutral")}
~currentSpeaker = trader
Hello again
So do you have what I asked for?
~currentSpeaker=you
It's you again!
{ChangeSprite("Stranger", "shadow_sad")}
~currentSpeaker = trader
The books. Where are the books?
~currentSpeaker=you
I'm sorry, you didn't ask for any books.
~currentSpeaker=trader
It was part of our agreement with Lovelace.
I can see you are not quite all there.
{ChangeSprite("Stranger", "shadow_neutral")}
It's fine. I will just have to do this another way.
~currentSpeaker=you
I have absolutely no idea what you are talking about.
{ChangeSprite("Stranger", "shadow_sad")}
~currentSpeaker=trader
Goodbye.
I do not think we will meet again.
~characters-=stranger
~currentSpeaker=you
…
->continue_day_12
==day_12==
// ~allbooks+=Alice_in_Wonderland
// ~allbooks+=Howls_Moving_Castle
// ~allbooks+=t_lion_witch_wardrobe

{(allbooks ? Alice_in_Wonderland) && (allbooks ? Howls_Moving_Castle) && (allbooks ? t_lion_witch_wardrobe):
    ~strangerbooks="true"
  - else:
  ~strangerbooks="false"
}



{ 

- (gaveTraderMoney=="yes"):
-> continue_day_12
- ((strangerbooks=="true") || (snappedOut=="true") && funds>=500):
->trader_happy
- ((snappedOut=="true") && funds<500):
->trader_satisfied
- else:
->trader_unhappy
}
==continue_day_12
{ChangeSprite("Pandora", "pandora_normal")}
~characters+=pandora
~currentSpeaker = android 
I'll sign you in.
~currentSpeaker = you 
*[Yes (save)]
{SaveStory()}
Thanks {android}!
*[No (don't save)] 
I can do it myself
~currentSpeaker=android
-Hey {you}, how are things?
{ChangeSprite("Pandora", "pandora_sad")}
You look…pale. Are you ok?
~currentSpeaker=you
Yeah, I'm fine. It's just the weather.
Anyway...are you excited?
~currentSpeaker=android
Excited? About what?
{ChangeSprite("Pandora", "pandora_sad")}
Another day in this endless city.
~currentSpeaker=you
What?
{ChangeSprite("Pandora", "pandora_normal")}
~currentSpeaker=android
Oh nothing.
It's just a Cobalt Dragons lyric.
{ChangeSprite("Pandora", "pandora_happy")}
Of course I know what you’re talking about. I’m ecstatic. 
~currentSpeaker=you
You don’t sound it.
{ChangeSprite("Pandora", "pandora_mean")}
~currentSpeaker=android
Maybe when I was charging last night there was a loose connection. I don’t know. 
~currentSpeaker=you
You’ll cheer up, I’m sure.
So strange seeing you like this.
{ChangeSprite("Pandora", "pandora_mean")}
~currentSpeaker=android
I am cheerful, I just don’t have the right energy to express it right now.
~currentSpeaker=you
Wait…are you sure you’re not nervous.
~currentSpeaker=android
Nervous? I don’t get nervous.
~currentSpeaker=you
Could have fooled me.
{ChangeSprite("Pandora", "pandora_sad")}
~currentSpeaker=android
I’m not…am I nervous? Is this what being nervous feels like?
~currentSpeaker=you
I imagine that it’s different for androids, but if you feel a lack of enthusiasm and like something could go wrong then that might be a clue.
You’ve probably hyped this up too much in your head, and put too much pressure on yourself to make it perfect.
{ChangeSprite("Pandora", "pandora_shocked")}
~currentSpeaker=android
I know what being nervous is! I was a therapist.
{ChangeSprite("Pandora", "pandora_sad")}
I just…I could always logic myself out of this. 
{ChangeSprite("Pandora", "pandora_shocked")}
I can’t let this happen.
~currentSpeaker=you
There is no letting this happen.
It’s happening whether you like it or not.
{ChangeSprite("Pandora", "pandora_sad")}
~currentSpeaker=android
I need you to help me…just say something to make it go away.
~currentSpeaker=you
Ok, well think of it this way. If it goes terrible, at least you can always host another and learn from your mistakes. Make it better next time.
{ChangeSprite("Pandora", "pandora_shocked")}
~currentSpeaker=android
If it’s terrible no one will come back. There might not be a next time.
~currentSpeaker=you
Okay, so let’s say I’m one of your patients and I’m experiencing anxiety. What would you say to me?
{ChangeSprite("Pandora", "pandora_sad")}
~currentSpeaker=android
I would say that everyone always thinks of the worst thing that can happen. That’s why they get nervous. But, what if you imagine the best possible outcome? Imagine everything going perfectly, exactly the way you want. Just picture it. 
{ChangeSprite("Pandora", "pandora_normal")}
Wait, that worked a bit.
~currentSpeaker=you
<i>*Sigh*</i>
Why do I even try?
{ChangeSprite("Pandora", "pandora_happy")}
~currentSpeaker=android
Wow, what you said really helped. Thanks!
~currentSpeaker=you
But it was what you said–
No, you know what, I’ll accept the thanks.
{ChangeSprite("Pandora", "pandora_normal")}
~characters +=kent
{ChangeSprite("Kent", "kent_normal")}
~currentSpeaker=comic
Hi!
~currentSpeaker=you
Well, it’s you again.
{ChangeSprite("Kent", "kent_amused")}
~currentSpeaker=comic
Sick of me already?
~currentSpeaker=you
I could never be sick of you.
{allbooks ? cybershake: -> cybershake_comic->} 
{ChangeSprite("Kent", "kent_normal")}
~currentSpeaker=comic
I come bearing gifts.
{ChangeSprite("Kent", "kent_side_serious")}
Which you will have to give back with the instruction manuals intact and ALL the pieces in the right place.
~currentSpeaker=you
OK. OK. OK.
~currentSpeaker=android
We promise to take good care of your property.
{ChangeSprite("Kent", "kent_normal")}
~currentSpeaker=comic
It's not you I’m worried about.
~currentSpeaker=you
I don’t like the insinuation here. 
{ChangeSprite("Kent", "kent_amused")}
~currentSpeaker=comic
I see the way you handle that cash register.
~currentSpeaker=you
The way I handle the cash register is none of your business.
{ChangeSprite("Pandora", "pandora_pensive")}
~currentSpeaker=android
Do you know if {snob} and {webdev} will come?
{ChangeSprite("Kent", "kent_side_normal")}
~currentSpeaker=comic
I’m not in contact with them really.
I got {webdev}’s number in passing, we haven’t spoken much beyond a ‘hi’ here and there, and I shared an article I liked with her.
{ChangeSprite("Pandora", "pandora_annoyed")}
~currentSpeaker=android
Ok, {comic}, I didn’t ask for your whole life story.
{ChangeSprite("Kent", "kent_side_normal")}
~currentSpeaker=comic
{android} I’m getting some rather unexpected negative energy from you right now.
~currentSpeaker=you
She’s nervous.
{ChangeSprite("Kent", "kent_amused")}
~currentSpeaker=comic
Really? Didn’t realise androids got nervous.
{ChangeSprite("Pandora", "pandora_sad")}
~currentSpeaker=android
I’m right here.
And I’m freaking out
{ChangeSprite("Kent", "kent_normal")}
~currentSpeaker=comic
It’s ok, it’s just a party.
~currentSpeaker=android
Stop it. You’re not going to logic me out of my anxiety.
Where are the others??
~characters +=tali
~characters +=lavender
{ChangeSprite("Tali", "tali_normal")}
~currentSpeaker=webdev
What’s going on?
{ChangeSprite("Lavender", "lavender_normal")}
~currentSpeaker=snob
Yeah, what’s up?
{ChangeSprite("Pandora", "pandora_happy")}
~currentSpeaker=android
Ah wonderful we’re all here
~currentSpeaker=you
{allbooks ? togue_ppe: -> togue_ppe_special->} 
{allbooks ? heart_lies: -> where_the_heart_lies->} 
{allbooks ? queendom_heretic: -> queen_h->} 
{ChangeSprite("Pandora", "pandora_normal")}
~currentSpeaker=comic
So {webdev}, {snob}
You’ve made up then?
{ChangeSprite("Lavender", "lavender_angry")}
~currentSpeaker=snob
Excuse me?
That’s none of your business.
{ChangeSprite("Tali", "tali_talking_side")}
~currentSpeaker=webdev
It’s a coincidence, we just happened to arrive at the same time.
{ChangeSprite("Lavender", "lavender_thinking")}
~currentSpeaker=snob
Sure, I think someone has been following me.
{ChangeSprite("Tali", "tali_smirk")}
~currentSpeaker=webdev
I’m not the one with the tracking apps…
{ChangeSprite("Lavender", "lavender_angry")}
~currentSpeaker=snob
HEY! I told you that was for research purposes only.
{ChangeSprite("Kent", "kent_shocked")}
~currentSpeaker=comic
Oh my god.
{ChangeSprite("Kent", "kent_normal")}
~currentSpeaker=you
Everyone shut up.
We’re playing a game.
{ChangeSprite("Pandora", "pandora_happy")}
~currentSpeaker=android
What should we start with?
~currentSpeaker=you
We’re playing truth or dare.
You know how it goes.
{ChangeSprite("Pandora", "pandora_pensive")}
~currentSpeaker=android
How does it go?
~currentSpeaker=you
I’ll show you how
I’ll pick someone to go first. I’ll save you from the first round {android} as you don’t know what’s going on.
->start_truth_or_dare

==start_incident==
~characters+=lavender
~characters+=tali
~characters+=kent
~characters+=pandora
{ChangeSprite("Pandora", "pandora_happy")}
// ~currentSpeaker=android
// That was fun.
// ~currentSpeaker=you
// Glad you enjoyed it.
// {ChangeSprite("Kent", "kent_happy")}
// ~currentSpeaker=comic
// Is it film time now?
// We can watch the new Blood Monster 3 that just came out. 
// I have it on my Hoolflix account, if you show me the computer I can just login.
// {ChangeSprite("Pandora", "pandora_normal")}
// ~currentSpeaker=android
// It’s downstairs.
// I can show you.
// ~currentSpeaker=you
// No, I’ll show him.
// You stay up here and enjoy the drinks and music.
~currentSpeaker=android
Aw cool, thanks!
{ChangeSprite("Tali", "tali_shocked")}
{ChangeSprite("Lavender", "lavender_shocked")}
{ChangeSprite("Kent", "kent_shocked")}
{ChangeSprite("Pandora", "pandora_shocked")}
<i>*BOOM*</i>
{PlayAnimation("Pandora", "long_shake")}
{PlayAnimation("Tali", "long_shake")}
{PlayAnimation("Lavender", "long_shake")}
{PlayAnimation("Kent", "long_shake")}
{ChangeSprite("Tali", "tali_sad")}
~currentSpeaker=webdev
What was that?

~currentSpeaker=snob
AHHHHHHHH
{ChangeSprite("Pandora", "pandora_sad")}
~currentSpeaker=android
Everyone calm down!
{ChangeSprite("Pandora", "pandora_pensive")}
It’s…it’s snow?
{ChangeSprite("Kent", "kent_sad")}
~currentSpeaker=comic
There was some kind of explosion it seems.
~currentSpeaker=you
And…that’s not snow {android}, it’s ash.
{ChangeSprite("Pandora", "pandora_sad")}
~currentSpeaker=android
It just looks so much like snow.
~currentSpeaker=you
You’ve never seen snow before.
Look, something really bad just happened, {android} status update?
~currentSpeaker=android
It’s so hard to focus…everyone online is in a state of panic.
I'm detecting normal levels of radiation.
~currentSpeaker=you
So not nuclear then. 
But we should probably head downstairs just in case.
{ChangeSprite("Kent", "kent_upset")}
~currentSpeaker=comic
That won’t save us.
~currentSpeaker=you
If we go down there and close the door, we should be safer than we are up here.
It has an air purification device and oxygen generator. The air quality is probably not that great right now.
{ChangeSprite("Lavender", "lavender_crying")}
~currentSpeaker=snob
Are we going to die?
~currentSpeaker=comic
Possibly.
{ChangeSprite("Tali", "tali_upset")}
~currentSpeaker=webdev
That’s not a joke {comic}!
~currentSpeaker=comic
I wasn’t actually joking.
{ChangeSprite("Lavender", "lavender_tears_crying")}
~currentSpeaker=snob
WAHHHH!
{ChangeSprite("Pandora", "pandora_mean")}
~currentSpeaker=android
Don’t be worried. I’m actually trained for this kind of situation.
~currentSpeaker=snob
 You’re a robot, you’re fine if anything happens. We’ll probably all suffocate to death.
Or die excruciatingly from radiation poisoning.
{ChangeSprite("Tali", "tali_serious")}
~currentSpeaker=webdev
{snob} for fuck’s sake!
~scene = "Basement"
{ChangeSprite("Pandora", "pandora_normal")}
~currentSpeaker=android
Here we are now. I’ll just seal the door.
There it’s done.
~currentSpeaker=you
I just turned the air filtration devices on.
{ChangeSprite("Lavender", "lavender_normal")}
~currentSpeaker=snob
It’s going to be fine right?
I’m sure it’s nothing.
~scene = "Fire"
WAHHHH!
{ChangeSprite("Pandora", "pandora_sad")}
~currentSpeaker=android
Oh, you might want to see this.
~currentSpeaker = ""
<i>This is live footage. At 19:45 an attack was attempted on the London area and the dome was breached. The houses of parliament seem to be on fire. This is not a drill. Everyone stay indoors. I repeat, everyone stay indoors.</i>
~scene = "Basement"
~currentSpeaker=you
Everything’s in lockdown now.
You won’t be able to leave this building.
And to be honest, you might not even want to. God knows what’s just happened outside.
{ChangeSprite("Lavender", "lavender_angry")}
~currentSpeaker=snob
It was a terrorist attack obviously.
{ChangeSprite("Kent", "kent_side_serious")}
~currentSpeaker=comic
I’m leaving.
~currentSpeaker=android
We can’t let you do that, I’m afraid.
{ChangeSprite("Kent", "kent_upset")}
~currentSpeaker=comic
I SAID I’M FUCKING LEAVING LET ME OUT OF HERE.
~currentSpeaker=you
It’s against the law, and even if it wasn’t, it’s not safe out there right now. 
{ChangeSprite("Kent", "kent_side_serious")}
~currentSpeaker=comic
Scott is on his shift. He’s out there.
{ChangeSprite("Pandora", "pandora_normal")}
~currentSpeaker=you
I’m sure he’s gone to find shelter.
He’s a paramedic. He has all sorts of medical equipment. They take precautions when they go out. 
{ChangeSprite("Kent", "kent_upset")}
~currentSpeaker=comic
...
~currentSpeaker=you
And you risking your life to find him is not going to help.
It’s just going to make it worse.
You have no idea where he is. He’s probably worrying about you right now. I’m sure it would ease his mind to know you’re somewhere safe.
~currentSpeaker=android
Yes, she has a good point {comic} please don’t go out.
{ChangeSprite("Kent", "kent_sad")}
~currentSpeaker=comic
…
{ChangeSprite("Kent", "kent_side_serious")}
OK.
{ChangeSprite("Lavender", "lavender_sad")}
~currentSpeaker=snob
I can’t get ahold of my brothers.
{ChangeSprite("Tali", "tali_sad")}
~currentSpeaker=webdev
I tried contacting my family, had the same issue.
{ChangeSprite("Pandora", "pandora_normal")}
~currentSpeaker=android
There might be a temporary network issue.
It might be that the government shut it down to counteract any terrorist communication.
{ChangeSprite("Tali", "tali_upset")}
~currentSpeaker=snob
Crap.
~currentSpeaker=you
Well, at least you tried.
~currentSpeaker=android
I will make up some beds for you to sleep in, we have some spare blankets and air mattresses. 
I’ll try and make it as comfy as possible. There’s a lot of space down here, and also a kitchen and a small bathroom.
{ChangeSprite("Tali", "tali_serious")}
~currentSpeaker=webdev
How is it so well equipped?
{ChangeSprite("Pandora", "pandora_happy")}
~currentSpeaker=android
This was set up as an emergency shelter for events just like this.
{ChangeSprite("Tali", "tali_talking_side")}
~currentSpeaker=webdev
That’s incredibly convenient. 
{ChangeSprite("Pandora", "pandora_sad")}
~currentSpeaker=android
I don't know about that.
The amount of planning and preparation and all the things I always have to check down here. 
{ChangeSprite("Pandora", "pandora_mean")}
I have to make sure all the supplies are not out of date and do a monthly check of the facilities. 
And before I was around, Ada had to do all the checks. These kinds of things are not without maintenance.
{ChangeSprite("Tali", "tali_serious")}
~currentSpeaker=webdev
But why go to all the effort to do that?
{ChangeSprite("Tali", "tali_normal")}
I mean I’m glad.
{ChangeSprite("Tali", "tali_talking_side")}
It's kind of funny, Ada did all the planning, and she’s not even here now.
{ChangeSprite("Lavender", "lavender_sad")}
~currentSpeaker=snob
Lucky her.
{ChangeSprite("Lavender", "lavender_crying")}
She’s safe abroad, and we’re probably going to die here.
~currentSpeaker=you
Well, whatever the reason, I’m just grateful this is here.
It’s definitely a sturdy bunker.
{ChangeSprite("Lavender", "lavender_normal")}
{ChangeSprite("Pandora", "pandora_happy")}
~currentSpeaker=android
In scenarios like this it’s always good to look on the bright side. 
{ChangeSprite("Pandora", "pandora_pensive")}
While being realistic of course. I think it’s just best to focus on what you can do, rather than future possibilities.
{ChangeSprite("Pandora", "pandora_normal")}
I can hand out some toiletries. There’s a rather basic shower if anyone wants. I can also play some soothing music before we go to bed.
~currentSpeaker=snob
What if we all get killed in our sleep?
~currentSpeaker=android
I would alert you if something like that were to happen. 
My systems are on high alert, I’ll let you know when the network comes back up and if there’s any new news. 
The best thing you can do now is act like the explosion and destruction of your government’s premises didn’t even happen.
{ChangeSprite("Kent", "kent_amused")}
~currentSpeaker=comic
Well, at least we'll get a heads up if we're about to die.
{ChangeSprite("Tali", "tali_exasperated")}
~currentSpeaker=webdev
You know what, this kimono is getting sweaty. I'm going to have a shower.
~characters-=tali
{ChangeSprite("Kent", "kent_side_normal")}
~currentSpeaker=comic
There's a lot of boxes. I'll check if there's anything useful in them.
~characters-=kent
{ChangeSprite("Lavender", "lavender_thinking")}
~currentSpeaker=snob
I'm going to see if I can get through to my dad.
~characters-=lavender
~currentSpeaker=you
Is there anything I can do to help {android}.
I know I’m just a shop clerk, and woefully unprepared.
{ChangeSprite("Pandora", "pandora_sad")}
~currentSpeaker=android
You could check on {comic}, I’m worried about him.
{ChangeSprite("Pandora", "pandora_pensive")}
Also I feel like {snob} is not really adjusting to the situation really well.
{ChangeSprite("Pandora", "pandora_normal")}
And could you make sure {webdev} has a towel when she gets out, I want her to be comfortable.
~currentSpeaker=you
Anything I can do for you?
{ChangeSprite("Pandora", "pandora_sad")}
~currentSpeaker=android
I just need some time. All these alerts, well I can handle them but they’re making me a bit edgy. 
~characters-=pandora
~characters+=kent
~currentSpeaker=you
{comic}? Everything ok?
{ChangeSprite("Kent", "kent_side_serious")}
~currentSpeaker=comic
…
~currentSpeaker=you
I can give you some space. I just hope you’re not thinking of doing anything stupid.
{ChangeSprite("Kent", "kent_happy")}
~currentSpeaker=comic
Me? Never.
~currentSpeaker=you
You seem…better?
{ChangeSprite("Kent", "kent_amused")}
~currentSpeaker=comic
You know over the past year, covering all these crazy stories I’ve sort of become desensitised to all this stuff. 
{ChangeSprite("Kent", "kent_side_normal")}
It was always something that happened to someone else, not me, just some poor soul or some idiot who did the wrong thing or was just at the wrong place at the wrong time.
~currentSpeaker=you
{comic}
{ChangeSprite("Kent", "kent_side_serious")}
~currentSpeaker=comic
…but now it’s us, isn’t it? We’re the ones. At the wrong place at the wrong time. It’s our turn.
~currentSpeaker=you
I get what you mean.
I always wondered when it was my turn, to be honest.
I feel like…maybe if anyone deserves it, it would be me.
~currentSpeaker=comic
You’re not that bad {you}. C’mon.
~currentSpeaker=you
You don’t really know me.
~currentSpeaker=comic
Oh? Well don’t hide away too long.
We might not get much time left.
~characters-=kent
~characters+=lavender
{ChangeSprite("Lavender", "lavender_angry")}
~currentSpeaker=snob
I want rose tea.
I can’t go to bed without it.
~currentSpeaker=you
Ok, let me just boil the kettle.
~currentSpeaker=snob
This setup is weird.
{ChangeSprite("Lavender", "lavender_thinking")}
Why is the kettle on your side of the table?
~currentSpeaker=you
The power supply is here, and it’s easier to boil the water here than in the kitchen.
Then you can have fresh tea at the table.
{ChangeSprite("Lavender", "lavender_angry")}
~currentSpeaker=snob
This place is dusty and smells of mould.
~currentSpeaker=you
I can guarantee outside is much worse.
{ChangeSprite("Lavender", "lavender_sad")}
~currentSpeaker=snob
What did I do wrong to cause this?
~currentSpeaker=you
I don’t think this had anything to do with you.
{ChangeSprite("Lavender", "lavender_thinking")}
~currentSpeaker=snob
It must be because of the stuff to do with my father.
{ChangeSprite("Lavender", "lavender_angry")}
And then they knew I was here, having a nice time and they had to ruin it.
~currentSpeaker=you
Sorry {snob}, but I just don't think this was about you.
You're not responsible for your father's actions, and in turn you're not responsible for other people's reaction to them.
{ChangeSprite("Lavender", "lavender_sad")}
~currentSpeaker=snob
<i>*sniff*</i>
~currentSpeaker=you
So...did you enjoy tonight?
{ChangeSprite("Lavender", "lavender_happy")}
~currentSpeaker=snob
Maybe it was sort of fun.
{ChangeSprite("Lavender", "lavender_sad")}
Until it got to the explosion part.
~currentSpeaker=you
Your tea is ready.
Be careful it’s hot.
{ChangeSprite("Lavender", "lavender_happy")}
~currentSpeaker=snob
Thanks.
~currentSpeaker=you
I’m going to check on {webdev}.
~characters-=lavender
~characters+=tali
{ChangeSprite("Tali", "tali_exasperated")}
~currentSpeaker=webdev
Ugh
~currentSpeaker=you
How was your shower?
{ChangeSprite("Tali", "tali_talking_side")}
~currentSpeaker=webdev
Water pressure is not great. But at least it’s hot.
~currentSpeaker=you
You found a towel then?
{ChangeSprite("Tali", "tali_talking_forward")}
~currentSpeaker=webdev
They were folded by the shower in plastic sleeves. Seemed clean enough.
~currentSpeaker=you
Would you like a refreshing beverage?
{ChangeSprite("Tali", "tali_smirk")}
~currentSpeaker=webdev
Are you our lovely airhostess for today?
~currentSpeaker=you
Funny, something about this place does make it feel like we’re in an aeroplane. 
{ChangeSprite("Tali", "tali_talking_side")}
~currentSpeaker=webdev
Or a ship cabin. 
~currentSpeaker=you
It feels so stuffy and clinical. Everything’s sanitised but nothing feels quite clean.
{ChangeSprite("Tali", "tali_smirk")}
~currentSpeaker=webdev
Do we get pyjamas?
~currentSpeaker=you
There are some spare day clothes…nothing fancy, some t-shirts, fleeces, joggers etc…very utilitarian stuff
{ChangeSprite("Tali", "tali_talking_side")}. 
~currentSpeaker=webdev
What are the sizes like?
~currentSpeaker=you
Not a great selection I'm afraid.
{ChangeSprite("Tali", "tali_smirk")}
~currentSpeaker=webdev
Maybe we can get {snob} to sew us some new clothes.
~currentSpeaker=you
Might be difficult without a sewing machine.
Although I believe there is a little travel sewing kit stowed away in one of the cupboards.
{ChangeSprite("Tali", "tali_talking_side")}
~currentSpeaker=webdev
She really did think of everything.
{ChangeSprite("Tali", "tali_normal")}
~characters+=pandora
~characters+=lavender
~characters+=kent
{ChangeSprite("Pandora", "pandora_happy")}
~currentSpeaker=android
Hi all.
~currentSpeaker=webdev
You’re back, what’s the news?
{ChangeSprite("Pandora", "pandora_sad")}
~currentSpeaker=android
No news still. 
{ChangeSprite("Pandora", "pandora_normal")}
But we should all go to bed. It’s important to maintain a normal schedule for one’s sanity.
{ChangeSprite("Kent", "kent_upset")}
~currentSpeaker=comic
I don’t see how that will help, there’s nothing we can do, why does our mental capacity matter?
~currentSpeaker=android
We’re going to bed!
{ChangeSprite("Kent", "kent_normal")}
{ChangeSprite("Lavender", "lavender_shocked")}
~currentSpeaker=snob
Did I just get told to go to bed by a robot?
{ChangeSprite("Pandora", "pandora_excited")}
~currentSpeaker=android
Bed! Now!
~currentSpeaker=you
Uh, she’s right. Early night. Let’s go!
{ChangeSprite("Tali", "tali_exasperated")}
~currentSpeaker=webdev
I don’t have the energy to argue.
{ChangeSprite("Kent", "kent_amused")}
~currentSpeaker=comic
I can’t believe we’re getting herded to bed. 
{ChangeSprite("Lavender", "lavender_sad")}
~currentSpeaker=snob
I’ll have trouble sleeping without my white noise machine and humidifier and weighted blanket and–
~currentSpeaker=you
Please, for the love of god shut up.
~characters-=lavender
~characters-=kent
~characters-=tali
~characters+=pandora
~currentSpeaker = android 
Here you go.
~currentSpeaker = you 
What is this for?
~currentSpeaker = android 
I made a list of everything we have down here.
Do you want to add anything?
*[Yes (save)]
{SaveStory()}
Sure I can add some things.
*[No (don't save)] 
Not really.
~currentSpeaker = android 
-Keep it. It might come in handy.
~characters-=pandora
~day+=1
->day_13