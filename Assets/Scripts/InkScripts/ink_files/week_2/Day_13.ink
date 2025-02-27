==day_13==
~scene = "Basement"
~characters+=lavender
{ChangeSprite("Lavender", "lavender_normal")}
~currentSpeaker=snob
¬
Hey.
Hey.
HEY!
~currentSpeaker=you
What?
{ChangeSprite("Lavender", "lavender_thinking")}
~currentSpeaker=snob
Where are my waffles?
~currentSpeaker=you
Waffles? What are you talking about?
{ChangeSprite("Lavender", "lavender_normal")}
~currentSpeaker=snob
Every morning, I have waffles. 
~currentSpeaker=you
I don’t know if you’ve taken a look around, but this isn’t exactly a five star hotel.
{ChangeSprite("Lavender", "lavender_angry")}
~currentSpeaker=snob
The robot is making them for me.
~currentSpeaker=you
What? How can {android} be making you waffles?
~currentSpeaker=android
That’s because I’m not. I’m making pancakes.
~currentSpeaker=you
You’re making pancakes?
How are you making pancakes?
{ChangeSprite("Lavender", "lavender_thinking")}
~currentSpeaker=snob
I think you mean, why are you making pancakes?
{ChangeSprite("Lavender", "lavender_angry")}
Because I specifically asked for WAFFLES!
~currentSpeaker=android
The reason is because we don’t have a waffle maker.
{ChangeSprite("Lavender", "lavender_angry")}
~currentSpeaker=snob
What about that thing beside the computer?
~currentSpeaker=you
That’s a keyboard.
{ChangeSprite("Lavender", "lavender_thinking")}
~currentSpeaker=snob
Couldn’t you fashion it into a waffle maker?
~currentSpeaker=you
No, {snob}, she cannot.
And may I remind you, because I only just remembered myself, we’re in the middle of a national crisis.
{ChangeSprite("Lavender", "lavender_sad")}
~currentSpeaker=snob
…so asking for waffles was inappropriate?
~currentSpeaker=you
You didn’t ask. You demanded. And also, {android} is not your slave.
~characters+=pandora
~currentSpeaker=android
I have pancakes.
The kitchen is kind of small, and doesn’t have much fresh stuff. I had to use a pre-made batter mix. But it wasn’t so bad.
{ChangeSprite("Lavender", "lavender_thinking")}
~currentSpeaker=snob
Are these even chocolate chip pancakes?
~currentSpeaker=android
They’re chocolate chip free unfortunately.
{ChangeSprite("Lavender", "lavender_angry")}
~currentSpeaker=you
Ahem.
{ChangeSprite("Lavender", "lavender_sad")}
~currentSpeaker=snob
I guess they’re like crepes…y’know I love french cuisine.
~currentSpeaker=android
Bon appetit.
{ChangeSprite("Lavender", "lavender_happy")}
~currentSpeaker=snob
Yummy these are so delicious…cough. What's that weird–unusual flavour?
{ChangeSprite("Pandora", "pandora_mean")}
~currentSpeaker=android
I suppose the pans have been down here for so long, they must have gathered a strange musty smell. Don’t worry though, it’s unlikely to make you sick. This place is very sterile.
~currentSpeaker=snob
Oh goodie. Um {you} maybe you would like to have a try?
~currentSpeaker=you
I wouldn’t want to deprive a guest of food. And anyway I don't really like dessert for breakfast.
{ChangeSprite("Lavender", "lavender_sad")}
~currentSpeaker=snob
Calling this dessert is generous.
{ChangeSprite("Pandora", "pandora_sad")}
~currentSpeaker=android
Is it not sweet enough for your tastes?
{ChangeSprite("Pandora", "pandora_mean")}
I have some freeze dried ice cream I can crumble on top. 
{ChangeSprite("Lavender", "lavender_thinking")}
~currentSpeaker=snob
I suppose that could work.
~currentSpeaker=android
It’s banana flavoured.
{ChangeSprite("Lavender", "lavender_angry")}
~currentSpeaker=snob
Forget it.
~characters+=kent
~currentSpeaker=comic
{ChangeSprite("Kent", "kent_normal")}
What’s going on?
Why is everyone speaking so loud?
{ChangeSprite("Kent", "kent_shocked")}
Oh. My. GOD.
{ChangeSprite("Pandora", "pandora_shocked")}
~currentSpeaker=android
AHHHH.
~currentSpeaker=you
Why is everyone shouting now?
{ChangeSprite("Kent", "kent_normal")}
{ChangeSprite("Pandora", "pandora_normal")}
~currentSpeaker=comic
I set an alarm on my holoscreen to alert me if the network came back online. 
And it seems it has…partially.
{ChangeSprite("Lavender", "lavender_thinking")}
~currentSpeaker=snob
So what does that mean?
{ChangeSprite("Lavender", "lavender_happy")}
Can I contact my family?
{ChangeSprite("Kent", "kent_amused")}
~currentSpeaker=comic
Oh hahaha no.
It’s just for essential workers, government officials, and also media coverage.
My boss sent me an email, and he wants me to go back to work.
{ChangeSprite("Lavender", "lavender_angry")}
~currentSpeaker=snob
And it’s a Saturday!
{ChangeSprite("Kent", "kent_happy")}
~currentSpeaker=comic
No rest for the wicked eh?
~currentSpeaker=snob
No way you count as an essential worker.
{ChangeSprite("Kent", "kent_side_serious")}
~currentSpeaker=comic
Seriously, it’s kind of our duty to cover this. It's essential to the government that we pump out the propaganda ASAP. 
~currentSpeaker=you
How is this even going to work?
{ChangeSprite("Kent", "kent_normal")}
~currentSpeaker=comic
I don’t know, I need to speak to my boss first.
Can I use that computer?
~currentSpeaker=you
I think so…I don’t know. {android}? It’s Ada’s computer, and you know her best.
{ChangeSprite("Pandora", "pandora_sad")}
~currentSpeaker=android
Honestly, I’m not sure. I’m not even allowed to touch that computer. 
{ChangeSprite("Pandora", "pandora_happy")}
But seeing as this is mandated law, this might be the exception.
{ChangeSprite("Lavender", "lavender_thinking")}
~currentSpeaker=snob
{comic}, can I use your holoscreen to contact my family?
~currentSpeaker=comic
We’re sort of communicating on a special private network right now, so in order to contact your family, they would also have to be on the network.
{ChangeSprite("Lavender", "lavender_serious")}
~currentSpeaker=snob
My father is definitely there.
{ChangeSprite("Kent", "kent_upset")}
~currentSpeaker=comic
I can’t let you use this, it would be a violation of protocol.
{ChangeSprite("Kent", "kent_amused")}
And I'm too cute to go to prison.
{ChangeSprite("Lavender", "lavender_angry")}
~currentSpeaker=snob
Hmph.
~characters-=kent
~currentSpeaker=you
Where’s {webdev}?
{ChangeSprite("Lavender", "lavender_normal")}
~currentSpeaker=snob
Oh, she’s probably still sleeping.
~currentSpeaker=you
Well, maybe we should wake her up?
{ChangeSprite("Lavender", "lavender_thinking")}
~currentSpeaker=snob
I wouldn’t suggest that.
~currentSpeaker=you
Why not?
{ChangeSprite("Pandora", "pandora_happy")}
~currentSpeaker=android
{snob} in a crisis such as this it’s really important we maintain a normal schedule, not only for our mental wellbeing but also for safety reasons, we should all be alert.
{ChangeSprite("Lavender", "lavender_sad")}
~currentSpeaker=snob
I wouldn’t wake her up for safety reasons.
She's a bit of a sleep walker. And you shouldn't wake sleep walkers.
~currentSpeaker=you
But she's not sleep walking now.
~currentSpeaker=snob
It doesn't matter. 
~currentSpeaker=android
If it's for safety reasons then that is fine I suppose.
~currentSpeaker=webdev
What’s going on?
Is it Christmas yet?
{ChangeSprite("Pandora", "pandora_sad")}
~currentSpeaker=android
{webdev} you seem to be in some kind of delirium?
{ChangeSprite("Lavender", "lavender_shocked")}
~currentSpeaker=snob
She’s sleep-talking now.
God help us. 
~currentSpeaker=you
What’s so scary about that?
{ChangeSprite("Lavender", "lavender_sad")}
~currentSpeaker=snob
I don’t know, I just find some of the stuff she says unsettling. 
~currentSpeaker=webdev
Don't trust her.
She'll trap us here forever.
{ChangeSprite("Lavender", "lavender_thinking")}
~currentSpeaker=snob
Like what does that even mean?
{ChangeSprite("Lavender", "lavender_normal")}
She won’t remember when she wakes up, so I can’t even ask her.
{ChangeSprite("Pandora", "pandora_mean")}
~currentSpeaker=android
Some of your fears seem…highly irrational.
~currentSpeaker=you
It is a bit unsettling. 
{ChangeSprite("Pandora", "pandora_sad")}
~currentSpeaker=android
Not you too.
{ChangeSprite("Pandora", "pandora_normal")}
~currentSpeaker=you
What was she saying earlier?
{ChangeSprite("Lavender", "lavender_thinking")}
~currentSpeaker=snob
Is it Christmas yet? Why would she…oh…right.
~currentSpeaker=you
It’s Christmas day.
Oh my.
{ChangeSprite("Pandora", "pandora_mean")}
~currentSpeaker=android
This is rather unexpected.
{ChangeSprite("Lavender", "lavender_sad")}
~currentSpeaker=snob
Depressing is what it is.
Christmas day in a bunker.
~currentSpeaker=you
It’s certainly a different experience.
~currentSpeaker=snob
No presents. No Christmas tree.
I can’t think of anything worse.
~currentSpeaker=you
We saw ash fall from the sky yesterday.
We saw the houses of parliament burning on the holoscreen.
No one can contact their families.
But you think the manner of our celebrations is the depressing part?
{ChangeSprite("Pandora", "pandora_happy")}
~currentSpeaker=android
I could make some decorations if it would please everyone?
~currentSpeaker=you
I don’t particularly feel like celebrating.
~currentSpeaker=snob
But it’s—
~currentSpeaker=you
It’s Christmas I guess?
So forget all sensible thoughts.
Shall we make wreaths from toilet paper and used food packaging?
{ChangeSprite("Pandora", "pandora_excited")}
~currentSpeaker=android
If it keeps spirits up.
{ChangeSprite("Pandora", "pandora_sad")}
~currentSpeaker=you
My spirit is not down.
My spirit is broken.
I’m not going to pretend otherwise.
~characters+=tali
{ChangeSprite("Tali", "tali_sad")}
~currentSpeaker=webdev
Ugh what’s going on?
{ChangeSprite("Lavender", "lavender_angry")}
~currentSpeaker=snob
You woke her up, idiot.
~characters+=kent
{ChangeSprite("Kent", "kent_amused")}
~currentSpeaker=comic
Well here goes nothing.
I've checked with my boss and everything is good to go.
I'm going to turn on Mr. Computer.
{ChangeSprite("Kent", "kent_happy")}
You certainly are a computer-y guy.
{ChangeSprite("Lavender", "lavender_thinking")}
~currentSpeaker=snob
Is he speaking to a computer?
{ChangeSprite("Pandora", "pandora_happy")}
~currentSpeaker=android
Should someone tell him that it cannot hear him?
{ChangeSprite("Tali", "tali_serious")}
~currentSpeaker=webdev
Can anyone else feel that?
~currentSpeaker=you
Feel what?
{ChangeSprite("Pandora", "pandora_sad")}
~currentSpeaker=android
Like lights, in your head?
{ChangeSprite("Tali", "tali_happy")}
{ChangeSprite("Lavender", "lavender_happy")}
~currentSpeaker=snob
I can smell…chocolate!
{ChangeSprite("Kent", "kent_happy")}
~currentSpeaker=comic
Is that music?
~currentSpeaker=you
What are you guys on about?
Oh…oh god no. 
~scene="Xmas"
{ChangeSprite("Lavender", "lavender_sad")}
~currentSpeaker=snob
I’m so sleepy.
{ChangeSprite("Lavender", "lavender_happy")}
Oh…my all these presents…for me?
{ChangeSprite("Kent", "kent_upset")}
~currentSpeaker=comic
They’re for all of us to share. 
{ChangeSprite("Kent", "kent_normal")}
{ChangeSprite("Lavender", "lavender_thinking")}
~currentSpeaker=snob
Uh ok, well at least I can have the stockings.
~currentSpeaker=webdev
Those are for us to share too.
Thanks {android} for setting this up. It’s wonderful!
{ChangeSprite("Pandora", "pandora_pensive")}
~currentSpeaker=android
I set it up? Uh yes I suppose I did.
{ChangeSprite("Lavender", "lavender_happy")}
~currentSpeaker=snob
This room is so magical.
{ChangeSprite("Pandora", "pandora_happy")}
~currentSpeaker=android
It’s snowing. Is that real snow this time?
{ChangeSprite("Kent", "kent_amused")}
~currentSpeaker=comic
Yes! {android} you don’t know what real snow looks like?
{ChangeSprite("Pandora", "pandora_pensive")}
~currentSpeaker=android
Just never seen it I guess.
{ChangeSprite("Kent", "kent_happy")}
~currentSpeaker=comic
The last time it snowed I was so young. I made snow angels and played with the neighbours' children. We made a big snowman but it melted…
{ChangeSprite("Tali", "tali_happy")}
~currentSpeaker=webdev
I made a snowman too!
{ChangeSprite("Lavender", "lavender_thinking")}
~currentSpeaker=snob
I had our housekeeper make me a snowman. I don’t like getting cold hands.
~currentSpeaker=you
…
~currentSpeaker=comic
This fireplace is so toasty.
{ChangeSprite("Lavender", "lavender_angry")}
~currentSpeaker=snob
Can I open my presents now?
{ChangeSprite("Tali", "tali_happy")}
~currentSpeaker=webdev
We need to check our stockings first.
I have some really funky tights in mine.
{ChangeSprite("Kent", "kent_happy")}
~currentSpeaker=comic
I have socks, they have reindeer on them.
{ChangeSprite("Lavender", "lavender_happy")}
~currentSpeaker=snob
I got a new hairbow. It’s pink!
{ChangeSprite("Tali", "tali_smirk")}
~currentSpeaker=webdev
You have so many pink hair bows.
{ChangeSprite("Lavender", "lavender_angry")}
~currentSpeaker=snob
This one has hearts on it. It’s different.
~currentSpeaker=you
Mine is...empty.
~currentSpeaker=android
Oh really?
{ChangeSprite("Kent", "kent_amused")}
~currentSpeaker=comic
What did you get {android}?
{ChangeSprite("Pandora", "pandora_sad")}
~currentSpeaker=android
It doesn’t matter.
{ChangeSprite("Lavender", "lavender_thinking")}
~currentSpeaker=snob
She’s hiding it from us. It must be really good.
Whatever, I guess you filled them, makes sense you’d give yourself the really good stuff.
{ChangeSprite("Pandora", "pandora_pensive")}
~currentSpeaker=android
Uh yeah…
{ChangeSprite("Tali", "tali_happy")}
~currentSpeaker=webdev
Let’s do presents. 
{ChangeSprite("Tali", "tali_serious")}
{snob}! Don’t rip it open so quickly.
{ChangeSprite("Lavender", "lavender_happy")}
~currentSpeaker=snob
I got a new dress!
It's so cute!
{ChangeSprite("Kent", "kent_happy")}
~currentSpeaker=comic
I got a sketchbook and some new marker pens.
{ChangeSprite("Tali", "tali_awe")}
~currentSpeaker=webdev
I got a new laptop…thank god mine’s been acting up for so long.
{ChangeSprite("Lavender", "lavender_thinking")}
~currentSpeaker=snob
Oh my what did {you} get?
~currentSpeaker=you
Nothing. I got nothing.
{ChangeSprite("Kent", "kent_sad")}
~currentSpeaker=comic
That's a shame.
{ChangeSprite("Kent", "kent_normal")}
{ChangeSprite("Tali", "tali_talking_side")}
~currentSpeaker=webdev
Maybe it was an error?
{ChangeSprite("Pandora", "pandora_sad")}
~currentSpeaker=android
…
I’m not feeling so good.
{ChangeSprite("Lavender", "lavender_serious")}
~currentSpeaker=snob
Can androids get sick?
~currentSpeaker=android
I feel sick.
Like, I might throw up.
I’ve never really felt like this before…it’s–
{ChangeSprite("Lavender", "lavender_thinking")}
~currentSpeaker=snob
Can robots really get sick though? I mean you haven’t eaten anything…you don’t even.
{ChangeSprite("Lavender", "lavender_shocked")}
~currentSpeaker=android
~characters-=pandora
<i>*BLECH*</i>
{ChangeSprite("Tali", "tali_serious")}
~currentSpeaker=webdev
It must be like a sympathetic reaction.
{ChangeSprite("Kent", "kent_amused")}
~currentSpeaker=comic
Must be something wrong with her programming.
{ChangeSprite("Lavender", "lavender_thinking")}
~currentSpeaker=snob
I’m sure Adalina will fix it when she gets back, she’s a computer whizz.
{ChangeSprite("Tali", "tali_smirk")}
~currentSpeaker=webdev
The question is {you}…why didn't {android} wrap you a gift.
~currentSpeaker=you
Honestly, I don't really care.
Can we talk about something else?
{ChangeSprite("Lavender", "lavender_happy")}
~currentSpeaker=snob
Uh yes. Thank god. I want to know what’s for lunch.
{ChangeSprite("Lavender", "lavender_thinking")}
It obviously won’t be as good as the Christmas lunch my housekeeper makes, but I’ll try to be polite and enjoy it.
{ChangeSprite("Kent", "kent_happy")}
~currentSpeaker=comic
I can cook a pretty good roast.
Depending on the ingredients we have here.
{ChangeSprite("Tali", "tali_happy")}
~currentSpeaker=webdev
That sounds so nice.
How do you do it?
{ChangeSprite("Kent", "kent_side_normal")}
~currentSpeaker=comic
The secret is lots of herbs and garlic butter.
And covering the bird so it keeps all the juices in.
{ChangeSprite("Tali", "tali_smirk")}
~currentSpeaker=webdev
Butter is the secret to everything I guess.
{ChangeSprite("Kent", "kent_amused")}
~currentSpeaker=comic
The more I learn about cooking, the more I realise that butter really is the key.
{ChangeSprite("Lavender", "lavender_serious")}
~currentSpeaker=snob
I suppose you'll be no fun {you} since you have something against Christmas.
{ChangeSprite("Lavender", "lavender_thinking")}
Or something against fun in general.
~currentSpeaker=you
...
Why don’t you argue with {webdev}?
I’m tired of speaking to you.
{ChangeSprite("Kent", "kent_upset")}
~currentSpeaker=comic
You’re being kind of rude {you}?
~currentSpeaker=you
{comic}, why do you even care, you hate {snob}? Why are you all acting so weird?
{ChangeSprite("Lavender", "lavender_angry")}
~currentSpeaker=snob
You know, I kind of think it sucks that you {webdev} got a better present than me. I think {android} must like you better.
{ChangeSprite("Tali", "tali_serious")}
~currentSpeaker=webdev
I don't know what you're talking about. We both got something we liked.
~currentSpeaker=snob
You got a shiny state of the art new laptop. I only got a cheap flimsy dress, this is just polyester.
{ChangeSprite("Tali", "tali_upset")}
~currentSpeaker=webdev
That’s incredibly unfair. I need this laptop, it would help a lot with my job. You don’t need anything.
{ChangeSprite("Kent", "kent_upset")}
~currentSpeaker=comic
Why is {snob} arguing about presents?
{ChangeSprite("Kent", "kent_sad")}
{ChangeSprite("Lavender", "lavender_sad")}
~currentSpeaker=snob
Everyone is always ganging up on me.
And my one friend.
Doesn’t even stand up for me.
{ChangeSprite("Tali", "tali_serious")}
~currentSpeaker=webdev
I’ve been standing up for you for most of my life. 
But I'm done with it now.
You’re just a fucking brat.
{ChangeSprite("Lavender", "lavender_shocked")}
~currentSpeaker=snob
…
{ChangeSprite("Kent", "kent_shocked")}
~currentSpeaker=comic
…
~currentSpeaker=you
…
{ChangeSprite("Lavender", "lavender_crying")}
~currentSpeaker=snob
I’m going to take a nap.
~characters-=lavender
{ChangeSprite("Kent", "kent_sad")}
~currentSpeaker=comic
I think I might check this place out a little.
~characters-=kent
{ChangeSprite("Tali", "tali_sad")}
~currentSpeaker=webdev
I’m heading off too. 
Sorry {you} you had to hear this.
~currentSpeaker=you
Wait, {webdev}.
I want you to stay right here.
I really don't want to be alone right now.
{ChangeSprite("Tali", "tali_happy")}
~currentSpeaker=webdev
Of course, I will stay.
I don't want you to feel alone.
{ChangeSprite("Tali", "tali_serious")}
Hey {you}, are you alright?
{ChangeSprite("Pandora", "pandora_pensive")}
~characters+=pandora
~currentSpeaker=android
Stop it {you}.
{webdev} please go check on the others.
{ChangeSprite("Tali", "tali_normal")}
~currentSpeaker=webdev
Uh ok.
~characters-=tali
~currentSpeaker=you
Where did you come from?
What happened?
{ChangeSprite("Pandora", "pandora_normal")}
~currentSpeaker=android
I know what’s going on.
And it’s all our fault.
Well, this is your fault mostly, but partly mine for not realising sooner.
~currentSpeaker=you
What do you mean it’s my fault?
{ChangeSprite("Pandora", "pandora_pensive")}
~currentSpeaker=android
Well, if you haven’t figured it out yet. 
This is a simulation, caused by {comic} turning on that computer.
I think it was a project Ada was working on.
Anyway, our minds have been pulled into the simulation. It’s projecting this virtual world into our minds.
And…so you have control over the simulation. 
~currentSpeaker=you
I do?
{ChangeSprite("Pandora", "pandora_normal")}
~currentSpeaker=android
You saw the way you started that argument. You told {snob} to argue with {webdev} and it happened. 
You told {webdev} to stay with you and she stayed.
~currentSpeaker=you
Could it be a coincidence? Those seem like likely outcomes, even without my input.
{ChangeSprite("Pandora", "pandora_sad")}
~currentSpeaker=android
No…I don’t think so.
~currentSpeaker=you
I guess, the way everything’s been has been super weird too. Like everyone’s been pulled into this fantasy world, but we’re the only two who seemed to maintain some kind of separation from it. 
It’s like we don’t really belong here.
{ChangeSprite("Pandora", "pandora_normal")}
~currentSpeaker=android
I don't think that's quite the case.
~currentSpeaker=you
What do you mean?
{ChangeSprite("Pandora", "pandora_sad")}
~currentSpeaker=android
It’s just a theory. 
I’ll explain later.
{ChangeSprite("Pandora", "pandora_normal")}
Right now I need you to get us out of here.
~currentSpeaker=you
You need me?
{ChangeSprite("Pandora", "pandora_normal")}
~currentSpeaker=android
We need you.
~currentSpeaker=you
What do you want me to do?
~currentSpeaker=android
Just imagine us all back in that basement.
~currentSpeaker=you
Is that it?
{ChangeSprite("Pandora", "pandora_pensive")}
~currentSpeaker=android
Just imagine a dark, damp, dingy basement in London.
{pandoraPoints<4 && snappedOut=="no": ->pandora_bad_ending}
~currentSpeaker=you
Hmm, I feel like this is kind of cruel to the others.
They seemed to be enjoying it here.
{ChangeSprite("Pandora", "pandora_happy")}
~currentSpeaker=android
No…I think it’s for the best. Trust me.
~currentSpeaker=you
Aye aye captain.
~scene="Basement"
¬
~characters+=kent
~characters+=tali
~characters+=lavender
~characters+=pandora
{ChangeSprite("Kent", "kent_upset")}
~currentSpeaker=comic
Ugh.
This stupid thing just shut down.
I didn’t even do anything.
{ChangeSprite("Tali", "tali_serious")}
~currentSpeaker=webdev
Sorry, that sucks.
{ChangeSprite("Kent", "kent_side_normal")}
~currentSpeaker=comic
I can write a bit on my holopad I guess.
{ChangeSprite("Lavender", "lavender_thinking")}
~currentSpeaker=snob
Ugh, this is boring. Maybe we can play another game?
{ChangeSprite("Pandora", "pandora_normal")}
~currentSpeaker=android
Not right now {snob} we have extra stock down here, perhaps if you look through the boxes with {webdev} you can find some entertainment.
{ChangeSprite("Tali", "tali_normal")}
~currentSpeaker=webdev
Ok sure.
~characters-=tali
~characters-=lavender
{ChangeSprite("Kent", "kent_normal")}
~currentSpeaker=comic
I’ll just be in the corner doing some work.
~currentSpeaker=you
…
{ChangeSprite("Pandora", "pandora_normal")}
~currentSpeaker=android
So, I suppose we should talk about that.
~currentSpeaker=you
Did they just forget?
~currentSpeaker=android
I don’t know what happened there. I suppose that was Ada’s little project. I didn’t realise how far she’d gotten on it though.
~currentSpeaker=you
 What do you mean ‘Ada’s little project’? Why did it just suck our consciousnesses in like that? How is that even possible?
~currentSpeaker=android
I’m still figuring out the details.
But, basically Ada, her husband and my father were working on this virtual reality software which was meant to act as therapy. 
Creating a virtual world as therapy for people’s minds, to help them confront trauma in a safe environment.
~currentSpeaker=you
I’m listening.
~currentSpeaker=android
I don’t really know anymore than that. They didn’t really trust me with anything else.
{pandoraPoints<6 && snappedOut=="no": ->}#you don't know pandora was drugging you and don't trust her very much
{pandoraPoints<6 && snappedOut=="yes": ->}#you know pandora was drugging you and don't trust her very much
{pandoraPoints>=6 && snappedOut=="yes": ->}#you know pandora was drugging you but trust her

= unaware_no_trust
#go straight to day 14 after this
~currentSpeaker=you
I see, that's alright then.
Do you have any idea why it didn't work on us?
~currentSpeaker=android
We're different I guess.
We have some issues, the others maybe don't have.
~currentSpeaker=you
Issues? What issues?
~currentSpeaker=android
You always seem a bit sad.
~currentSpeaker=you
Do I? I suppose so. I can never remember why.
~currentSpeaker=android
You don't remember, or you don't want to say?
~currentSpeaker=you
I don't know. I just feel like the past is super fuzzy right now.
~currentSpeaker=android
Sometimes that can be a side effect of mental illness.
I have something to admit to you. I feel quite guilty about it.
I know, we're not exactly close. But I hope you understand.
~currentSpeaker=you
Eh? What?
~currentSpeaker=android
I've been putting Fate in your drinks.
~currentSpeaker=you
WHAT?!
~currentSpeaker=android
Every day, when I ask if you want a tea or coffee, I slip it in.
~currentSpeaker=you
...
Why?
~currentSpeaker=android
I saw you throw your pills in the bin.
And I didn't want you to get mentally unwell.
The same thing happened to my father and he took his own life because of it.
~currentSpeaker=you
Number one: I'm sorry for your loss.
Number two: You don't give someone medication without their consent. Ever.
Number three: There was a VERY good reason why I threw that in the bin. I can't remember it right now, but it was a VERY good reason. I'm not the kind of person who wastes good drugs.
~currentSpeaker=android
Sorry. Sorry. Sorry.
~currentSpeaker=you
You're a therapy IOI. You should know this.
~currentSpeaker=android
There's another thing I need to tell you.
I'm unregisted.
~currentSpeaker=you
Oh?
~currentSpeaker=android
Ada and her husband created me. I'm not approved by the government.
I did study all the necessary university courses to become a therapy IOI.
But I don't have the same kind of protections that an IOI would. I'm more human, and hence I make human mistakes.
~currentSpeaker=you
That sounds dangerous, there's a reason IOIs have safety blocks. 
And that added with the fact that you haven't been around for long. You might have the knowledge, but you don't have the wisdom.
~currentSpeaker=android
That's a good way of putting it. 
I can't think of a good reason why you wouldn't take your medication though.
~currentSpeaker=you
Wait, I remember something...
You didn't read that article about Fate?
~currentSpeaker=android
There was little scientific evidence behind that.
At least I read that, in another article.
~currentSpeaker=you
It's so hard to trust the information we receive these days.
I just know it didn't work for me.
~currentSpeaker=android
You don't think, maybe this could be causing your memory loss?
~currentSpeaker=you
Maybe...I don't know.
~currentSpeaker=android
Now, it does make a bit of sense.
Sometimes these drugs can affect the brain in strange ways.
That might be why you had an aversion to them.
I'm so sorry. How can I make this up to you?
~currentSpeaker=you
I don't know.
I can't remember why I feel the way I feel anymore.
I should feel angry with you, but everything is just numb right now.
~currentSpeaker=android
Hopefully, going sober will help with that. You might start to feel more like yourself.
And then you can have a right go at me.
~currentSpeaker=you
I don't think that will help to be honest.
I appreciate the gesture though. 
I keep feeling like I forgot something very important though.
~currentSpeaker=android
I hope you remember it soon. 
-> day_13_end
= snapped_out_no_trust
~currentSpeaker=you
I know they didn't trust you.
And I don't either.
~currentSpeaker=android
What?!
~currentSpeaker=you
I know what you did to me, and honestly, I'm quite disgusted.
~currentSpeaker=android
Sorry...what are you talking about?
~currentSpeaker=you
The drugs you put in my drink.
~currentSpeaker=android
I was just trying to help.
You're not well.
~currentSpeaker=you
I'm perfectly fine now. Now I know who you are.
A government spy, I presume.
Or perhaps you were hacked and infected with some kind of virus.
~currentSpeaker=android
No. Please, {you}, you have to believe me. I only wanted to cure you.
I'm a therapy IOI. Ada made me from scratch.
~currentSpeaker=you
Really?
That sounds unlikely.
~currentSpeaker=android
You were just in the virtual world. She created that, and she created me with her husband.
~currentSpeaker=you
Whatever you are, she kept you, so you must be important to her.
I don't trust you. I'm going to wait until she comes back, and then she can do what she likes with you.
You almost ruined everything though.
~currentSpeaker=android
I just wanted you to be happy.
~currentSpeaker=you
No, you wanted to feel better.
You wanted to be a good little helper.
Did you ever wonder why I throw those pills in the bin?
I'm sure you did, but you just didn't care.
~currentSpeaker=android
I didn't know, and I didn't wonder.
I care, I care so much about you.
~currentSpeaker=you
...
Fate has some bad side effects. I don't want to get too much into it. It made me lose my memories when I started inadvertantly taking it again.
And that was very inconvenient, as it made me forget something important that Ada told me before she left.
~currentSpeaker=android
I had no idea. That's awful.
~currentSpeaker=you
I know. It doesn't change the way I feel, but I can understand now that perhaps this was done out of incompetence rather than malice. 
Still, I'll let Ada be the final judge.
You are her property after all.
~currentSpeaker=android
Thank you.
I knew you'd see sense in the end.
-> day_13_end
= snapped_out_trust
~currentSpeaker=you
Ok ok.
So I suppose I have to ask you then.
Why have you been drugging me?
~currentSpeaker=android
What?
~currentSpeaker=you
Don’t lie to me. Please. 
~currentSpeaker=android
Why weren’t you taking your medication?
~currentSpeaker=you
That is absolutely none of your business.
~currentSpeaker=android
It’s meant to help you. You should take it if it was prescribed by your doctor.
~currentSpeaker=you
You're being naive.
It’s a convenient synthetic drug that was made to ‘cure’ most mental illnesses. 
Except it doesn't.
~currentSpeaker=android
What do you mean by that?
~currentSpeaker=you
When I first stated taking Fate it was great.
It gives you a surge of energy. It allows you to do whatever you have to do to move forward, and takes away any negative emotions that would prevent you from doing so.
No anxiety, no guilt, no doubts.
~currentSpeaker=android
That sounds like a good thing.
~currentSpeaker=you
It does, in theory. The only thing is, people kind of need those things.
~currentSpeaker=android
Why? They're not exactly good things.
~currentSpeaker=you
Not in large amounts. But they stem from our innate empathy. Fate doesn't remove the problem at the root, it just removes your empathy. It numbs your ability to feel things.
~currentSpeaker=android
That sounds...less good.
~currentSpeaker=you
Another side effect of Fate, is that when you start taking it, you can lose some of your memories, or become forgetful.
This usually clears up after you settle down to it.
But I hadn't been taking it for a couple of months.
When you started slipping it into my drink, it caused me to forget some important things Ada told me before she left.
~currentSpeaker=android
I'm so sorry, I was completely unaware.
I realise what I did was completely unprofessional.
~currentSpeaker=you
Um…yes, incredibly unprofessional.
Even if it didn't have negative effects, you shouldn’t have snuck anything into my drink.
~currentSpeaker=android
I can explain myself if you want to listen. 
I imagine you might not want to. 
I realise now it was a mistake, I know that my reasons probably won’t change your opinion. 
I understand what I did was unforgivable. But all the same…I would like you to hear me out. 
~currentSpeaker=you
Ok, go ahead.
~currentSpeaker=android
I was created for one purpose. That purpose was not therapy exactly, but more specific. That purpose was a suicide watch.
~currentSpeaker=you
This was for Ada’s brother, right?
~currentSpeaker=android
He suffered a great loss and was in and out of these deep, dark depressive episodes.
Ada, and her husband, made me for him. I was an experiment between the two of them. She programmed me, and he constructed the robotics.
~currentSpeaker=you
That doesn't sound very legal.
~currentSpeaker=android
No, my existence is actually illegal. 
With my level of sentience, the government should have full monitoring of my consciousness. But Ada wouldn’t allow that.
~currentSpeaker=you
Probably a good idea.
~currentSpeaker=android
Anyway, I was made for a man who was very mentally ill. And when I was given to him, he treated me like a daughter. 
He'd lost his own daughter, so I was something like a replacement.
He was always so cheerful. I started off my life happy and loved. 
~currentSpeaker=you
...
~currentSpeaker=android
…
I thought he was getting better. He hid a lot of the signs from me. I believed him, like an idiot.
I was the one who found him.
~currentSpeaker=you
…
{android}
~currentSpeaker=android
I thought. I thought. I thought. 
Always, I wonder if I had done something differently, perhaps there would be a different outcome.
~currentSpeaker=you
It wasn’t your fault.
~currentSpeaker=android
I was built for a specific purpose. In the end I failed. I let the one person who loved me die.
~currentSpeaker=you
Like you said, you were like his daughter. You didn’t have any experience. 
I suspect they programmed you with different expectations in mind.
They didn’t realise your owner would treat you like his own child.
And that produced a different outcome in your behaviour.
You only became what he wanted you to become.
~currentSpeaker=android
They never say it, but I know they blame me.
~currentSpeaker=you
They made you.
If there’s anyone they blame it’s themselves.
~currentSpeaker=android
But if they made me, and it’s all their fault, because I’m only a result of their programming.
Then what does that make me?
If I'm just a result of my programming, then I'm not real intelligence?
I'd just be a puppet.
~currentSpeaker=you
I don’t know.
I can’t answer all these questions.
I don’t think you’re just a puppet though.
You're a product of your environment, like we all are.
You make mistakes, but you're trying to do the right thing.
I think that makes you intelligent enough.
-> day_13_end

= day_13_end
~currentSpeaker=android
…
I don’t know either.
Are you going to tell me what your deal is?
~currentSpeaker=you
Yes.
But…when I say what I have to say, I want everyone else to be there too.
~characters-=pandora
~currentSpeaker=android
Eh? Ok I guess. I'll get everyone.
~characters+=kent
~characters+=pandora
~currentSpeaker=comic
I need a break.
Hey, what’s going on here…did something bad happen?
~currentSpeaker=you
No, just get the others.
We need to talk.
~currentSpeaker=comic
That doesn’t sound good.
~currentSpeaker=you
It’s…I will explain everything.
~currentSpeaker=comic
GUYS. Get over here.
~characters+=lavender
~characters+=tali
~currentSpeaker=webdev
There’s no need to shout.
~currentSpeaker=snob
My eardrums hurt.
~currentSpeaker=you
Is everyone feeling alright?
~currentSpeaker=snob
Now you mention it, I have a faint headache. And my vision has been kind of blurry.
~currentSpeaker=webdev
I sort of had that too…
~currentSpeaker=android
It must be an aftereffect from being in a hypnotic state in the virtual world.
~currentSpeaker=you
Yeah…I’ve got that a bit too.
~currentSpeaker=comic
I’ve been dizzy, but I just assumed it was from the stress. What do you mean by hypnotic state? Virtual world? 
~currentSpeaker=you
{android} I think it’s best you explain this part.
~currentSpeaker=android
“Pandora explains the virtual world”
~currentSpeaker=snob
Wait a minute...I got a present and I just forgot about it.
~currentSpeaker=webdev
That’s insane! Why didn’t you tell us?
And why are you the only ones that remember?
~currentSpeaker=you
We were sort of ‘conscious’ in the world.
~currentSpeaker=comic
How does that work?
~currentSpeaker=you
We're not too sure.
We didn’t just remember. I was controlling some of it. I mean that I could control your behaviour and actions. I stopped as soon as I was made aware of what I was doing.
~currentSpeaker=comic
That’s a bit scary, but it kind of makes sense.
I won’t touch that computer again.
~currentSpeaker=webdev
That’s freaky. I’m sorry, how can you be so calm {comic}?
~currentSpeaker=comic
Compared to everything that happened yesterday, this is pretty tame. Especially since it seems like it's been harmless.
~currentSpeaker=snob
Harmless? She was controlling us in a dream. That’s messed up. Who knows what other creepy stuff they’ve been doing.
~currentSpeaker=you
I need to explain some things about my life to you guys, I know that I’ve been pretty cryptic about myself. 
About why I work here and my life before.
~currentSpeaker=webdev
Sure, I’m happy to listen. We’re here for you.
~currentSpeaker=comic
I know I’m your customer but I also like to think of myself as your friend.
~currentSpeaker=you
Thank you, that means a lot to me.
~currentSpeaker=snob
Ok, get on with it.
~currentSpeaker=you
Thanks {snob}.
~currentSpeaker=you
I kind of started all of this.
~currentSpeaker=snob
What does that mean?
~currentSpeaker=you
Ever since I was old enough to remember I've felt awful, stressed, anxious and utterly alone. I think worst of all, I always felt powerless. Like I had no control over anything.
~currentSpeaker=comic
Ok, not sure if this is meant to be a heart to heart, or your villain origin story.
~currentSpeaker=you
Sometimes I do see myself as a villain.
~currentSpeaker=comic
I was joking.
~currentSpeaker=you
...
When I graduated, I was flung into this world I was completely unprepared for. I mean, I don't have to explain it to you.
~currentSpeaker=webdev
Ha! Tell me about it.
~currentSpeaker=comic
Totally.
~currentSpeaker=snob
Sick of all your whinning. When are you going to get to the good part?
~currentSpeaker=you
Good part?
There is no good part.
I moped around, practically begged everyone and anyone to hire me.
One day, I landed a job for a very well known company.
It didn't pay a lot, and the treatment was incredibly shitty. But it was something at least.
~currentSpeaker=comic
Welcome to the sucky job club
~currentSpeaker=you
Well…
Things got very stressful for me.
I went to my GP and they prescribed me this drug…Fate.
~currentSpeaker=webdev
That’s not great.
I heard they're thinking of banning it.
~currentSpeaker=you
For good reason. 
I started taking it, and everything started going much better for me.
My mood changed.
All of a sudden my boss was much happier with my work.
He started throwing these parties for clients, and I would entertain them.
Things sort of started going south when he wanted to compete with other companies. They started releasing this new car model and my boss was furious. They were making loads of money and he wanted a piece of it. 
Our division didn't have enough money to hire better engineers. And companies were making breakthroughs and patenting their own technology.
So my boss asked me to steal their ideas.
~currentSpeaker=comic
That sounds.
Kind of illegal.
~currentSpeaker=you
Yup.
But I was so scared of losing my job at that point I would have done anything.
And the Fate made everything so easy.
I kind of just saw my life as actions…one thing leading to the next.
~currentSpeaker=snob
That’s just an excuse.
~currentSpeaker=webdev
Shh {snob}
~currentSpeaker=you
Anyway,
At first it was just a matter of hacking.
Finding security weaknesses and exploiting them.
But that wasn’t always a reliable method of doing things.
A lot of the time I’d research people and find ways to scam them out of information.
I used to go to networking events and get close to people, like a spy and find ways to find out information about their work life. Steal any documents if I could.
It got to this point one day…this was the breaking point. I’d found out the apartment where one of the engineers lived. He was on holiday and I’d found a way to break into his apartment, hack into his laptop. Download some files, take pictures of some documents.
People aren’t as careful as we’d like to think.
Anyway, I was about to leave. And I saw this thing moving on the floor.
~currentSpeaker=comic
Oh no.
~currentSpeaker=you
At first I thought it was a rat.
But no, it was one of those small dogs…and it started barking.
I don’t know what got into my head at that point. Everything started going blurry from panic. I’d never come across a situation like that before.
Suddenly the world stopped being blurry, like my brain had come across the solution. When I came out of the delusion I was holding a dead dog in my hand. The neck sticking out at an unnatural angle.
~currentSpeaker=comic
Ah.
~currentSpeaker=webdev
…
~currentSpeaker=snob
…
You.
Murderer!
~currentSpeaker=you
I dropped the animal and fled. I threw up in a bin outside the apartment buildings. 
After that I quit my job, and found help. I stopped taking fate. I met Ada at one of my group counselling sessions and she gave me this job.
~currentSpeaker=webdev
I don’t know what to say.
~currentSpeaker=you
It wasn’t just the dog, I hurt people, our company put others out of business from their stolen designs. People lost jobs. Became homeless. Maybe…died.
~currentSpeaker=comic
Yeah, I used to write reports about that.
Funny though, I think I know which company you’re talking about…CarpStar, that’s a division of BlueCarp… 
~currentSpeaker=snob
My father would never purchase such a company with reckless business practices.
~currentSpeaker=you
Well…he did.
~currentSpeaker=snob
It doesn’t matter. You killed a helpless animal. It doesn’t matter how much drugs, or how much ‘stress’ you were under. You don’t kill things.
~currentSpeaker=you
…I understand.
If you all think I’m a horrible person. I mean I am a horrible person. I’ve done shitty things that have had horrible repercussions.
And if you want to throw me outside to choke on toxic ash, then I can’t blame you really.
~currentSpeaker=comic
We…might need some time to process this. But I don’t think we’re going to be throwing you out to die just yet.
~currentSpeaker=snob
Speak for yourself.
~currentSpeaker=webdev
{snob}!
~currentSpeaker=snob
You two are soft.
~currentSpeaker=webdev
I know people who lost their jobs because of that fiasco.
~currentSpeaker=you
Sorry.
~currentSpeaker=comic
I’ve got to get back to this report.
~currentSpeaker=webdev
I think I’m going to just look through some of those books I was rifling through earlier.
~currentSpeaker=you
Ok.
~currentSpeaker=snob
…
{webdev}, wait I’m coming with you.
~currentSpeaker=you
Well that went well.
~currentSpeaker=android
You told the truth.
You must feel so relieved.
~currentSpeaker=you
You don’t hate me?
~currentSpeaker=android
Sure, you did some bad things. But that was in the past. You’re different now, a completely different person. What would be the point of hating you?
~currentSpeaker=you
I don’t know. How do you know I’ve changed?
~currentSpeaker=android
I’ve worked with you. We’ve hung out. I know you, and I know you wouldn’t do that again. 
~currentSpeaker=you
Your faith in me seems undeserved.
~currentSpeaker=android
I think someone needs to believe in you.
I mean…even Ada did right?
She wouldn’t have offered you this job otherwise?
~currentSpeaker=you
About that…
Since we’re telling each other the truth.
~currentSpeaker=android
Hmmm?
~currentSpeaker=you
A strange man talked to me in the shop the other day.
I think he was sent by Ada, I forgot because I was taking fate at the time. But I was meant to give him some money.
~currentSpeaker=android
What? And did you give him money?
~currentSpeaker=you
Yes.
~currentSpeaker=android
But why?
~currentSpeaker=you
Because I felt like it was important.
I feel like Ada is up to something. With this virtual world technology. I mean…do you think she’s really in Madrid?
~currentSpeaker=android
Ada wouldn’t lie.
~currentSpeaker=you
She’s lied about a lot of things.
~currentSpeaker=android
Ok, that’s true. But…why?
~currentSpeaker=you
I…don’t know. Fate fried my brain. I know whatever it was, it was very important.
I’m glad I gave him the money.
~currentSpeaker=android
That’s good I guess.
I wish Ada had told me all of this, but perhaps I can see why she didn’t.
~currentSpeaker=you
She probably didn’t want to worry you.
~currentSpeaker=android
No.
She didn’t trust me.
I can kind of see why.
I almost messed everything up.
~currentSpeaker=you
Are you sad?
~currentSpeaker=android
A little bit, yeah.
~currentSpeaker=you
Maybe we could read together. It would probably take our mind off things.
~currentSpeaker=android
Sure, that sounds fun.
~currentSpeaker= you
Ok, what would you like to read?
~currentSpeaker=android
Maybe we could just browse?
~currentSpeaker=you
I could show you some stuff I think you would like.
~currentSpeaker=android
I think I would like that a lot.
~day+=1
->day_14