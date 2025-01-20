==day_9==
~characters+=pandora
{ChangeSprite("Pandora", "pandora_normal")}
~currentSpeaker=you
Hey Pandora 
Uh what's that
{ChangeSprite("Pandora", "pandora_happy")}
~currentSpeaker=android
I have an idea.
Before you get upset.
Hear me out.
~currentSpeaker=you
Not sure I like this.
~currentSpeaker=android
What if…we had a Christmas Eve party.
This Friday.
~currentSpeaker=you
I know when Christmas Eve is. And I think a lot of people will have plans, so I don’t think that’s a good idea.
{ChangeSprite("Pandora", "pandora_normal")}
~currentSpeaker=android
Maybe.
But maybe not. they might be free. They might like the idea, and if they don’t. What have we got to lose?
~currentSpeaker=you
I dont like that you just assumed I would be free.
{ChangeSprite("Pandora", "pandora_mean")}
~currentSpeaker=android
Are you?
~currentSpeaker=you
Yes, but I don’t like that you assumed it.
I can do the evening.
{ChangeSprite("Pandora", "pandora_excited")}
~currentSpeaker=android
Amazing. We can have food and games.
~currentSpeaker=you
What?
Nothing book themed?
{ChangeSprite("Pandora", "pandora_normal")}
~currentSpeaker=android
Well, it could be book themed.
I’m certainly not opposed to anything book themed.
I mainly want it to be fun themed though.
~currentSpeaker=you
You’re really getting into all this event planning.
What’s gotten into you?
{ChangeSprite("Pandora", "pandora_happy")}
~currentSpeaker=android
I don’t know.
I feel like this is my calling.
This is how I help people.
And we need a little cheer in our lives right now.
~currentSpeaker=you
Well I like it.
It’s good that you’ve found purpose.
{ChangeSprite("Pandora", "pandora_pensive")}
~currentSpeaker=android
Do you feel like you have a purpose?
~currentSpeaker= you
Honestly. No.
But don’t worry about me.
Some people are like that, they go through life, they don’t find anything. They don’t do anything. And then…they die.
What can we do about it?
{ChangeSprite("Pandora", "pandora_happy")}
~currentSpeaker=android
I’ll help you find your purpose in life.
~currentSpeaker=you
Ha!
What you’re serious?
No. I don't need purpose in my life. I'm fine, thank you.
{ChangeSprite("Pandora", "pandora_sad")}
~currentSpeaker=android
Ok, if you change your mind. I’m always here to help.
I have to go, the plumbing in the toilet is making strange noises again.
~currentSpeaker=you
You're not scared of some gurgling pipes, are you?
~currentSpeaker=android
It's unnerving. Don't make fun of me!
~characters-=pandora
~characters+=kent
{ChangeSprite("Pandora", "pandora_normal")}
~currentSpeaker=comic
Hey hey!
{allbooks ? x_a_235: -> X_and_A->} 
~currentSpeaker=you
How are things?
{ChangeSprite("Kent", "kent_side_serious")}
~currentSpeaker=comic
Things are...not looking good.
{ChangeSprite("Kent", "kent_normal")}
I was just wondering if you’ve seen Lavender?
~currentSpeaker=you
No, you’re our first client today.
{ChangeSprite("Kent", "kent_side_serious")}
~currentSpeaker=comic
You’ve heard the news. The Blue House is under lockdown. No one is allowed in or out. There’s men standing with machine guns around the perimeter.
~currentSpeaker=you
That escalated quickly.
{ChangeSprite("Kent", "kent_normal")}
~currentSpeaker=comic 
I’ve got a feeling I won’t be around tomorrow. But I just needed to vent to someone. And also, I’m kind of curious about what Lavender is doing.
~currentSpeaker=you
It must be dangerous for her.
No way she’s just going about her normal day.
{ChangeSprite("Kent", "kent_side_serious")}
~currentSpeaker=comic
Exactly what I was thinking.
~characters+=tali
{ChangeSprite("Tali", "tali_sad")}
~currentSpeaker=webdev
Hey guys.
~currentSpeaker=you
Uh hi Tali.
{ChangeSprite("Kent", "kent_normal")}
~currentSpeaker=comic
Hi there.
{allbooks ? the_glass_lab: -> the_glass_labyrinth->} 
{ChangeSprite("Tali", "tali_talking_side")}
~currentSpeaker=webdev
Look, you know we had that conversation yesterday.
And I got upset.
But then I thought about it.
And I know, deep in my stubborn heart, that maybe there’s a shred of truth to what you said.
~currentSpeaker=comic
Honestly, I was going to apologise.
{ChangeSprite("Kent", "kent_amused")}
I can butt in a bit much sometimes.
~currentSpeaker=webdev
No.
I needed to hear it.
So I spoke to Lavender.
{ChangeSprite("Kent", "kent_upset")}
~currentSpeaker=you
What do you mean ‘spoke’ to Lavender?
{ChangeSprite("Kent", "kent_amused")}
~currentSpeaker=comic
You know, it’s a thing you do with your mouth. You move your lips and sounds come out.
~currentSpeaker=you
…
That was unnecessary.
{ChangeSprite("Kent", "kent_normal")}
~currentSpeaker= comic
Ok ok.
{ChangeSprite("Tali", "tali_serious")}
~currentSpeaker=webdev
To cut the story short: she’s totally pissed.
~currentSpeaker=comic
Look Tali–
{ChangeSprite("Tali", "tali_upset")}
~currentSpeaker=webdev
I don’t want to hear it. I can handle things by myself. And I’m kind of…pissed off with her too. She’s so annoying and she always thinks she’s right.
I’m sick of hearing her stupid petty problems, and treating them like they hold a candle to anything that normal people suffer. 
{ChangeSprite("Kent", "kent_amused")}
~currentSpeaker=comic
It all just came out of you, didn’t it?
{ChangeSprite("Tali", "tali_exasperated")}
~currentSpeaker=webdev
…yes
I couldn’t hold on anymore.
{ChangeSprite("Tali", "tali_talking_side")}
I didn’t realise I hated her so much.
{ChangeSprite("Tali", "tali_exasperated")}
And it all feels so stupid now.
{ChangeSprite("Tali", "tali_talking_forward")}
It’s not even her fault, it’s not her fault she’s so sheltered and spoiled. 
~currentSpeaker=you
What’s the next step then?
Are you going to apologise?
{ChangeSprite("Tali", "tali_upset")}
~currentSpeaker=webdev
Why should I apologise?
{ChangeSprite("Tali", "tali_sad")}
Should I apologise?
{ChangeSprite("Tali", "tali_shocked")}
Oh my god, what should I do.
{ChangeSprite("Kent", "kent_side_serious")}
{ChangeSprite("Tali", "tali_sad")}
~currentSpeaker=comic
Give her time to cool off.
Give yourself time to cool off.
{ChangeSprite("Kent", "kent_amused")}
Friends have arguments. Shit happens.
If they’re good enough friends, they usually make up.
{ChangeSprite("Tali", "tali_normal")}
~currentSpeaker=webdev
I’ve never had an argument with any of my friends.
Certainly not Lavender.
I couldn’t even imagine having an argument with her, before it happened.
{ChangeSprite("Kent", "kent_upset")}
~currentSpeaker=comic
Hmph really?
{ChangeSprite("Kent", "kent_amused")}
We’ll have to work on that imagination of yours.
~currentSpeaker=you
I think Kent has a good point about giving it some time.
And then maybe apologise for the way you communicated, say you wish you’d worded it better or something.
{ChangeSprite("Tali", "tali_talking_forward")}
~currentSpeaker=webdev
Hmm…that’s a start at least.
Well, I could try that.
{ChangeSprite("Kent", "kent_side_serious")}
~currentSpeaker=comic
It depends on how you feel though?
Is this a relationship you want to rekindle?
Or do you feel like you’ve outgrown it?
{ChangeSprite("Tali", "tali_upset")}
~currentSpeaker=webdev
What the hell does that mean?
~currentSpeaker=comic
I just think that, sometimes, we invest a lot of time into maintaining friendships for the sake of it. Just because we’re scared of moving on, and that holds us back. 
{ChangeSprite("Tali", "tali_serious")}
~currentSpeaker=webdev
You think Lavender is holding me back?
{ChangeSprite("Kent", "kent_normal")}
~currentSpeaker=comic
It doesn’t matter what I think.
It’s what you think.
{ChangeSprite("Tali", "tali_serious")}
~currentSpeaker=webdev
…
No, that’s not true.
She’s been good to me.
I don’t want to live my life cutting everyone off at the slightest inconvenience.
{ChangeSprite("Kent", "kent_happy")}
~currentSpeaker=comic
Works for me.
{ChangeSprite("Tali", "tali_talking_forward")}
~currentSpeaker=webdev
And how about you, {you}?
~currentSpeaker=you
Usually people are the ones cutting me off.
{ChangeSprite("Kent", "kent_amused")}
~currentSpeaker=comic
I like you {you}, but you worry me sometimes. 
{ChangeSprite("Tali", "tali_serious")}
~currentSpeaker=webdev
Maybe she's just had bad luck.
~currentSpeaker=you
Sometimes people just come and go. 
And there’s nothing you can do about it.
~characters+=pandora
{ChangeSprite("Pandora", "pandora_happy")}
~currentSpeaker=android
Oh my, almost everyone is here.
I’m sorry, I was fixing the toilet.
I must make some tea.
{ChangeSprite("Kent", "kent_amused")}
~currentSpeaker=comic
Eh, I’m good thanks.
{ChangeSprite("Tali", "tali_smirk")}
~currentSpeaker=webdev
I second that.
{ChangeSprite("Pandora", "pandora_pensive")}
~currentSpeaker=android
Are you sure?
{ChangeSprite("Pandora", "pandora_happy")}
Anyway, I was going to invite you to the Christmas Eve party we’re having.
I know that {you} said that you guys might have other plans, but I thought it was worth a shot asking.
{ChangeSprite("Tali", "tali_happy")}
~currentSpeaker=webdev
Sounds good to me. I don’t have any plans for Christmas Eve. I usually have something with Lavender, but somehow I don’t think that’s going ahead this year.
{ChangeSprite("Pandora", "pandora_excited")}
~currentSpeaker=android
Yes!
{ChangeSprite("Pandora", "pandora_pensive")}
How about you, {comic}?
{ChangeSprite("Kent", "kent_side_normal")}
~currentSpeaker=comic
My boyfriend’s a paramedic, so I usually spend Christmas Eve curled up in front of the tv with some snacks watching terrible films.
{ChangeSprite("Kent", "kent_amused")}
But I suppose I can hijack my plans this year for this.
{ChangeSprite("Pandora", "pandora_excited")}
~currentSpeaker=android
I knew I could count on you!
I just need to ask {snob} now.
{ChangeSprite("Tali", "tali_talking_side")}
~currentSpeaker=webdev
I’m thinking of checking up on her later today, if she’s up for talking I can tell her.
{ChangeSprite("Tali", "tali_serious")}
I’m a bit worried about her actually, with this whole terrorist attack.
{ChangeSprite("Kent", "kent_side_serious")}
~currentSpeaker=comic
Yeah, be careful out there.
{ChangeSprite("Tali", "tali_normal")}
~currentSpeaker=webdev
I have to go, see you later.
{ChangeSprite("Kent", "kent_normal")}
~currentSpeaker=comic
I’ll join you. Bye guys.
~characters-=tali
~characters-=kent
->day_9_inventory
==day_9_inventory==
->goto_shop->
->read_check->
->end_day_9
==end_day_9==
*[Go home]
~scene = "Night"
¬
~music = "night theme"
~sfx = "rain"
{snappedOut=="no": ->night_09_F->|->night_09->}
~scene= "ShopFront"
¬
~music = ""
~sfx = "rain"
22nd December, Wednesday
~scene= "GenericScene"
¬
~day+=1
->day_10