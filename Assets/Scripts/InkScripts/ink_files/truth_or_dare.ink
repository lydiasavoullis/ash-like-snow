LIST TDNames = (P), (K), (T), (L), (C)
VAR name = C
==start_truth_or_dare==
~music="Truth and dare"
~characters+=kent
~characters+=tali
~characters+=pandora
~characters+=lavender
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
~currentSpeaker = snob
The quality of your work is debatable.
{ChangeSprite("Kent", "kent_upset")}
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
{ChangeSprite("Pandora", "pandora_annoyed")}
~currentSpeaker = android
It's over now. I don't think I like being carried.
{ChangeSprite("Pandora", "pandora_sad")}
It makes me feel like a dog.
Also, I think I'm ticklish.
~currentSpeaker = you
Is that even possible?
->cas_questions

//Pandora questions
==p_questions_t==
//Tali gets questioned by Pandora
{ChangeSprite("Pandora", "pandora_normal")}
~currentSpeaker = android
Ok, so Tali
{ChangeSprite("Tali", "tali_serious")}
~currentSpeaker = webdev
Uhuh
~currentSpeaker = android
Truth or dare?
{ChangeSprite("Tali", "tali_smirk")}
~currentSpeaker = webdev
Dare.
{ChangeSprite("Pandora", "pandora_pensive")}
~currentSpeaker = android
I dare you to...
...
{ChangeSprite("Pandora", "pandora_mean")}
Pinch Lavender.
{ChangeSprite("Lavender", "lavender_shocked")}
~currentSpeaker = snob
What?
{ChangeSprite("Lavender", "lavender_crying")}
OW!
{ChangeSprite("Tali", "tali_happy")}
~currentSpeaker = webdev
That was too easy.
{ChangeSprite("Lavender", "lavender_angry")}
~currentSpeaker = snob
That hurt!
{ChangeSprite("Tali", "tali_sad")}
~currentSpeaker = webdev
Sorry.
{ChangeSprite("Tali", "tali_talking_side")}
You can pinch me if you like.
{ChangeSprite("Lavender", "lavender_sad")}
~currentSpeaker = snob
I won't stoop to your level.
{ChangeSprite("Pandora", "pandora_confused")}
~currentSpeaker = android
I'm sorry, I didn't realise the pinch would cause so much drama.
{ChangeSprite("Kent", "kent_amused")}
~currentSpeaker = comic
Oh come on now. That's a lie. You did this on purpose.
{ChangeSprite("Pandora", "pandora_annoyed")}
~currentSpeaker = android
Hmph.
I don't like what you're insinuating.
->tali_questions
==p_questions_k==
//Kent gets questioned by Pandora
{ChangeSprite("Pandora", "pandora_normal")}
~currentSpeaker = android
Kent.
{ChangeSprite("Kent", "kent_happy")}
~currentSpeaker = comic
Ahah!
Dare.
Do your worst.
{ChangeSprite("Pandora", "pandora_mean")}
~currentSpeaker = android
Ok...
I dare you to fold the corner of a page of your favourite comic book.
{ChangeSprite("Kent", "kent_shocked")}
~currentSpeaker = comic
What?!
{ChangeSprite("Kent", "kent_upset")}
Never.
{ChangeSprite("Pandora", "pandora_happy")}
~currentSpeaker = android
It's a dare.
You have to do it.
{ChangeSprite("Kent", "kent_sad")}
~currentSpeaker = comic
{ChangeSprite("Pandora", "pandora_mean")}
I can't damage a book.
~currentSpeaker = android
It's just a book.
Ok ok, how about folding the corner of your oldest most worn comic book.
~currentSpeaker = comic
You work in a bookstore. I was hoping you'd be more of a bibliophile.
{ChangeSprite("Pandora", "pandora_normal")}
~currentSpeaker = android
I didn't choose to work here.
And anyway, I'm not as sentimental as you.
~currentSpeaker = comic
Cold. Unfeeling.
{ChangeSprite("Pandora", "pandora_annoyed")}
~currentSpeaker = android
Just do it!
~currentSpeaker = comic
There. I did it. I folded the corner of the page.
{ChangeSprite("Kent", "kent_upset")}
It's ruined.
{ChangeSprite("Pandora", "pandora_normal")}
~currentSpeaker = android
You barely did anything.
Don't cry.
{ChangeSprite("Kent", "kent_sad")}
~currentSpeaker = comic
I make no promises.
->kent_questions
==p_questions_l==
//Lavender gets questioned by Pandora
{ChangeSprite("Pandora", "pandora_normal")}
~currentSpeaker = android
Lavender.
Truth or dare?
{ChangeSprite("Lavender", "lavender_thinking")}
~currentSpeaker = snob
Truth.
{ChangeSprite("Pandora", "pandora_pensive")}
~currentSpeaker = android
Ok, so.
I don't mean to offend you with this question.
I think you look very nice.
{ChangeSprite("Lavender", "lavender_shocked")}
~currentSpeaker = snob
Oh. My. God.
{ChangeSprite("Lavender", "lavender_sad")}
Is the robot hitting on me?
{ChangeSprite("Tali", "tali_serious")}
~currentSpeaker = webdev
Just let her finish.
{ChangeSprite("Pandora", "pandora_sad")}
~currentSpeaker = android
What I mean is just not to offend you.
{ChangeSprite("Pandora", "pandora_normal")}
I wanted to ask.
Why do you dress the way you do?
{ChangeSprite("Lavender", "lavender_thinking")}
~currentSpeaker = snob
The way I do?
{ChangeSprite("Lavender", "lavender_happy")}
Oh you mean the lolita style.
{ChangeSprite("Lavender", "lavender_thinking")}
Well, unlike what most people think it's not to draw attention to myself.
{ChangeSprite("Lavender", "lavender_sad")}
And it's not because I'm trying to make pedos like me or something.
{ChangeSprite("Lavender", "lavender_angry")}
Which is really gross. I hate when people try to make that argument.
~currentSpeaker = android
So why is it then?
{ChangeSprite("Lavender", "lavender_happy")}
~currentSpeaker = snob
I just like the style.
It's different, I feel like myself when I put on puffy skirts and pink bows.
I'm not trying to look sexy, or put together. I just look like myself.
~currentSpeaker = android
When did you start dressing like that?
{ChangeSprite("Lavender", "lavender_thinking")}
~currentSpeaker = snob
Maybe around twenty two. I didn't start dressing exclusively like this until twenty four.
In school at around sixteen I started noticing guys looking at me differently, treating me differently and it made me uncomfortable.
I tried a lot of different styles, but it always felt like I was trying to be someone else. Someone mature and sophisticated. 
{ChangeSprite("Lavender", "lavender_happy")}
I'm not that person, I never will be. I'm just silly, and I want to dress silly.
{ChangeSprite("Pandora", "pandora_happy")}
~currentSpeaker = android
I'm so glad for you. Thank you for sharing that with us.
{ChangeSprite("Lavender", "lavender_thinking")}
~currentSpeaker = snob
Hold on a minute.
You asked two questions.
And you made me say a lot about my past.
{ChangeSprite("Lavender", "lavender_angry")}
You're trying to psychoanalyse me, aren't you?
~currentSpeaker = you
It's free therapy, take it while you can.
{ChangeSprite("Lavender", "lavender_sad")}
~currentSpeaker = snob
Wow I feel all warm and fuzzy inside.
{ChangeSprite("Pandora", "pandora_mean")}
~currentSpeaker = android
I wasn't actually trying to therapise you, I was just curious.
{ChangeSprite("Lavender", "lavender_angry")}
~currentSpeaker = snob
Sure. Sure you were.
~currentSpeaker = android
Do you have any ideas about where your suspicion stems from?
{ChangeSprite("Lavender", "lavender_serious")}
~currentSpeaker = snob
Ha! I'm not falling for that one.
If you're going to therapise me, I'm going to have to pay you first.
{ChangeSprite("Pandora", "pandora_happy")}
~currentSpeaker = android
Well, I'm definitely not against that.
->lavender_questions
==p_questions_c==
//Cas gets questioned by Pandora
{ChangeSprite("Pandora", "pandora_normal")}
~currentSpeaker = android
I suppose I'll ask my lovely colleague.
Truth or dare?
~currentSpeaker = you
Dare.
{ChangeSprite("Pandora", "pandora_pensive")}
~currentSpeaker = android
Uh hmm.
{ChangeSprite("Pandora", "pandora_happy")}
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
{ChangeSprite("Pandora", "pandora_annoyed")}
~currentSpeaker = android
C'mon, it's a dare.
{ChangeSprite("Pandora", "pandora_normal")}
You have to do it.
{ChangeSprite("Kent", "kent_amused")}
~currentSpeaker = comic
I'm afraid she's right.
{ChangeSprite("Lavender", "lavender_angry")}
~currentSpeaker = snob
No backsies.
{ChangeSprite("Tali", "tali_talking_side")}
~currentSpeaker = webdev
How much damage can she do anyway?
~currentSpeaker = you
Fine.
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
{ChangeSprite("Cas", "cas_annoyed")}
~currentSpeaker = you
No. Don't press that...
{ChangeSprite("Cas", "cas_straight_look")}
Oh whatever.
~currentSpeaker = android
Oooh did you hear the beep.
{ChangeSprite("Cas", "cas_annoyed")}
~currentSpeaker = you
It's giving me a headache.
{ChangeSprite("Cas", "cas_straight_look")}
Ok, I get it. I'm a control freak. Now can I have my counter back.
~currentSpeaker = android
No.
I like it here. 
I think I'll stay forever.
{ChangeSprite("Cas", "cas_annoyed")}
~currentSpeaker = you
Oh great.
~characters-=cas
~characters+=pandora
->cas_questions

//Tali questions
==t_questions_l==
//Lavender gets questioned by Tali
{ChangeSprite("Tali", "tali_normal")}
~currentSpeaker = webdev
Lavender.
Truth or dare?
{ChangeSprite("Lavender", "lavender_serious")}
~currentSpeaker = snob
Dare of course.
{ChangeSprite("Tali", "tali_serious")}
~currentSpeaker = webdev
This is tricky uh.
{ChangeSprite("Tali", "tali_talking_side")}
I dare you to...
{ChangeSprite("Tali", "tali_smirk")}
Say something nice to Kent.
{ChangeSprite("Lavender", "lavender_shocked")}
~currentSpeaker = snob
What?!
{ChangeSprite("Lavender", "lavender_angry")}
I can say nice things.
~currentSpeaker = webdev
Great, because that's part of the dare.
Can you say something nice to Kent?
Something nice about him remember.
{ChangeSprite("Lavender", "lavender_thinking")}
~currentSpeaker = snob
Why him?
{ChangeSprite("Kent", "kent_amused")}
~currentSpeaker = comic
Because you hate me the most.
{ChangeSprite("Lavender", "lavender_angry")}
~currentSpeaker = snob
I don't hate anyone.
~currentSpeaker = comic
Could have fooled me.
{ChangeSprite("Lavender", "lavender_thinking")}
~currentSpeaker = snob
You have nice penmanship.
{ChangeSprite("Kent", "kent_side_normal")}
~currentSpeaker = comic
How do you know that?
~currentSpeaker = snob
In one of your comics, you handwrote in a speech bubble and it was very neat.
{ChangeSprite("Kent", "kent_happy")}
~currentSpeaker = comic
Oooh you've seen my comics?
{ChangeSprite("Lavender", "lavender_angry")}
~currentSpeaker = snob
I read the news and I just happened to see it. I don't deliberately go out of my way to see YOUR work specifically.
{ChangeSprite("Kent", "kent_amused")}
~currentSpeaker = comic
Aww I have a fan.
{ChangeSprite("Lavender", "lavender_sad")}
~currentSpeaker = snob
Ok, this is enough.
{ChangeSprite("Lavender", "lavender_thinking")}
Was this even technically a dare. It felt more like a truth.
{ChangeSprite("Kent", "kent_happy")}
~currentSpeaker = comic
So you admit my superior handwriting is the TRUTH.
{ChangeSprite("Lavender", "lavender_angry")}
~currentSpeaker = snob
Don't let it get to your head.
See what you've done now Tali.
{ChangeSprite("Tali", "tali_talking_side")}
~currentSpeaker = webdev
It's kind of cute.
{ChangeSprite("Lavender", "lavender_thinking")}
~currentSpeaker = snob
It's not cute. It's dangerous. His head will grow twice as big and then no one will be able to fit in this room.
{ChangeSprite("Tali", "tali_smirk")}
~currentSpeaker = webdev
Alright, I won't make you say anymore nice things to anyone today.
->lavender_questions
==t_questions_k==
//Kent gets questioned by Tali
{ChangeSprite("Tali", "tali_smirk")}
~currentSpeaker = webdev
So Kent.
Truth or dare?
{ChangeSprite("Kent", "kent_amused")}
~currentSpeaker = comic
Uh truth?
{ChangeSprite("Tali", "tali_talking_forward")}
~currentSpeaker = webdev
You sound unsure.
What do you like to do in your spare time, other than drawing?
{ChangeSprite("Kent", "kent_normal")}
~currentSpeaker = comic
Oh wow, that's a good question.
{ChangeSprite("Tali", "tali_serious")}
~currentSpeaker = webdev
Well, answer it before I give you something worse.
{ChangeSprite("Kent", "kent_happy")}
~currentSpeaker = comic
Since you have been so nice.
I do go to the gym, but that's kind of boring. I met a friend there one day and we kind of hit it off. 
{ChangeSprite("Kent", "kent_upset")}
She was annoyed that all the guys were hitting on her.
{ChangeSprite("Kent", "kent_normal")}
So I offered to fend them off and pretend to be her boyfriend so they'd leave her alone.
Anyway, she always said that she wanted to try different sports.
{ChangeSprite("Kent", "kent_side_normal")}
But she was too afraid because she's like REALLY shy.
As a hobby she always finds taster sessions of different sports activities we can try together.
{ChangeSprite("Kent", "kent_happy")}
We've tried tennis, golf, and even karate together.
~currentSpeaker = you
Do you ever stick to a sport once you try it out?
{ChangeSprite("Kent", "kent_normal")}
~currentSpeaker = comic
That's not the point.
We agreed we don't really have the time or focus to dedicate to one thing.
But we've always loved the idea of sports in general.
So we just go to these taster sessions and try it out to see if we like it.
Even if we don't enjoy it it's still fun.
{ChangeSprite("Tali", "tali_talking_side")}
~currentSpeaker = webdev
I can see the appeal.
{ChangeSprite("Lavender", "lavender_angry")}
~currentSpeaker = snob
That sounds like a waste of time. 
If you're going to do something, stick to one and put in the effort to get good at it.
{ChangeSprite("Kent", "kent_upset")}
~currentSpeaker = comic
That's not the point. We don't want to get good at sports. We already go to the gym to get fit. We just want to try different activities in our spare time for fun.
{ChangeSprite("Lavender", "lavender_thinking")}
~currentSpeaker = snob
You're right.
{ChangeSprite("Lavender", "lavender_sad")}
I don't get it.
{ChangeSprite("Tali", "tali_happy")}
~currentSpeaker = webdev
That sounds like a really fun idea.
{ChangeSprite("Kent", "kent_normal")}
~currentSpeaker = comic
I could open an invite if you want to join {webdev}?
{ChangeSprite("Tali", "tali_happy_closed")}
~currentSpeaker = webdev
Aww thank you!
->kent_questions
==t_questions_p==
//Pandora gets questioned by Tali
{ChangeSprite("Tali", "tali_normal")}
~currentSpeaker = webdev
Pandora.
I'm choosing you.
Truth or dare?
{ChangeSprite("Pandora", "pandora_normal")}
~currentSpeaker = android
Truth.
~currentSpeaker = webdev
What would be your dream job?
{ChangeSprite("Pandora", "pandora_happy")}
~currentSpeaker = android
Working in this bookstore obviously.
{ChangeSprite("Tali", "tali_serious")}
~currentSpeaker = webdev
I asked for a truth.
{ChangeSprite("Pandora", "pandora_pensive")}
~currentSpeaker = android
I kind of want to be in a band.
{ChangeSprite("Tali", "tali_smirk")}
~currentSpeaker = webdev
Like a band of criminals?
{ChangeSprite("Pandora", "pandora_happy")}
~currentSpeaker = android
Haha. No, a music band.
{ChangeSprite("Pandora", "pandora_mean")}
Like Cobalt Dragon.
{ChangeSprite("Tali", "tali_talking_side")}
~currentSpeaker = webdev
I didn't know you made music.
{ChangeSprite("Pandora", "pandora_sad")}
~currentSpeaker = android
I don't.
But I wish I did.
I just never had the opportunity to.
{ChangeSprite("Tali", "tali_talking_forward")}
~currentSpeaker = webdev
You could still do that.
~currentSpeaker = android
I don't think so.
No one wants an IOI in their band.
{ChangeSprite("Tali", "tali_talking_side")}
~currentSpeaker = webdev
I bet some people would love an IOI in their band.
You're underselling yourself.
{ChangeSprite("Tali", "tali_talking_forward")}
And you could learn music.
You have literally forever to do it.
~currentSpeaker = android
I'd have to get Ada's approval.
{ChangeSprite("Kent", "kent_upset")}
~currentSpeaker = comic
Tell her to fuck off.
You do you.
{ChangeSprite("Pandora", "pandora_annoyed")}
~currentSpeaker = android
That's kind of illegal.
I can't get employment approval without her permission.
{ChangeSprite("Kent", "kent_sad")}
~currentSpeaker = comic
Oh yeah.
{ChangeSprite("Lavender", "lavender_thinking")}
~currentSpeaker = snob
I know the number of a good piano teacher.
{ChangeSprite("Pandora", "pandora_confused")}
~currentSpeaker = android
Uh thank you.
I don't know.
~currentSpeaker = you
It's something to think about Pan.
{ChangeSprite("Pandora", "pandora_pensive")}
~currentSpeaker = android
Yeah I guess so.
~currentSpeaker = you
If you really want it...maybe I could have a word with Ada when she comes back.
{ChangeSprite("Pandora", "pandora_sad")}
~currentSpeaker = android
I wouldn't want to get you in trouble.
I know you need this job to eat and have shelter.
~currentSpeaker = you
It's no big deal.
{ChangeSprite("Tali", "tali_happy")}
~currentSpeaker = webdev
You can do anything if you put your mind to it.
{ChangeSprite("Pandora", "pandora_happy")}
~currentSpeaker = android
I hope you're right.
->pandora_questions
==t_questions_c==
//Cas gets questioned by Tali
{ChangeSprite("Tali", "tali_normal")}
~currentSpeaker = webdev
Cas, truth or dare?
~currentSpeaker = you
Dare.
{ChangeSprite("Tali", "tali_serious")}
~currentSpeaker = webdev
Are you sure?
~currentSpeaker = you
I'm sure.
What's wrong with dare?
That's the game right?
{ChangeSprite("Tali", "tali_exasperated")}
~currentSpeaker = webdev
It's just...never mind.
{ChangeSprite("Tali", "tali_serious")}
Uh I don't know.
{ChangeSprite("Tali", "tali_smirk")}
Hold your breath for 30 seconds.
~currentSpeaker = you
Oh crap.
{ChangeSprite("Tali", "tali_serious")}
~currentSpeaker = webdev
What?
~currentSpeaker = you
Well, you wouldn't know this but...
I have a phobia of suffocating.
{ChangeSprite("Tali", "tali_upset")}
~currentSpeaker = webdev
Shit.
~currentSpeaker = you
If I try to hold my breath I might have a panic attack.
{ChangeSprite("Tali", "tali_sad")}
~currentSpeaker = webdev
I didn't know that. Sorry.
~currentSpeaker = you
It's fine.
~currentSpeaker = webdev
I don't know...can I dare you to drink this whole beer as fast as possible?
~currentSpeaker = you
Not a big beer person, but I can tolerate it.
{ChangeSprite("Lavender", "lavender_thinking")}
~currentSpeaker = snob
Isn't the whole point of dares to make you uncomfortable?
{ChangeSprite("Lavender", "lavender_angry")}
You shouldn't be so fussy.
~currentSpeaker = you
Well I did say I'd drink the beer.
{ChangeSprite("Kent", "kent_normal")}
~currentSpeaker = comic
I'll open it for you.
Here.
{ChangeSprite("Lavender", "lavender_serious")}
~currentSpeaker = snob
Drink. Drink. Drink.
{ChangeSprite("Tali", "tali_exasperated")}
~currentSpeaker = webdev
Ok {snob}, we get it.
{ChangeSprite("Kent", "kent_amused")}
~currentSpeaker = comic
Damn she's drinking really fast.
{ChangeSprite("Pandora", "pandora_mean")}
~currentSpeaker = android
I've never seen someone drink that fast.
{ChangeSprite("Tali", "tali_smirk")}
~currentSpeaker = webdev 
Someone had fun at uni.
~currentSpeaker = comic
A bit unfair to take the piss while she can't argue with us.
~currentSpeaker = you
Finished.
I did NOT have fun at uni.
I swear I wasn't a party animal.
Just an alcoholic.
->cas_questions
//Kent questions
==k_questions_t==
//Tali gets questioned by Kent
{ChangeSprite("Kent", "kent_amused")}
~currentSpeaker = comic
Tali.
It's your go.
{ChangeSprite("Tali", "tali_talking_side")}
~currentSpeaker = webdev
Can I have truth?
~currentSpeaker = comic
What's your favourite ice cream flavour?
{ChangeSprite("Tali", "tali_smirk")}
~currentSpeaker = webdev
Oooh getting to the important stuff.
{ChangeSprite("Tali", "tali_happy_closed")}
I love matcha flavour. 
{ChangeSprite("Kent", "kent_side_normal")}
~currentSpeaker = comic
I didn't even know they did that flavour.
{ChangeSprite("Tali", "tali_happy")}
~currentSpeaker = webdev
{snob} and I have a place we love to go, it does speciality ice cream flavours only.
But good ones.
{ChangeSprite("Kent", "kent_amused")}
~currentSpeaker = comic
So no chocolate, strawberry, or vanilla?
{ChangeSprite("Tali", "tali_talking_side")}
~currentSpeaker = webdev
Oh no, well...
They do those flavours but it's always special.
So it ultra dark swiss chocolate mouse flavour with white chocolate sauce.
Or strawberry meringue and cream flavour.
Or spiced vanilla latte flavour.
{ChangeSprite("Tali", "tali_talking_forward")}
You get the picture.
{ChangeSprite("Kent", "kent_normal")}
~currentSpeaker = comic
I'm a simple kind of ice cream guy.
{ChangeSprite("Lavender", "lavender_serious")}
~currentSpeaker = snob
Yeah, you're a very simple minded guy.
You wouldn't be able to appreciate the deep and complex flavours of CREAMICE™.
{ChangeSprite("Kent", "kent_side_normal")}
~currentSpeaker = comic
Oh, it's like ice cream but reverse.
How revolutionary.
{ChangeSprite("Tali", "tali_happy")}
~currentSpeaker = webdev
Well now you know.
Maybe you could visit some time.
{ChangeSprite("Lavender", "lavender_angry")}
~currentSpeaker = snob
Yeah right.
{ChangeSprite("Lavender", "lavender_serious")}
He wouldn't appreciate the subtle flavours of CREAMICE™.
{ChangeSprite("Lavender", "lavender_thinking")}
Plus I always get us a reservation so we can take our time choosing and that costs extra.
{ChangeSprite("Kent", "kent_upset")}
~currentSpeaker = comic
I think I'll pass anyway.
{ChangeSprite("Lavender", "lavender_angry")}
~currentSpeaker = snob
Oh so you're too good to eat ice cream with us?
~currentSpeaker = comic
No, I just don't want to waste my money. 
{ChangeSprite("Kent", "kent_normal")}
{ChangeSprite("Lavender", "lavender_normal")}
->tali_questions
==k_questions_p==
//Pandora gets questioned by Kent
{ChangeSprite("Kent", "kent_happy")}
~currentSpeaker = comic
Pandora. Pandora. Pandora.
{ChangeSprite("Pandora", "pandora_confused")}
~currentSpeaker = android
Kent?
~currentSpeaker = comic
Truth or dare?
{ChangeSprite("Pandora", "pandora_normal")}
~currentSpeaker = android
Truth I guess.
{ChangeSprite("Kent", "kent_side_normal")}
~currentSpeaker = comic
What's it like working with Cas everyday?
~currentSpeaker = you
Woah be careful now.
Are you trying to start a war?
{ChangeSprite("Kent", "kent_normal")}
~currentSpeaker = comic
No, I just want an insider perspective.
{ChangeSprite("Pandora", "pandora_mean")}
~currentSpeaker = android
Well honestly...
{ChangeSprite("Pandora", "pandora_happy")}
It's great!
She's my best friend.
I love when she walks in and I get to watch her work.
It's so facinating.
{ChangeSprite("Kent", "kent_side_normal")}
~currentSpeaker = comic
Uhuh
~currentSpeaker = android
She's really good with keeping the books in order.
Very tidy and neat.
And she's always checking up on me. So thoughtful.
{ChangeSprite("Kent", "kent_amused")}
~currentSpeaker = comic
Ok, ok.
No fights.
{ChangeSprite("Pandora", "pandora_annoyed")}
~currentSpeaker = android
No, never!
~currentSpeaker = comic
Would you agree, Cas?
~currentSpeaker = you
Hey! This is her turn, not mine.
~currentSpeaker = comic
Guessing the feeling isn't mutual then.
{ChangeSprite("Pandora", "pandora_shocked")}
~currentSpeaker = android
What?!
~currentSpeaker = you
Stop it Kent. I know what you're doing.
I enjoy working with Pandora. Let's leave it there.
{ChangeSprite("Pandora", "pandora_annoyed")}
~currentSpeaker = android
Yes Kent. Stop trying to stir drama.
Cas might not be a woman of many words. But I know she enjoys being around me.
{ChangeSprite("Pandora", "pandora_pensive")}
Well, if she says she does, it must be true.
{ChangeSprite("Kent", "kent_normal")}
~currentSpeaker = comic
Sure...
If you believe it, then I do.
->pandora_questions
==k_questions_l==
//Lavender gets questioned by Kent
{ChangeSprite("Kent", "kent_normal")}
~currentSpeaker = comic
So Lavender.
{ChangeSprite("Lavender", "lavender_sad")}
~currentSpeaker = snob
Truth.
{ChangeSprite("Kent", "kent_amused")}
~currentSpeaker = comic
Ok that was quick.
What's the weirdest project that you've worked on?
{ChangeSprite("Lavender", "lavender_thinking")}
~currentSpeaker = snob
I design my own clothing lines.
But I once had to collaborate with a woman.
And she was into some...experimental stuff.
~currentSpeaker = comic
Socks and sandles strange?
~currentSpeaker = snob
She really liked mesh.
And she made all her clothes out of mesh.
{ChangeSprite("Lavender", "lavender_angry")}
But she didn't give the models a slip to wear or even nude coloured underwear.
{ChangeSprite("Kent", "kent_sad")}
~currentSpeaker = comic
...
~currentSpeaker = snob
It was very uncomfortable.
They were basically naked!
{ChangeSprite("Kent", "kent_side_normal")}
~currentSpeaker = comic
The models didn't complain?
{ChangeSprite("Lavender", "lavender_thinking")}
~currentSpeaker = snob
I asked them and they said they were happy as long as they had a job.
{ChangeSprite("Kent", "kent_upset")}
~currentSpeaker = comic
Why did you even work with this woman?
{ChangeSprite("Lavender", "lavender_sad")}
~currentSpeaker = snob
She was the daughter of one of my dad's friends.
It was kind of a favour to help her get into the industry.
She was more of one of those artsy types.
{ChangeSprite("Lavender", "lavender_thinking")}
I just think that fashion should also have some practical value.
We clashed over that.
{ChangeSprite("Kent", "kent_side_normal")}
~currentSpeaker = comic
Is she still in the industry.
{ChangeSprite("Lavender", "lavender_sad")}
~currentSpeaker = snob
Kind of, she keeps working on her own lines of clothing. Her theme seems to be mostly clothes that cover everything other than the parts of the body that should be covered.
{ChangeSprite("Kent", "kent_amused")}
~currentSpeaker = comic
That sounds pretty stupid.
{ChangeSprite("Lavender", "lavender_thinking")}
~currentSpeaker = snob
Her art isn't for everyone. I mean it certainly isn't for me.
I'm sure there's hundreds of more talented people who slip through everyday.
She just got in because of her connections.
I almost feel guilty.
But what can you do?
~currentSpeaker = comic
Haha it's funny we just had a civil conversation.
{ChangeSprite("Lavender", "lavender_serious")}
~currentSpeaker = snob
I'm suprised you're capable of it.
{ChangeSprite("Kent", "kent_upset")}
~currentSpeaker = comic
Moving on.
{ChangeSprite("Kent", "kent_normal")}
{ChangeSprite("Lavender", "lavender_normal")}
->lavender_questions
==k_questions_c==
//Cas gets questioned by Kent
{ChangeSprite("Kent", "kent_normal")}
~currentSpeaker = comic
Cas. Truth or--
~currentSpeaker = you
Dare. Dare.
{ChangeSprite("Kent", "kent_upset")}
~currentSpeaker = comic
Oh come on.
I get that you're really secretive.
But this is kind of unfair.
~currentSpeaker = you
Why is it unfair?
{ChangeSprite("Kent", "kent_side_normal")}
~currentSpeaker = comic
I want to get to know you.
And it feels like you're closing yourself off.
~currentSpeaker = you
Dare is fun.
{ChangeSprite("Kent", "kent_amused")}
~currentSpeaker = comic
If you choose truth I'll go easy on you. If you insist on dare I'll choose something like licking the toilet seat.
{ChangeSprite("Lavender", "lavender_shocked")}
~currentSpeaker = snob
EWWWW!
~currentSpeaker = comic
Would you like that Cas?
~currentSpeaker = you
...I might be able to lick a seat.
{ChangeSprite("Lavender", "lavender_angry")}
~currentSpeaker = snob
If you choose licking a toilet I swear next thing you know I will be throwing up in it.
{ChangeSprite("Pandora", "pandora_sad")}
~currentSpeaker = android
And I will have to clean that.
{ChangeSprite("Tali", "tali_serious")}
~currentSpeaker = webdev
And I will have to watch.
{ChangeSprite("Tali", "tali_smirk")}
Please pick truth.
~currentSpeaker = you
Fine. 
Only because Tali asked nicely.
{ChangeSprite("Kent", "kent_normal")}
~currentSpeaker = comic
Did you have any childhood friends?
~currentSpeaker = you
I didn't have many friends growing up or much. In fact my closest companion was this lady who lived in the appartment next to us.
Her husband was dead, and she didn't have kids.
{ChangeSprite("Kent", "kent_happy")}
~currentSpeaker = comic
Aww.
~currentSpeaker = you
She taught me how to hack computers.
{ChangeSprite("Kent", "kent_shocked")}
~currentSpeaker = comic
What?!
~currentSpeaker = you
Well she used to work for this tech company. And she used to give computer literacy lessons when she retired.
But she taught me for free just because she liked me.
{ChangeSprite("Kent", "kent_sad")}
~currentSpeaker = comic
You didn't have any friends your own age.
~currentSpeaker = you
I don't know.
I had people who I sat an ate with at lunch sure.
But I didn't really talk to them much.
We were never really interested in the same stuff.
I prefered reading on my own.
{ChangeSprite("Kent", "kent_amused")}
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