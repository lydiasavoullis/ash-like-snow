LIST TDNames = (P), (K), (T), (L), (C)
VAR name = C
->start
==start==
Who are you going to chose?
*[P]
Pandora gets questioned by Cas
->pandora_questions
*[K]
Kent gets questioned by Cas
->kent_questions
*[T]
Tali gets questioned by Cas
->tali_questions
*[L]
Lavender gets questioned by Cas
->lavender_questions

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
~currentSpeaker = webdev
Truth.
~currentSpeaker = you
Uhh...
What did you want to be when you were younger?
~currentSpeaker = webdev
I wanted to be an artist. 
~currentSpeaker = you
Really?
~currentSpeaker = webdev
Does that surprise you?
~currentSpeaker = you
Not really.
Why didn't you?
~currentSpeaker = webdev
I think I have become an artist in a way, I create beautiful webpages.
That's a kind of art.
Yes?
~currentSpeaker = you
You know what, yes it totally is.
~currentSpeaker = webdev
I paint digitally sometimes.
~currentSpeaker = you
I wish I could see your art.
~currentSpeaker = comic
Me too!
~currentSpeaker = webdev 
It's not that good. 
~currentSpeaker = you
Lavender, have you seen her art?
~currentSpeaker = snob
...
I never have actually.
Not since secondary school.
Even then she was so secretive, always guarding her sketchbook.
I could barely catch a glimpse.
~currentSpeaker = webdev
Ok, enough of that.
It's my turn to ask.
->tali_questions
==c_questions_k==
//Kent gets questioned by Cas
~currentSpeaker = you
Kent. Kent. Kent.
~currentSpeaker = comic
Why do I feel like you're the villain and I've just walked into your secret base of criminal operations. 
~currentSpeaker = you
I can't be held responsible for your overactive imagination.
Truth or dare baby?
~currentSpeaker = comic
Hmm...
Dare.
~currentSpeaker = you
Damn. You are not messing about.
OK, I'm going to brew a mega tea, a combination of all the different teas that Pandora has in the kitchen. And I want you to drink it all.
~currentSpeaker = comic
You monster.
Will I gain superpowers from this.
~currentSpeaker = you
You will gain the ability to see in the dark. 
~currentSpeaker = comic
I may gain the ability to empty the contents of my stomach onto this floor.
~currentSpeaker = you
Please don't do that.
Ok. I may retract my original dare.
~currentSpeaker = snob
That's cheating!
No backsies.
~currentSpeaker = android
It's ok. I'll get the bin.
Kent can throw up in there if he feels sick.
~currentSpeaker = comic
So we're really doing this.
~currentSpeaker = android
...
I've just brewed the tea.
And put all the teas into the cup.
~currentSpeaker = webdev
That colour does not look healthy.
~currentSpeaker = snob
The good thing is that this tea already looks like someone's been sick in it, so it won't be a surprise when it comes back the other way.
~currentSpeaker = comic
Why did you have to say that?
Oh, it's too hot.
~currentSpeaker = android
Maybe put some milk into it.
~currentSpeaker = comic
No, that will just make things worse.
I'll use some tap water.
Dilutes the tea, but this thing isn't going to taste good anyway.
...
I'll hazard a sip.
~currentSpeaker = you
What does it taste like?
~currentSpeaker = comic
Like everything, and nothing.
Like fruity and weird.
~currentSpeaker = snob
Just like you!
~currentSpeaker = comic
I'm about to throw this concoction in your face if you don't shut up.
~currentSpeaker= snob
Yuck, don't you dare. Just the smell is making me nauseous. 
~currentSpeaker = comic
Damn Cas, I thought you were my friend.
~currentSpeaker = you
I AM your friend.
I didn't realise it would be that bad.
~currentSpeaker = comic
It's done, it's all gone.
And now it's my turn.
->kent_questions
==c_questions_p==
//Pandora gets questioned by Cas
~currentSpeaker = you
I chose Pandora.
Truth or dare?
~currentSpeaker = android
Let me think.
I think I can trust you.
Dare.
~currentSpeaker = you
Can you power yourself off?
~currentSpeaker = android
Oh, sick of me already?
~currentSpeaker = you
No, it's not like that.
I just want to see how you do it.
~currentSpeaker = android
It's really not that interesting.
Ok, I'll do it.
...
~currentSpeaker = snob
What's going on?
Is she...sleeping?
~currentSpeaker = webdev
Yeah she's definitely asleep.
~currentSpeaker = comic
She can just power down like that.
I'm so jealous.
~currentSpeaker = webdev
Is that all you're jealous of.
I mean, you can just adjust your body to fit your own needs. Endlessly.
They don't feel pain, or hunger.
~currentSpeaker = comic
If androids had more rights, it would be pretty sweet to be one.
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
~currentSpeaker = webdev
Naturally?
~currentSpeaker = you
I mean organical-if she doesn't wake up on her own. You know what I mean.
Here it is.
~currentSpeaker = android
Good morning everyone.
~currentSpeaker = comic
Oh my god, she thinks she slept the whole night.
~currentSpeaker = android
I remember what's going on, I'm just joking.
It's my turn now.
->pandora_questions
==c_questions_l==
//Lavender gets questioned by Cas
~currentSpeaker = you
So I guess I'll pick Lavender.
~currentSpeaker = snob
Hmph.
~currentSpeaker = you
Truth or dare?
~currentSpeaker = snob
Truth.
~currentSpeaker = you
What did you think of Tali when you met her?
~currentSpeaker = snob
Is that it?
Well, I was curious.
I thought she was cool.
Until I got to know her...and then I realised.
~currentSpeaker = you
Realised what?
~currentSpeaker = snob
She was just a ginormous nerd.
~currentSpeaker = comic
You're not going to say anything to defend yourself?
~currentSpeaker = webdev
Guilty as charged. 
No defence necessary.
~currentSpeaker = snob
Ok ok ok, it's MY turn. 
->lavender_questions

//lavender questions
==l_questions_t==
//Tali gets questioned by Lavender
~currentSpeaker = snob
Tali!
I'm questioning you.
Truth or--
~currentSpeaker = webdev
Dare.
You know everything about me anyway. What's the point of truth?
~currentSpeaker = snob
Uh...oh. OK.
Try carrying as many books as possible.
~currentSpeaker = android
I'm not sure that's safe.
~currentSpeaker = you
Probably not for the books at least.
~currentSpeaker = comic
What's the risk?
They'll get a little scuffed.
~currentSpeaker = you
Ada has eyes like a hawk.
She'll know.
~currentSpeaker = android
She'll know.
~currentSpeaker = snob
There are probably some crappy books no one cares about.
Try those first.
~currentSpeaker = webdev
Do I have permission?
~currentSpeaker = android
...
~currentSpeaker = you
...
Oh shit. I forgot I'm in charge.
Uh, yeah sure.
Just let me know when you're going to fold. Me and Pan can probably catch them if they fall.
~currentSpeaker = android
I'm a good at catching.
~currentSpeaker = webdev
Here goes nothing.
You better pile them on Lav.
~currentSpeaker = android
I will pass them over.
~currentSpeaker = snob
One. Two. Three.
...
Ten. Eleven.
~currentSpeaker = webdev
You're just giving me the little books.
~currentSpeaker = snob
And Pandora is the one giving ME the little books.
~currentSpeaker = android
Well, those are the less valuable ones. And they're less likely to get damaged if they fall.
That's just basic economics and physics. 
~currentSpeaker = you
Does it really matter how big the books are?
Lavender never specified the size.
~currentSpeaker = comic
Size doesn't matter ;)
~currentSpeaker = webdev
It does!
I don't want anyone to say I was cheating.
~currentSpeaker = comic
No one thinks that.
~currentSpeaker = webdev
Give me a challenge.
~currentSpeaker = android
OK. What do you want? The Lord of the Rings, War and Peace, University Physics with Modern Physics 14th Edition by Hugh D. Young, Roget A. Freedman...
~currentSpeaker = webdev
Pile them on.
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
~currentSpeaker = snob
Stop talking in uppercase. It's very rude.
~currentSpeaker = webdev
I DON'T CARE?
~currentSpeaker = snob
Why are you questioning that?
~currentSpeaker = webdev
AAAHHHH.
~currentSpeaker = snob
OWWWWWWWWW.
~currentSpeaker = webdev
Oh crap.
~currentSpeaker = snob
What the hell.
~currentSpeaker = android
Caught em'
~currentSpeaker = you
Me too!
~currentSpeaker = android
Team work, hell yeah!
~currentSpeaker = snob
One of those books hit me.
I have a bruise.
~currentSpeaker = android
Sure did, hit you in the shoulder and bounced into my arms.
Nice save. Thanks!
~currentSpeaker = snob
It wasn't intentional.
~currentSpeaker = webdev
How many was that?
~currentSpeaker = snob
Uh I wasn't counting.
Let's just move on.
~currentSpeaker = webdev
My arms hurt.
Oooh it's my go now.
->tali_questions
==l_questions_k==
//Kent gets questioned by Lavender
~currentSpeaker = snob
Hmm, I choose, Keith.
~currentSpeaker = comic
This is getting old.
There isn't a Keith here Lavender.
~currentSpeaker = snob
Of course there is, there's always a Keith.
Truth or dare Keith.
~currentSpeaker = comic
Truth.
~currentSpeaker = snob
How did you get a job at Calamity?
~currentSpeaker = comic
There's this thing.
It's called an interview.
You turn up wearing a suit and you entertain a bunch of wankers for an hour or two. And then you sign your life away.
~currentSpeaker = snob
Hold on a minute...YOU wore a suit?
Ok, now tell me what actually happened.
~currentSpeaker = comic
I just did.
~currentSpeaker = snob
Objection! Your Honour, he is obfuscating.
~currentSpeaker = you
Your Honour? Is that me?
~currentSpeaker = snob
The whole point of this is that you open up and share details about your life, is it not?
~currentSpeaker = you
Yes.
Kent, just give us the juice.
~currentSpeaker = comic
You're siding with her now?
~currentSpeaker = you
Well, I want to hear this story too.
Also, she called me 'Your Honour' I'm an easy woman to please.
~currentSpeaker = comic
Fuck. Alright then. 
->kent_questions
==l_questions_p==
Pandora gets questioned by Lavender
->pandora_questions
==l_questions_c==
Cas gets questioned by Lavender
->cas_questions

//Pandora questions
==p_questions_t==
Tali gets questioned by Pandora
->tali_questions
==p_questions_k==
Kent gets questioned by Pandora
->kent_questions
==p_questions_l==
Lavender gets questioned by Pandora
->lavender_questions
==p_questions_c==
Cas gets questioned by Pandora
->cas_questions

//Tali questions
==t_questions_l==
Lavender gets questioned by Tali
->lavender_questions
==t_questions_k==
Kent gets questioned by Tali
->kent_questions
==t_questions_p==
Pandora gets questioned by Tali
->pandora_questions
==t_questions_c==
Cas gets questioned by Tali
->cas_questions

//Kent questions
==k_questions_t==
Tali gets questioned by Kent
->tali_questions
==k_questions_p==
Pandora gets questioned by Kent
->pandora_questions
==k_questions_l==
Lavender gets questioned by Kent
->lavender_questions
==k_questions_c==
Cas gets questioned by Kent
->cas_questions


==end_scenario==
Everyone is questioned now
->END