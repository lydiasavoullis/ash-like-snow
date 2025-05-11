==day_14==
~pandoraPoints = 7
~scene = "Basement"
~currentSpeaker = ""
You open the notebook {android} gave you.
*[Yes (save)]
{SaveStory()}
You write something down.
*[No (don't save)] 
You close the book.
-~currentSpeaker = you
I know you all hate me.
And you have good reason to. 
But we all need to wake up.
There's this beeping noise, and I don't think it's good news.
~characters+=lavender
{ChangeSprite("Lavender", "lavender_thinking")}
~currentSpeaker = snob
What?
{ChangeSprite("Lavender", "lavender_sad")}
What's going on?
What's that sound?
{ChangeSprite("Lavender", "lavender_shocked")}
IS IT A BOMB?!
~currentSpeaker = you
I won't rule it out.
{ChangeSprite("Lavender", "lavender_angry")}
~currentSpeaker = snob
We have to get out of here.
~characters+=pandora
{ChangeSprite("Lavender", "lavender_normal")}
{ChangeSprite("Pandora", "pandora_annoyed")}
~currentSpeaker = android
Everyone calm down.
~currentSpeaker = you
Where have you been?
{ChangeSprite("Pandora", "pandora_mean")}
~currentSpeaker = android
I got very absorbed in a book.
~currentSpeaker = snob
{ChangeSprite("Lavender", "lavender_angry")}
How can you read at a time like this?
{ChangeSprite("Lavender", "lavender_normal")}
Ok, we have to get over our personal issues now.
{ChangeSprite("Lavender", "lavender_shocked")}
We might all die today!
~characters+=kent
{ChangeSprite("Kent", "kent_amused")}
~currentSpeaker = comic
How is that different from yesterday?
~currentSpeaker = you
Thank God, you're up.
{ChangeSprite("Kent", "kent_side_normal")}
~currentSpeaker = comic
I am up somehow.
{ChangeSprite("Kent", "kent_sad")}
But I'm suffering from a chronic lack of sleep and coffee.
~currentSpeaker = you
Could we maybe get {webdev} up?
{ChangeSprite("Lavender", "lavender_thinking")}
~currentSpeaker = snob
I don't think it's worth it.
I still need my fingers.
{ChangeSprite("Kent", "kent_normal")}
~currentSpeaker = comic
I don't know what that means, but I'm too scared to ask.
{ChangeSprite("Pandora", "pandora_normal")}
~currentSpeaker = android
Let's just find out what the noise is now.
{ChangeSprite("Pandora", "pandora_pensive")}
Oh let's see.
~characters-=pandora
~currentSpeaker = you
Can I help?
{ChangeSprite("Pandora", "pandora_normal")}
~currentSpeaker = android
It's ok.
~currentSpeaker = comic
...
~currentSpeaker = snob
...
~currentSpeaker = you
Did you guys sleep well?
{ChangeSprite("Kent", "kent_side_normal")}
~currentSpeaker = comic
Uh not really.
{ChangeSprite("Lavender", "lavender_thinking")}
~currentSpeaker = snob
Hmph
~currentSpeaker = you
Just going to ignore me then.
{ChangeSprite("Lavender", "lavender_angry")}
~currentSpeaker = snob
I don't sleep so well when I'm in the same room as a murderer.
{ChangeSprite("Kent", "kent_upset")}
~currentSpeaker = comic
She apologised.
{ChangeSprite("Lavender", "lavender_thinking")}
~currentSpeaker = snob
Do you trust her?
You know what Fate does to people.
It turns them into savages.
{ChangeSprite("Kent", "kent_side_normal")}
~currentSpeaker = comic
She doesn't look very savage to me.
{ChangeSprite("Lavender", "lavender_angry")}
~currentSpeaker = snob
She killed a dog with her bare hands!
{ChangeSprite("Kent", "kent_side_serious")}
~currentSpeaker = comic
That was in the past.
{ChangeSprite("Lavender", "lavender_sad")}
~currentSpeaker = snob
She killed a dog. Just like that. Without even thinking. 
You heard her.
~currentSpeaker = you
I didn't want it to alert anyone that I was there.
{ChangeSprite("Lavender", "lavender_angry")}
~currentSpeaker = snob
Because you had already broken into someone's appartment.
You're not only a murderer, you're a theif as well.
{ChangeSprite("Kent", "kent_upset")}
~currentSpeaker = comic
{snob} your father literally starts wars in other countries.
~currentSpeaker = android
Guys
{ChangeSprite("Lavender", "lavender_sad")}
~currentSpeaker = snob
It's not the same as killing a cute innocent creature.
{ChangeSprite("Kent", "kent_amused")}
~currentSpeaker = comic
Killing civilians is not as bad as killing a dog.
~currentSpeaker = android
Guys.
{ChangeSprite("Lavender", "lavender_thinking")}
{ChangeSprite("Kent", "kent_upset")}
~currentSpeaker = snob
I mean we don't even know the people in the other countries.
For all we know they could be bad people.
{ChangeSprite("Lavender", "lavender_angry")}
Maybe it's better they're dead.
{ChangeSprite("Lavender", "lavender_sad")}
Safer for us.
{ChangeSprite("Kent", "kent_shocked")}
~currentSpeaker = comic
Wow!
{ChangeSprite("Kent", "kent_upset")}
You know what. I don't fucking care about the dog.
At least it died quickly.
As far as I'm concerned it was lucky.
{ChangeSprite("Lavender", "lavender_shocked")}
~currentSpeaker = snob
/*gasps*/
How could you say that?
~characters+=pandora
{ChangeSprite("Pandora", "pandora_annoyed")}
~currentSpeaker = android
Guys!
{ChangeSprite("Pandora", "pandora_pensive")}
You're all going to die if you don't pay attention to this right now.
{ChangeSprite("Kent", "kent_sad")}
{ChangeSprite("Lavender", "lavender_sad")}
~currentSpeaker = you
Death doesn't sound too bad right now.
{ChangeSprite("Lavender", "lavender_angry")}
~currentSpeaker = snob
You're going straight to hell.
~currentSpeaker = you
You sure I'm not there already?
~currentSpeaker = android
Wake up {webdev}
~characters+=tali
{ChangeSprite("Tali", "tali_serious")}
{ChangeSprite("Lavender", "lavender_normal")}
~currentSpeaker = webdev
I'm already awake.
{ChangeSprite("Tali", "tali_exasperated")}
I was just pretenting to sleep to avoid that painfully awkward conversation.
{ChangeSprite("Tali", "tali_serious")}
How are we going to die?
{ChangeSprite("Pandora", "pandora_sad")}
~currentSpeaker = android
The air filter is broken.
{ChangeSprite("Tali", "tali_talking_side")}
~currentSpeaker = webdev
That's not too serious. Is it?
{ChangeSprite("Pandora", "pandora_mean")}
~currentSpeaker = android
It depends if you want to choke on whatever toxic chemicals are out there.
{ChangeSprite("Tali", "tali_serious")}
{ChangeSprite("Pandora", "pandora_pensive")}
It's not good for your lungs and do you really want to get sick down here?
~currentSpeaker = you
So it's a problem.
How are we going to fix it?
{ChangeSprite("Kent", "kent_side_serious")}
~currentSpeaker = comic
What about those masks?
{ChangeSprite("Kent", "kent_normal")}
I found a big box of them when I first came down here.
{ChangeSprite("Pandora", "pandora_sad")}
~currentSpeaker = android
I checked them.
They're faulty.
{ChangeSprite("Kent", "kent_upset")}
~currentSpeaker = comic
What? How?
{ChangeSprite("Pandora", "pandora_pensive")}
~currentSpeaker = android
There's a white band on them that shows how much pollution they can absorb. When I checked the band, it was black.
{ChangeSprite("Pandora", "pandora_mean")}
Meaning they're fully saturated.
{ChangeSprite("Kent", "kent_sad")}
~currentSpeaker = comic
How is that even possible?
{ChangeSprite("Pandora", "pandora_annoyed")}
~currentSpeaker = android
I. Don't. Know.
Maybe they're some cheap ones Ada got off the black market.
{ChangeSprite("Pandora", "pandora_sad")}
She probably never anticipated that she would have to be down here.
{ChangeSprite("Lavender", "lavender_angry")}
~currentSpeaker = snob
I can't believe I relied on this person for my magazines.
How irresponsible.
{ChangeSprite("Pandora", "pandora_pensive")}
{ChangeSprite("Lavender", "lavender_normal")}
~currentSpeaker = android
I'm going to use my supply of electricity to keep the filters on for as long as I can.
Someone needs to crawl into this vent and see what's going on.
I think there's a wire that needs fixing.
A loose connection maybe.
{ChangeSprite("Tali", "tali_sad")}
~currentSpeaker = webdev
A loose connection?
{ChangeSprite("Tali", "tali_exasperated")}
That's just shoddy work.
{ChangeSprite("Kent", "kent_amused")}
~currentSpeaker = comic
I bet a rat chewed through the wire.
{ChangeSprite("Lavender", "lavender_shocked")}
~currentSpeaker = snob
Rats?!
~currentSpeaker = comic
Oh boy here it comes...
{ChangeSprite("Lavender", "lavender_happy")}
~currentSpeaker = snob
I love rats!
{ChangeSprite("Kent", "kent_side_normal")}
~currentSpeaker = comic
Ok, I was not expecting that.
~currentSpeaker = snob
I used to have them as pets.
{ChangeSprite("Kent", "kent_side_serious")}
~currentSpeaker = comic
Weird. You're weird.
{ChangeSprite("Tali", "tali_upset")}
~currentSpeaker = webdev
Shush!
{ChangeSprite("Pandora", "pandora_mean")}
~currentSpeaker = android
{you} you're going to need to go inside the vent and fix it.
~currentSpeaker = you
Why me?
{ChangeSprite("Pandora", "pandora_sad")}
~currentSpeaker = android
{comic} and {webdev} are too big. And I don't trust {snob}.
{ChangeSprite("Lavender", "lavender_sad")}
~currentSpeaker = snob
I'm scared of small spaces.
{ChangeSprite("Lavender", "lavender_angry")}
But still offended.
{ChangeSprite("Pandora", "pandora_normal")}
{ChangeSprite("Lavender", "lavender_normal")}
~currentSpeaker = android
I need to stay here and stay connected to the wall panel. This cable is not going to stretch that far.
Also you're kind of good with tech, aren't you?
~currentSpeaker = you
Sort of...
{ChangeSprite("Pandora", "pandora_pensive")}
~currentSpeaker = android
You're practical.
You'll learn.
{ChangeSprite("Kent", "kent_happy")}
~currentSpeaker = comic
Being big and strong I can help you into the vent {you}.
~currentSpeaker = you
This is just my luck.
{ChangeSprite("Lavender", "lavender_serious")}
~currentSpeaker = snob
This is a way to atone for your sins.
~currentSpeaker = you
I really hope rats don't eat me.
{ChangeSprite("Lavender", "lavender_mean")}
~currentSpeaker = snob
You could probably snap their necks if they tried.
{ChangeSprite("Kent", "kent_amused")}
~currentSpeaker = comic
Ha!
~currentSpeaker = you
Not. Funny.
{ChangeSprite("Kent", "kent_sad")}
~currentSpeaker = comic
Sorry.
{ChangeSprite("Kent", "kent_normal")}
Ok, let's hoist you up.
~currentSpeaker = you
...
~characters=()
~currentSpeaker= ""
Kent hoists you up and you grab the ledge and pull yourself into the vent.
You're not claustrophobic, but you have a sudden primal urge to scream.
~currentSpeaker = android
Are you alright?
~currentSpeaker = you
Uh huh.
~currentSpeaker = android
You need to move further inside. The cables will be right at the end.
~currentSpeaker = you
I'm moving.
~currentSpeaker = android
I can still see your feet.
~currentSpeaker= ""
You shuffle your body further inside.
It's like squeezing head first into a sleeping bag.
~currentSpeaker = you
I can see the cables.
~currentSpeaker = android
Ok, follow my instructions.
~currentSpeaker = ""
You do as Pandora says, with deft precision.
As you fumble with the cables you cut your finger on a sharp wire.
The blood drips onto the metal panelling beneath you.
~currentSpeaker = android
Great, the filter works.
~currentSpeaker = comic
Phew!
~currentSpeaker = snob
Whoopee!
~currentSpeaker = webdev
That's great {you}, how are you holding up?
~currentSpeaker = ""
...
Why aren't you moving?
You think to yourself. You should go back. But your body is stiff. 
Your breathing is unsettled.
This hasn't happened for a long time. 
~currentSpeaker = android
{you} what's wrong?
~currentSpeaker= ""
You need to breath, but you can't.
You can hear the blood pounding in your head.
Your sight starts to blur.
~currentSpeaker = android
I can feel something's wrong.
~currentSpeaker = snob
What's wrong? We've got air.
~currentSpeaker = android
Something's wrong with {you}.
~currentSpeaker = snob
Is she going to murder us?
~currentSpeaker = android
Shut up {snob} for a minute, at least.
{you} I can hear your heart rate has increased significantly.
I think you might be having a panic attack.
{pandoraPoints>=6:
    ->pandora_talks_panic_attack
  - else:
    ->others_save_you
}

=pandora_talks_panic_attack
~currentSpeaker=""
She might be right.
But what can you do?
You're useless without. You can't even carry out simple tasks without being drugged.
Everything triggers you into a state of panic.
~currentSpeaker = android
I'm here. Listen to me.
~currentSpeaker= ""
Listen to her? What can she do.
She couldn't save her last patient. What makes you think she can do anything for you?
~currentSpeaker = android
We're here for you.
~currentSpeaker=""
They hate you. You saw it in their eyes. What's the point of going back? You're just a disappointment.
~currentSpeaker = android
Don't try to fight it.
Just keep breathing, slowly.
~currentSpeaker=""
What are you doing?
You're not listening to her are you? What does she know?
~currentSpeaker = android
You've done a really good job. Thanks to you the others won't get ill.
~currentSpeaker=""
...that's not true.
That can't be true. You've never done anything good.
~currentSpeaker = you
I'm coming back now.
~currentSpeaker=""
You shift your body now, pushing backwards.
You keep pushing, slowly but steadily.
Kent catches you as you fall.
~characters+=kent
~characters+=pandora
~characters+=tali
~characters+=lavender
{ChangeSprite("Pandora", "pandora_normal")}
~currentSpeaker = android
It's alright. You're out of there now.
{ChangeSprite("Kent", "kent_shocked")}
~currentSpeaker = comic
What just happened?
{ChangeSprite("Tali", "tali_serious")}
~currentSpeaker = webdev
{android} said she had a panic attack.
{ChangeSprite("Lavender", "lavender_sad")}
~currentSpeaker = snob
I don't get it though.
She's got the cold eyes of a killer.
{ChangeSprite("Kent", "kent_side_normal")}
~currentSpeaker = comic
I wouldn't go so far to say that. But {you} has always been so calm.
{ChangeSprite("Pandora", "pandora_pensive")}
~currentSpeaker = android
Shhh.
Just because you can't see something on the surface doesn't mean it isn't there.
{ChangeSprite("Pandora", "pandora_annoyed")}
You humans are so stupid.
{ChangeSprite("Lavender", "lavender_angry")}
~currentSpeaker = snob
That's rude!
~currentSpeaker = android
{snob} you never think about anyone but yourself.
{ChangeSprite("Lavender", "lavender_crying")}
{ChangeSprite("Kent", "kent_happy")}
~currentSpeaker = comic
Hear, hear.
{ChangeSprite("Tali", "tali_sad")}
~currentSpeaker = webdev
Is there anything we can do to help.
{ChangeSprite("Pandora", "pandora_pensive")}
~currentSpeaker = android
I think she needs a calm environment right now.
So, if you all make yourselves scarce.
{ChangeSprite("Kent", "kent_amused")}
~currentSpeaker = comic
I get it, I can get rid of myself very easily.
{ChangeSprite("Tali", "tali_smirk")}
~currentSpeaker = webdev
That sounds vaguely menacing. 
{ChangeSprite("Lavender", "lavender_sad")}
~currentSpeaker = snob
...
{ChangeSprite("Lavender", "lavender_crying")}
I hope {you} gets better.
~currentSpeaker = you
...
~currentSpeaker=""
You can't summon the energy to speak right now.
Better to conserve it and rest.
~characters-=kent
~characters-=lavender
~characters-=tali
{ChangeSprite("Pandora", "pandora_happy")}
~currentSpeaker = android
You did well.
{ChangeSprite("Pandora", "pandora_sad")}
Sorry for pushing you.
I'm a terrible therapy IOI.
~currentSpeaker = you
You stopped me from having a panic attack.
{ChangeSprite("Pandora", "pandora_happy")}
~currentSpeaker = android
Thanks. I guess my instincts just kicked in.
{ChangeSprite("Pandora", "pandora_pensive")}
I'll be honest, I miss being a therapy IOI. Despite all the pain it's caused me...all the pain I couldn't prevent. I prefer it to being your assistant.
{ChangeSprite("Pandora", "pandora_sad")}
Sorry. I like working with you, just not the actual content of the work.
~currentSpeaker = you
No offense taken.
I understand completely.
I feel sleepy.
{ChangeSprite("Pandora", "pandora_happy")}
~currentSpeaker = android
I guess the rush of adrenaline is over.
I'll make your bed.
->end_day_14
=others_save_you
~currentSpeaker= ""
She might be right.
But what can you do?
You're useless without. You can't even carry out simple tasks without being drugged.
~currentSpeaker = android
{you}?
~currentSpeaker=""
You think she can save you?
She couldn't save her last patient. What makes you think she can do anything for you?
~currentSpeaker = android
{you} listen to me.
~currentSpeaker=""
There's no point in listening to her. She's not even a real therapist.
~currentSpeaker = android
She's not responding.
I think you'll have to pull her out.
~currentSpeaker = comic
How??
~currentSpeaker = android
I have no idea.
~currentSpeaker = webdev
I have one, but I don't think {snob}'s going to like it.
~currentSpeaker = snob
Eh? Oh no. I'm not going in there.
~currentSpeaker = webdev
I'll get on {comic}'s shoulders. You get on mine and reach in there.
~currentSpeaker = snob
Uh uh. No way.
Not for her.
~currentSpeaker = webdev
If she dies in there, the smell of dead body is going to waft into this room.
~currentSpeaker = snob
Fine. I'll do it.
~currentSpeaker = android
What can I do?
~currentSpeaker = comic
Help {snob} climb up us.
And catch us if we fall.
~currentSpeaker = android
Of course.
~currentSpeaker=""
Can you hear them trying to help you?
What a nuisance you are.
~currentSpeaker = snob
Oww.
~currentSpeaker = webdev
Stop complaining.
~currentSpeaker = comic
I'm supporting both of you.
You're so heavy.
~currentSpeaker = webdev
Hey!
~currentSpeaker = snob
I'm in the shaft.
I've never been inside a shaft before.
~currentSpeaker = webdev
Stop it. Focus {snob}.
~currentSpeaker = snob
Alright.
It smells weird in here.
~currentSpeaker = comic
Just keep going.
~currentSpeaker = ""
What is that?
She's touching you.
~currentSpeaker = you
Ahhhh.
~currentSpeaker = ""
That tickles.
~currentSpeaker = snob
So now you talk.
You have smelly feet.
~currentSpeaker = webdev
Stop antagonising her. Just pull her out.
~currentSpeaker = snob
Okay. Okay. Okay.
Got her!
Pull me out now.
~currentSpeaker = webdev
Got it.
~currentSpeaker = snob
AHHHH.
~currentSpeaker = you
AHHHH!
~currentSpeaker = you
Sorry. I don't know what happened.
~currentSpeaker = android
You had a panic attack and weren't responding to us.
~currentSpeaker = you
I know. I just don't know why I stopped responding.
~currentSpeaker = android
I caught you. You were really out of it.
~currentSpeaker = snob
You didn't catch me. Thanks for nothing!
~currentSpeaker = webdev
You landed right on top of me.
~currentSpeaker = snob
Sorry.
~currentSpeaker = comic
That was a bit scary. I wasn't sure what we were going to do if we couldn't get you out.
~currentSpeaker = webdev
She looks shell-shocked.
~currentSpeaker = android
Perhaps we should give her some space.
~currentSpeaker = comic
I don't know. I don't really want to leave her alone.
~currentSpeaker = android
She won't be alone. I'll be there.
~currentSpeaker = comic
I know. I just feel like I should stay.
~currentSpeaker = webdev
It might not be a bad idea, {comic} and {you} seem to get on quite well. And he can always lighten the mood.
~currentSpeaker = comic
Wow. I'm not sure you really know me.
~currentSpeaker = webdev
You're depressing, but at least you're funny about it.
~currentSpeaker = comic
Put that on my obituary.
~characters-=lavender
~characters-=tali
~currentSpeaker = comic
You're staying.
~currentSpeaker = android
She needs me.
~currentSpeaker = comic
It's ok to admit you're out of your depth.
~currentSpeaker = android
She's my responsibility.
~currentSpeaker = comic
Really? No one gave that responsibility to you.
~currentSpeaker = android
What am I without it?
~currentSpeaker = comic
A person, who is kind and charismatic.
~currentSpeaker = android
Kind and charismatic?
~currentSpeaker = comic
Yup.
You always let us stay at the shop, even when we don't buy anything. And you throw awesome parties.
~currentSpeaker = android
I do???
~currentSpeaker = comic
You're a social butterfly.
~currentSpeaker = android
You're just flattering me.
~currentSpeaker = comic
I never flatter anyone. Excluding myself, of course.
~currentSpeaker = android
{you} did you hear that??
~currentSpeaker = you
I agree with him.
Just going through a lot right now, sorry if I don't respond so quickly.
~currentSpeaker = android
This is wonderful news. Truly.
I will reassess my purpose.
~currentSpeaker = comic
Going to be an event manager now or something?
~currentSpeaker = android
Perhaps. Although that might not be possible for someone like me.
~currentSpeaker = comic
I'll give you some advice. 
Just because you're good at something, doesn't mean you have to do it as a job.
~currentSpeaker = android
Eh?
~currentSpeaker = comic
Plently of people do jobs they hate and are not even any good at.
~currentSpeaker = android
Why would I waste my time doing something I hate and am no good at.
~currentSpeaker = comic
Because it's something that needs doing.
Also, you might think you suck at it, but there are lots of people out there who suck worse.
Just think about it.
~currentSpeaker = android
I understand. I'm not that naive.
I don't think {you} enjoys her job. I know you and {webdev} don't either. You just do it to meet your basic needs.
It's just kind of hard for me to accept.
~currentSpeaker = comic
I guess, it's a lot easier to accept when your basic needs rely on you having a job.
You don't need food, drink, shelter, or medical care.
Only electricity.
~currentSpeaker = android
I require electricity, basic maintenance.
But I could also be shut down against my will if I'm seen as obsolete or a threat.
~currentSpeaker = comic
I suppose that'a different kind of struggle.
Is {you} asleep?
~currentSpeaker = android
Yeah, I think the last two days took a lot out of her.
I just wish I could have done more.
~currentSpeaker = comic
You did what you could.
->end_day_14
==end_day_14==
~currentSpeaker = ""
You open the notebook {android} gave you.
*[Yes (save)]
{SaveStory()}
You write something down.
->Epilogue
*[No (don't save)] 
You close the book.
->Epilogue