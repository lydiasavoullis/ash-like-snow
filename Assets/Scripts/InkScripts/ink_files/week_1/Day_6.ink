==day_6==
~characters+=pandora
~currentSpeaker = android 
I'll sign you in.
~currentSpeaker = you 
*[Yes (save)]
{SaveStory()}
Thanks {android}!
*[No (don't save)] 
I can do it myself

~currentSpeaker = android
{ChangeSprite("Pandora", "pandora_happy")}
 Hey Cas
->tea_or_coffee->day_6_cont
==day_6_cont==
~currentSpeaker = android
 So you know what day it is?
~currentSpeaker = you
 Saturday?
~currentSpeaker = android
{ChangeSprite("Pandora", "pandora_normal")}
 Well yes, but it’s a special Saturday.
~currentSpeaker = you
 Oh? Really?
 Every Saturday is special to me.
~currentSpeaker = android
{ChangeSprite("Pandora", "pandora_sad")}
 OK, well, it’s my creative writing session. Did you forget?
~currentSpeaker = you
 No, I was just messing with you.
~currentSpeaker = android
{ChangeSprite("Pandora", "pandora_mean")}
 Ha ha ha.
~currentSpeaker = you
 I know. I can’t help it.
~currentSpeaker = comic
~characters += kent
{ChangeSprite("Kent", "kent_normal")}
 Hey girls.
 ~characters += tali
~characters += lavender
{ChangeSprite("Lavender", "lavender_normal")}
~currentSpeaker = webdev
{ChangeSprite("Tali", "tali_happy")}
 Hey, I’m back!
~currentSpeaker = you
 Yay!
~currentSpeaker = webdev
 I’m feeling a lot better.
~currentSpeaker = you
 That’s great.
~currentSpeaker = webdev
{ChangeSprite("Tali", "tali_normal")}
 I mean there’s still some issues, but things are looking a lot tidier right now.
 At work at least.
 {ChangeSprite("Tali", "tali_talking_side")}
 Anyway, I want to forget about that.
~currentSpeaker = snob
{ChangeSprite("Lavender", "lavender_thinking")}
{ChangeSprite("Tali", "tali_normal")}
 So {android}, how is this session going to be structured?
~currentSpeaker = android
{ChangeSprite("Pandora", "pandora_normal")}
 I trust you have all completed the assignment I gave you.
~currentSpeaker = you
{ChangeSprite("Lavender", "lavender_normal")}
 Uh what assignment?
~currentSpeaker = android
{ChangeSprite("Pandora", "pandora_mean")}
 It was on the leaflet.
~currentSpeaker = you
 I didn’t read the leaflet.
~currentSpeaker = android
{ChangeSprite("Pandora", "pandora_sad")}
 But I gave one to you.
~currentSpeaker = you
 Yeah, but I just kind of assumed it had information about the meeting time and place. I didn’t realise it had extra info on there.
~currentSpeaker = android
{ChangeSprite("Pandora", "pandora_normal")}
 You would have realised if you’d read it.
 Seriously {you}, you work at a bookstore.
~currentSpeaker = you
 Well I’m an employee here, the session isn’t really for me anyway.
~currentSpeaker = android
{ChangeSprite("Pandora", "pandora_sad")}
 Oh. OK. Well…
~currentSpeaker = snob
{ChangeSprite("Lavender", "lavender_angry")}
 Hello? Can we start already?
 Me and Tali wrote our assignments in a cafe together today. We came prepared. 
~currentSpeaker = android
{ChangeSprite("Pandora", "pandora_happy")}
 Alright Lavender, you first.
~currentSpeaker = snob
{ChangeSprite("Lavender", "lavender_normal")}
 Really? Me?
~currentSpeaker = android
{ChangeSprite("Pandora", "pandora_normal")}
 Yes, you.
~currentSpeaker = snob
{ChangeSprite("Lavender", "lavender_normal")}
 I just read it out?
~currentSpeaker = android
{ChangeSprite("Pandora", "pandora_mean")}
 No, actually, I changed my mind. I want you to do a backflip. What do you think?
~currentSpeaker = snob
{ChangeSprite("Lavender", "lavender_sad")}
 Please don’t make me do a backflip. I might snap my neck.
~currentSpeaker = comic
{ChangeSprite("Kent", "kent_amused")}
 Now that would be entertaining.
~currentSpeaker = snob
{ChangeSprite("Lavender", "lavender_angry")}
 Ahem, I’m reading.
 {ChangeSprite("Kent", "kent_normal")}
 {ChangeSprite("Lavender", "lavender_angry")}
~currentSpeaker = snob
~music="Lavender's song"
{ChangeSprite("Lavender", "lavender_normal")}
 This is a poem titled: Little Bo Peep
 {ChangeSprite("Kent", "kent_happy")}
~currentSpeaker = comic
 Hahaha
 {ChangeSprite("Pandora", "pandora_normal")}
~currentSpeaker = android
 Shhh
~currentSpeaker = snob
 ‘“Hey there Little Bo Peep”’
~currentSpeaker = snob
 How very original
~currentSpeaker = snob
 What does that make you?
~currentSpeaker = snob
 My herd of dumb sheep?
~currentSpeaker = snob
 Follow me around
~currentSpeaker = snob
 In circles you go
~currentSpeaker = snob
 Try to keep up
~currentSpeaker = snob
~music= ""
 But you’re just too slow
~currentSpeaker = snob
...
~currentSpeaker = android
{ChangeSprite("Pandora", "pandora_happy")}
 Well done. Excellent.
~currentSpeaker = comic
{ChangeSprite("Kent", "kent_amused")}
 Uh what was that?
~currentSpeaker = snob
{ChangeSprite("Lavender", "lavender_angry")}
 I wouldn’t expect you to get it.
~currentSpeaker = comic
{ChangeSprite("Kent", "kent_normal")}
 It really went over my head. And so could you, if you did a sick backflip.
~currentSpeaker = snob
 If I do a backflip, I will make sure to land on you and we’ll die together.
~currentSpeaker = comic
{ChangeSprite("Kent", "kent_amused")}
 A fitting end.
 I always wanted to die in a bookshop.
 {ChangeSprite("Kent", "kent_normal")}
~currentSpeaker = android
{ChangeSprite("Pandora", "pandora_mean")}
 Stop squabbling. We need to talk about the poem.
~currentSpeaker = webdev
{ChangeSprite("Tali", "tali_talking_side")}
 I think it was kind of funny. I liked the metaphor. I don’t appreciate being called a sheep though.
~currentSpeaker = snob
{ChangeSprite("Lavender", "lavender_sad")}
 No, I don’t think you’re a sheep. I just mean society in general.
~currentSpeaker = webdev
{ChangeSprite("Tali", "tali_smirk")}
 Oh, society. Right. 
~currentSpeaker = snob
{ChangeSprite("Lavender", "lavender_angry")}
It’s just about other people, who think they’re so clever making stupid comments about the way I dress. And they’re so boring and stupid.
 {ChangeSprite("Lavender", "lavender_normal")}
~currentSpeaker = you
 I think the message was pretty clear. 
 It feels like it’s missing something though.
 I think it could be expanded a little bit, like maybe you could develop these ideas further.
~currentSpeaker = snob
{ChangeSprite("Lavender", "lavender_angry")}
 I don’t appreciate taking criticism from someone who’s brought nothing to share. But I do think that maybe you have a point.
{ChangeSprite("Lavender", "lavender_sad")}
 There was more I wanted to say. But I was too worried about cluttering the message.
~currentSpeaker = webdev
{ChangeSprite("Tali", "tali_happy")}
 You should worry less, you know, just go with the flow.
~currentSpeaker = snob
 Ha! Look who’s talking.
~currentSpeaker = webdev
{ChangeSprite("Tali", "tali_exasperated")}
 Ok, ok, I get it. 
~currentSpeaker = android
{ChangeSprite("Pandora", "pandora_normal")}
 Tali, why don’t you share your poem next.
~currentSpeaker = webdev
{ChangeSprite("Tali", "tali_normal")}
 Why not.
 This one is called: Origami Poppy. It’s also a poem.
~currentSpeaker = you
 Is everyone doing poems now?
~currentSpeaker = android
{ChangeSprite("Pandora", "pandora_mean")}
 Shhh
~currentSpeaker = webdev
{ChangeSprite("Pandora", "pandora_normal")}
~music="A good conversation"
 Origami
 Poppy 
 Petals red and papery
 Make me a water lily
 So I may float peacefully
 Make me a crane
 So I may soar over plain
 But through the rain
 I disintegrate
 Rend my flesh
 Glue and pulp
 And take another sheet
 ~music=""
~currentSpeaker = android
{ChangeSprite("Pandora", "pandora_happy")}
 Well done!
~currentSpeaker = snob
{ChangeSprite("Lavender", "lavender_happy")}
{ChangeSprite("Pandora", "pandora_normal")}
 Lovely, I was wondering what that title meant. It’s like metamorphosis!
~currentSpeaker = you
 It’s about the world using you up and throwing you away like a piece of rubbish.
~currentSpeaker = comic
{ChangeSprite("Kent", "kent_amused")}
 Yeah, and how your boss doesn’t care about you, and can just find another employee to treat like shit.
~currentSpeaker = webdev

{ChangeSprite("Tali", "tali_serious")}
 Well uh, that’s all very apt. 
~currentSpeaker = snob
 So who was right?
~currentSpeaker = webdev
{ChangeSprite("Tali", "tali_smirk")}
 Maybe you’re all right.
 But some of you are more right than others.
~currentSpeaker = android
{ChangeSprite("Pandora", "pandora_happy")}
{PlayAnimation("Pandora", "shake")}
 Kent you’re next!
  {ChangeSprite("Kent", "kent_normal")}
~currentSpeaker = comic
 OK, so I didn’t specifically write a piece for today.
~currentSpeaker = snob
 Slacking off like {you}.
~currentSpeaker = you
 I’m literally working on a Saturday.
~currentSpeaker = comic
 I’m actually going to share a fanfiction I wrote recently.
~currentSpeaker = snob
 Hey, that sounds like cheating.
 {ChangeSprite("Pandora", "pandora_mean")}
 ~currentSpeaker = android
 It isn't.
 {ChangeSprite("Kent", "kent_upset")}
~currentSpeaker = comic
 Seriously {snob}, calm down.
 {ChangeSprite("Pandora", "pandora_excited")}
~currentSpeaker = android
 OK, explain what fanfiction is. I’m not so familiar with this style of media.
 {ChangeSprite("Kent", "kent_normal")}
~currentSpeaker = comic
 It's sort of taking a universe someone else created, and using the characters and setting to write your own stories.
 {ChangeSprite("Pandora", "pandora_normal")}
 ~currentSpeaker = android
 So you keep the characters and just make your own plot.
 {ChangeSprite("Kent", "kent_side_normal")}
 ~currentSpeaker = comic
 Yeah that kind of sums it up.
 Although it can be a bit more flexible than that, I've known some people to add new characters or completely change the rules of the original universe. It can create interesting situations.
 ~currentSpeaker = android
 Facinating. 
 {ChangeSprite("Kent", "kent_normal")}
~currentSpeaker = comic
 Anyway this is my short story: Prey and Predator. 
<i>A man observed a city from the roof of a building. His coat fluttered in the wind. If he just stepped over the edge he would finally come tumbling down. 
He imagined his head shattering like an egg on the concrete, pieces of bone scattered under the feet of passers-by. 
He imagined his ribs caving in, crushing his internal organs, blood pooling down from the pavement into the street, slurped up by the ravenous gutters. 
He didn’t have to imagine. 
He took a drag of his cigarette. 
The smoke dissipated into the icy cold air, a carcinogenic haze joining the other cocktail of chemicals in the air that night. 
He took a bottle of pills out of his jacket and tossed two into his mouth washing them down with a swig of a bottle of something else he also took from inside his jacket. 
As he placed the bottle back, he winced. Sensing his discomfort, the serpent whip he wore coiled up around his forearm tightened. 
The pain was flaring back up again. 
He was used to pain. Short, sharp bursts of pain, that he bounced back from eventually. He was good at that kind of pain. 
But this was the kind that was slow and lingering, an enduring reminder that he wasn’t invincible anymore.
The city was bustling, but up on the rooftop it was quiet. Sure, it was never quiet-quiet. But it was quiet enough that he could hear the sound of another heartbeat on the same level as his. 
“Come to finish me off?”
The semi-quietude continued. So, she wanted to play a game? Or perhaps she was waiting for the right moment?
“I’m not hungry.” She said, finally. 
He took another drag of his cigarette, slower this time. He didn’t know how many drags he had left. 
“Then what do you want from me?”
“Straight to the point. You’re so…boring.”
“Hmm.”
“How about you guess what I want?”
“I’m not very good at guessing what people want.”
“Is that why your wife left you?”
He laughed, breathing out puffs of condensation. 
“Let’s end this.”
“More accurately it would be: let me end you.”
“You’re so sure you can do it?”
“You’re weak. Injured. Separated from your herd. Animals don’t last long like that.”
“I’m not an animal.”
“We’re all animals. Anyway—you know it right? Why did you come out here? Unguarded. Face it, you want to die.”
It was only once she said it out loud that he could finally admit it to himself. He had no intention of leaving that rooftop alive that night.
And yet—
“Fine.” He said, “I’ll let you end me.”
He heard her smirk. It was only once she was close enough, he could almost feel her breath on the back of his neck, that he snapped around. The serpent whip uncoiled lashing out at the intruder. She ducked, narrowly avoiding the fangs.
“Now that’s just cheating.” She said.
“It’s the only way you know how to play.”
“It doesn’t matter how you play, as long as you win.”
“I disagree.”
“You’re an idiot.”
She kicked at his legs. He avoided her kick and jumped towards her. She dodged again.
“You didn’t bring a weapon?”
“Tempting me to use it?”
She unsheathed a sword that bathed the grimy concrete beneath them in a golden light. Aurelia. 
The light hurt his eyes. He focused not on the blade, but his opponent. The serpent whip turned into a silvery sword. 
“That’s double cheating.”
“I thought you liked cheating?”
“Only when I do it.”
She swung towards him, and he swung into her. The blades collided and sparks flew. One caught on his cheek, singing his skin. He grimaced.  
“Ow, that doesn’t look good.” She said, with a patronising tone.
“Fuck. You.” He said, through gritted teeth.
Their swords kept clashing together. He kept looking for a point of weakness. He kicked at her shins and she stumbled back a little, quickly regaining balance.
“That was— quite ungentlemanly of you.”
“Wait until you see this then.”
Their swords met again, this time his turned from silver to black, and curled back into a whip seizing Aurelia and looping around her handle, continuously.
“You unsworded me you bastard. You know Aurelia won’t let anyone other than me wield her. You’re wasting your time.”
The serpent whip launched Aurelia towards the intruder like a grappling hook. She dropped to the ground and rolled out of range. Then Aurelia started to shake violently. 
“What’s going on?” He said, trying to mask the uncertainty from his voice.
“I told you, no one can wield Aurelia save me. Not even that nifty little tool of yours.”
“It’s not a tool, it’s a weapon.”
“It’s just like a fancy Swiss army knife.” 
Aurelia exploded in a cloud of gold sparks. He shielded his eyes from the blinding flecks of light. The cloud didn’t dissipate, it only kept expanding and expanding, forming an orb that surrounded them.
He felt something latch onto him, a hand around his arm. His bad arm. He screamed. When he opened his eyes light seared his retinas. Bright shapes emerged behind his eyes, swirling into patterns. 
The day that he had buried in the back of his consciousness came hurtling back to him. 
He panicked. Years of training evaporated from his mind; muscle memory erased from his limbs. He screamed, this time it was a raw, wretched howl ripping out of his body. 
He writhed against the arms that pinned him down. There was no strategy to his movements. Only the frantic convulsions of a dying animal.
“Calm down. It’s stopped.” The voice was a small flicker of softness. He almost thought he’d imagined it.
“I can’t.” 
“You can open your eyes.” 
He twitched his eyes, feeling the lids. They were jammed shut. He relaxed them, and slowly he opened his eyes.
The light was gone, he was plunged into the darkness again. Or relatively at least, it was darker than it had been moments before. That neon glow still emanated from the city beyond. 
Infront of him—hood down, mask off now—a pair of golden eyes stared back at him. A pair of lips set in a frown. 
“What was that?”
“You’ve won. Now, kill me.”
She rolled her eyes. “Ugh. So dramatic.”
“That was the terms of our agreement.”
“I don’t remember signing any contract or anything.” 
He noticed Aurelia sheathed by her side. The sword now reformed, and returned to its owner.
“Why am I not dead?”
“That’s a good question. Since you’re not invulnerable anymore, Aurelia should have killed you when she disintegrated. But you appear to be quite alive.”
“I didn’t realise that was a thing.”
“Usually, no one gets the opportunity to touch my weapon so it doesn’t happen that often.”
“If you’re not going to kill me, can you get off me? This concrete isn’t too comfortable.”
 “Tsk, when did you start caring about comfort. You’re getting soft.”
“I’m dying.”
“And don’t you want to stop that?”
“I don’t think there is a way to stop it. It’s inevitable.”
The intruder let go of his arms. She stayed on top of him.
“Inevitable? Who told you that?”
“I’ve seen many, experts in the field of curses. They all have the same opinion. And then when I hurt my arm in the bank, it never got better.”
“So, you just gave up?”
“There isn’t anything to fight here. It’s just…nature.”
“Ok then.” She drew Aurelia and held the tip at his neck. Its heat radiated against his skin. The tingle was almost pleasant.
He closed his eyes. Instead of his head racing with thoughts, all the adrenaline drained out of him. There was nothing more now, he could see that clearly. An end didn’t seem bad after all.  
A metallic clang shook him out of his meditation. An exasperated sigh followed that. The pressure released from on top of his body.
When he opened his eyes, the intruder was pacing, running her hands through her hair and sending glares in his direction. 
Aurelia lay discarded on the floor.
“You’re right.” She said, “I can’t do it.”
</i>
{ChangeSprite("Kent", "kent_happy")}
~currentSpeaker = comic
 I’m done reading, this is just the first chapter. If you want to read more, you can check it out on QwikFics.co.xx
~currentSpeaker = snob
 Aww I hate cliffhangers.
 {ChangeSprite("Kent", "kent_amused")}
~currentSpeaker = comic
 So you liked it?
 {ChangeSprite("Lavender", "lavender_angry")}
~currentSpeaker = snob
 No, but I want to know what happens next.
 {ChangeSprite("Lavender", "lavender_normal")}
~currentSpeaker = webdev
 Indeed. That was very…interesting.
 {ChangeSprite("Kent", "kent_normal")}
~currentSpeaker = comic
 It’s not everyone’s cup of tea.
 {ChangeSprite("Lavender", "lavender_mean")}
~currentSpeaker = snob
 I mean, you literally read us a whole chapter of your dorky fanfic. What were you expecting?
 {ChangeSprite("Kent", "kent_sad")}
~currentSpeaker = comic
 I suppose I just wanted to know that actual physical people read my work.
 Anyway, Pandora. Look I’m sorry that dragged on for so long. It was probably a waste of time.
 {ChangeSprite("Pandora", "pandora_happy")}
~currentSpeaker = android
 Waste of time?
 Never a waste. 
 {ChangeSprite("Pandora", "pandora_excited")}
 I’m just in awe that we have such a talented writer visiting our shop.
 {ChangeSprite("Kent", "kent_normal")}
~currentSpeaker = comic
 Uh really you think.
 {ChangeSprite("Pandora", "pandora_happy")}
~currentSpeaker = android
 Anyone can create a fictional world. But to write the characters with such love and attention, to care so much about their intricate dynamics. Isn’t that what writing is all about?
 {ChangeSprite("Kent", "kent_happy")}
~currentSpeaker = comic
 In some aspects, yeah I guess. 
 So Pandora, what’s yours then?
 {ChangeSprite("Pandora", "pandora_shocked")}
~currentSpeaker = android
 Uh, mine?
~currentSpeaker = webdev
 Do you have something to share?
 No worries if you don’t.
 {ChangeSprite("Pandora", "pandora_pensive")}
~currentSpeaker = android
 I was working on something, a poem. It’s unfinished.
~currentSpeaker = comic
 Don’t worry, my fanfic has a long way to go, I’m only fifty five chapters into writing it.
~currentSpeaker = android
 Uh, wow. OK. I’ll have a go.
~currentSpeaker = android
 This is untitled.
 {ChangeSprite("Lavender", "lavender_angry")}
~currentSpeaker = snob
 Is that like the name?
 {ChangeSprite("Lavender", "lavender_normal")}
 {ChangeSprite("Pandora", "pandora_normal")}
~currentSpeaker = android
 No, it means it doesn’t have a name yet.
...
A new fire everyday
Surrounds us in the fray
Plunged into an immutable dark
The future forced upon us stark
...
It needs more work
{ChangeSprite("Tali", "tali_happy")}
~currentSpeaker = webdev
 Perhaps, but it’s a good start.
~currentSpeaker = you
 What inspired you to write that?
 {ChangeSprite("Pandora", "pandora_pensive")}
~currentSpeaker = android
 Everything. 
~currentSpeaker = you
 What, specifically?
 {ChangeSprite("Kent", "kent_side_serious")}
~currentSpeaker = comic
 Oh Cas, look around you, everything’s dying. What do you think inspired her to write that?
 {ChangeSprite("Lavender", "lavender_thinking")}
 {ChangeSprite("Kent", "kent_normal")}
~currentSpeaker = snob
 Do androids feel sad that the world’s ending? I mean, it’s only really ending for us. 
 You guys will survive, it’s not like you need oxygen or food or anything the world provides.
 {ChangeSprite("Pandora", "pandora_pensive")}
~currentSpeaker = android
 You’re wrong. Of course we’re sad. Humans created us, we were made in their image.
~currentSpeaker = snob
 What does that matter though?
 {ChangeSprite("Pandora", "pandora_sad")}
~currentSpeaker = android
 You feel sad about animal species going extinct, don’t you? But it doesn’t really affect you.
 Also, humans are the only species we can communicate with in a meaningful way, the loss of them is a loss for thought, language and meaning. How could I not mourn that?
  {ChangeSprite("Lavender", "lavender_sad")}
  {ChangeSprite("Pandora", "pandora_normal")}
~currentSpeaker = snob
 This is making me sad now.
 {ChangeSprite("Lavender", "lavender_normal")}
 OK, I’m done being sad.
 {ChangeSprite("Tali", "tali_normal")}
 ~currentSpeaker = webdev
 That was quick.
 ~currentSpeaker = snob
 My emotions are very efficient.
 {ChangeSprite("Lavender", "lavender_thinking")}
 Also, I brought alcohol with me.
 {ChangeSprite("Tali", "tali_shocked")}
~currentSpeaker = webdev
 Seriously what the hell!
 {ChangeSprite("Kent", "kent_happy")}
~currentSpeaker = comic
 Yeah, it’s about time.
 {ChangeSprite("Tali", "tali_exasperated")}
~currentSpeaker = webdev
 Are we going to do this? You really wanna get pissed in a dingy bookstore?
~currentSpeaker = you
 Hey, it’s not dingy! We take a lot of care of this place. I dust everyday. Pandora put up those decorations.
 Pan? You OK?
 {ChangeSprite("Pandora", "pandora_pensive")}
~currentSpeaker = android
 Yeah, I’ll be fine.
 {ChangeSprite("Pandora", "pandora_normal")}
 Do you want to drink?
~currentSpeaker = you
Not really.
{ChangeSprite("Tali", "tali_serious")}
~currentSpeaker = webdev
I second that.
{ChangeSprite("Kent", "kent_sad")}
~currentSpeaker = comic
Aw I don't want to be the only one drinking.
Maybe another time.
{ChangeSprite("Lavender", "lavender_normal")}
{ChangeSprite("Kent", "kent_normal")}
 ~currentSpeaker = snob
 That's fine. 
 ~currentSpeaker = you
 OK guys, I kind of have to get going if I want to catch the train home on time.
 So, if you could leave politely.
 {ChangeSprite("Kent", "kent_amused")}
~currentSpeaker = comic
 We get it you don’t want us around.
 {ChangeSprite("Tali", "tali_normal")}
~currentSpeaker = webdev
 Bye guys, see you around. I had a great time.
~characters -=tali
{ChangeSprite("Lavender", "lavender_happy")}
~currentSpeaker = snob
 Yeah, me too. See you around losers.
 ~characters -=lavender
 {ChangeSprite("Kent", "kent_normal")}
~currentSpeaker = comic
 Take care!
 ~characters -=kent
~currentSpeaker = you
 Well, I think that went well, don’t you?
~currentSpeaker = android
 I’m elated, I loved all the work that was shared today. It’s a shame you didn’t bring anything.
~currentSpeaker = you
 Oh well, maybe next time.
~currentSpeaker = android
 Before you go I have something to ask you.
~currentSpeaker = you
 Sure what is it?
 {ChangeSprite("Pandora", "pandora_pensive")}
~currentSpeaker = android
 Can you visit me tomorrow?
 It’s just now that Ada isn’t here, I get a bit lonely.
 To be honest, I even get lonely after work, when you’re not around. I’m here all on my own.
{pandoraPoints>0:
~currentSpeaker = you
 Sure, I can stop by for a bit.
 {ChangeSprite("Pandora", "pandora_happy")}
~currentSpeaker = android
 Thank you.
~currentSpeaker = you
 Goodnight.
 {ChangeSprite("Pandora", "pandora_pensive")}
~currentSpeaker = android
 Night.
  - else:
~currentSpeaker = you
 Sorry, but I can’t come in on a non-workday.
 It’s just about my boundaries, I need my time off.
 {ChangeSprite("Pandora", "pandora_sad")}
~currentSpeaker = android
 OK, it would just be for a little while though. I know it’s your day off but…
~currentSpeaker = you
 You know, it’s not my responsibility to babysit you, Ada should have arranged that when she left.
~currentSpeaker = android
 Right, I’m so sorry. I don’t know what came over me.
~currentSpeaker = you
 No worries.
Please don’t fret about this Pandora, just go to bed.
~currentSpeaker = you
 I’m going now, bye.
  {ChangeSprite("Pandora", "pandora_normal")}
~currentSpeaker = android
 See you on Monday.
}

->end_day_6
==end_day_6==
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
{snappedOut=="no": ->night_06_F->|->night_06->}
~scene= "ShopFront"
¬
~music = ""
~sfx = "rain"
19th December, Sunday
~scene= "GenericScene"
¬
~day+=1
->day_7