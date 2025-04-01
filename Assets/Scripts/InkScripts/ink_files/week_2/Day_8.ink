==day_8==
{ChangeSprite("Pandora", "pandora_normal")}
~currentSpeaker=android
~characters +=pandora
Morning
~currentSpeaker= you
Morning
On our second week without Ada already
I knew we could do it
{ChangeSprite("Pandora", "pandora_happy")}
~currentSpeaker = android
So did I
{ChangeSprite("Pandora", "pandora_normal")}
Uh
Who is that?
He’s coming inside
~characters+=stranger
{ChangeSprite("Stranger", "shadow_neutral")}
~currentSpeaker = trader
How do you do?
{ChangeSprite("Stranger", "shadow_amused")}
What an interesting…establishment.
{snappedOut=="true":
    ->stranger_first_encounter_snapped_out
  - else:
    ->stranger_first_encounter
}

==stranger_first_encounter_snapped_out
~currentSpeaker = you
Are you looking for Ada?
{ChangeSprite("Stranger", "shadow_amused")}
~currentSpeaker = trader
How did you know?
I need some things.
~currentSpeaker = you
I know.
You need money, right?
{ChangeSprite("Stranger", "shadow_sad")}
~currentSpeaker = trader
There's no need to be so crass about it.
~currentSpeaker = you
Take this.
~currentSpeaker = trader
This is a...USB?
~currentSpeaker = you
It has enough on it. It's more secure anyway.
{ChangeSprite("Stranger", "shadow_amused")}
~currentSpeaker = trader
Interesting, you're not what I expected.
~currentSpeaker = you
You're welcome to return, if you want more.
{ChangeSprite("Stranger", "shadow_neutral")}
~currentSpeaker = trader
No, I think this will suffice.
Goodbye.
~characters-=stranger
{ChangeSprite("Pandora", "pandora_sad")}
~currentSpeaker=android
What was that?
~currentSpeaker = you
A favour Ada asked me to do for her.
Don't worry about it.
~gaveTraderMoney="yes"
->continue_day_8
==stranger_first_encounter
~currentSpeaker = you
Can I help you with anything.
{ChangeSprite("Stranger", "shadow_neutral")}
~currentSpeaker = trader
I was just walking by when I remembered that I needed to talk. 
On behalf of a mutual friend. 
~currentSpeaker = you
And who was that?
{ChangeSprite("Stranger", "shadow_amused")}
~currentSpeaker = trader
The creator of course.
{ChangeSprite("Stranger", "shadow_neutral")}
Anyway,
I need:
The rabbit hole, the wardrobe and the castle
Show them to me when I return.
~currentSpeaker = you
Huh?
{ChangeSprite("Stranger", "shadow_sad")}
~currentSpeaker = trader
I must go now.
Sorry for taking your time.
~characters-=stranger
{ChangeSprite("Pandora", "pandora_sad")}
~currentSpeaker=android
What was that?
~currentSpeaker = you
I'm not sure exactly.
->continue_day_8
==continue_day_8
~characters+=lavender
~currentSpeaker=snob
Who was that guy that left just now?
~currentSpeaker=android
I don’t know, we’ve never seen him before.
{ChangeSprite("Lavender", "lavender_thinking")}
~currentSpeaker= snob
He was cute. 
Couldn’t see his face.
But his outfit was so cute.
{ChangeSprite("Lavender", "lavender_sad")}
When I tried to speak to him he told me to go to hell.
{ChangeSprite("Lavender", "lavender_tears_crying")}
I think I might die.
{ChangeSprite("Lavender", "lavender_sad")}
{ChangeSprite("Pandora", "pandora_pensive")}
~currentSpeaker= android 
Is that a good thing?
{allbooks ? togue_uniform: -> togue_pets->} 
~currentSpeaker = you
Why was that strange man dressed like that anyway?
{ChangeSprite("Lavender", "lavender_normal")}
~currentSpeaker=snob
There’s some kind of convention for fans of a certain Victorian RPG detective mystery game. 
{ChangeSprite("Lavender", "lavender_thinking")}
Never got into it myself, but it looks like a lot of fun.
{ChangeSprite("Lavender", "lavender_normal")}
And it’s nice to see people dressing nicely for a change.
{ChangeSprite("Pandora", "pandora_happy")}
~currentSpeaker= android
The outfits certainly look very fun. 
~currentSpeaker=you
You’ve heard of this Pan?
{ChangeSprite("Pandora", "pandora_normal")}
~currentSpeaker=android
I may have taken a look while I was putting out the bins.
{ChangeSprite("Lavender", "lavender_thinking")}
~currentSpeaker=snob
So, I was wondering, have you seen Tai around?
~currentSpeaker=you
No, we haven’t sorry.
Is she meant to be meeting you?
{ChangeSprite("Lavender", "lavender_normal")}
~currentSpeaker=snob
Yes.
She has news about what’s happening with the data leak. I think it’s been cleared up.
{ChangeSprite("Lavender", "lavender_thinking")}
She was meant to have a meeting with her boss today.
~currentSpeaker=you
Well, you can wait here if you like.
There’s an area by the bookshelves over there.
~currentSpeaker=android
I can make you tea while you wait.
{ChangeSprite("Lavender", "lavender_happy")}
~currentSpeaker=snob
Thanks.
~characters-=lavender
~currentSpeaker=you
Don’t you think Lavender is acting a bit strange?

~currentSpeaker=android
She’s just worried, I think.
{ChangeSprite("Pandora", "pandora_happy")}
At least she is being nice to us.
{ChangeSprite("Pandora", "pandora_pensive")}
I thought that man was strange. But I suppose if he’s from the convention. Maybe what he was saying was some kind of reference to that game.
~currentSpeaker=you
Ugh I hate it when people do that.
It’s so pretentious. 
Who does he think he’s trying to impress?
{ChangeSprite("Pandora", "pandora_normal")}
~currentSpeaker=android
He really got on your nerves, didn’t he?
Oh, someone’s at the door.
~characters+=kent
{ChangeSprite("Kent", "kent_normal")}
~currentSpeaker=comic
Long time, no see.
{ChangeSprite("Kent", "kent_amused")}
I see you already have company.
~currentSpeaker=you
She’s waiting for Tali, let her be.
{allbooks ? lady_darkness_373: -> lady_darkness->} 
{ChangeSprite("Kent", "kent_side_serious")}
~currentSpeaker=comic
There was a threat on Benedict Blue’s life this morning. 
~currentSpeaker = you
Ah, right.
{ChangeSprite("Pandora", "pandora_shocked")}
~currentSpeaker = android
Oh no.
No wonder she’s acting so strange.
{ChangeSprite("Pandora", "pandora_normal")}
{ChangeSprite("Kent", "kent_side_normal")}
~currentSpeaker=comic
The prime minister is saying if BB is compromised it’s as good as the whole country being compromised.
~currentSpeaker=you
Do they know anything about the terrorists?
{ChangeSprite("Kent", "kent_normal")}
~currentSpeaker=comic
They're a group that call themselves The Syndicate.
~currentSpeaker=you
Ah I've heard of this.
~currentSpeaker=android
What is it?
{ChangeSprite("Kent", "kent_side_serious")}
~currentSpeaker=comic
Well, it's all very annonymous. We don't know exaclty how they do it. 
~currentSpeaker=you
Newspaper cuttings.
{ChangeSprite("Kent", "kent_amused")}
~currentSpeaker=comic
Ha.
{ChangeSprite("Kent", "kent_side_normal")}
No, it's probably more sophisticated than that.
{ChangeSprite("Kent", "kent_side_serious")}
Encryption algorithms, secret societies and bullshit. 
~currentSpeaker=android
Bullshit?
{ChangeSprite("Kent", "kent_normal")}
~currentSpeaker=comic
Not sure what their goal is, but I'm not entirely sure it's a good one. And I'm not sure they're going about their terrorism in the most ethical manner.
Someone is funding this, we're not sure who.
~currentSpeaker=you
Not doing a good job. You're the press, you should know more.
{ChangeSprite("Kent", "kent_amused")}
~currentSpeaker=comic
You could say we have more pressing matters to deal with.
~currentSpeaker=you
What could be more pressing than the threat of terrorism?
~currentSpeaker=comic
Churning out abhorrent comics of course.
{ChangeSprite("Pandora", "pandora_pensive")}
~currentSpeaker=android
I don't get why they're threatening Mr. Blue in the first place.
What has he done to warrent such a thing?
{ChangeSprite("Kent", "kent_side_normal")}
~currentSpeaker= comic
It's less one factor, more a bunch of them.
The chaos in London recently combined with our increasing isolation, politically and economically, which has in part been facilitated by Mr. Blue. 
{ChangeSprite("Kent", "kent_side_serious")}
Some would say he is essentially a dictator without the official political power of a dictator. 
~currentSpeaker= snob
Ahem.
I’m right here.
{ChangeSprite("Kent", "kent_amused")}
~currentSpeaker=comic
These are allegedly opinions that I believe to be held by some people.
~currentSpeaker= you
But, I mean, it seems to me that’s the case right? 
{ChangeSprite("Kent", "kent_side_serious")}
~currentSpeaker=comic
Yes, but he didn’t just pop up overnight.
The seeds of this disaster were sown a long time ago.
Governments leaving cracks wide open, begging to be exploited.
And then some rich guy comes in and says he’s going to fix everything.
They turn a blind eye to where his money goes.
{ChangeSprite("Lavender", "lavender_sad")}
~characters+=lavender
~currentSpeaker=snob
I-I’m leaving.
Tell Tali not to wait for me.
Ok, see you around Cas.
~characters-=lavender
~currentSpeaker=you
That’s not good.
{ChangeSprite("Kent", "kent_normal")}
~currentSpeaker=comic
I’m suprised she’s even out, surely she should be a bit more cautious considering who her father is.
Then again, he’s always had a very lax attitude when it comes to his kids.
~currentSpeaker=you
Still, must be difficult for her.
~currentSpeaker=comic
I imagine it is.
{ChangeSprite("Kent", "kent_amused")}
It’s an adjustment, when you realise despite your money and power, you can still be vulnerable.
I think when you’re at that level of wealth, you start thinking you’re untouchable.
And it’s perhaps rather humbling, to know that you’re not.
~characters +=tali
{ChangeSprite("Tali", "tali_normal")}
~currentSpeaker=webdev
Hey!
How are you?
{ChangeSprite("Tali", "tali_happy")}
Hey Kent!
~currentSpeaker=comic
Hello there!
~currentSpeaker=you
It's good to see you {webdev}
{ChangeSprite("Tali", "tali_talking_forward")}
~currentSpeaker=webdev
Have you seen {snob}?
~currentSpeaker=you
She was just here. But she had to leave, and said not to wait for her.
{ChangeSprite("Tali", "tali_normal")}
~currentSpeaker=webdev
Oh ok.
{allbooks ? forest_god: -> god_of_the_forest->} 
{ChangeSprite("Kent", "kent_normal")}
~currentSpeaker=comic
How’s the boss treating you {webdev}?

~currentSpeaker=webdev
Things are better.
The dirt kind of just got swept under the carpet after I spoke to Lavender.
{ChangeSprite("Tali", "tali_exasperated")}
It was so weird honestly. I think my boss has a grudge against me.
{ChangeSprite("Tali", "tali_talking_side")}
But he won’t speak anymore.
Hasn’t suggested that I take on managing the server or any other responsibilities.
{ChangeSprite("Tali", "tali_normal")}
{ChangeSprite("Kent", "kent_happy")}
~currentSpeaker=comic
That’s good, right?
{ChangeSprite("Tali", "tali_talking_forward")}
~currentSpeaker=webdev
Theoretically.
{ChangeSprite("Tali", "tali_exasperated")}
In practice, it’s made things a bit awkward.
He’s moved on to suggesting another colleague do the extra work instead.
They said no and asked me to back them up.
But…
~currentSpeaker=comic
You’re going to stand up for them right?
{ChangeSprite("Tali", "tali_serious")}
~currentSpeaker=webdev
It’s just that Lavender fought really hard to make her dad tell my boss to get off my case.
And now, rocking the boat so soon after that. It feels wrong.
~currentSpeaker=comic
I get it. But what’s to say he won’t do it again. And you can’t rely on Lavender’s support forever. What about your colleague? Don’t they also have a right to feeling comfortable in the workplace.
{ChangeSprite("Tali", "tali_exasperated")}
~currentSpeaker=webdev
Those are all really good points.
I’ve kind of been thinking about this lately to be honest.
I rely on Lavender a lot.
And…
~currentSpeaker=comic
And?
{ChangeSprite("Tali", "tali_sad")}
~currentSpeaker=webdev
It’s like…
I feel like.
She’s the only person I’ve been able to rely on in my whole entire life.
I can't lose her.
{ChangeSprite("Kent", "kent_side_serious")}
~currentSpeaker=comic
Look, Tali. I like you. So I’m going to be real with you.
I’ve already upset one person today. So I think I might as well kill two birds with one stone. 
Or upset two birds?
If that makes sense?
~currentSpeaker=you
It doesn’t.
And I don’t think you’re using that proverb correctly.
{ChangeSprite("Kent", "kent_amused")}
~currentSpeaker=comic
I’m ignoring you right now Cas.
{ChangeSprite("Kent", "kent_side_serious")}
Tali, I think you need other friends.
{ChangeSprite("Tali", "tali_upset")}
~currentSpeaker=webdev
Well, of course you’re going to think that. You quite obviously don’t like Lavender.
{ChangeSprite("Kent", "kent_normal")}
~currentSpeaker=comic
I’m not going to even try and deny it.
But the problem is not that she’s your friend. It’s that she’s your only friend.
{ChangeSprite("Kent", "kent_sad")}
A friend you rely on, for employment and to solve any problem in your life. You can’t have a healthy relationship like that. There’s an obvious power imbalance here.
~currentSpeaker=webdev
Are you saying I’m too poor to be friends with her?
{ChangeSprite("Kent", "kent_side_serious")}
~currentSpeaker=comic
I’m not saying that exactly… I’m just saying that she lives in a completely different reality to you, to us to anyone you’ve ever known.
{ChangeSprite("Tali", "tali_sad")}
~currentSpeaker=webdev
I do think that sometimes, it really sucks. She’s helped me out so much. She supported me when I came out to my parents. 
{ChangeSprite("Tali", "tali_talking_side")}
She let me live in her apartment during uni when I couldn’t afford rent. 
She helped me with the deposit on my current flat. She helped me get my current job. 
She’s the one I know I can turn to, but she’s the only one. 
{ChangeSprite("Kent", "kent_normal")}
~currentSpeaker=comic
Do you speak to your parents anymore?
{ChangeSprite("Tali", "tali_sad")}
~currentSpeaker=webdev
No.
{ChangeSprite("Tali", "tali_serious")}
It’s complicated.
They’re furious with me.
{ChangeSprite("Tali", "tali_talking_side")}
I speak to my sister sometimes, but she’s still quite young.
{ChangeSprite("Kent", "kent_side_serious")}
~currentSpeaker=comic
That sounds really shitty. 
Is it just general transphobia?
{ChangeSprite("Tali", "tali_serious")}
~currentSpeaker =webdev 
It's complicated.
My family runs this little restaurant. It's been passed down for five generations. 
{ChangeSprite("Kent", "kent_shocked")}
~currentSpeaker=comic 
Damn, that's a long time.
{ChangeSprite("Tali", "tali_happy")}
~currentSpeaker =webdev 
I remember doing my homework behind the counter while my mum served the customers.
It was a big part of my life, I guess. I didn't realise it until I left home.
My parents dedicated their lives to the place.
{ChangeSprite("Tali", "tali_serious")}
But, you see we kind of have this tradition that it's left to the oldest son. And they are meant to take over from the father.
And you see, there are two problems with that. 
Number one: I am a woman. And number two: I have no interest in restaurants, or producing food or anything customer service related.
{ChangeSprite("Tali", "tali_talking_side")}
I'm a total introvert, and I burn anythig I cook. I have no desire to serve people food or manage a business.
{ChangeSprite("Tali", "tali_serious")}
And this is the worst thing that could have happened to my parents. To know that their tradition is broken. That I will not be the person they want me to. 
{ChangeSprite("Kent", "kent_side_serious")}
~currentSpeaker =comic 
That does complicate things. Couldn't they just leave it to your sister?
{ChangeSprite("Tali", "tali_talking_forward")}
~currentSpeaker =webdev 
She's shown interest.
However, she's not a man.
{ChangeSprite("Kent", "kent_normal")}
~currentSpeaker =comic
I don't understand why that matters.
{ChangeSprite("Tali", "tali_normal")}
~currentSpeaker =webdev
In their heads they imagine that she'll marry a man, and obviously he will take the business and give it his name and then their tradition will be ruined.
{ChangeSprite("Kent", "kent_amused")}
~currentSpeaker =comic
That's ridiculous.
{ChangeSprite("Tali", "tali_talking_forward")}
~currentSpeaker =webdev 
Life is ridiculous.
{ChangeSprite("Tali", "tali_talking_side")}
We're here for such a short time. And we cling onto these things in the hopes that they will make us happy. It comforts my parents to imagine that one day, when they are gone, their descendants will prosper in the success of our family restaurant. They do not know these future people, they will never meet them but they are already more real than I am. 
{ChangeSprite("Tali", "tali_sad")}
Their potential existence has given them more solace than I ever will. 
{ChangeSprite("Kent", "kent_upset")}
~currentSpeaker =comic 
Your parents suck.
{ChangeSprite("Kent", "kent_normal")}
~currentSpeaker =you
I second that.
{ChangeSprite("Pandora", "pandora_mean")}
~currentSpeaker =android 
I dislike making assumptions about people I haven't met.
But I can't say these people have made a particularly good impression on me. At least from your description of them.
{ChangeSprite("Tali", "tali_normal")}
~currentSpeaker = webdev 
I didn’t mean to make this into a whole sob story.
My point is that things are not as simple and easy as they seem to be. Although I know you mean well.
{ChangeSprite("Tali", "tali_sad")}
I should probably get going now.
I'm tired.
~characters-=tali
{ChangeSprite("Kent", "kent_shocked")}
~currentSpeaker = comic
Hey, Tali!
~currentSpeaker = you
It’s ok, let her go.
{ChangeSprite("Kent", "kent_sad")}
~currentSpeaker = comic
I really must have foot in mouth syndrome today.
~currentSpeaker = you
I suppose you could afford to be a little more tactful.
{ChangeSprite("Kent", "kent_normal")}
I always wondered what was going on with her though.
Their friendship seems so strange.
{ChangeSprite("Pandora", "pandora_normal")}
~currentSpeaker =android
It’s none of our business, that’s what it is.
{ChangeSprite("Pandora", "pandora_pensive")}
Although–
~currentSpeaker = you
What’s up Pan?
{ChangeSprite("Pandora", "pandora_normal")}
~currentSpeaker =android
Maybe it was good for her to get that off her chest. It’s…difficult sometimes, keeping it all inside.
That being said, it was not your job to cajole it out of her.
{ChangeSprite("Kent", "kent_upset")}
~currentSpeaker = comic
I didn’t cajole anything out of her. I just offered her an opinion, and she did the rest of the talking.
I didn’t make her say anything she didn’t want to.
~currentSpeaker = you
He’s got a point Pan, maybe he wasn’t so polite, but sometimes it’s how these things go.
{ChangeSprite("Pandora", "pandora_pensive")}
~currentSpeaker =android
Fair enough.
{ChangeSprite("Kent", "kent_normal")}
~currentSpeaker = comic
I have to go now.
See you around!
~characters-=kent
~currentSpeaker = you
Don’t worry about this.
~currentSpeaker =android
What makes you think I’m worrying?
~currentSpeaker = you
I know you’re very sensitive to these kinds of things.
~currentSpeaker =android
Sensitive to what?
~currentSpeaker = you
Friction. Like any time you see people arguing or agitated, I see your whole body prickle.
~currentSpeaker =android
I do not prickle.
~currentSpeaker = you
You certainly do.
Or whatever the android equivalent of prickling is. You tense up. Your eyes stop fluttering. You stop breathing. It’s like you stop pretending to—
{ChangeSprite("Pandora", "pandora_normal2")}
~currentSpeaker =android
Finish that sentence.
I stop pretending to what?
~currentSpeaker = you
To be human.
{ChangeSprite("Pandora", "pandora_pensive")}
~currentSpeaker =android
I am not human. 
The breathing is just my cooling system at work. If my eyes flutter it’s a reflex from my body language translation software. 
I am programmed to do that to make humans at ease, the same way my voice is modulated to communicate information in a calm, efficient manner.
~currentSpeaker = you
I’m sorry, I didn’t mean–
~currentSpeaker =android
I know you didn’t.
Never mind.
{ChangeSprite("Pandora", "pandora_normal")}
Shall we do inventory?
->day_8_inventory

==day_8_inventory==
->goto_shop->
->read_check->
->end_day_8

==end_day_8==
*[Go home]
~scene = "Night"
¬
~music = "night theme"
~sfx = "rain"
{snappedOut=="no": ->night_08_F->|->night_08->}
~scene= "ShopFront"
¬
~music = ""
~sfx = "rain"
21st December, Tuesday
~scene= "GenericScene"
¬
~day+=1
->day_9