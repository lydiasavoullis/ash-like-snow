LIST TDNames = (P), (K), (T), (L), (C)
VAR name = C
==start_truth_or_dare==
~button= "normal"
Who are you going to chose?
*[Pandora]
//Pandora gets questioned by Cas
->c_questions_p
*[Kent]
//Kent gets questioned by Cas
->c_questions_k
*[Tali]
//Tali gets questioned by Cas
->c_questions_t
*[Lavender]
//Lavender gets questioned by Cas
->c_questions_l

==kent_questions==
~TDNames-=K
~name = LIST_RANDOM(TDNames)
{name == T:->k_questions_t}
{name == P:->k_questions_p}
{name == L:->k_questions_l}
{name == C:->k_questions_c}
->end_scenario
==tali_questions==
~TDNames-=T
~name = LIST_RANDOM(TDNames)
{name == K:->t_questions_k}
{name == P:->t_questions_p}
{name == L:->t_questions_l}
{name == C:->t_questions_c}
->end_scenario
==pandora_questions==
~TDNames-=P
~name = LIST_RANDOM(TDNames)
{name == T:->p_questions_t}
{name == K:->p_questions_k}
{name == L:->p_questions_l}
{name == C:->p_questions_c}
->end_scenario
==lavender_questions==
~TDNames-=L
~name = LIST_RANDOM(TDNames)
{name == T:->l_questions_t}
{name == K:->l_questions_k}
{name == P:->l_questions_p}
{name == C:->l_questions_c}
->end_scenario
==cas_questions==
~TDNames-=C
~name = LIST_RANDOM(TDNames)
{name == T:->c_questions_t}
{name == K:->c_questions_k}
{name == L:->c_questions_l}
{name == P:->c_questions_p}
->end_scenario


//end of choices
//cas questions
==c_questions_t==
//Tali gets questioned by Cas
~currentSpeaker = you
So Tali.
Truth or dare?
{ChangeSprite("Tali", "tali_talking_forward")}
~currentSpeaker = webdev
Truth.
~currentSpeaker = you
Uhh...
What did you want to be when you were younger?
{ChangeSprite("Tali", "tali_talking_side")}
~currentSpeaker = webdev
I wanted to be an artist.
~currentSpeaker = you
Really?
{ChangeSprite("Tali", "tali_smirk")}
~currentSpeaker = webdev
Does that surprise you?
~currentSpeaker = you
Not really.
Why didn't you?
{ChangeSprite("Tali", "tali_talking_side")}
~currentSpeaker = webdev
I think I have become an artist in a way, I create beautiful webpages.
That's a kind of art.
Yes?
~currentSpeaker = you
You know what, yes it totally is.
{ChangeSprite("Tali", "tali_normal")}
~currentSpeaker = webdev
I paint sometimes.
~currentSpeaker = you
I wish I could see your art.
{ChangeSprite("Kent", "kent_happy")}
~currentSpeaker = comic
Me too!
{ChangeSprite("Tali", "tali_exasperated")}
~currentSpeaker = webdev 
It's not that good. 
~currentSpeaker = you
Lavender, have you seen her art?
{ChangeSprite("Lavender", "lavender_sad")}
~currentSpeaker = snob
I've seen some of it.
{ChangeSprite("Lavender", "lavender_thinking")}
Not a lot though.
At school she was so secretive, always guarding her sketchbook.
{ChangeSprite("Lavender", "lavender_normal")}
I could barely catch a glimpse.
{ChangeSprite("Tali", "tali_serious")}
~currentSpeaker = webdev
Ok, enough of that.
{ChangeSprite("Tali", "tali_smirk")}
It's my turn to ask.
->tali_questions
==c_questions_k==
//Kent gets questioned by Cas
~currentSpeaker = you
Kent. Kent. Kent.
{ChangeSprite("Kent", "kent_amused")}
~currentSpeaker = comic
Why do I feel like you're the villain and I've just walked into your secret base of criminal operations. 
~currentSpeaker = you
I can't be held responsible for your overactive imagination.
Truth or dare?
{ChangeSprite("Kent", "kent_side_normal")}
~currentSpeaker = comic
Hmm...
{ChangeSprite("Kent", "kent_amused")}
Dare.
~currentSpeaker = you
Damn. You are not messing about.
OK, I'm going to brew a mega tea, a combination of all the different teas that Pandora has in the kitchen. And I want you to drink it all.
{ChangeSprite("Kent", "kent_sad")}
~currentSpeaker = comic
You monster.
{ChangeSprite("Kent", "kent_amused")}
Will I gain superpowers from this.
~currentSpeaker = you
You will gain the ability to see in the dark. 
{ChangeSprite("Kent", "kent_side_normal")}
~currentSpeaker = comic
I may gain the ability to empty the contents of my stomach onto this floor.
~currentSpeaker = you
Please don't do that.
Ok. I may retract my original dare.
{ChangeSprite("Lavender", "lavender_angry")}
~currentSpeaker = snob
That's cheating!
{ChangeSprite("Lavender", "lavender_mean")}
No backsies.
{ChangeSprite("Pandora", "pandora_annoyed")}
~currentSpeaker = android
It's ok. I'll get the bin.
{ChangeSprite("Pandora", "pandora_normal")}
Kent can throw up in there if he feels sick.
{ChangeSprite("Kent", "kent_side_serious")}
~currentSpeaker = comic
So we're really doing this.
~currentSpeaker = android
...
I've just brewed the tea.
And put all the teas into the cup.
{ChangeSprite("Tali", "tali_awe")}
~currentSpeaker = webdev
That colour does not look healthy.
{ChangeSprite("Lavender", "lavender_serious")}
~currentSpeaker = snob
The good thing is that this tea already looks like someone's been sick in it, so it won't be a surprise when it comes back the other way.
{ChangeSprite("Kent", "kent_sad")}
~currentSpeaker = comic
Why did you have to say that?
{ChangeSprite("Kent", "kent_upset")}
Oh, it's too hot.
{ChangeSprite("Pandora", "pandora_confused")}
~currentSpeaker = android
Maybe put some milk into it.
{ChangeSprite("Kent", "kent_sad")}
~currentSpeaker = comic
No, that will just make things worse.
I'll use some tap water.
Dilutes the tea, but this thing isn't going to taste good anyway.
{ChangeSprite("Kent", "kent_side_normal")}
...
I'll hazard a sip.
~currentSpeaker = you
What does it taste like?
{ChangeSprite("Kent", "kent_sad")}
~currentSpeaker = comic
Fruity and weird.
{ChangeSprite("Lavender", "lavender_happy")}
~currentSpeaker = snob
Just like you!
{ChangeSprite("Kent", "kent_upset")}
~currentSpeaker = comic
I'm about to throw this concoction in your face if you don't shut up.
{ChangeSprite("Lavender", "lavender_angry")}
~currentSpeaker= snob
Yuck, don't you dare. Just the smell is making me nauseous. 
{ChangeSprite("Kent", "kent_sad")}
~currentSpeaker = comic
Damn Cas, I thought you were my friend.
~currentSpeaker = you
I AM your friend.
I didn't realise it would be that bad.
{ChangeSprite("Kent", "kent_happy")}
~currentSpeaker = comic
It's done, it's all gone.
{ChangeSprite("Kent", "kent_amused")}
And now it's my turn.
->kent_questions
==c_questions_p==
//Pandora gets questioned by Cas
~currentSpeaker = you
I chose Pandora.
Truth or dare?
{ChangeSprite("Pandora", "pandora_pensive")}
~currentSpeaker = android
Let me think.
{ChangeSprite("Pandora", "pandora_mean")}
I think I can trust you.
Dare.
~currentSpeaker = you
Can you power yourself off?
{ChangeSprite("Pandora", "pandora_sad")}
~currentSpeaker = android
Oh, sick of me already?
~currentSpeaker = you
No, it's not like that.
I just want to see how you do it.
{ChangeSprite("Pandora", "pandora_normal")}
~currentSpeaker = android
It's really not that interesting.
Ok, I'll do it.
{ChangeSprite("Pandora", "pandora_sleeping")}
...
{ChangeSprite("Lavender", "lavender_thinking")}
~currentSpeaker = snob
What's going on?
Is she...sleeping?
{ChangeSprite("Lavender", "lavender_normal")}
{ChangeSprite("Tali", "tali_talking_side")}
~currentSpeaker = webdev
Yeah she's definitely asleep.
{ChangeSprite("Kent", "kent_normal")}
~currentSpeaker = comic
She can just power down like that.
{ChangeSprite("Kent", "kent_sad")}
I'm so jealous.
{ChangeSprite("Tali", "tali_smirk")}
~currentSpeaker = webdev
Is that all you're jealous of.
{ChangeSprite("Tali", "tali_talking_forward")}
I mean, you can just adjust your body to fit your own needs. Endlessly.
{ChangeSprite("Tali", "tali_sad")}
They don't feel pain, or hunger
{ChangeSprite("Kent", "kent_side_normal")}.
~currentSpeaker = comic
If androids had more rights, it would be pretty sweet to be one.
{ChangeSprite("Lavender", "lavender_thinking")}
~currentSpeaker = snob
Hmmm.
Maybe you have a point.
~currentSpeaker = you
Ok guys, I feel like you're going to do break into song in a minute, and I don't know how I feel about that. Pandora, please wake up.
...
Pan?
~currentSpeaker = android
zzz
~currentSpeaker = you
I remember Ada told me, I need to press this button if she doesn't start up naturally.
{ChangeSprite("Tali", "tali_smirk")}
~currentSpeaker = webdev
Naturally?
~currentSpeaker = you
I mean automatically, if she doesn't wake up on her own. You know what I mean.
Here it is.
{ChangeSprite("Pandora", "pandora_normal")}
~currentSpeaker = android
Good morning everyone.
{ChangeSprite("Kent", "kent_amused")}
~currentSpeaker = comic
Oh my god, she thinks she slept the whole night.
{ChangeSprite("Pandora", "pandora_annoyed")}
~currentSpeaker = android
{comic} I know it's not the next day.
{ChangeSprite("Pandora", "pandora_normal")}
I remember what's going on, I'm just joking.
It's my turn now.
->pandora_questions
==c_questions_l==
//Lavender gets questioned by Cas
~currentSpeaker = you
So I guess I'll pick Lavender.
{ChangeSprite("Lavender", "lavender_thinking")}
~currentSpeaker = snob
Hmph.
~currentSpeaker = you
Truth or dare?
~currentSpeaker = snob
Truth.
~currentSpeaker = you
What did you think of Tali when you met her?
{ChangeSprite("Lavender", "lavender_normal")}
~currentSpeaker = snob
Is that it?
I thought she was cool.
{ChangeSprite("Tali", "tali_happy")}
~currentSpeaker = webdev
Awww.
{ChangeSprite("Lavender", "lavender_thinking")}
~currentSpeaker = snob
I admired her work ethic. And creativity.
{ChangeSprite("Lavender", "lavender_sad")}
And I wanted her to like me.
{ChangeSprite("Tali", "tali_smirk")}
~currentSpeaker = webdev
Hey, I like you now.
~currentSpeaker = snob
Well I had to work on it.
{ChangeSprite("Lavender", "lavender_angry")}
For many months.
{ChangeSprite("Tali", "tali_serious")}
~currentSpeaker = webdev
It was a difficult time. I wasn't very trusting of people.
{ChangeSprite("Lavender", "lavender_sad")}
~currentSpeaker = snob
I'm still a bit niffed.
{ChangeSprite("Tali", "tali_upset")}
~currentSpeaker = webdev
I had a lot to focus on.
The entrance exams drained my energy.
Then there was all the homework. 
So much more compared to my previous school and it was more dificult.
There was a lot of pressure on me.
{ChangeSprite("Lavender", "lavender_thinking")}
~currentSpeaker = snob
{you}, to answer your question honestly, I thought Tali was very cool and hard-working.
{ChangeSprite("Lavender", "lavender_mean")}
And a giant NERD!
{ChangeSprite("Tali", "tali_exasperated")}
~currentSpeaker = webdev
...
{ChangeSprite("Tali", "tali_normal")}
{ChangeSprite("Lavender", "lavender_happy")}
~currentSpeaker = snob
Ok ok ok, it's MY turn. 
->lavender_questions

//lavender questions
==l_questions_t==
//Tali gets questioned by Lavender
{ChangeSprite("Lavender", "lavender_mean")}
~currentSpeaker = snob
Tali!
I'm questioning you.
Truth or--
{ChangeSprite("Tali", "tali_talking_forward")}
~currentSpeaker = webdev
Dare.
{ChangeSprite("Tali", "tali_talking_side")}
You know everything about me anyway. What's the point of truth?
{ChangeSprite("Lavender", "lavender_sad")}
~currentSpeaker = snob
Uh...oh. OK.
{ChangeSprite("Lavender", "lavender_mean")}
Try carrying as many books as possible.
{ChangeSprite("Pandora", "pandora_sad")}
~currentSpeaker = android
I'm not sure that's safe.
~currentSpeaker = you
Probably not for the books at least.
{ChangeSprite("Kent", "kent_amused")}
~currentSpeaker = comic
What's the risk?
{ChangeSprite("Kent", "kent_normal")}
They'll get a little scuffed.
~currentSpeaker = you
Ada has eyes like a hawk.
She'll know.
~currentSpeaker = android
She'll know.
{ChangeSprite("Lavender", "lavender_thinking")}
~currentSpeaker = snob
There are probably some crappy books no one cares about.
Try those first.
{ChangeSprite("Tali", "tali_serious")}
~currentSpeaker = webdev
Do I have permission?
~currentSpeaker = android
...
~currentSpeaker = you
...
Oh shit. I forgot I'm in charge.
Uh, yeah sure.
Just let me know when you're going to fold. Me and Pan can probably catch them if they fall.
{ChangeSprite("Pandora", "pandora_happy")}
~currentSpeaker = android
I'm a good at catching.
{ChangeSprite("Tali", "tali_happy")}
~currentSpeaker = webdev
Here goes nothing.
{ChangeSprite("Tali", "tali_serious")}
You better pile them on Lav.
{ChangeSprite("Pandora", "pandora_normal")}
~currentSpeaker = android
I will pass them over.
{ChangeSprite("Lavender", "lavender_normal")}
~currentSpeaker = snob
One. Two. Three.
...
{ChangeSprite("Lavender", "lavender_sad")}
Ten. Eleven.
{ChangeSprite("Tali", "tali_upset")}
~currentSpeaker = webdev
You're just giving me the little books.
{ChangeSprite("Lavender", "lavender_angry")}
~currentSpeaker = snob
And Pandora is the one giving ME the little books.
{ChangeSprite("Pandora", "pandora_sad")}
~currentSpeaker = android
Well, those are the less valuable ones. And they're less likely to get damaged if they fall.
That's just basic economics and physics. 
~currentSpeaker = you
Does it really matter how big the books are?
{ChangeSprite("Kent", "kent_amused")}
Lavender never specified the size.
~currentSpeaker = comic
Size doesn't matter ;)
{ChangeSprite("Tali", "tali_exasperated")}
~currentSpeaker = webdev
It does!
I don't want anyone to say I was cheating.
~currentSpeaker = comic
No one thinks that.
{ChangeSprite("Tali", "tali_upset")}
~currentSpeaker = webdev
Give me a challenge.
{ChangeSprite("Pandora", "pandora_annoyed")}
~currentSpeaker = android
OK. What do you want? The Lord of the Rings, War and Peace, University Physics with Modern Physics 14th Edition by Hugh D. Young, Roget A. Freedman...
~currentSpeaker = webdev
What am I? Tofu?
{ChangeSprite("Lavender", "lavender_sad")}
~currentSpeaker = snob
Oof those are heavy.
~currentSpeaker = webdev
DO IT.
~currentSpeaker = snob
Ok, ok.
~currentSpeaker = webdev
MORE.
~currentSpeaker = snob
I'm onto it.
~currentSpeaker = webdev
KEEP THEM COMING.
{ChangeSprite("Lavender", "lavender_angry")}
~currentSpeaker = snob
Stop talking in uppercase. It's very rude.
~currentSpeaker = webdev
I DON'T CARE?
{ChangeSprite("Lavender", "lavender_thinking")}
~currentSpeaker = snob
Why are you questioning that?
{ChangeSprite("Tali", "tali_shocked")}
~currentSpeaker = webdev
AAAHHHH.
{ChangeSprite("Lavender", "lavender_shocked")}
~currentSpeaker = snob
OWWWWWWWWW.
{ChangeSprite("Tali", "tali_sad")}
~currentSpeaker = webdev
Oh crap.
{ChangeSprite("Lavender", "lavender_angry")}
~currentSpeaker = snob
What the hell.
{ChangeSprite("Pandora", "pandora_happy")}
~currentSpeaker = android
Caught em'
~currentSpeaker = you
Me too!
{ChangeSprite("Pandora", "pandora_excited")}
~currentSpeaker = android
Team work, hell yeah!
~currentSpeaker = snob
One of those books hit me.
I have a bruise.
{ChangeSprite("Tali", "tali_awe")}
~currentSpeaker = android
Sure did, hit you in the shoulder and bounced into my arms.
{ChangeSprite("Tali", "tali_happy_closed")}
Nice save. Thanks!
{ChangeSprite("Lavender", "lavender_thinking")}
~currentSpeaker = snob
It wasn't intentional.
{ChangeSprite("Tali", "tali_smirk")}
~currentSpeaker = webdev
How many was that?
{ChangeSprite("Lavender", "lavender_sad")}
~currentSpeaker = snob
Uh I wasn't counting.
Let's just move on.
{ChangeSprite("Tali", "tali_sad")}
~currentSpeaker = webdev
My arms hurt.
{ChangeSprite("Tali", "tali_happy")}
Oooh it's my go now.
->tali_questions
==l_questions_k==
//Kent gets questioned by Lavender
{ChangeSprite("Lavender", "lavender_thinking")}
~currentSpeaker = snob
Hmm, I choose, Keith.
{ChangeSprite("Kent", "kent_upset")}
~currentSpeaker = comic
This is getting old.
There isn't a Keith here Lavender.
{ChangeSprite("Lavender", "lavender_mean")}
~currentSpeaker = snob
Of course there is, there's always a Keith.
Truth or dare Keith.
{ChangeSprite("Kent", "kent_side_normal")}
~currentSpeaker = comic
Truth.
{ChangeSprite("Lavender", "lavender_thinking")}
~currentSpeaker = snob
How did you get a job at Distant Outlook?
{ChangeSprite("Kent", "kent_amused")}
~currentSpeaker = comic
There's this thing.
It's called an interview.
You turn up wearing a suit and you entertain a bunch of wankers for an hour or two. And then you sign your life away.
{ChangeSprite("Lavender", "lavender_shocked")}
~currentSpeaker = snob
Hold on a minute...YOU wore a suit?
{ChangeSprite("Lavender", "lavender_serious")}
Ok, now tell me what actually happened.
{ChangeSprite("Kent", "kent_normal")}
~currentSpeaker = comic
I just did.
{ChangeSprite("Lavender", "lavender_angry")}
~currentSpeaker = snob
Objection! Your Honour, he is obfuscating.
~currentSpeaker = you
Your Honour? Is that me?
{ChangeSprite("Lavender", "lavender_thinking")}
~currentSpeaker = snob
The whole point of this is that you open up and share details about your life, is it not?
~currentSpeaker = you
Yes.
Kent, just give us the juice.
{ChangeSprite("Kent", "kent_amused")}
~currentSpeaker = comic
You're siding with her now?
~currentSpeaker = you
Well, I want to hear this story too.
Also, she called me 'Your Honour' I'm an easy woman to please.
{ChangeSprite("Kent", "kent_side_normal")}
~currentSpeaker = comic
Fuck. Alright then. 
My boss was had a medical emergency.
And my boyfriend, Scott, was the one in the ambulance with him.
He wanted to thank Scott personally.
So they were talking and he mentions that he works for the Distant Outlook.
And Scott starts talking about me, I was freelancing at the time as an illustrator.
{ChangeSprite("Kent", "kent_normal")}
And the rest is history.
~currentSpeaker = you
What was he in hospital for?
{ChangeSprite("Kent", "kent_amused")}
~currentSpeaker = comic
Hmm I think he overdid it with the viagra.
{ChangeSprite("Lavender", "lavender_angry")}
~currentSpeaker = snob
You're joking again.
You should be more appreciative of your boss.
{ChangeSprite("Kent", "kent_side_normal")}
~currentSpeaker = comic
If you worked for him, you wouldn't be so appreciative either.
~currentSpeaker = snob
He gave you a job.
{ChangeSprite("Kent", "kent_upset")}
~currentSpeaker = comic
And I give him high quality work under some incredibly stringent deadlines.
{ChangeSprite("Lavender", "kent_amused")}
~currentSpeaker = snob
The quality of your work is debatable.
{ChangeSprite("Lavender", "kent_upset")}
~currentSpeaker = comic
OK that's enough.
->kent_questions
==l_questions_p==
//Pandora gets questioned by Lavender
{ChangeSprite("Lavender", "lavender_normal")}
~currentSpeaker = snob
It's my turn.
I'm choosing Pandora.
{ChangeSprite("Pandora", "pandora_pensive")}
~currentSpeaker = android
Yes?
{ChangeSprite("Lavender", "lavender_serious")}
~currentSpeaker = snob
Truth or dare? Duh.
{ChangeSprite("Pandora", "pandora_happy")}
~currentSpeaker = android
Truth.
{ChangeSprite("Lavender", "lavender_sad")}
~currentSpeaker = snob
Boring.
{ChangeSprite("Lavender", "lavender_thinking")}
Ok, so as an android, do you have feelings?
~currentSpeaker = you
What the hell!
You can't ask that.
{ChangeSprite("Lavender", "lavender_serious")}
~currentSpeaker = snob
I just did.
{ChangeSprite("Pandora", "pandora_confused")}
~currentSpeaker = android
Sorry Lavender, what do you mean by that?
{ChangeSprite("Lavender", "lavender_angry")}
~currentSpeaker = snob
Feel-ings. Things that you feel. Sadness. Happiness. Fear.
{ChangeSprite("Pandora", "pandora_pensive")}
~currentSpeaker = android
I have transmitters in my brain that tell me when which of these emotions should take precident. Much like how you have chemicals in yours.
{ChangeSprite("Lavender", "lavender_thinking")}
~currentSpeaker = snob
Hmm.
OK.
{ChangeSprite("Pandora", "pandora_happy")}
~currentSpeaker = android
Glad I cleared that up.
~currentSpeaker = snob
But like, are those real?
I mean it's like someone's telling you how to feel.
{ChangeSprite("Pandora", "pandora_confused")}
~currentSpeaker = android
Not really, just like an infant I started off with a basic blueprint, and then I started learning that certain inputs triggered certain responses and I thought about what to do with that information and my brain made connections. 
Then it used these emotions as a guideline to make me perform these specific tasks when I need to.
{ChangeSprite("Pandora", "pandora_happy")}
It's not an exact science of course.
...
Lavender?
{ChangeSprite("Lavender", "lavender_sad")}
~currentSpeaker = snob
Oh are you still talking?
{ChangeSprite("Pandora", "pandora_annoyed")}
~currentSpeaker = android
I think we're done here.
->pandora_questions
==l_questions_c==
//Cas gets questioned by Lavender
{ChangeSprite("Lavender", "lavender_normal")}
~currentSpeaker = snob
My go.
I'm choosing Cas.
~currentSpeaker = you
Dare.
{ChangeSprite("Lavender", "lavender_sad")}
~currentSpeaker = snob
You didn't even let me ask...
{ChangeSprite("Lavender", "lavender_serious")}
Whatever.
{ChangeSprite("Lavender", "lavender_mean")}
I dare you to tell me your deepest darkest secret.
~currentSpeaker = you
That's obviously cheating.
{ChangeSprite("Pandora", "pandora_mean")}
~currentSpeaker = android
I concur.
{ChangeSprite("Lavender", "lavender_angry")}
~currentSpeaker = snob
Fine.
{ChangeSprite("Lavender", "lavender_mean")}
I want you to...lift Pandora.
~currentSpeaker = you
Is that even possible?
{ChangeSprite("Lavender", "lavender_thinking")}
~currentSpeaker = snob
I don't know, it's up to you to figure that out.
~currentSpeaker = you
Pandora, can I lift you?
Like are you consenting?
And also is it physically possible? Like how much do you weigh.
{ChangeSprite("Pandora", "pandora_mean")}
~currentSpeaker = android
Didn't anyone tell you it's rude to ask a lady about her weight.
{ChangeSprite("Pandora", "pandora_normal")}
Also, I should weigh the same as an average human woman of the same stature as myself.
And I wouldn't mind you lifting me for the purpose of this game at least.
~currentSpeaker = you
That sounds promising.
Ok, get over here.
~currentSpeaker = android
Alright.
~characters-=pandora
...
Hey, be careful! You're going to damage my circuits.
~currentSpeaker = you
I'm being careful.
It's not like you're made of tissue paper.
~currentSpeaker = android
Ok put me down now.
PUT ME DOWN.
{ChangeSprite("Pandora", "pandora_sad")}
~characters+=pandora
{ChangeSprite("Kent", "kent_amused")}
~currentSpeaker = comic
Wow Pandora, are you ok?
{ChangeSprite("Tali", "tali_exasperated")}
~currentSpeaker = webdev
Oh dear.
{ChangeSprite("Lavender", "lavender_thinking")}
~currentSpeaker = snob
...
{ChangeSprite("Lavender", "lavender_serious")}
God you two are so pathetic.
~currentSpeaker = android
It's over now. I don't think I like being carried.
It makes me feel like a dog.
Also, I think I'm ticklish.
~currentSpeaker = you
Is that even possible?
->cas_questions

//Pandora questions
==p_questions_t==
//Tali gets questioned by Pandora
~currentSpeaker = android
Ok, so Tali
~currentSpeaker = webdev
Uhuh
~currentSpeaker = android
Truth or dare?
~currentSpeaker = webdev
Dare.
~currentSpeaker = android
I dare you to...
...
Pinch Lavender.
~currentSpeaker = snob
What?
OW!
~currentSpeaker = webdev
That was too easy.
~currentSpeaker = snob
That hurt!
~currentSpeaker = webdev
Sorry.
You can pinch me if you like.
~currentSpeaker = snob
I won't stoop to your level.
~currentSpeaker = webdev
It was a dare.
~currentSpeaker = snob
It's bullying.
~currentSpeaker = android
I'm sorry, I didn't realise the pinch would cause so much drama.
~currentSpeaker = comic
Oh come on now. That's a lie. You live for the drama Pandora.
~currentSpeaker = android
Hmph.
I don't like what you're insinuating.
->tali_questions
==p_questions_k==
//Kent gets questioned by Pandora
~currentSpeaker = android
Kent.
~currentSpeaker = comic
Ahah!
Dare.
Do your worst.
~currentSpeaker = android
Ok...
I dare you to fold the corner of a page of your favourite comic book.
~currentSpeaker = comic
What?!
Never.
~currentSpeaker = android
It's a dare.
You have to do it.
~currentSpeaker = comic
I can't damage a book.
~currentSpeaker = android
It's just a book.
Ok ok, how about folding the corner of your oldest most worn comic book.
~currentSpeaker = comic
You work in a bookstore. I was hoping you'd be more of a bibliophile.
~currentSpeaker = android
I didn't choose to work here.
And anyway, I'm not as sentimental as you.
~currentSpeaker = comic
Cold. Unfeeling.
~currentSpeaker = android
Just do it!
~currentSpeaker = comic
There. I did it. I folded the corner of the page.
It's ruined.
~currentSpeaker = android
You barely did anything.
Don't cry.
~currentSpeaker = comic
I make no promises.
->kent_questions
==p_questions_l==
//Lavender gets questioned by Pandora
~currentSpeaker = android
Lavender.
Truth or dare?
~currentSpeaker = snob
Truth.
~currentSpeaker = android
Ok, so.
I don't mean to offend you with this question.
I think you look quite lovely.
~currentSpeaker = snob
Oh. My. God.
Is the robot hitting on me?
~currentSpeaker = webdev
Just let her finish Lav.
~currentSpeaker = android
What I mean is just not to offend you.
I wanted to ask.
Why do you dress the way you do?
~currentSpeaker = snob
The way I do?
Oh you mean the lolita style.
Well, unlike what most people think it's not to draw attention to myself.
And it's not because I'm trying to make pedos like me or something.
Which is really gross. I hate when people try to make that argument.
~currentSpeaker = android
So why is it then?
~currentSpeaker = snob
I just like the style.
It's different, I feel like myself when I put on puffy skirts and pink bows.
I'm not trying to look sexy, or put together. I just look like myself.
~currentSpeaker = android
When did you start dressing like that?
~currentSpeaker = snob
Maybe around twenty two. I didn't start dressing exclusively like this until twenty four.
In school at around sixteen I started noticing guys looking at me differently, treating me differently and it made me uncomfortable.
I tried a lot of different styles, but it always felt like I was trying to be someone else. Someone mature and sophisticated. 
I'm not that person, I never will be. I'm just silly, and I want to dress silly. 
~currentSpeaker = android
I'm so glad for you. Thank you for sharing that with us.
~currentSpeaker = snob
Hold on a minute.
You asked two questions.
And you made me say a lot about my past.
You're trying to psychoanalyse me, aren't you?
~currentSpeaker = you
It's free therapy, take it while you can.
~currentSpeaker = snob
Wow I feel all warm and fuzzy inside.
~currentSpeaker = android
I wasn't actually trying to therapise you, I was just curious.
~currentSpeaker = snob
Sure. Sure you were.
I'm going to be
~currentSpeaker = android
Do you have any ideas about where your suspicion stems from?
~currentSpeaker = snob
Ha! I'm not falling for that one.
If you're going to therapise me, I'm going to have to pay you first.
~currentSpeaker = android
Well, I'm definitely not against that.
->lavender_questions
==p_questions_c==
//Cas gets questioned by Pandora
~currentSpeaker = android
I suppose I'll ask my lovely colleague.
Truth or dare?
~currentSpeaker = you
Dare.
~currentSpeaker = android
Uh hmm.
I know.
Let's switch places.
~currentSpeaker = you
Excuse me?
~currentSpeaker = android
You go to the front, I'll sit at the counter.
~currentSpeaker = you
You don't know how to work that thing.
~currentSpeaker = android
How hard can it be.
~currentSpeaker = you
I don't...I don't know.
~currentSpeaker = android
C'mon, it's a dare.
You have to do it.
~currentSpeaker = comic
I'm afraid she's right.
~currentSpeaker = snob
No backsies.
~currentSpeaker = webdev
How much damage can she do anyway?
~currentSpeaker = you
Fineee.
~characters+=cas
~characters-=pandora
~currentSpeaker = android
Oh my. This is nice.
{ChangeSprite("Cas", "cas_straight_look")}
~currentSpeaker = you
You're telling me you've never sat in that seat before?
~currentSpeaker = android
Never had a reason to.
How do I work this?
~currentSpeaker = you
No. Don't press that...
Oh whatever.
~currentSpeaker = android
Oooh did you hear the beep.
~currentSpeaker = you
It's giving me a headache.
Ok, I get it. I'm a control freak. Now can I have my counter back.
~currentSpeaker = android
No.
I like it here. 
I think I'll stay forever.
~currentSpeaker = you
Oh great.
~characters-=cas
~characters+=pandora
->cas_questions

//Tali questions
==t_questions_l==
//Lavender gets questioned by Tali
~currentSpeaker = webdev
Lavender.
Truth or dare?
~currentSpeaker = snob
Dare of course.
~currentSpeaker = webdev
This is tricky uh.
I dare you to...
Say something nice to Kent.
~currentSpeaker = snob
What?!
I can say nice things.
~currentSpeaker = webdev
Great, because that's part of the dare.
Can you say something nice to Kent?
Something nice about him remember.
~currentSpeaker = snob
Why him?
~currentSpeaker = comic
Because you hate me the most.
~currentSpeaker = snob
I don't hate anyone.
~currentSpeaker = comic
Could have fooled me.
~currentSpeaker = snob
You have nice penmanship.
~currentSpeaker = comic
How do you know that?
~currentSpeaker = snob
In one of your comics, you handwrote in a speech bubble and it was very neat.
~currentSpeaker = comic
Oooh you've seen my comics?
~currentSpeaker = snob
I read the news and I just happened to see it. I don't deliberately go out of my way to see YOUR work specifically.
~currentSpeaker = comic
Aww I have a fan.
~currentSpeaker = snob
Ok, this is enough.
Was this even technically a dare. It felt more like a truth.
~currentSpeaker = comic
So you admit my superior handwriting is the TRUTH.
~currentSpeaker = snob
Don't let it get to your head.
See what you've done now Tali.
~currentSpeaker = webdev
It's kind of cute.
~currentSpeaker = snob
It's not cute. It's dangerous. His head will grow twice as big and then no one will be able to fit in this room.
~currentSpeaker = webdev
Alright, I won't make you say anymore nice things to anyone today.
->lavender_questions
==t_questions_k==
//Kent gets questioned by Tali
~currentSpeaker = webdev
So Kent.
Truth or dare?
~currentSpeaker = comic
Uh truth?
~currentSpeaker = webdev
You sound unsure.
What do you like to do in your spare time, other than drawing?
~currentSpeaker = comic
Oh wow, that's a good question.
~currentSpeaker = webdev
Well, answer it before I give you something worse.
~currentSpeaker = comic
Since you have been so nice.
I go to the gym, but that's kind of boring.
I met a friend there, we kind of hit it off. She was annoyed that all the guys were hitting on her.
So I offered to fend them off and pretend to be her boyfriend so they'd leave her alone.
Anyway, she always said that she wanted to try different sports.
But she was too afraid because she's like REALLY shy.
As a hobby she always finds taster sessions of different sports activities we can try together.
We've tried tennis, golf, and even karate together.
~currentSpeaker = you
Do you ever stick to a sport once you try it out?
~currentSpeaker = comic
That's not the point.
We agreed we don't really have the time or focus to dedicate to one thing.
But we've always loved the idea of sports in general.
So we just go to these taster sessions and try it out to see if we like it.
Even if we don't enjoy it it's still fun.
~currentSpeaker = webdev
I can see the appeal.
~currentSpeaker = snob
That sounds like a waste of time. 
If you're going to do sports, stick to one and put in the effort to get good at it.
~currentSpeaker = comic
That's not the point. We don't want to get good at sports. We already go to the gym to get fit. We just want to try different activities in our spare time for fun.
~currentSpeaker = snob
You're right.
I don't get it.
~currentSpeaker = webdev
Would you mind if I tagged along for one session?
~currentSpeaker = comic
I could ask her.
I'm sure she'd be fine with it though.
Actually I think you two would get along very well. Might be a good idea.
~currentSpeaker = webdev
Aww thank you!
->kent_questions
==t_questions_p==
//Pandora gets questioned by Tali
~currentSpeaker = webdev
Pandora.
I'm choosing you.
Truth or dare?
~currentSpeaker = android
Truth.
~currentSpeaker = webdev
What would be your dream job?
~currentSpeaker = android
Working in this bookstore obviously.
~currentSpeaker = webdev
I asked for a truth.
~currentSpeaker = android
I kind of want to be in a band.
~currentSpeaker = webdev
Like a band of criminals?
~currentSpeaker = android
Haha. No, a music band.
Like Cobalt Dragon.
~currentSpeaker = webdev
I didn't know you made music.
~currentSpeaker = android
I don't.
But I wish I did.
I just never had the opportunity to.
~currentSpeaker = webdev
You could still do that.
~currentSpeaker = android
I don't think so.
No one wants an inorganic intelligence in their band.
~currentSpeaker = webdev
I bet some people would love an IOI in their band.
You're underselling yourself.
And you could learn music.
You have literally forever to do it.
~currentSpeaker = android
I'd have to get Ada's approval.
~currentSpeaker = comic
Uh fuck her man.
You do you.
~currentSpeaker = android
That's kind of illegal.
I can't get employment approval without her permission.
~currentSpeaker = comic
Oh yeah.
~currentSpeaker = snob
I know the number of a good piano teacher.
~currentSpeaker = android
Uh thank you.
I don't know.
~currentSpeaker = you
It's something to think about Pan.
~currentSpeaker = android
Yeah I guess so.
~currentSpeaker = you
If you really want it...maybe I could have a word with Ada when she comes back.
~currentSpeaker = android
I wouldn't want to get you in trouble.
I know you need this job to eat and have shelter.
~currentSpeaker = you
It's no big deal.
~currentSpeaker = webdev
Wow looks like you might have a music career after all.
->pandora_questions
==t_questions_c==
//Cas gets questioned by Tali
~currentSpeaker = webdev
Cas, truth or dare?
~currentSpeaker = you
Dare.
~currentSpeaker = webdev
Are you sure?
~currentSpeaker = you
I'm sure.
What's wrong with dare?
That's the game right?
~currentSpeaker = webdev
It's just...never mind.
Uh I don't know.
Hold your breath for a minute.
~currentSpeaker = you
Oh crap.
~currentSpeaker = webdev
What?
~currentSpeaker = you
Well, you wouldn't know this but...
I have a phobia of suffocating.
~currentSpeaker = webdev
Shit.
~currentSpeaker = you
If I try to hold my breath I might have a panic attack.
~currentSpeaker = webdev
I didn't know that. Sorry.
~currentSpeaker = you
It's fine.
~currentSpeaker = webdev
I don't know...can I dare you to drink this whole beer as fast as possible?
~currentSpeaker = you
Not a big beer person, but I can tolerate it.
~currentSpeaker = snob
Isn't the whole point of dares to make you uncomfortable?
You shouldn't be so fussy.
~currentSpeaker = you
Well I did say I'd drink the beer.
~currentSpeaker = comic
I'll open it for you.
Here.
~currentSpeaker = snob
Drink. Drink. Drink.
~currentSpeaker = webdev
Ok Lav, we get it.
~currentSpeaker = comic
Damn she's drinking really fast.
~currentSpeaker = android
I've never seen someone drink that fast.
~currentSpeaker = webdev 
Bet you were very popular at uni.
~currentSpeaker = comic
A bit unfair to take the piss while she can't argue with us.
~currentSpeaker = you
Finished.
I was not popular at uni.
I swear I wasn't a party animal.
Just an alcoholic.
->cas_questions

//Kent questions
==k_questions_t==
//Tali gets questioned by Kent
~currentSpeaker = comic
Tali darling.
It's your go.
~currentSpeaker = webdev
Can I have truth?
~currentSpeaker = comic
What's your favourite ice cream flavour?
~currentSpeaker = webdev
Oooh getting to the important stuff.
I love matcha flavour. 
~currentSpeaker = comic
I didn't even know they did that flavour.
~currentSpeaker = webdev
Lav and I have a place we love to go, it does speciality ice cream flavours only.
But good ones.
~currentSpeaker = comic
So no chocolate, strawberry, or vanilla?
~currentSpeaker = webdev
Oh no, well...
They do those flavours but it's always special.
So it ultra dark swiss chocolate mouse flavour with white chocolate sauce.
Or strawberry meringue and cream flavour.
Or spiced vanilla latte flavour.
You get the picture.
~currentSpeaker = comic
I'm a simple kind of ice cream guy.
~currentSpeaker = snob
Yeah, you're a very simple minded guy.
You wouldn't be able to appreciate the deep and complex flavours of CREAMICE.
~currentSpeaker = comic
That's an interesting name...
~currentSpeaker = webdev
Don't overthink it.
~currentSpeaker = comic
It's like ice cream but reverse.
Nothing to think about.
It's just a little strange.
~currentSpeaker = webdev
Well now you know.
Maybe you could visit some time.
~currentSpeaker = snob
Yeah right.
He wouldn't appreciate the subtle flavours of CREAMICE.
Plus I always get us a reservation so we can take our time choosing and that costs extra.
~currentSpeaker = comic
So I'm too poor to enjoy it. Thanks.
~currentSpeaker = webdev
Lav, don't say that.
~currentSpeaker = comic
No it's ok. It's nice to know, I don't want to waste my money anyway. 
->tali_questions
==k_questions_p==
//Pandora gets questioned by Kent
~currentSpeaker = comic
Pandoraaaa
~currentSpeaker = android
Kent?
~currentSpeaker = comic
Truth or dare?
~currentSpeaker = android
Truth I guess.
~currentSpeaker = comic
What's it like working with Cas everyday?
~currentSpeaker = you
Woah be careful now.
Are you trying to start a war?
~currentSpeaker = comic
No, I just want an insider perspective.
~currentSpeaker = android
Well honestly...
It's great!
She's my best friend.
I love when she walks in and I get to watch her work.
It's so facinating.
~currentSpeaker = comic
Uhuh
~currentSpeaker = android
She's really good with keeping the books in order.
Very tidy and neat.
And she's always checking up on me. So thoughtful.
~currentSpeaker = comic
Ok, ok.
No fights.
~currentSpeaker = android
No, never!
~currentSpeaker = comic
Would you agree, Cas?
~currentSpeaker = you
Hey! This is her turn, not mine.
~currentSpeaker = comic
Guessing the feeling isn't mutual then.
~currentSpeaker = android
What?!
~currentSpeaker = you
Stop it Kent. I know what you're doing.
I enjoy working with Pandora. Let's leave it there.
~currentSpeaker = android
Yes Kent. Stop trying to stir drama.
Cas might not be a woman of many words. But I know she enjoys being around me.
Well, if she says she does, it must be true.
~currentSpeaker = comic
Sure...
If you believe it, then I do.
->pandora_questions
==k_questions_l==
//Lavender gets questioned by Kent
~currentSpeaker = comic
So Lavender.
~currentSpeaker = snob
Truth.
~currentSpeaker = comic
Ok that was quick.
What's the weirdest project that you've worked on?
~currentSpeaker = snob
I design my own clothing lines.
But I once had to collaborate with a woman.
And she had some very strange ideas.
~currentSpeaker = comic
Socks and sandles strange?
~currentSpeaker = snob
She really liked mesh.
And she made all her clothes out of mesh.
But she didn't give the models a slip to wear or even nude coloured underwear.
~currentSpeaker = comic
...
~currentSpeaker = snob
It was very uncomfortable.
They were basically naked!
~currentSpeaker = comic
The models didn't complain?
~currentSpeaker = snob
I asked them and they said they were happy as long as they had a job.
Poor things.
~currentSpeaker = comic
Why did you even work with this client.
~currentSpeaker = snob
She was the daughter of one of my dad's friends.
It was kind of a favour to help her get into the industry.
She was more of one of those artsy types.
I just think that fashion should also have some practical value.
We clashed over that.
~currentSpeaker = comic
Is she still in the industry.
~currentSpeaker = snob
Kind of, she keeps working on her line of clothing. Her theme seems to be mostly clothes that cover everything other than the parts of the body that should be covered.
It's novelty stuff.
~currentSpeaker = comic
That doesn't sound great.
~currentSpeaker = snob
Her art isn't for everyone. I mean it certainly isn't for me.
I'm sure there's hundreds of more talented people who slip through everyday.
She just got in because of her connections.
I almost feel guilty.
But what can you do?
->lavender_questions
==k_questions_c==
//Cas gets questioned by Kent
~currentSpeaker = comic
Cas. Truth or--
~currentSpeaker = you
Dare. Dare.
~currentSpeaker = comic
Oh come on.
I get that you're really secretive.
But this is kind of unfair.
~currentSpeaker = you
Why is it unfair?
~currentSpeaker = comic
I want to get to know you.
And it feels like you're closing yourself off.
~currentSpeaker = you
Dare is fun.
~currentSpeaker = comic
If you choose truth I'll go easy on you. If you insist on dare I'll choose something like licking the toilet seat.
~currentSpeaker = snob
EWWWW
~currentSpeaker = comic
Would you like that Cas?
~currentSpeaker = you
...I might be able to lick a seat.
~currentSpeaker = snob
If you choose licking a toilet I swear next thing you know I will be throwing up in in.
~currentSpeaker = android
And I will have to clean that.
~currentSpeaker = webdev
And I will have to watch.
Please pick truth.
~currentSpeaker = you
Fine. 
Only because Tali asked nicely.
~currentSpeaker = comic
Did you have any childhood friends?
~currentSpeaker = you
I didn't have many friends growing up or much. In fact my closest companion was this lady who lived in the appartment next to us.
Her husband was long dead, and she didn't have kids.
~currentSpeaker = comic
Aww. Did you use to bake cookies together?
~currentSpeaker = you
No.
She taught me how to hack computers.
~currentSpeaker = comic
What?!
~currentSpeaker = you
Well her and her husband used to work for this tech company and they were ethical hackers. And she used to give computer literacy lessons when she retired.
But she taught me for free just because she liked me.
~currentSpeaker = comic
You didn't have any friends your own age.
~currentSpeaker = you
I don't know.
I had people who I sat an ate with at lunch sure.
But I didn't really talk to them much.
They liked kids TV shows, and I was never really a TV person.
I prefered books and games and stuff like that.
~currentSpeaker = comic
You really were destined to work in a bookshop.
~currentSpeaker = you
Aye, that is true.

->cas_questions


==end_scenario==
~currentSpeaker = you
I think we can stop now.
Everyone's been questioned.
->start_incident