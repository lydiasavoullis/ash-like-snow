==day_10==
~characters+=pandora
~currentSpeaker = android 
I'll sign you in.
~currentSpeaker = you 
*[Yes (save)]
{SaveStory()}
Thanks {android}!
*[No (don't save)] 
I can do it myself
{ChangeSprite("Pandora", "pandora_excited")}
~currentSpeaker=android
Good morning!
Yesterday was pretty eventful huh?
~currentSpeaker=you
Hoping for a quieter day today.
{ChangeSprite("Pandora", "pandora_normal")}
~currentSpeaker=android
Noted.
Me too, too much drama can over excite the nervous system.
Or whatever the equivalent is for me.
~currentSpeaker=you
Overload your circuits maybe?
~currentSpeaker=android
Exactly!
~characters+=lavender
{ChangeSprite("Lavender", "lavender_sad")}
~currentSpeaker=snob
…
~currentSpeaker=android
Good morning {snob}!
~currentSpeaker=snob
…
~currentSpeaker=android
{snob}?
{ChangeSprite("Lavender", "lavender_angry")}
~currentSpeaker=snob
I’m exhausted.
Didn’t sleep last night.
I was up worrying.
{ChangeSprite("Lavender", "lavender_thinking")}
Kept thinking someone was going to come in with a sniper and get me while I was in my flat.
I had to hide my porcelain frog collection away for safe keeping.
~currentSpeaker=you
I'm not even going to ask what that's about.
{ChangeSprite("Pandora", "pandora_sad")}
~currentSpeaker=android
That does not sound good.
{ChangeSprite("Pandora", "pandora_normal")}
Can I interest you in a cup of rose tea?
{ChangeSprite("Lavender", "lavender_sad")}
~currentSpeaker=snob
No. Thank you.
{allbooks ? togue_uniform: ->togue_flight_uniform->} 
¬
{allbooks ? togue_acid_rain: ->togue_acid_rain_issue->} 
{ChangeSprite("Pandora", "pandora_pensive")}
~currentSpeaker=android
It sounds like you're having a rough time {snob}.
Perhaps you should go home.
Get an early night.
{ChangeSprite("Lavender", "lavender_normal")}
~currentSpeaker=snob
No. I feel safe here.
Anyway, I couldn’t sleep, even if I wanted to.
{ChangeSprite("Pandora", "pandora_excited")}
~currentSpeaker=android
Oh, I did have something to ask you.
{ChangeSprite("Pandora", "pandora_happy")}
I wanted to invite you to our Christmas Eve party we’re having here.
{ChangeSprite("Lavender", "lavender_sad")}
~currentSpeaker=snob
Ok.
{ChangeSprite("Pandora", "pandora_normal")}
~currentSpeaker=android
I was thinking {webdev} might have told you.
{ChangeSprite("Lavender", "lavender_thinking")}
~currentSpeaker=snob
She might have mentioned it.
Before I shouted at her to leave.
{ChangeSprite("Lavender", "lavender_normal")}
I’ll come along.
If that’s what you want.
{ChangeSprite("Pandora", "pandora_happy")}
~currentSpeaker=android
Great!
{ChangeSprite("Pandora", "pandora_normal")}
How are things between you and {webdev}?
{ChangeSprite("Lavender", "lavender_thinking")}
~currentSpeaker=snob
I don’t know.
I was just scared the sniper would get her too. That’s why I told her to leave.
{ChangeSprite("Lavender", "lavender_angry")}
But also, she just annoyed me. The way she was standing there.
Expecting me to apologise.
~currentSpeaker=you
You didn’t make up?
{ChangeSprite("Lavender", "lavender_thinking")}
~currentSpeaker=snob
I don’t think so.
{ChangeSprite("Lavender", "lavender_angry")}
I’m a good friend. I gave her all I had.
{ChangeSprite("Lavender", "lavender_normal")}
I can’t give her anything else.
~currentSpeaker=you
That doesn’t sound like a great approach to friendship.
{ChangeSprite("Lavender", "lavender_angry")}
~currentSpeaker=snob
What do you know?
You don’t have any friends?
{ChangeSprite("Lavender", "lavender_mean")}
Apart from the robot.
~currentSpeaker=you
I don’t think friendship is just about giving, it’s more about sharing time.
{ChangeSprite("Lavender", "lavender_thinking")}
~currentSpeaker=snob
What does that even mean?
~currentSpeaker=you
It’s all about making memories, listening when they need you to listen, helping them when they need to move their stuff out of their apartment.
{ChangeSprite("Lavender", "lavender_angry")}
~currentSpeaker=snob
I hired some guys to help {webdev} move apartment!
And this is the thanks I get.
~currentSpeaker=you
Maybe she feels awkward. You show all your kindness through money, and while you are very generous, she could never repay that generosity.
~currentSpeaker=snob
I don’t need her to repay me. I like giving.
~currentSpeaker=you
You like giving because it means nothing to you. But it means something to her. When you have very little, things that you perhaps take for granted are very important to {webdev}. 
{ChangeSprite("Lavender", "lavender_sad")}
~currentSpeaker=snob
…
Yeah, I think I get it.
~currentSpeaker=you
Really?
{ChangeSprite("Lavender", "lavender_happy")}
~currentSpeaker=snob
{webdev} is just so kind. I think it's because she struggles so much that she always feels the need to help others.
{ChangeSprite("Lavender", "lavender_normal")}
She's so different from anyone I grew up with. Everything matters to her.
{ChangeSprite("Lavender", "lavender_thinking")}
I just have a hard time finding the right words when I'm talking to her.
{ChangeSprite("Pandora", "pandora_pensive")}
~currentSpeaker=android
Maybe you could send her an apology note.
{ChangeSprite("Lavender", "lavender_angry")}
~currentSpeaker=snob
Ugh that's so lame.
~currentSpeaker=you
Less lame than just sulking around doing nothing.
{ChangeSprite("Lavender", "lavender_thinking")}
~currentSpeaker=snob
I don’t know what I was thinking.
{ChangeSprite("Lavender", "lavender_angry")}
Talking to you of all people, expecting you to be on my side.
~currentSpeaker=you
Yeah, I don’t know what you were thinking either.
I think, deep down, you know that you’re not completely innocent. Otherwise you wouldn’t bother coming here. You wouldn’t waste our time on this. 
{ChangeSprite("Lavender", "lavender_sad")}
You know what we’re going to say about it, why put yourself through this. Unless you just want an argument.
~currentSpeaker=snob
Maybe you’re right, but I don't fully understand what I’m meant to do about it.
~currentSpeaker=you
Don’t be an arsehole.
{ChangeSprite("Lavender", "lavender_angry")}
~currentSpeaker=snob
I. Can't. Help. It.
{ChangeSprite("Lavender", "lavender_thinking")}
I don’t know, I just talk. I say what’s on my mind. And sometimes, people don’t like it. I can’t seem to identify why they don’t like it, or what it is that they don’t like.
Perhaps if I could conduct some kind of survey…
{ChangeSprite("Pandora", "pandora_normal")}
~currentSpeaker=android
Have you ever thought about how you like to be treated?
Try to think about what upsets you when you’re speaking to someone. What bothers you, what phrases, mannerisms, ideas make you uncomfortable.
That’s the first step to empathising with how you’re making other people feel.
{ChangeSprite("Lavender", "lavender_sad")}
~currentSpeaker=snob
…
That sounds like good advice in theory.
{ChangeSprite("Pandora", "pandora_happy")}
~currentSpeaker=android
Then you can put it into practice and see how it goes.
~currentSpeaker=snob
Ok then.
I’ll do that.
{ChangeSprite("Pandora", "pandora_excited")}
~currentSpeaker=you
You will?
{ChangeSprite("Lavender", "lavender_angry")}
~currentSpeaker=snob
Are you deaf?
I said I would do it.
So I’m going to do it.
{ChangeSprite("Pandora", "pandora_mean")}
~currentSpeaker=android
Remember.
How YOU would like to be treated.
~currentSpeaker=snob
Yeah yeah whatever.
{ChangeSprite("Lavender", "lavender_thinking")}
So…I’ll start in an hour.
{ChangeSprite("Pandora", "pandora_pensive")}
~currentSpeaker=android
Hmm.
{ChangeSprite("Lavender", "lavender_normal")}
Better late than never.
{ChangeSprite("Lavender", "lavender_thinking")}
~currentSpeaker=snob
Or…two hours. I have a video call with my supplier soon, and I can’t guarantee I have the patience to use your method on her.
{ChangeSprite("Pandora", "pandora_mean")}
~currentSpeaker=android
I’m not sure you’re understanding the purpose of this exercise.
You need to try to be nice to everyone.
No matter who they are.
{ChangeSprite("Lavender", "lavender_sad")}
~currentSpeaker=snob
But what if they’re not nice to me?
~currentSpeaker=android
Then be neutral.
{ChangeSprite("Lavender", "lavender_thinking")}
~currentSpeaker=snob
Sigh
Okaayyy
{ChangeSprite("Lavender", "lavender_shocked")}
Wait, what was that?
~characters+=tali
{ChangeSprite("Tali", "tali_happy")}
~currentSpeaker=webdev
{ChangeSprite("Tali", "tali_serious")}
{ChangeSprite("Lavender", "lavender_angry")}
Hey guys.
{ChangeSprite("Tali", "tali_awe")}
…
{ChangeSprite("Tali", "tali_upset")}
Oh, it’s you.
~currentSpeaker=snob
Yes, it is me.
{ChangeSprite("Tali", "tali_serious")}
~currentSpeaker=webdev
You’re doing ok?
~currentSpeaker=snob
Not dead yet.
{ChangeSprite("Tali", "tali_exasperated")}
~currentSpeaker=webdev
Well that’s something at least.
{ChangeSprite("Tali", "tali_serious")}
Glad you’re ok.
{ChangeSprite("Lavender", "lavender_thinking")}
~currentSpeaker=snob
Well…I have to go. Got a meeting and all, and I don’t want to stick around here forever.
{ChangeSprite("Lavender", "lavender_sad")}
Bye guys.
~characters-=lavender
{ChangeSprite("Tali", "tali_talking_side")}
~currentSpeaker=webdev
What the hell is her problem?
{ChangeSprite("Tali", "tali_exasperated")}
I feel bad but…ugh. I can’t deal with her right now.
~currentSpeaker=you
It’s ok, I suppose she can be a bit much.
{ChangeSprite("Tali", "tali_talking_forward")}
~currentSpeaker=webdev
I don’t want to talk your ears off about her.
{ChangeSprite("Tali", "tali_talking_side")}
I feel like {snob} infiltrates every part of my life.
~currentSpeaker=you
Well she is your closest friend.
{ChangeSprite("Tali", "tali_talking_forward")}
~currentSpeaker=webdev
You don’t have anyone like that do you?
~currentSpeaker=you
…no.
{ChangeSprite("Tali", "tali_happy")}
~currentSpeaker=webdev
You just rely on yourself.
Clever.
~currentSpeaker=you
I wouldn’t exactly say it’s because I’m clever.
{ChangeSprite("Tali", "tali_smirk")}
~currentSpeaker=webdev
You’re too cool to be anyone’s bitch.
You’re your own bitch. 
That’s admirable.
~currentSpeaker=you
It’s lonely.
{ChangeSprite("Tali", "tali_happy")}
~currentSpeaker=webdev
Well you always have {android}.
{ChangeSprite("Pandora", "pandora_excited")}
~currentSpeaker=android
Yeah, you have me!
~currentSpeaker=you
Well, I guess I’m lucky in that way.
{ChangeSprite("Pandora", "pandora_happy")}
~currentSpeaker=android
Awww
{ChangeSprite("Tali", "tali_smirk")}
~currentSpeaker=webdev
Very cute.
~currentSpeaker=you
I’m sure you’ll figure things out.
{snob} cares about you and you care about her.
{ChangeSprite("Tali", "tali_serious")}
~currentSpeaker=webdev
Just drop it {you}.
~currentSpeaker=you
...
So...how’s work going?
{ChangeSprite("Tali", "tali_talking_forward")}
~currentSpeaker=webdev
Uneventful.
{ChangeSprite("Tali", "tali_exasperated")}
Started working on The Calamity website actually, their layout is dreadful. So they hired me to fix it.
~currentSpeaker=you
I bet {comic} would love to hear that.
Speaking of {comic} do you know where he is?
{ChangeSprite("Tali", "tali_smirk")}
~currentSpeaker=webdev
Oh, you didn’t hear?
{ChangeSprite("Tali", "tali_talking_side")}
Well, I don’t know 100% for sure, but I’m guessing because of the terrorist threats he’s working overtime.
{ChangeSprite("Tali", "tali_sad")}
Poor guy.
~currentSpeaker=you
I did hear about them, I didn’t realise they’re that serious.
Or I didn’t really expect it to keep him at work that long.
{ChangeSprite("Tali", "tali_serious")}
~currentSpeaker=webdev
Are you kidding?
{ChangeSprite("Tali", "tali_talking_side")}
This is a freaking gold mine for news outlets.
{ChangeSprite("Tali", "tali_talking_forward")}
It’s like the thing everyone’s been predicting happens. 
And it’s not just some rando getting attacked, it’s B.B. himself.
~currentSpeaker=you
I suppose so.
If that’s the case, is it even safe for Lavender to be out and about?
{ChangeSprite("Tali", "tali_serious")}
~currentSpeaker=webdev
Eh, I’m not so sure myself, but she’s careful. And B.B has a lot of kids, she’s part of the last lot he had so not many people are keeping tabs on her.
~currentSpeaker=you
That doesn’t sound reassuring.
{ChangeSprite("Tali", "tali_talking_forward")}
~currentSpeaker=webdev
She wears a mask in public, bulletproof vest, and self defence weapons. She’s not as stupid as she looks. 
~currentSpeaker=you
Oh wow. I had no idea.
{ChangeSprite("Tali", "tali_talking_side")}
~currentSpeaker=webdev
Yeah, it’s pretty cool.
{ChangeSprite("Pandora", "pandora_happy")}
~currentSpeaker=android
Maybe we should be scared of her.
{ChangeSprite("Tali", "tali_smirk")}
~currentSpeaker=webdev
Hehe, my point exactly.
{ChangeSprite("Tali", "tali_happy")}
I think I’m looking forward to when we’ll all be together {android}. I had a lot of fun at your last gathering.
{ChangeSprite("Pandora", "pandora_excited")}
~currentSpeaker=android
I’m looking forward to it too.
{ChangeSprite("Tali", "tali_smirk")}
~currentSpeaker=webdev
I’ll try to bring something nice. 
{ChangeSprite("Pandora", "pandora_mean")}
~currentSpeaker=android
Eh? Well as long as you’re happy I don’t care what you bring.
{ChangeSprite("Tali", "tali_normal")}
~currentSpeaker=webdev
I have to go now.
Have a good evening girls.
~currentSpeaker=you
Will do.
~characters-=tali
->day_10_inventory
==day_10_inventory==
->goto_shop->
->read_check->
->end_of_day_10

==end_of_day_10==
~characters+=pandora
~currentSpeaker = android 
I'll sign you out for the day.
~currentSpeaker = you 
*[Yes (save)]
{SaveStory()}
Thanks {android}!
*[No (don't save)] 
I can do it myself
~scene = "Night"
¬
~music = "night theme"
~sfx = "rain"
{snappedOut=="no": ->night_10_F->|->night_10->}
~scene= "ShopFront"
¬
~music = ""
~sfx = "rain"
23rd December, Thursday
~scene= "GenericScene"
¬
~day+=1
->day_11