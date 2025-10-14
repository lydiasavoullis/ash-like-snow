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
//set the prices of all the books
===function set_all_book_prices()===
TODO
//take this price and replace the shop prices with them
//sells for price will be this price + character profit
//e.g. price: {lbd2} sells for: {lbd2 + lavenderProfit}
~lbd1 = (0*lavenderMargin)+lavenderBase
~lbd2 = (1*lavenderMargin)+lavenderBase
~lbd3 = (2*lavenderMargin)+lavenderBase
~lbd4 = (3*lavenderMargin)+lavenderBase
~lbd5 = (4*lavenderMargin)+lavenderBase
~lbd8 = (5*lavenderMargin)+lavenderBase
~lbd9 = (6*lavenderMargin)+lavenderBase
~lbd10 = (7*lavenderMargin)+lavenderBase
~lbd11 = (8*lavenderMargin)+lavenderBase

~tbd1 = (0*taliMargin)+taliBase
~tbd2 = (1*taliMargin)+taliBase
~tbd3 = (2*taliMargin)+taliBase
~tbd4 = (3*taliMargin)+taliBase
~tbd5 = (4*taliMargin)+taliBase
~tbd8 = (5*taliMargin)+taliBase
~tbd9 = (6*taliMargin)+taliBase
~tbd10 = (7*taliMargin)+taliBase
~tbd11 = (8*taliMargin)+taliBase

~kbd1 = (0*kentMargin)+kentBase
~kbd2 = (1*kentMargin)+kentBase
~kbd3 = (2*kentMargin)+kentBase
~lbd4 = (3*kentMargin)+kentBase
~kbd5 = (4*kentMargin)+kentBase
~kbd8 = (5*kentMargin)+kentBase
~kbd9 = (6*kentMargin)+kentBase
~kbd10 = (7*kentMargin)+kentBase
~kbd11 = (8*kentMargin)+kentBase

~pbd1 = (0*pandoraMargin)+pandoraBase
~pbd2 = (1*pandoraMargin)+pandoraBase
~pbd3 = (2*pandoraMargin)+pandoraBase
~pbd4 = (3*pandoraMargin)+pandoraBase
~pbd5 = (4*pandoraMargin)+pandoraBase
~pbd8 = (5*pandoraMargin)+pandoraBase
~pbd9 = (6*pandoraMargin)+pandoraBase
~pbd10 = (7*pandoraMargin)+pandoraBase
~pbd11 = (8*pandoraMargin)+pandoraBase

==day_1==
//~scene= "ShopFront"
{set_all_book_prices()}
~music= "An average day"
~newsPicture = "headline14"
~newsCaption = "A bottle of Fate - Ilustration by Kent Herring"
¬
13th December, Monday, 206X.
~music= ""
~scene= "GenericScene"
<i>I hope you know what you're doing.</i>
~newsAnnouncement = "New study suggests neurological problems caused by 'miracle' drug."
~sfx = "open door"
~snob = "???"
~characters+=lavender
¬
~currentSpeaker = snob
{ChangeSprite("Lavender", "lavender_angry")}
¬
{PlayAnimation("Lavender", "shake")}
HEY you have a freaking customer.
~music="Lavender's song"
~newsAnnouncement = ""
{PlayAnimation("Lavender", "shake")}
Where's Adalina?
{ChangeSprite("Lavender", "lavender_normal")}
~currentSpeaker = snob
Who are you?
~currentSpeaker = you
I'm {you}, Ada is on holiday. She won't be back until January.
~currentSpeaker = snob
{ChangeSprite("Lavender", "lavender_thinking")}
Holiday?
January?
This is impossible.
I need her.
You won't suffice.
~currentSpeaker = you
Well I'm all you've got.
~currentSpeaker = snob
{ChangeSprite("Lavender", "lavender_angry")}
You will regret this.
You will regret everything.
~currentSpeaker = you
I already do.
~currentSpeaker = snob
This is not a joke.
I have important business with Adalina.
She's my only supply of extremely rare magazines.
~currentSpeaker = you
I'm in charge of the inventory now, I can supply anything you need.
I use the same website as Ada, I can supply your magazines.
~currentSpeaker = snob
{ChangeSprite("Lavender", "lavender_normal")}
...
~currentSpeaker = you
What kind of magazines are you looking for?
{ChangeSprite("Lavender", "lavender_normal")}
~currentSpeaker = snob
Fashion magazines.
Specifically LUX.
~currentSpeaker = you
We have some magazines on that shelf.
You can have a look through them, see if there's anything you like.
~currentSpeaker = snob
{ChangeSprite("Lavender", "lavender_angry")}
That is not what I'm looking for.
I'm not wasting my time rifling through a load of rubbish.
{ChangeSprite("Lavender", "lavender_thinking")}
Why do I even bother?
~currentSpeaker = ""
{RemoveCharacter("Lavender")}
~characters -= lavender
~sfx = "close door"
~music = ""
~currentSpeaker = you
What the hell was that?
¬
~characters += pandora
~currentSpeaker = android
She's a lot of fun, isn't she?
~music="Rise and shine"
->tea_or_coffee->
~currentSpeaker = android
~currentSpeaker = android 
- I'll sign you in.
~button = "normal"
*[Yes (save)]
~currentSpeaker = you 
{SaveStory()}
Thanks {android}!
*[No (don't save)] 
I can do it myself.
~currentSpeaker = you
-How have I never met her before?
~currentSpeaker = android
{ChangeSprite("Pandora", "pandora_mean")}
She didn't tend to visit during your old shift.
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
{ChangeSprite("Pandora", "pandora_mean")}
~currentSpeaker = android
Sorry, got to go.
~characters -= pandora
~currentSpeaker = you
The nerve of some people.
~comic="???"
~sfx="open door"
~characters += kent
{ChangeSprite("Kent", "kent_normal")}
¬
~currentSpeaker = comic 
Sorry to bother you.
Do you sell comics here?
~currentSpeaker = you 
Yeah they’re on that shelf.
~currentSpeaker = comic 
Thanks.
{ChangeSprite("Kent", "kent_side_normal")}
Uh, is that it?
{ChangeSprite("Kent", "kent_normal")}
~currentSpeaker = you 
Sorry it’s not much.
~currentSpeaker = comic 
That’s OK I guess. I was just hoping this place would be better stocked.
~currentSpeaker = you 
I could help with that. Maybe if you gave me some pointers.
~currentSpeaker = comic 
{ChangeSprite("Kent", "kent_happy")}
Thanks. Sure I can write you a list. 
I’m Kent by the way.
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
{ChangeSprite("Kent", "kent_side_normal")}
Is this your shop?
~currentSpeaker = you 
No, the boss is out on holiday for a month. I’m basically in charge until then.
~currentSpeaker = comic 
{ChangeSprite("Kent", "kent_amused")}
Wow, that must be difficult.
~currentSpeaker = you 
Oh no, it’s really not a problem. This place is practically empty. I don’t get overtime, but it doesn’t really matter. I'm sort of doing it as a favour.
~currentSpeaker = comic 
That's very nice of you.
Hope they're not taking advantage of you.
~currentSpeaker = you 
Probably, but I'm ok with it. 
She's very chill in other ways, so it makes up for the low pay.
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
{ChangeSprite("Kent", "kent_happy")}
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
{ChangeSprite("Kent", "kent_sad")}
I like what I do, but I hate the way it's done.
{ChangeSprite("Kent", "kent_normal")}
Anyway, at least it keeps a roof over my head.
~currentSpeaker = you 
Agreed.
I wouldn't want to be homeless.
Especially with that incident that killed those homeless people.
{ChangeSprite("Kent", "kent_sad")}
~currentSpeaker = comic 
The sad thing is that they weren’t even the intended target.
~currentSpeaker = you 
Sorry, I didn't hear about that?
~currentSpeaker = comic 
{ChangeSprite("Kent", "kent_shocked")}
Oh, I wasn’t meant to say that. It’s for the story tomorrow.
~currentSpeaker = you 
I won’t tell anyone.
~currentSpeaker = comic 
{ChangeSprite("Kent", "kent_side_serious")}
I’d lose my job if anyone found out.
~currentSpeaker = you 
Who’s going to find out? Anyway, if it will all be revealed tomorrow, what’s the risk?
~currentSpeaker = comic 
{ChangeSprite("Kent", "kent_amused")}
OK, so they know that the bomb was intended for someone in particular, a certain public figure who was going to visit the shelter. 
You know charity stuff.
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
Typical politicians.
{ChangeSprite("Kent", "kent_amused")}
~currentSpeaker = comic 
I never said it was a politician.
~currentSpeaker = you
You didn't need to.
~currentSpeaker = comic 
{ChangeSprite("Kent", "kent_side_serious")}
Not sure we should be talking about this anymore.
~currentSpeaker = you 
I get it. Wanna hand over that list?
~currentSpeaker = comic 
{ChangeSprite("Kent", "kent_normal")}
Sure.
~currentSpeaker = you 
What’s on here? What’s Night Thunder?
{ChangeSprite("Kent", "kent_side_normal")}
~currentSpeaker = comic 
Oh, that’s kind of an old one. It’s got a good story though.
~currentSpeaker = you 
What’s it about?
{ChangeSprite("Kent", "kent_happy")}
~currentSpeaker = comic 
A lone mega rich vigilante who seeks to enforce justice in a corrupt crime-ridden city.
~currentSpeaker = you 
Yeah, just what we need more troubled billionaires with a hero complex.
~currentSpeaker = comic
{ChangeSprite("Kent", "kent_side_normal")}
It's more of a guilty pleasure.
{ChangeSprite("Kent", "kent_normal")}
~currentSpeaker = you 
Does he like, live on the outskirts of society? Or a secret base hidden away in the mountains?
~currentSpeaker = comic 
{ChangeSprite("Kent", "kent_amused")}
Why don't you just read the comics?
~currentSpeaker = you 
Ugh. 
~currentSpeaker = comic 
You read, don’t you?
~currentSpeaker = you 
I used to. Don’t have much time for that anymore. I never read comics anyway.
I have trouble following all the pictures.
~currentSpeaker = comic 
{ChangeSprite("Kent", "kent_amused")}
Hmm, a picture is worth a thousand words, is it not?
~currentSpeaker = you 
I think if that were true actual books would not exist.
It's mostly the speech bubbles that confuses me, sometimes the order doesn't seem very clear.
And the way the text is conveyed can feel a little...stilted.
~currentSpeaker = comic 
{ChangeSprite("Kent", "kent_normal")}
Read a comic, and if you get confused send me a picture and I’ll explain to you what’s going on.
~currentSpeaker = you 
Doesn’t that just defeat the purpose of reading in the first place.
~sfx="open door"
~characters += tali
{ChangeSprite("Tali", "tali_happy")}
¬
~currentSpeaker = webdev 
Hey Cas!
~currentSpeaker = you 
Hey, I’ve got your requests here. Ada made sure to find them before she left and she left me a note telling me it was urgent that you received these.
{ChangeSprite("Tali", "tali_talking_forward")}
~currentSpeaker = webdev 
Thanks! I mean it wasn’t that urgent. But I am still very grateful.
{ChangeSprite("Tali", "tali_talking_side")}
~currentSpeaker = webdev 
Sorry I didn’t mean to interrupt.
{ChangeSprite("Kent", "kent_happy")}
~currentSpeaker = comic 
No worries.
~currentSpeaker = you 
This is Kent. Avid comic book reader and illustrator and writer for the Distant Outlook.
{ChangeSprite("Tali", "tali_happy")}
~currentSpeaker = webdev 
What no way! I was just updating their website last week. 
~currentSpeaker = webdev 
I’m Tali by the way.
~currentSpeaker = comic 
Nice to meet you. 
Thank God for your help too, the layout is much better now; there was a link from the Entertainment and Arts taking people to the World Wars section. 
{ChangeSprite("Kent", "kent_amused")}
We had a lot of complaints.
{ChangeSprite("Tali", "tali_smirk")}
~currentSpeaker = webdev 
It scales correctly on mobile devices and holo screens too.
{ChangeSprite("Tali", "tali_talking_side")}
~currentSpeaker = webdev 
Are you the one who did that comic on the railway crash?
~currentSpeaker = comic 
{ChangeSprite("Kent", "kent_side_serious")}
Uh, yeah, my boss coerced into doing that.
{ChangeSprite("Kent", "kent_sad")}
Sorry, I hope it wasn’t too offensive.
{ChangeSprite("Tali", "tali_happy_closed")}
~currentSpeaker = webdev 
No, I thought it was hilarious. 
{ChangeSprite("Tali", "tali_serious")}
I mean, nobody died right?
~currentSpeaker = comic 
Sure no one died, but someone was horribly disfigured.
{ChangeSprite("Tali", "tali_sad")}
~currentSpeaker = webdev 
oh.
~characters+=pandora
{ChangeSprite("Pandora", "pandora_happy")}
{ChangeSprite("Kent", "kent_normal")}
{ChangeSprite("Tali", "tali_normal")}
¬
~currentSpeaker = android 
I didn’t realise there were so many people here.
~currentSpeaker = android 
Tea, coffee anyone?
~currentSpeaker = comic 
I’m good.
{ChangeSprite("Tali", "tali_talking_side")}
~currentSpeaker = webdev 
Oh, can I have a cup of tea please?
~currentSpeaker = android 
Sure. Here you go!
~currentSpeaker = webdev 
Woah, that was fast.
{ChangeSprite("Tali", "tali_serious")}
~currentSpeaker = webdev 
Wait a minute. Are you an IOI?
{ChangeSprite("Pandora", "pandora_mean")}
~currentSpeaker = android 
Well, I'm inorganic, and I don't mean to brag but I am officially consiered intelligent.
So that makes me an IOI.
~currentSpeaker = you 
Pandora is the only other person working here right now. We're a bit short on staff.
{ChangeSprite("Pandora", "pandora_happy")}
~currentSpeaker = android 
Luckily no one really comes here anyway.
{ChangeSprite("Pandora", "pandora_mean")}
So this is just the right amount of staff. Maybe even a little too much staff.
~currentSpeaker = you 
Don't give Ada any ideas.
{ChangeSprite("Pandora", "pandora_confused")}
~currentSpeaker = android 
Who wrote this? A list? What’s Satin Rain?
{ChangeSprite("Kent", "kent_happy")}
~currentSpeaker = comic 
Satin Rain is the main love interest of Night Thunder. It’s a spin off comic. Some say it’s even better than Night Thunder because it’s more morally grey.
{ChangeSprite("Pandora", "pandora_pensive")}
~currentSpeaker = android 
How does that make it good?
~currentSpeaker = comic 
Well, you know, people like morally grey characters?
{ChangeSprite("Pandora", "pandora_confused")}
~currentSpeaker = android 
Why?
{ChangeSprite("Kent", "kent_side_normal")}
~currentSpeaker = comic 
I think it’s because they’re perceived to be more complex. 
It also breaks the trend of the black and white morality of most comics and heroes always presented as being in the right.
~currentSpeaker = android 
Hmm, I don’t quite understand why this is so interesting. 
{ChangeSprite("Pandora", "pandora_happy")}
I like the pretty pictures in comics though.
{ChangeSprite("Kent", "kent_happy")}
~currentSpeaker = comic 
Yes, the pretty pictures are good.
{ChangeSprite("Tali", "tali_serious")}
~currentSpeaker = webdev 
Uh so {android} you get paid, right?
{ChangeSprite("Kent", "kent_side_normal")}
~currentSpeaker = comic 
That's a weird question to ask.
~currentSpeaker = webdev 
It just feels immoral accepting service from an IOI.
~currentSpeaker = comic 
No more immoral than accepting service from your usual worker.
{android} you get paid right?
~currentSpeaker = android 
No.
{ChangeSprite("Kent", "kent_side_serious")}
~currentSpeaker = comic 
Uh.
{ChangeSprite("Tali", "tali_upset")}
~currentSpeaker = webdev 
I told you so!
{ChangeSprite("Pandora", "pandora_sad")}
~currentSpeaker = android 
No, it’s OK.
~music= "Pandora's theme"
{ChangeSprite("Pandora", "pandora_happy")}
Ada, the owner is my family.
She provides me with shelter and yearly service checks and overnight charging all for free.
{ChangeSprite("Tali", "tali_exasperated")}
~currentSpeaker = webdev 
Those are basic rights!
{ChangeSprite("Tali", "tali_upset")}
How do you accept this Cas?
~currentSpeaker = you 
I would like to keep my job. As I am not just given free food and shelter.
{ChangeSprite("Tali", "tali_sad")}
~currentSpeaker = webdev 
How did I not know about this, all this time I’ve been coming here. I barely saw Pandora. I never thought about it.
{ChangeSprite("Pandora", "pandora_sad")}
~currentSpeaker = android 
Oh dear.
{ChangeSprite("Pandora", "pandora_normal")}
I’ve been going through some retraining courses. That’s why I was so absent.
I’ll be around more often now Ada is out.
{ChangeSprite("Kent", "kent_amused")}
~currentSpeaker = comic 
How old are you Pandora?
{ChangeSprite("Pandora", "pandora_pensive")}
~currentSpeaker = android
I've been around for about two and a half years.
But I have the mental age of a twenty year old.
~currentSpeaker = comic 
Really?
{ChangeSprite("Pandora", "pandora_happy")}
~currentSpeaker = android 
It might not seem like it, but I have a peculiar personality chip.
{ChangeSprite("Pandora", "pandora_sad")}
Some will say it’s defective.
~currentSpeaker = you 
Hey, I don’t think you’re defective.
{ChangeSprite("Tali", "tali_talking_side")}
~currentSpeaker = webdev 
Me neither.
~currentSpeaker = comic 
I guess we're all defective in a way.
~music="Rise and shine"
~currentSpeaker = you 
Speak for yourself. I'm completely normal.
{ChangeSprite("Tali", "tali_happy")}
~currentSpeaker = webdev 
HA! Sure.
{ChangeSprite("Kent", "kent_happy")}
~currentSpeaker = comic 
Well I have to go now.
Ciao ladies.
~sfx="close door"
~characters-=kent
{ChangeSprite("Tali", "tali_smirk")}
~currentSpeaker = webdev 
I can’t wait to get stuck into these.
Thanks Cas.
~currentSpeaker = you 
No worries.
It was mostly Ada’s work.
How do you find the time to read these thousand plus page fantasy novels?
{ChangeSprite("Tali", "tali_talking_side")}
~currentSpeaker = webdev 
I don’t know, I just do.
There's not much else for me to do after work anyway.
{ChangeSprite("Tali", "tali_talking_forward")}
So Pandora, do you like reading?
{ChangeSprite("Pandora", "pandora_happy")}
~currentSpeaker = android 
Yes!
I like reading children's fiction.
The classics mostly.
{ChangeSprite("Tali", "tali_happy")}
~currentSpeaker = webdev 
How charming.
What do you like Cas?
~currentSpeaker = you 
Crime and horror.
{ChangeSprite("Tali", "tali_exasperated")}
~currentSpeaker = webdev 
Ugh.
~currentSpeaker = you 
Why ugh?
{ChangeSprite("Tali", "tali_serious")}
~currentSpeaker = webdev 
I mean if you want crime and horror just read the news everyday.
~currentSpeaker = you 
Yes, but that’s no fun.
I need fanciful crime and horror.
{ChangeSprite("Tali", "tali_smirk")}
~currentSpeaker = webdev 
It’s not fanciful enough for you?
~currentSpeaker = you 
What I mean is that I want to enjoy consuming that awful content only when it affects fictional characters.
I don’t enjoy reading about horrible stuff when it happens to real people.
{ChangeSprite("Tali", "tali_normal")}
~currentSpeaker = webdev 
At least we know you're not a sociopath.
Anyway, I’ve got to go. Dinner won’t make itself.
~sfx="close door"
~characters-=tali
~currentSpeaker = android 
Hey.
That was fun.
I like being an assistant.
Let’s do the stock now.
~currentSpeaker = you 
I should be able to find something {comic} and {webdev} will like.
Also, I can pick up some of those awful magazines for that weird girl.
->day_1_inventory
==day_1_inventory==
~music = "shop"
->goto_shop->read_check->end_day1
==end_day1==
~characters+=pandora
¬
~currentSpeaker = android 
I'll sign you out.
~currentSpeaker = you 
*[Yes (save)]
{SaveStory()}
Thanks {android}!
*[No (don't save)] 
I can do it myself
-See you tomorrow. Bye!
~currentSpeaker = ""
~scene = "Night"
~music = "night theme"
~sfx = "rain"
¬
{snappedOut=="no": ->night_01_F->|->night_01->}
~scene= "ShopFront"
~music="An average day"
~sfx = "rain"
¬
14th December, Tuesday  
~scene= "GenericScene"
~day+=1
->day_2