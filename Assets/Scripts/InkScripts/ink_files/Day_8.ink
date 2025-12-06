==day_8==
¬
~newsPicture = "headline8"
~newsCaption = "Sexy IOI"
~newsAnnouncement = "Sex IOIs are growing in demand. The government responds with stricter regulations to be put in place on IOIs with more 'intimate' functions."
¬
~music="Rise and shine"
~newsAnnouncement = ""
~sfx="open door"
~characters+=stranger
{ChangeSprite("Stranger", "shadow_neutral")}
¬
~currentSpeaker = trader
Hello.
{ChangeSprite("Stranger", "shadow_amused")}
What an interesting…establishment.

//first encounter logic
{ 
- (hasFile && snappedOut):
->stranger_first_encounter_has_file_snapped_out
- (hasFile == true):
->stranger_first_encounter_has_file
- (snappedOut == true):
->stranger_first_encounter_no_file_snapped_out
- else:
->stranger_first_encounter
}
==stranger_first_encounter_no_file_snapped_out
~currentSpeaker = you
Are you looking for Ada?
{ChangeSprite("Stranger", "shadow_amused")}
~currentSpeaker = trader
How did you know?
I need some things.
~currentSpeaker = you
I know.
I don't have them.
{ChangeSprite("Stranger", "shadow_sad")}
~currentSpeaker = trader
I find that hard to believe.
You refuse to help me.
~currentSpeaker = you
I will. I just got a bit distracted...
{ChangeSprite("Stranger", "shadow_amused")}
~currentSpeaker = trader
I'll give you some advice.
{ChangeSprite("Stranger", "shadow_sad")}
Don't.
~characters-=stranger
~sfx="close door"
¬
->continue_day_8
==stranger_first_encounter_has_file
//add scenario where you have the file on day 8 but have not snapped out( perhaps this shouldn't be possible and put these 'special' books in week 2)
~currentSpeaker = you
Can I help you with anything?
{ChangeSprite("Stranger", "shadow_neutral")}
~currentSpeaker = trader
I was just walking by when I remembered that I needed to talk. 
On behalf of a mutual friend. 
~currentSpeaker = you
And who was that?
{ChangeSprite("Stranger", "shadow_sad")}
~currentSpeaker = trader
Concentrate.
{ChangeSprite("Stranger", "shadow_neutral")}
Anyway,
I need:
The rabbit hole, the wardrobe, and the castle.
Show them to me when I return.
~currentSpeaker = you
Oh, here you go.
{ChangeSprite("Stranger", "shadow_amused")}
~currentSpeaker = trader
You have them?
Well that's certainly a surprise.
Thank you.
~currentSpeaker = you
No problem.
Can you tell me-
{ChangeSprite("Stranger", "shadow_sad")}
~currentSpeaker = trader
I cannot tell you anything, you should know that.
Also,
{ChangeSprite("Stranger", "shadow_amused")}
Make your own drinks.
~gaveTraderFile=true
~characters-=stranger
~sfx="close door"
¬
->continue_day_8
==stranger_first_encounter_has_file_snapped_out
~currentSpeaker = you
Are you looking for Ada?
{ChangeSprite("Stranger", "shadow_amused")}
~currentSpeaker = trader
How did you know?
I need some things.
~currentSpeaker = you
I know.
Take this.
~currentSpeaker = trader
This is a...USB?
~currentSpeaker = you
I don't know what's on it, but Ada asked me to give it to you.
{ChangeSprite("Stranger", "shadow_amused")}
~currentSpeaker = trader
Interesting, you're not what I expected.
~currentSpeaker = you
You're welcome to return if there's anything else you need.
{ChangeSprite("Stranger", "shadow_neutral")}
~currentSpeaker = trader
No, I think this will suffice.
Goodbye.
~characters-=stranger
~gaveTraderFile=true
->continue_day_8
==stranger_first_encounter
~currentSpeaker = you
Can I help you with anything?
{ChangeSprite("Stranger", "shadow_neutral")}
~currentSpeaker = trader
I was just walking by when I remembered that I needed to talk. 
On behalf of a mutual friend. 
~currentSpeaker = you
And who was that?
{ChangeSprite("Stranger", "shadow_sad")}
~currentSpeaker = trader
Concentrate.
{ChangeSprite("Stranger", "shadow_neutral")}
Anyway,
I need:
The rabbit hole, the wardrobe, and the castle.
Show them to me when I return.
~currentSpeaker = you
Huh?
{ChangeSprite("Stranger", "shadow_sad")}
~currentSpeaker = trader
I must go now.
Keep your wits about you.
~characters-=stranger
~sfx="close door"
¬
->continue_day_8
==continue_day_8
~characters+=pandora
{ChangeSprite("Pandora", "pandora_confused")}
~currentSpeaker=android
Whom were you speaking to?
~currentSpeaker = you
Some guy.
He was a bit weird.
{ChangeSprite("Pandora", "pandora_normal")}
~currentSpeaker=android
Oh, well there are all sorts about.
{ChangeSprite("Pandora", "pandora_normal")}
~currentSpeaker=android
~characters+=pandora
~currentSpeaker = android 
I'll sign you in.
*[Yes (save)]
~currentSpeaker = you 
{SaveStory()}
Thanks {android}!
*[No (don't save)] 
I can do it myself.
~currentSpeaker = android 
-How are you doing?
~currentSpeaker = you 
I'm ok, a bit flustered. The tube was so busy I'm lucky I got a seat!
->tea_or_coffee->
~sfx="open door"
~characters+=lavender
~currentSpeaker=snob
¬
-Who was that guy that left just now?
~currentSpeaker=you
I don’t know, never seen him before.
{ChangeSprite("Lavender", "lavender_thinking")}
~currentSpeaker= snob
He was cute. 
Couldn’t see his face.
But his outfit was cool.
{ChangeSprite("Lavender", "lavender_sad")}
When I tried to speak to him he told me to go to hell.
I just stood outside for a bit in stunned silence.
{ChangeSprite("Lavender", "lavender_tears_crying")}
I don't know what I did.
{ChangeSprite("Lavender", "lavender_sad")}
{ChangeSprite("Pandora", "pandora_annoyed")}
~currentSpeaker= android 
Ignore that weird man.
//{allbooks ? LUX_uniform: -> LUX_flight_uniform->} 
~currentSpeaker = you
Do you know why was that man dressed like that anyway?
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
->lavender_book_check->
{ChangeSprite("Lavender", "lavender_thinking")}
~currentSpeaker=snob
So, I was wondering, have you seen Tali around?
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
Oh, someone’s at the door.
~characters+=kent
{ChangeSprite("Kent", "kent_normal")}
~sfx="open door"
¬
~currentSpeaker=comic
Long time, no see.
{ChangeSprite("Kent", "kent_amused")}
I see you already have company.
~currentSpeaker=you
She’s waiting for Tali, let her be.
//{allbooks ? lady_darkness_373: -> lady_darkness->} 
->kent_book_check->
{ChangeSprite("Kent", "kent_side_serious")}
~currentSpeaker=comic
There was a threat on Benedict Blue’s life this morning.
They're trying to keep it all undercover, but it will get out eventually.
~currentSpeaker = you
Ah, right.
{ChangeSprite("Pandora", "pandora_shocked")}
~currentSpeaker = android
Oh no.
No wonder she’s acting so strange.
{ChangeSprite("Pandora", "pandora_normal")}
{ChangeSprite("Kent", "kent_side_normal")}
~currentSpeaker=comic
The prime minister is saying if B.B. is compromised it’s as good as the whole country being compromised.
{ChangeSprite("Kent", "kent_upset")}
If only he took threats to our lives so seriously.
~currentSpeaker=you
Do they know anything about the terrorists?
{ChangeSprite("Kent", "kent_normal")}
~currentSpeaker=comic
They're a group that call themselves The Syndicate.
~currentSpeaker=you
Ah I've heard of this.
~currentSpeaker=android
What is this group?
{ChangeSprite("Kent", "kent_normal")}
~currentSpeaker=comic
They keep themselves well hidden.
I'm usually very supportive of action against this government.
But I'm not entirely sure The Syndicate is that ethical.
Or that their goals are entirely benevolent.
They're happy to kill innocent civilians if they can achieve their goals.
We know is someone is funding them, we don't know who, but they must have a lot of resources.
~currentSpeaker=you
You're not doing a good job. You're the press, you should know more.
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
'Some people'
{ChangeSprite("Kent", "kent_side_serious")}
~currentSpeaker=comic
Blue isn't unique.
Bad actors appear all the time. But when we invite them in, they don't stop until they've gotten exactly what they wanted.
{ChangeSprite("Lavender", "lavender_sad")}
~characters+=lavender
~currentSpeaker=snob
¬
I-I’m leaving.
Tell Tali not to wait for me.
Ok, see you around Cas.
~sfx="close door"
~characters-=lavender
¬
~currentSpeaker=you
That’s not good.
{ChangeSprite("Kent", "kent_normal")}
~currentSpeaker=comic
I’m suprised she’s even out, surely she should be a bit more cautious considering her family situation.
Then again, he’s never been the most considerate father from what I've heard.
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
~sfx="open door"
¬
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
//{allbooks ? forest_god: -> god_of_the_forest->} 
->tali_book_check->
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
~currentSpeaker=comic
That sucks.
What's on your mind?
~currentSpeaker=webdev
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
But the problem isn't that she’s your friend. It’s that she’s your only friend.
{ChangeSprite("Kent", "kent_sad")}
A friend you rely on for employment, and to solve any problem in your life. You can’t have a healthy relationship like that. There’s an obvious power imbalance here.
~currentSpeaker=webdev
Are you saying I shouldn't be friends with her?
{ChangeSprite("Kent", "kent_side_serious")}
~currentSpeaker=comic
I’m not saying that exactly… I’m just saying that she lives in a completely different reality to you, to us to anyone you’ve ever known.
{ChangeSprite("Tali", "tali_sad")}
~currentSpeaker=webdev
I do think that sometimes, it really sucks. She’s helped me out so much. She supported me through a lot of difficult times. 
{ChangeSprite("Tali", "tali_talking_side")}
She let me live in her apartment at uni when I couldn’t afford rent. 
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
What happened?
{ChangeSprite("Tali", "tali_serious")}
~currentSpeaker =webdev 
It's complicated.
I'm a bit of a disappointment.
I didn't take over the family business.
{ChangeSprite("Kent", "kent_shocked")}
~currentSpeaker=comic 
Family business?
{ChangeSprite("Tali", "tali_happy")}
~currentSpeaker =webdev 
My parents own a resturant.
Quite a successful one.
{ChangeSprite("Tali", "tali_serious")}
I was meant to work there when I turned eighteen.
But I decided to leave and study.
{ChangeSprite("Tali", "tali_talking_side")}
I have no desire to serve people food or manage a business.
{ChangeSprite("Tali", "tali_serious")}
And this is the worst thing that could have happened to my parents. To know that their tradition is broken. That I will not be the person they want me to. 
{ChangeSprite("Kent", "kent_side_serious")}
~currentSpeaker =comic 
That does complicate things. Couldn't they just leave it to your sister?
{ChangeSprite("Tali", "tali_talking_forward")}
~currentSpeaker =webdev 
They probably will. But I know they're disappointed it isn't me.
{ChangeSprite("Kent", "kent_normal")}
~currentSpeaker =comic
I don't understand why that matters.
{ChangeSprite("Tali", "tali_normal")}
~currentSpeaker =webdev
Well, I am, was their son.
Tradition and all.
{ChangeSprite("Kent", "kent_amused")}
~currentSpeaker =comic
That's ridiculous.
{ChangeSprite("Tali", "tali_talking_forward")}
~currentSpeaker =webdev 
Life is ridiculous.
{ChangeSprite("Tali", "tali_talking_side")}
We're here for such a short time. So we cling onto our dreams in the hopes that they will make us happy.
{ChangeSprite("Tali", "tali_sad")}
When they don't work out the way we want them to it can be difficult to accept.
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
{ChangeSprite("Kent", "kent_shocked")}
~currentSpeaker = comic
Hey, Tali!
~characters-=tali
~sfx="close door"
¬
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
{ChangeSprite("Pandora", "pandora_annoyed")}
That being said, it was not your job to cajole it out of her.
{ChangeSprite("Kent", "kent_upset")}
~currentSpeaker = comic
I didn’t cajole anything out of her. I just offered her an opinion, and she did the rest of the talking.
I didn’t make her say anything she didn’t want to.
~currentSpeaker = you
...
{ChangeSprite("Pandora", "pandora_sad")}
~currentSpeaker =android
Fair enough.
{ChangeSprite("Kent", "kent_side_normal")}
~currentSpeaker = comic
I have to go now.
See you around.
~characters-=kent
~sfx="close door"
¬
~currentSpeaker = you
Don’t worry about this.
{ChangeSprite("Pandora", "pandora_confused")}
~currentSpeaker =android
What makes you think I’m worrying?
~currentSpeaker = you
I know you’re very sensitive to these kinds of things.
~currentSpeaker =android
Sensitive to what?
~currentSpeaker = you
Friction. Like any time you see people arguing or agitated, I see your whole body prickle.
{ChangeSprite("Pandora", "pandora_annoyed")}
~currentSpeaker =android
I do not prickle.
~currentSpeaker = you
You certainly do.
Or whatever the android equivalent of prickling is. You tense up. Your eyes stop fluttering. You stop breathing.
{ChangeSprite("Pandora", "pandora_normal")}
~currentSpeaker =android
I don't breathe.
I don't need to breathe.
~currentSpeaker = you
You pretend to breathe though, don't you?
{ChangeSprite("Pandora", "pandora_pensive")}
~currentSpeaker =android
The sound you're probably refering to is my cooling system at work. If my eyes flutter it’s a reflex from my body language translation software. 
I am programmed to do that to make humans at ease, the same way my voice is modulated to communicate information in a calm, efficient manner.
~currentSpeaker = you
I’m sorry, I didn’t mean to offend you.
{ChangeSprite("Pandora", "pandora_confused")}
~currentSpeaker =android
I know you didn’t.
{ChangeSprite("Pandora", "pandora_pensive")}
Never mind.
Shall we do inventory?
->day_8_inventory

==day_8_inventory==
~music = "shop"
->goto_shop->
->read_check->
->end_day_8

==end_day_8==
~characters+=pandora
~currentSpeaker = android 
I'll sign you out for the day.
~currentSpeaker = you 
*[Yes (save)]
{SaveStory()}
Thanks {android}!
*[No (don't save)] 
I can do it myself
-Goodnight!
~scene = "Night"
¬
~music = "night theme"
~sfx = "rain"
{snappedOut=="no": ->night_08_F->|->night_08->}
~scene= "ShopFront"
¬
~music="An average day"
~sfx = "rain"
21st December, Tuesday
~scene= "GenericScene"
¬
~day+=1
->day_9