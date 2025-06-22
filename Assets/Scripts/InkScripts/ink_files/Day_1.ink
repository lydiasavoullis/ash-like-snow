INCLUDE variables.ink
EXTERNAL ChangeSprite(name,sprite)
EXTERNAL RemoveCharacter(name)
EXTERNAL AddCharacter(name,sprite)
EXTERNAL PlayAnimation(name, animation)
EXTERNAL SaveStory()
EXTERNAL ChangeWeather(weather)
==test_scene==
~scene= "GenericScene"
~currentSpeaker = trader 
Hey
~currentSpeaker = comic 
Hey
~currentSpeaker = lovelace 
Hey
~currentSpeaker = snob
Hey
~currentSpeaker = you
Hey
~currentSpeaker = webdev
Hey
~currentSpeaker = android
Hey
->END


==day_1==
~newsPicture = "headline14"
~newsCaption = "A bottle of Fate - Ilustration by Kent Herring"
13th December, Monday, 206X
~scene= "GenericScene"
<i>I hope you know what you're doing</i>
~newsAnnouncement = "Breaking news...Neurological problems caused by 'miracle' drug "
~sfx = "open door"
¬
~characters += lavender
¬
~snob = "???"
~currentSpeaker = snob
{ChangeSprite("Lavender", "lavender_angry")}
¬
{PlayAnimation("Lavender", "shake")}
HEY you have a freaking customer

~music="Lavender's song"
~newsAnnouncement = ""
{PlayAnimation("Lavender", "shake")}
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
Fashion magazines.
~currentSpeaker = you
We have some on that shelf.
You can have a look through them, see if there's anything you like.
~currentSpeaker = snob
{ChangeSprite("Lavender", "lavender_angry")}
Those are too recent.
I'm not wasting my time looking through a load of rubbish.
{ChangeSprite("Lavender", "lavender_thinking")}
Why do I even bother?
~currentSpeaker = ""
{RemoveCharacter("Lavender")}
~characters -= lavender
~sfx = "close door"
~music = "An average day"
~currentSpeaker = you
What the hell was that?
~characters += pandora
~currentSpeaker = android
She's a lot of fun, isn't she?
->tea_or_coffee->
~currentSpeaker = android
~characters += pandora
~characters+=pandora
~currentSpeaker = android 
- I'll sign you in.
~button = "normal"
~currentSpeaker = you 
*[Yes (save)]
{SaveStory()}
Thanks {android}!
*[No (don't save)] 
I can do it myself
~currentSpeaker = you
-How have I never met her before?
~currentSpeaker = android
{ChangeSprite("Pandora", "pandora_mean")}
Luck perhaps?
~currentSpeaker = you
So Ada knows her?
~currentSpeaker = android
{ChangeSprite("Pandora", "pandora_normal")}
Ada usually meets her after closing hours.
~currentSpeaker = you
She does that just for a couple of old magazines?
~currentSpeaker = android
She's our best customer.
Those magazines are worth a lot.
~currentSpeaker = you
They can't be worth that much?
Who can even afford that these days?
~currentSpeaker = android
You'd be surprised.
Well maybe stock up on some of those overpriced magazines if you don't want her to rip your head off next time.
~currentSpeaker = you
I should never have agreed to this.
~currentSpeaker = android
Sorry, got to go.
~characters -= pandora
~currentSpeaker = you
The nerve of some people.
~characters += kent
~currentSpeaker = comic 
Sorry to bother you.
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
~comic="Kent"
~currentSpeaker = you 
Cas.
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
Wow, that must be difficult.
~currentSpeaker = you 
Oh no, it’s really not a problem. This place is practically empty. I don’t get overtime, but it doesn’t really matter. I'm sort of doing it as a favour.
~currentSpeaker = comic 
Times are hard. You need to think about yourself too.
~currentSpeaker = you 
I know, but I'm ok with it. She's very chill in other ways, so it makes up for the low pay.
~currentSpeaker = comic 
{ChangeSprite("Kent", "kent_side_serious")}
Lucky your boss is cool. Mine sucks.
~currentSpeaker = you 
What do you do?
~currentSpeaker = comic 
{ChangeSprite("Kent", "kent_normal")}
I’m an illustrator for the Distant Outlook, sometimes I write too. I’m trying to get more into writing.
~currentSpeaker = you 
That sounds very cool.
~currentSpeaker = comic 
It's my dream job. 
{ChangeSprite("Kent", "kent_upset")}
But my boss is horrible.
{ChangeSprite("Kent", "kent_side_serious")}
He calls me at random times, sometimes in the middle of the night or at the weekend and tells me I have to work on something immediately.
~currentSpeaker = you 
That doesn't sound very cool.
~currentSpeaker = comic 
Very uncool.
I like what I do, but I hate the way it's done.
{ChangeSprite("Kent", "kent_normal")}
Anyway, at least it keeps a roof over my head.
~currentSpeaker = you 
Yes, it’s become so dangerous lately, also with the explosives. I heard they killed some homeless people.
~currentSpeaker = comic 
They weren’t the intended target, but I guess when you set an explosion so close to a homeless shelter.
~currentSpeaker = you 
How do you know they weren’t the intended target?
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
That seems possible. It's a bit fucked up that he didn't alert anyone.
~currentSpeaker = you
It's a free terrorist attack, they've got to make the most of it while they can.
~currentSpeaker = comic 
{ChangeSprite("Kent", "kent_side_serious")}
Shit {you}, that's dark. 
{ChangeSprite("Kent", "kent_sad")}
Not sure we should be talking about this anymore.
~currentSpeaker = you 
I get it. Wanna hand over that list?
~currentSpeaker = comic 
{ChangeSprite("Kent", "kent_normal")}
Sure.
~currentSpeaker = you 
What’s on here? What’s Night Thunder?
~currentSpeaker = comic 
Oh, that’s kind of an old one. It’s got a good story though.
~currentSpeaker = you 
What’s it about?
{ChangeSprite("Kent", "kent_happy")}
~currentSpeaker = comic 
A lone mega rich vigilante who seeks to enforce justice in a corrupt crime ridden city.
~currentSpeaker = you 
Yeah, we need one of those.
~currentSpeaker = comic 
{ChangeSprite("Kent", "kent_amused")}
I concur.
~currentSpeaker = you 
We need more troubled billionaires with a hero complex.
~currentSpeaker = comic
{ChangeSprite("Kent", "kent_upset")}
Ok, now you're just taking the piss.
{ChangeSprite("Kent", "kent_normal")}
~currentSpeaker = you 
Nooo.
Does he like, live on the outskirts of society? Or a secret base hidden away in the mountains?
~currentSpeaker = comic 
{ChangeSprite("Kent", "kent_side_serious")}
You should just read the comics {you}. OK.
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
I don’t know, I have trouble following all the pictures.
~currentSpeaker = comic 
{ChangeSprite("Kent", "kent_amused")}
A picture is worth a thousand words, is it not.
~currentSpeaker = you 
I think if that were true books would not exist.
~currentSpeaker = comic 
{ChangeSprite("Kent", "kent_normal")}
Read a comic, and if you get confused send me a picture and I’ll explain to you what’s going on.
~currentSpeaker = you 
Doesn’t that just defeat the purpose of reading in the first place.
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
This is Kent. Avid comic book reader and illustrator and writer for the Distant Outlook.
~currentSpeaker = webdev 
What no way! I was just updating their website last week. 
~currentSpeaker = webdev 
I’m Tali by the way.
~currentSpeaker = comic 
Nice to meet you. 
Thank God for your help, the layout is much better now, we had a link from the Entertainment and Arts taking people to the War section. 
{ChangeSprite("Kent", "kent_sad")}
We had a lot of complaints.
~currentSpeaker = webdev 
It scales correctly on mobile devices and holo screens too.
{ChangeSprite("Kent", "kent_normal")}
~currentSpeaker = webdev 
Are you the one who did that comic on the railway crash?
~currentSpeaker = comic 
{ChangeSprite("Kent", "kent_side_serious")}
Uh, yeah, my boss coerced into doing that.
{ChangeSprite("Kent", "kent_sad")}
Sorry, I hope it wasn’t too offensive.
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
Wait a minute. Are you an IOI?
~currentSpeaker = android 
Well, I'm inorganic, and I don't mean to brag but I am officially consiered intelligent.
So that makes me an IOI.
~currentSpeaker = you 
Pandora is the only other person working here right now. We’re short staffed.
~currentSpeaker = android 
Luckily no one really comes here anyway.
~currentSpeaker = android 
So this is just the right amount of staff.
~currentSpeaker = android 
Who wrote this? A list? What’s Satin Rain?
~currentSpeaker = comic 
Satin Rain is the main love interest of Night Thunder. It’s a spin off comic. Some say it’s even better than Night Thunder because it’s more morally grey.
~currentSpeaker = android 
How does that make it good?
~currentSpeaker = comic 
Well, you know, people like morally grey characters?
~currentSpeaker = android 
Why?
~currentSpeaker = comic 
I think it’s because they’re perceived to be more complex. 
It also breaks the trend of the black and white morality of most comics and heroes always presented as being in the right.
~currentSpeaker = android 
Hmm, I don’t quite understand why this is so interesting. I like the pretty pictures though.
~currentSpeaker = comic 
Yes, the pretty pictures are good.
~currentSpeaker = webdev 
I feel like a morally grey character right now.
~currentSpeaker = comic 
What, why?
~currentSpeaker = webdev 
I can’t believe I accepted a service from an IOI!
~currentSpeaker = comic 
I’m sure you accept services from IOI all the time.
~currentSpeaker = webdev 
Yes, but a sentient IOI!
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
I accepted a service from an UNPAID sentient IOI.
I used slave labour.
~currentSpeaker = android 
No, it’s OK.
Ada, the owner is my family.
She provides me with shelter and yearly service checks and overnight charging all for free.
~currentSpeaker = webdev 
Those are basic rights!
How do you accept this Cas? You should stand up for her.
~currentSpeaker = android 
Cas stands up all day.
~currentSpeaker = you 
I would like to keep my job. As I am not just given free food and shelter.
~currentSpeaker = webdev 
How did I not know about this, all this time I’ve been coming here. I barely saw Pandora. I never thought about it.
~currentSpeaker = android 
Oh dear.
I’ve been going through some retraining courses. That’s why I was so absent.
I’ll be around more often now Ada is out.
~currentSpeaker = comic 
How old are you Pandora?
~currentSpeaker = android 
I’ll be two years old in January. 
But I have the mental age of a twenty four year old.
~currentSpeaker = comic 
Really?
~currentSpeaker = android 
It might not seem like it, but I have a peculiar personality chip.
Some will say it’s defective, but I like to think it has character.
~currentSpeaker = you 
Hey, I don’t think you’re defective.
~currentSpeaker = webdev 
Me neither.
~currentSpeaker = comic 
I guess we're all defective in a way.
~currentSpeaker = you 
Speak for yourself. I'm completely normal.
~currentSpeaker = webdev 
HA! Sure.
~currentSpeaker = comic 
Well I have to go now.
Ciao ladies.
~characters-=kent
~currentSpeaker = webdev 
I can’t wait to get stuck into these.
Thanks Cas.
~currentSpeaker = you 
No worries.
It was mostly Ada’s work.
How do you find the time to read these thousand plus page fantasy novels?
~currentSpeaker = webdev 
I don’t know, I just do.
There's not much else for me to do after work anyway.
So Pandora, do you like reading?
~currentSpeaker = android 
Yes, I like children's fiction mostly.
~currentSpeaker = webdev 
Nice!
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
It’s not fanciful enough for you?
~currentSpeaker = you 
What I mean is that I want to enjoy consuming that awful content only when it affects fictional characters.
I don’t enjoy reading about horrible stuff when it happens to real people.
~currentSpeaker = webdev 
At least we know you're not a sociopath.
Anyway, I’ve got to go. Dinner won’t make itself.
~characters-=tali
~currentSpeaker = android 
Hey.
That was fun.
I like being an assistant.
Let’s do the stock now.
->day_1_inventory
==day_1_inventory==
~music = "shop"
~shop="true"
->goto_shop->read_check->end_day1
==end_day1==
~characters+=pandora
~currentSpeaker = android 
I'll sign you out.
~currentSpeaker = you 
*[Yes (save)]
{SaveStory()}
Thanks {android}!
*[No (don't save)] 
I can do it myself
-Bye, see you tomorrow!
~currentSpeaker = ""
~scene = "Night"
¬
~music = "night theme"
~sfx = "rain"
{snappedOut=="no": ->night_01_F->|->night_01->}
~scene= "ShopFront"
¬
~music="An average day"
~sfx = "rain"
14th December, Tuesday  
~scene= "GenericScene"
¬
~day+=1
->day_2