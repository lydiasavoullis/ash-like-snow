==day_14==
~scene = "Basement"
~currentSpeaker = ""
~music=""
~sfx=""
You open the notebook {android} gave you.
*[Yes (save)]
{SaveStory()}
You write something down.
*[No (don't save)] 
You close the book.
~currentSpeaker = you
-Guys! 
~sfx="alarm"
Wake up!
Something is beeping.
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
~sfx=""
~music="Basement"
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
~currentSpeaker = you
Can I help?
{ChangeSprite("Pandora", "pandora_normal")}
~currentSpeaker = android
It's ok.
~characters-=pandora
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
Hmph.
~currentSpeaker = you
Just going to ignore me then.
{ChangeSprite("Lavender", "lavender_angry")}
~currentSpeaker = snob
I don't sleep so well when I'm in the same room as a murderer.
{ChangeSprite("Kent", "kent_sad")}
~currentSpeaker = comic
Oh god.
{ChangeSprite("Lavender", "lavender_thinking")}
~currentSpeaker = snob
What? Do you trust her?
{ChangeSprite("Kent", "kent_side_normal")}
~currentSpeaker = comic
Why shouldn't I?
{ChangeSprite("Lavender", "lavender_angry")}
~currentSpeaker = snob
She's a theif and a murderer.
{ChangeSprite("Kent", "kent_side_serious")}
~currentSpeaker = comic
{snob}, how many has your father murdered?
~currentSpeaker = android
Guys.
~currentSpeaker = snob
My father hasn't murdered anyone.
{ChangeSprite("Kent", "kent_amused")}
~currentSpeaker = comic
Not directly.
~currentSpeaker = android
Guys.
{ChangeSprite("Lavender", "lavender_thinking")}
{ChangeSprite("Kent", "kent_upset")}
~currentSpeaker = snob
What the hell does that mean?
{ChangeSprite("Kent", "kent_sad")}
~currentSpeaker = comic
Sometimes, when I look back at the past.
I imagine how things could have been.
How many chances did we have?
I wonder. 
Every one of those was dashed by your father, or a man like him.
{ChangeSprite("Lavender", "lavender_angry")}
~currentSpeaker = snob
Ugh, stop being dramatic.
{ChangeSprite("Kent", "kent_upset")}
~currentSpeaker = comic
You know what. I don't fucking care about the dog.
At least it died quickly.
As far as I'm concerned it was lucky.
{ChangeSprite("Lavender", "lavender_shocked")}
~currentSpeaker = snob
\*gasps\*
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
That doesn't sound too bad right now.
~currentSpeaker = android
Wake up {webdev}.
~characters+=tali
{ChangeSprite("Tali", "tali_serious")}
{ChangeSprite("Lavender", "lavender_normal")}
~currentSpeaker = webdev
I'm already awake.
{ChangeSprite("Tali", "tali_exasperated")}
I was just pretenting to sleep.
{ChangeSprite("Tali", "tali_serious")}
How are we going to die?
{ChangeSprite("Pandora", "pandora_sad")}
~currentSpeaker = android
The air filter is broken.
{ChangeSprite("Tali", "tali_talking_side")}
~currentSpeaker = webdev
Is that very serious?
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
Oh boy...
{ChangeSprite("Lavender", "lavender_happy")}
~currentSpeaker = snob
I love rats!
I used to have them as pets.
{ChangeSprite("Kent", "kent_upset")}
~currentSpeaker = comic
I should have known.
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
I'm claustrophobic.
{ChangeSprite("Lavender", "lavender_angry")}
But still offended.
{ChangeSprite("Pandora", "pandora_normal")}
{ChangeSprite("Lavender", "lavender_normal")}
~currentSpeaker = android
I need to stay here and stay connected to the wall panel. This cable is not going to stretch that far.
{ChangeSprite("Kent", "kent_happy")}
~currentSpeaker = comic
I can lift you into the vent {you}.
~currentSpeaker = you
This is just my luck.
{ChangeSprite("Lavender", "lavender_serious")}
~currentSpeaker = snob
Serves you right.
I hope you get bitten by a rat.
~currentSpeaker = you
...
{ChangeSprite("Kent", "kent_side_serious")}
Ok, let's hoist you up.
~currentSpeaker = you
...
~characters=()
~currentSpeaker= ""
Kent hoists you up and you grab the ledge and pull yourself into the vent.
~scene="AirVent"
~music=""
~sfx="air vent"
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
~sfx=""
~music="Dark dramatic"
...
Why aren't you moving?
You should go back. But your body is stiff. 
You take ragged breaths.
~currentSpeaker = android
{you} what's wrong?
~currentSpeaker= ""
You need to breath, but you can't.
The blood pounds in your head.
Your sight blurs.
~currentSpeaker = android
I can feel something's wrong.
~currentSpeaker = snob
What's wrong? We've got air.
~currentSpeaker = android
Something's wrong with {you}.
~currentSpeaker = snob
Huh?
~currentSpeaker = android
Shut up {snob} for a minute, at least.
{you} I can hear your heart rate has increased significantly.
{pandoraPoints>=6:
    ->pandora_talks_panic_attack
  - else:
    ->others_save_you
}

=pandora_talks_panic_attack
~currentSpeaker=""
<i>You're useless without Fate. You can't even carry out simple tasks without being drugged.</i>
<i>Everything triggers you into a state of panic.</i>
~currentSpeaker = android
I'm here. Listen to me.
~currentSpeaker= ""
<i>Listen to her? What can she do.</i>
<i>She couldn't save her last patient. What makes you think she can do anything for you?</i>
~currentSpeaker = android
We're here for you.
~currentSpeaker=""
<i>They despise you. What's the point of going back? You're just a disappointment.</i>
~currentSpeaker = android
Don't try to fight it.
Just keep breathing, slowly.
~currentSpeaker=""
<i>You're not listening to her are you?</i>
<i>What does she know?</i>
~currentSpeaker = android
You've done a really good job.
~currentSpeaker=""
<i>...that's not true.</i>
<i>That can't be true. You've never done anything good.</i>
~currentSpeaker = you
I'm coming back now.
~currentSpeaker=""
You shift your body now, pushing backwards.
You keep pushing, slowly but steadily.
Kent catches you as you fall.
~scene="Basement"
~music=""
¬
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
She's got the cold dead eyes of a killer.
{ChangeSprite("Kent", "kent_upset")}
{ChangeSprite("Pandora", "pandora_annoyed")}
~currentSpeaker = android
{snob}!
{ChangeSprite("Lavender", "lavender_crying")}
~currentSpeaker = snob
...
{ChangeSprite("Tali", "tali_sad")}
~currentSpeaker = webdev
Is there anything we can do to help?
{ChangeSprite("Pandora", "pandora_pensive")}
~currentSpeaker = android
I think she needs a calm environment right now.
So, if you all make yourselves scarce.
{ChangeSprite("Kent", "kent_happy")}
~currentSpeaker = comic
I hope you feel better soon {you}.
{ChangeSprite("Tali", "tali_happy")}
~currentSpeaker = webdev
You're going to be ok {you}!
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
~currentSpeaker = you
Thanks for talking me out of that.
~currentSpeaker = android
I guess my instincts just kicked in.
Have you ever had an episode like that before?
~currentSpeaker = you
A couple of times, I always manage to contain them.
I just fell apart there. Not sure why.
~currentSpeaker = android
It's ok.
~currentSpeaker = you
No. It isn't.
I'm just tired of this.
It never ends.
~currentSpeaker = android
It might feel like that now, but your perception of reality is inaccurate.
We are in unusual circumstances.
I know you were suffering before this, but if we get out of here I think it will be different for you.
~currentSpeaker = you
...
Hmm.
{ChangeSprite("Pandora", "pandora_pensive")}
~currentSpeaker = android
Did I upset you?
~currentSpeaker = you
No, you didn't.
Thanks {android}.
{ChangeSprite("Pandora", "pandora_confused")}
~currentSpeaker = android
Oh. Don't mention it.
~currentSpeaker = you
I feel sleepy.
{ChangeSprite("Pandora", "pandora_happy")}
~currentSpeaker = android
I guess the rush of adrenaline is over.
I'll make your bed.
~characters-=pandora
->end_day_14
=others_save_you
TODO
//add sprite changes
~currentSpeaker= ""
<i>You're useless without Fate. You can't even carry out simple tasks without being drugged.</i>
~currentSpeaker = android
{you}?
~currentSpeaker=""
<i>You think she can save you?</i>
<i>She couldn't save her last patient. What makes you think she can do anything for you?</i>
~currentSpeaker = android
{you} listen to me.
~currentSpeaker=""
<i>There's no point in listening to her. She's not even a real therapist.</i>
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
<i>Can you hear them trying to help you?</i>
<i>What a burden you are.</i>
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
Alright. I'm in.
It smells funky in here.
~currentSpeaker = webdev
Focus {snob}.
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
~currentSpeaker = webdev
Just pull her out.
~currentSpeaker = snob
Okay. Okay. Okay.
Got her!
Pull me out now.
~currentSpeaker = webdev
Got it.
~music=""
~currentSpeaker = snob
AHHHH!
~currentSpeaker = you
AHHHH!
~scene="Basement"
~characters+=kent
~characters+=pandora
~characters+=tali
~characters+=lavender
~currentSpeaker = you
Sorry. I don't know what happened.
{ChangeSprite("Pandora", "pandora_sad")}
~currentSpeaker = android
You weren't responding to us.
I think you had a panic attack.
~currentSpeaker = you
...
~currentSpeaker = android
I caught you. You were really out of it.
{ChangeSprite("Lavender", "lavender_angry")}
~currentSpeaker = snob
No one caught me. Thanks for nothing!
{ChangeSprite("Tali", "tali_upset")}
~currentSpeaker = webdev
You landed right on top of me.
{ChangeSprite("Lavender", "lavender_sad")}
~currentSpeaker = snob
Sorry.
{ChangeSprite("Kent", "kent_sad")}
~currentSpeaker = comic
I wasn't sure what we were going to do if we couldn't get you out.
{ChangeSprite("Tali", "tali_sad")}
~currentSpeaker = webdev
She looks shell-shocked.
{ChangeSprite("Pandora", "pandora_normal")}
~currentSpeaker = android
Perhaps we should give her some space.
{ChangeSprite("Kent", "kent_side_normal")}
~currentSpeaker = comic
I don't know. I don't really want to leave her alone.
~currentSpeaker = android
She won't be alone. I'll be there.
~currentSpeaker = comic
I know. I just feel like I should stay.
~currentSpeaker = webdev
It might not be a bad idea, {comic} can always lighten the mood.
~currentSpeaker = comic
Wow. I'm not sure you really know me.
~currentSpeaker = webdev
You're depressing, but at least you're funny about it.
~currentSpeaker = comic
Put that on my obituary.
~characters-=lavender
~characters-=tali
{ChangeSprite("Kent", "kent_amused")}
~currentSpeaker = comic
You're staying?
{ChangeSprite("Pandora", "pandora_sad")}
~currentSpeaker = android
She needs me.
{ChangeSprite("Kent", "kent_side_normal")}
~currentSpeaker = comic
It's ok to admit you're out of your depth.
{ChangeSprite("Pandora", "pandora_annoyed")}
~currentSpeaker = android
She's my responsibility.
{ChangeSprite("Kent", "kent_amused")}
~currentSpeaker = comic
Really? No one gave that responsibility to you.
{ChangeSprite("Pandora", "pandora_sad")}
~currentSpeaker = android
What am I without it?
{ChangeSprite("Kent", "kent_happy")}
~currentSpeaker = comic
A person, who is kind and charismatic.
~currentSpeaker = android
Kind and charismatic?
~currentSpeaker = comic
Yup.
You always let us stay at the shop, even when we don't buy anything. 
And you throw awesome parties.
{ChangeSprite("Pandora", "pandora_confused")}
~currentSpeaker = android
I do???
~currentSpeaker = comic
Oh yeah.
{ChangeSprite("Pandora", "pandora_mean")}
~currentSpeaker = android
You're just flattering me.
{ChangeSprite("Kent", "kent_amused")}
~currentSpeaker = comic
I never flatter anyone. Excluding myself, of course.
~currentSpeaker = android
{you} did you hear that??
~currentSpeaker = you
He's right.
{ChangeSprite("Pandora", "pandora_confused")}
~currentSpeaker = android
Perhaps I will reassess my purpose.
~currentSpeaker = comic
Going for a career change or something?
{ChangeSprite("Pandora", "pandora_sad")}
~currentSpeaker = android
It might not be possible for someone like me.
I just want a job that I'm actually good at.
{ChangeSprite("Kent", "kent_side_normal")}
~currentSpeaker = comic
Just because you're good at something, doesn't mean you have to do it as a job.
{ChangeSprite("Pandora", "pandora_confused")}
~currentSpeaker = android
Eh?
~currentSpeaker = comic
Plently of people do jobs they hate and are not even any good at.
{ChangeSprite("Pandora", "pandora_annoyed")}
~currentSpeaker = android
Why would I waste my time doing something I hate and am no good at.
~currentSpeaker = comic
Because it's something that needs doing.
Also, you might think you suck at it, but there are lots of people out there who suck worse.
Just think about it.
~currentSpeaker = android
I understand. I'm not that naive.
I don't think {you} enjoys her job. I know you and {webdev} don't either. You just do it to meet your basic needs.
{ChangeSprite("Pandora", "pandora_sad")}
It's just kind of hard for me to accept.
{ChangeSprite("Kent", "kent_side_serious")}
~currentSpeaker = comic
I guess, it's a lot easier to accept when your basic needs rely on you having a job.
{ChangeSprite("Kent", "kent_amused")}
~currentSpeaker = comic
Is {you} asleep?
~currentSpeaker = android
Yeah, I think the last two days took a lot out of her.
I just wish I could have done more.
{ChangeSprite("Kent", "kent_sad")}
~currentSpeaker = comic
You did what you could.
~characters-=kent
~characters-=pandora
->end_day_14
==end_day_14==
~currentSpeaker = ""
You open the notebook {android} gave you.
*[Yes (save)]
{SaveStory()}
You write something down.
*[No (don't save)] 
You close the book.
-Time for bed.
You wake up in the middle of the night.
The others are fast asleep.
Finding yourself drawn to the computer.
You turn it on.
~scene="XmasEmpty"
~sfx="wind"
You're not sure what you wanted here.
~characters+=cas
{ChangeSprite("Cas", "cas_straight_look")}
~currentSpeaker=man
You're up.
What's the matter?
{ChangeSprite("Cas", "cas_right_look")}
~currentSpeaker=you
Not feeling too great.
~currentSpeaker=man
There's no reason to feel bad.
You've got everything you want.
Go to bed.
{ChangeSprite("Cas", "cas_straight_look")}
~currentSpeaker=you
...
Can you watch a film with me tomorrow?
~currentSpeaker=man
I'm tired.
I don't want to watch a stupid film.
{ChangeSprite("Cas", "cas_right_look")}
~currentSpeaker=you
It can be a film that you like.
~currentSpeaker=man
I'm too busy.
{ChangeSprite("Cas", "cas_annoyed")}
~currentSpeaker=you
Do you even like me?
~currentSpeaker=man
What the hell are you talking about?
I care about you.
You're clever, one day you're going to do something.
You're going to actually be something.
{ChangeSprite("Cas", "cas_straight_look")}
~currentSpeaker=you
Really?
~currentSpeaker=man
You'll get through it—whatever this is.
{ChangeSprite("Cas", "cas_left_look")}
~currentSpeaker=you
Ok.
~currentSpeaker=man
We should be careful.
Don't want to wake her up do we?
{ChangeSprite("Cas", "cas_straight_look")}
~currentSpeaker=you
Is she ok?
~currentSpeaker=man
It's been a difficult couple of weeks.
You know how it is.
{ChangeSprite("Cas", "cas_right_look")}
~currentSpeaker=you
Can you say something?
~currentSpeaker=man
Say what?
{ChangeSprite("Cas", "cas_straight_look")}
~currentSpeaker=you
Tell me you're proud of me.
~currentSpeaker=man
What?
~currentSpeaker=you
Say it.
~currentSpeaker=man
...
{ChangeSprite("Cas", "cas_annoyed")}
~currentSpeaker=you
Say it you fucking coward.
~currentSpeaker=man
I'll say it when you've done something to make me proud.
~characters+=pandora
{ChangeSprite("Pandora", "pandora_shocked")}
~currentSpeaker=android
{you} what are you doing?!
{ChangeSprite("Cas", "cas_right_look")}
~currentSpeaker=you
Nothing much.
{ChangeSprite("Pandora", "pandora_sad")}
~currentSpeaker=android
Why did you come back here?
~currentSpeaker=you
I thought it could help me.
~currentSpeaker=android
I am so sorry.
{ChangeSprite("Cas", "cas_left_look")}
~currentSpeaker=you
No, it's fine.
I just wanted to see my parents again.
~currentSpeaker=android
You imagined this?
~currentSpeaker=you
I did.
{ChangeSprite("Cas", "cas_annoyed")}
Somehow I thought it would make me feel better.
{ChangeSprite("Cas", "cas_left_look")}
I suppose even virtual realities have their limits.
~currentSpeaker=android
Oh dear.
{ChangeSprite("Cas", "cas_annoyed")}
~currentSpeaker=you
Don't pity me.
I don't deserve your pity.
~currentSpeaker=android
I don't pity you.
I care about you.
{ChangeSprite("Cas", "cas_straight_look")}
~currentSpeaker=you
Why?
{ChangeSprite("Pandora", "pandora_mean")}
~currentSpeaker=android
I've spent too much time around you, I'm invested now.
{ChangeSprite("Cas", "cas_left_look")}
~currentSpeaker=you
Let's get out of here.
~currentSpeaker=android
You know how to do it.
->ending_check