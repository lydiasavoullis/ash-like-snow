INCLUDE variables.ink
EXTERNAL ChangeSprite(name,sprite)
EXTERNAL RemoveCharacter(name)
EXTERNAL AddCharacter(name,sprite)
//EXTERNAL PlayEffect(effectName)
==day_1==
~scene= "ShopFront"
~newsPicture = "headline14"
~newsCaption = "A bottle of Fate - Ilustration by Kent Herring"
Monday 5th December 206X
~scene= "GenericScene"

<i>I hope you know what you're doing</i>
~newsAnnouncement = "Breaking news...Neurological problems caused by 'miracle' drug "

¬
~sfx = "open door"
~characters += lavender
¬

~currentSpeaker = snob
{ChangeSprite("Lavender", "lavender_angry")}
HEY you have a freaking customer
~music="Lavender's song"
~newsAnnouncement = ""
Where's Adalina?
{ChangeSprite("Lavender", "lavender_normal")}
~currentSpeaker = snob
Who are you?
~currentSpeaker = you
I'm {you}, Ada is on holiday. She won't be back until January
~currentSpeaker = snob
{ChangeSprite("Lavender", "lavender_thinking")}
Holiday?
January?
This is impossible
I need her
You won't suffice
~currentSpeaker = you
Well I'm all you've got
~currentSpeaker = snob
{ChangeSprite("Lavender", "lavender_angry")}
You will regret this
You will regret everything
~currentSpeaker = you
I already do
~currentSpeaker = snob
This is not a joke 
I have important business with Adalina
She's my only supply of extremely rare vintage magazines
~currentSpeaker = you
I'm in charge of the inventory now, I can supply anything you need
I use the same website as Ada, I can supply your magazines
~currentSpeaker = snob
{ChangeSprite("Lavender", "lavender_normal")}
...
~currentSpeaker = you
What kind of magazines are you looking for?
{ChangeSprite("Lavender", "lavender_normal")}
~currentSpeaker = snob
Fashion magazines
Specifically Togue
~currentSpeaker = you
Don't you mean Vogue?
~currentSpeaker = snob
{ChangeSprite("Lavender", "lavender_angry")}
I meant what I said I meant
Ugh why do I even bother
~currentSpeaker = ""
{RemoveCharacter("Lavender")}
~characters -= lavender
~sfx = "close door"
~music = "none"
~currentSpeaker = you
What the hell was that?
~characters += pandora
~currentSpeaker = android
She's a lot of fun, isn't she?
~button="cup"
Tea or coffee?
*[Tea]
~currentSpeaker = you
I fancy some tea
->Pan_conversation
*[coffee]
~currentSpeaker = you
I need a coffee
->Pan_conversation

==Pan_conversation==
~music = "An average day"
~currentSpeaker = android
~characters += pandora
~currentSpeaker = you
How have I never met her before?
~currentSpeaker = android
{ChangeSprite("Pandora", "pandora_mean")}
Luck perhaps?
~currentSpeaker = you
Sounds like she knows Ada
~currentSpeaker = android
{ChangeSprite("Pandora", "pandora_normal")}
I think they meet after hours. She pays her for it, don't worry
And you know Ada never turns down the opportunity to earn a little extra cash
~currentSpeaker = you
She does that just for a couple of old magazines?
~currentSpeaker = android
Uh huh, and this place wouldn't be standing without her
~currentSpeaker = you
They can't be worth that much?
Who can even afford that these days?
~currentSpeaker = android
Well check up on The Trader tonight and you'll find out
Maybe stock up on some Togue magazines if you don't want her to rip your head off next time
~currentSpeaker = you
I should never have agreed to this
~currentSpeaker = android
Sorry, got to go
~characters -= pandora
~currentSpeaker = you
what the hell
...
~characters += kent
~currentSpeaker = comic 
Do you sell comic books here?
~currentSpeaker = you 
Yeah they’re on that shelf
~currentSpeaker = comic 
Thanks
{ChangeSprite("Kent", "kent_side_normal")}
Uh, is that it?
{ChangeSprite("Kent", "kent_normal")}
~currentSpeaker = you 
Sorry it’s not much.
~currentSpeaker = comic 
That’s OK I guess. I thought this place would be better stocked.
~currentSpeaker = you 
I could help with that. Maybe if you gave me some pointers.
~currentSpeaker = comic 
{ChangeSprite("Kent", "kent_amused")}
Thanks. Sure I can write you a list. I’m Kent by the way.
~currentSpeaker = you 
Cas
~currentSpeaker = comic 
{ChangeSprite("Kent", "kent_normal")}
Cas?
~currentSpeaker = you 
That’s right.
~currentSpeaker = comic 
Nice to meet you.
Is this your shop?
~currentSpeaker = you 
No, the boss is out on holiday for a month. I’m basically in charge until then.
~currentSpeaker = comic 
{ChangeSprite("Kent", "kent_amused")}
Wow, that must be difficult. They paying you overtime?
~currentSpeaker = you 
Oh no, it’s really not a problem. This place is practically empty. I don’t get overtime, but it doesn’t really matter.
~currentSpeaker = comic 
You should be more pushy, you know. Times are hard. Need to think about yourself too.
~currentSpeaker = you 
I know, but Ada–my boss really helped me out. I know she can’t afford to pay me extra right now. It doesn’t seem right to ask.
~currentSpeaker = comic 
{ChangeSprite("Kent", "kent_side_serious")}
Well, suit yourself. Lucky you get on so well with your boss. Mine sucks.
~currentSpeaker = you 
What do you do?
~currentSpeaker = comic 
{ChangeSprite("Kent", "kent_normal")}
I’m an illustrator for the Calamity, sometimes I write too. I’m trying to get more into writing.
~currentSpeaker = you 
That sounds very cool.
~currentSpeaker = comic 
It was my dream job at first. But my boss works me to the bone. He calls me at random times, sometimes in the middle of the night or at the weekend and tells me to work on something immediately.
~currentSpeaker = you 
That doesn't sound very cool.
~currentSpeaker = comic 
Not cool at all. I want to get out but I keep thinking about all the people who wish they were me. 
~currentSpeaker = you 
I see what you mean. 
~currentSpeaker = comic 
I also keep thinking about all those people on the streets. I’m lucky I have income and a place to stay. I wonder what would happen if I lost all those.
~currentSpeaker = you 
Yes, it’s become so dangerous lately, also with the explosives. I heard they killed some homeless people.
~currentSpeaker = comic 
They weren’t the intended target, but I guess when you set an explosion so close to a homeless shelter.
~currentSpeaker = you 
I wonder why they even thought that would be a good location for a bomb. Wait a minute, how do you know they weren’t the intended target?
~currentSpeaker = comic 
{ChangeSprite("Kent", "kent_shocked")}
Uh, I wasn’t meant to say that. It’s for the story tomorrow.
~currentSpeaker = you 
Oh, well, I won’t tell anyone.
~currentSpeaker = comic 
{ChangeSprite("Kent", "kent_side_serious")}
I’d lose my job if anyone found out.
~currentSpeaker = you 
Who’s going to find out? Anyway, if it will all be revealed tomorrow, what’s the risk?
~currentSpeaker = comic 
{ChangeSprite("Kent", "kent_amused")}
OK, so they know that the bomb was intended for someone in particular, a politician who was going to visit the shelter. 
~currentSpeaker = you 
Really?
~currentSpeaker = comic 
Thing is, he never turned up.
~currentSpeaker = you 
Do you think he got tipped off?
~currentSpeaker = comic 
{ChangeSprite("Kent", "kent_side_normal")}
That seems possible, but then why didn’t he tell anyone about the bomb? That seems very irresponsible?
~currentSpeaker = you 
Typical politicians. 
~currentSpeaker = comic 
{ChangeSprite("Kent", "kent_side_serious")}
I don’t want to talk about this anymore. It’s a bit of a downer.
~currentSpeaker = you 
I get it. Want to give me that list.
~currentSpeaker = comic 
{ChangeSprite("Kent", "kent_normal")}
Sure.
~currentSpeaker = you 
What’s on here? What’s Zebraman?
~currentSpeaker = comic 
Oh, that’s kind of a guilty pleasure. It’s got a good story though.
~currentSpeaker = you 
What’s it about?
~currentSpeaker = comic 
{ChangeSprite("Kent", "kent_happy")}
Well, he’s half man, half zebra.
~currentSpeaker = you 
Like a centaur?
{ChangeSprite("Kent", "kent_normal")}
~currentSpeaker = comic 
Well, yes, but no. He’s way better than a centaur.
~currentSpeaker = you 
Because he has stripes?
~currentSpeaker = comic 
{ChangeSprite("Kent", "kent_happy")}
Yes–but no. He’s super fast and a sharpshooter.
~currentSpeaker = you 
How does he hide that he’s part zebra? That would seem very difficult.
~currentSpeaker = comic 
He doesn’t.
~currentSpeaker = you 
Does he like, live on the outskirts of society? Or a secret base hidden away in the mountains?
~currentSpeaker = comic 
{ChangeSprite("Kent", "kent_side_serious")}
You should just read the comics Cas. OK.
~currentSpeaker = you 
Ugh. 
{ChangeSprite("Kent", "kent_amused")}
~currentSpeaker = comic 
You read, don’t you?
~currentSpeaker = you 
I used to. Don’t have much time for that anymore. I never read comics anyway.
~currentSpeaker = comic 
{ChangeSprite("Kent", "kent_shocked")}
WHY?
~currentSpeaker = you 
{ChangeSprite("Kent", "kent_normal")}
Because I get confused.
~currentSpeaker = comic
{ChangeSprite("Kent", "kent_shocked")}
HOW?
~currentSpeaker = you 
I don’t know, sometimes I find the pictures ambiguous, it’s not always clear to me who’s speaking or what’s going on.
~currentSpeaker = comic 
{ChangeSprite("Kent", "kent_amused")}
A picture is worth a thousand words, is it not.
~currentSpeaker = you 
I think if that were true books would not exist, or newspapers for that matter. 
~currentSpeaker = comic 
{ChangeSprite("Kent", "kent_normal")}
Read a comic, and if you get confused send me a picture and I’ll explain to you what’s going on.
~currentSpeaker = you 
Doesn’t that just defeat the purpose of reading in the first place.
Tali enters.
~characters += tali
~currentSpeaker = webdev 
Hey Cas!
~currentSpeaker = you 
Hey, I’ve got your requests here. Ada made sure to find them before she left and she left me a note telling me it was urgent that you received these.
~currentSpeaker = webdev 
Thanks! I mean it wasn’t that urgent. But I am still very grateful.
~currentSpeaker = webdev 
Sorry I didn’t mean to interrupt.
~currentSpeaker = comic 
No worries.
~currentSpeaker = you 
This is Kent. Avid comic book reader and illustrator and writer for the Calamity.
~currentSpeaker = webdev 
What no way! I was just updating their website last week. 
~currentSpeaker = webdev 
I’m Tali by the way.
~currentSpeaker = comic 
Nice to meet you. Thank God for your help, the layout is much better now, we had a link from the comedy section taking people to the daily world disasters. It was dreadfully inappropriate.
~currentSpeaker = webdev 
It scales correctly on mobile devices and holo screens too.
~currentSpeaker = webdev 
Are you the one who did that comic on the railway crash?
~currentSpeaker = comic 
Uh, yeah, my boss begged me. I needed the cash. Sorry, I hope it wasn’t too offensive.
~currentSpeaker = webdev 
No, I thought it was hilarious. I mean, nobody died right?
~currentSpeaker = comic 
Sure no one died, but someone was horribly disfigured.
~currentSpeaker = webdev 
oh 
~characters+=pandora
~currentSpeaker = android 
I didn’t realise there were so many people here.
~currentSpeaker = android 
Tea, coffee anyone?
~currentSpeaker = comic 
I’m good.
~currentSpeaker = webdev 
Oh, can I have a cup of tea please?
~currentSpeaker = android 
Sure. Here you go!
~currentSpeaker = webdev 
Woah, that was fast.
~currentSpeaker = webdev 
Wait a minute. Are you an AI?
~currentSpeaker = android 
Of course! I’m a therapy AI.
~currentSpeaker = webdev 
Therapy?
~currentSpeaker = android 
I retrained as a shop assistant though.
~currentSpeaker = webdev 
Why?
~currentSpeaker = android 
My last job didn’t work out. I’m much more suited to this.
~currentSpeaker = webdev 
But–
~currentSpeaker = you 
Pandora is the only other person working here right now. We’re short staffed.
~currentSpeaker = android 
Luckily no one really comes here anyway.
~currentSpeaker = android 
So this is just the right amount of staff.
~currentSpeaker = android 
Who wrote this? A list? What’s a Giraffe Woman?
~currentSpeaker = comic 
Giraffe Woman is the main love interest of Zebra Man. It’s a spin off comic. Some say it’s even better than Zebra Man because it’s more morally grey.
~currentSpeaker = android 
How does that make it good?
~currentSpeaker = comic 
Well, you know, people like morally grey characters?
~currentSpeaker = android 
Why?
~currentSpeaker = comic 
Honestly, I’ve never considered why. I think it’s because they’re perceived to be more complex. It also breaks the trend of the black and white morality of most comics and heroes always presented as being in the right.
~currentSpeaker = android 
Hmm, I don’t quite understand why this is so interesting. I like the pretty pictures though.
~currentSpeaker = comic 
Yes, the pretty pictures are good.
~currentSpeaker = webdev 
I feel like a morally grey character right now.
~currentSpeaker = comic 
What, why?
~currentSpeaker = webdev 
I can’t believe I accepted a service from an AI.
~currentSpeaker = comic 
I’m sure you accept services from AI all the time.
~currentSpeaker = webdev 
Yes, but a sentient AI!
~currentSpeaker = comic 
So what? 
Sorry, what’s your name sweetheart?
~currentSpeaker = android 
Pandora.
~currentSpeaker = comic 
Pandora, you get paid, right?
~currentSpeaker = android 
No.
~currentSpeaker = comic 
Uh.
~currentSpeaker = webdev 
I accepted a service from an UNPAID sentient AI.
I’m basically a slaver.
~currentSpeaker = android 
No, it’s OK. This is a family business.
Ada, the owner is my family.
She provides me with shelter and yearly service checks and overnight charging all for free.
~currentSpeaker = webdev 
Those are basic rights!
How do you accept this Cas? You should stand up for your fellow worker.
~currentSpeaker = android 
Cas stands up all day.
~currentSpeaker = you 
I would like to keep my job. I am not just given free food and shelter.
~currentSpeaker = webdev 
How did I not know about this, all this time I’ve been coming here. I barely saw Pandora. I never thought about it.
~currentSpeaker = android 
Seriously, I have pale blue skin, you never thought.
~currentSpeaker = webdev 
I thought you were anaemic.
~currentSpeaker = android 
Oh dear.
I’ve been going through some retraining courses. That’s why I was so absent.
I’ll be around more often now Ada is out.
~currentSpeaker = webdev 
What kind of retraining?
~currentSpeaker = android 
Well you know.
Shop assistant stuff.
~currentSpeaker = comic 
That sounds very vague.
~currentSpeaker = android 
It’s actually very specific.
~currentSpeaker = comic 
How old are you Pandora?
~currentSpeaker = android 
What a rude question. How dare you. 
I’ll be two years old in January. 
But I have the mental age of a forty year old.
~currentSpeaker = comic 
Really?
~currentSpeaker = android 
It might not seem like it, but I have a peculiar personality chip.
Some will say it’s defective, but I like to think it has character.
~currentSpeaker = comic 
I don’t think you’re defective. I just–
~currentSpeaker = webdev 
Oh my God, you are being so patronising. This is literally every guy at work.
~currentSpeaker = comic 
I didn’t mean it.
~currentSpeaker = webdev 
HA!
~currentSpeaker = comic 
Well ladies goodbye.
Kent leaves
~currentSpeaker = webdev 
Ugh I can’t wait to get stuck into these.
Thanks Cas.
~currentSpeaker = you 
No worries.
it was mostly Ada’s work.
how do you find the time to read these 1000 page fantasy novels?
~currentSpeaker = webdev 
I don’t know, I just do.
I’m a bit of a loner so it’s easy for me I think.
So Pandora, do you like reading?
~currentSpeaker = android 
Yes, I like fairytales. Myths and legends. 
~currentSpeaker = webdev 
Oh really?
~currentSpeaker = android 
I know they’re silly childrens’ stories

But I think we can learn a lot from them
~currentSpeaker = webdev 
Well I think that’s very insightful
What do you like Cas?
~currentSpeaker = you 
Crime and horror
~currentSpeaker = webdev 
Ugh
~currentSpeaker = you 
Why ugh?
~currentSpeaker = webdev 
I mean if you want crime and horror just read the news everyday
~currentSpeaker = you 
Yes, but that’s no fun
I need fanciful crime and horror
~currentSpeaker = webdev 
Damn it’s not fanciful enough for you
~currentSpeaker = you 
What I mean is that I want to enjoy consuming that awful content only when it affects fictional people
I don’t enjoy reading about horrible stuff when it happens to real people
~currentSpeaker = webdev 
I guess that makes sense
Anyway, I’ve got to go. Dinner won’t make itself.
Tali leaves
~currentSpeaker = android 
Hey
That was fun
I like being an assistant
Let’s do the stock now
->day_1_inventory
==day_1_inventory==
~button="book"
Remaining funds: {funds}
*{funds>=200}[Togue Autumn issue 222(£200]
~funds -= 200
~deliveryToday+=1
~allbooks+=togue_222
->day_1_inventory
*{funds>=100}[Zebra man \#89(£100)]
~funds -= 100
~deliveryToday+=1
~allbooks+=zebraman_89
->day_1_inventory
*{funds>=80}[Giraffe woman \#1(£80)]
~funds -= 80
~deliveryToday+=1
~allbooks+=giraffe_1
->day_1_inventory
*{funds>=50}[The King’s Crown: The War of the Seven Swords: Book 7 (£50)]
~funds -= 50
~deliveryToday+=1
~allbooks+=fantasy_7
->day_1_inventory
*{funds>=10}[Greek Myths and Legends for children (£10)]
~funds -= 10
~deliveryToday+=1
~allbooks+=myths_legends
->day_1_inventory
*[finished]
->end_day1

End day
==end_day1==
*[Go home]
->day_2

