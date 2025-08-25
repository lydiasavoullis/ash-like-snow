==day_2==
¬
~newsPicture = "headline1"
~newsCaption = "Rioter brandishing hateful placard"
~newsAnnouncement = "Crack down on anti-war riots - 'They are a disgrace to our great nation,' said Blue. 'I will have them removed as soon as possible.'"
¬
~music="Rise and shine"
~newsAnnouncement = ""
~characters+=pandora
¬
~currentSpeaker = android 
I'll sign you in.
~button= "normal"
*[Yes (save)]
~currentSpeaker = you 
{SaveStory()}
Thanks {android}!
*[No (don't save)] 
I can do it myself
~currentSpeaker = you 
- Glad that's done now.
{deliveryToday>0 : ->delivery_1->}
~currentSpeaker = you 
No delivery today
~currentSpeaker = android  
Uh, didn't see anything you liked?
~currentSpeaker = you 
Nope
~currentSpeaker = android 
{ChangeSprite("Pandora", "pandora_pensive")}
Saving money is wise.
But this is a bookshop. We sell books.
In order to sell the books we have to buy them.
~currentSpeaker = you 
It must have slipped my mind.
{ChangeSprite("Pandora", "pandora_mean")}
Hmmm. OK.
->tea_or_coffee->day_2_cont

==delivery_1
~currentSpeaker = android  
 Hey, your delivery has arrived
~currentSpeaker = you 
Great, bring it in 
~currentSpeaker = android 
{deliveryToday>4: This is heavy! | Not a big order, I think you could have gotten some more!}
~currentSpeaker = you 
I hear you.
~currentSpeaker = android 
You better keep ordering those books.
Well, that's one thing sorted today at least.
->tea_or_coffee->day_2_cont


==day_2_cont
~currentSpeaker = you 
Is that Tali?
~sfx = "open door"
~characters+=tali 
¬
~currentSpeaker = webdev 
Hey girls, how are you doing?
{ChangeSprite("Tali", "tali_normal")}
~currentSpeaker = you 
I’ve seen better days
~currentSpeaker = android  
{PlayAnimation("Pandora", "jump")}
I’m doing well.
I got full marks on one of my IOI re-training modules.
~currentSpeaker = webdev 
{ChangeSprite("Tali", "tali_smirk")}
Well done!
~currentSpeaker = you 
What can we do you for you?
{ChangeSprite("Tali", "tali_talking_forward")}
~currentSpeaker = webdev
I’m just stopping by to browse 
And work on a few emails to my boss
{ChangeSprite("Tali", "tali_normal")}
~currentSpeaker = you
//{allbooks ? fantasy_7: ->fantasy_7_book->}
->tali_book_check->
~currentSpeaker = you
How are things holding up?
~currentSpeaker = webdev
{ChangeSprite("Tali", "tali_talking_forward")}
Things have been pretty shit. My boss is working me to death.
{ChangeSprite("Tali", "tali_talking_side")}
One of these clients wants some impossible things. 
They want their website to look all clean and minimalist.
{ChangeSprite("Tali", "tali_talking_forward")}
And then I show them, and they want it even more clean and minimalistic, I don’t know how much I can simplify it. 
{ChangeSprite("Tali", "tali_exasperated")}
I can’t reduce it anymore. They’ll just be left with a blank page.
{ChangeSprite("Tali", "tali_serious")}
And don't get me started on their logo design issues.
~currentSpeaker = you 
Have you tried telling them?
~currentSpeaker = webdev 
{ChangeSprite("Tali", "tali_upset")}
I have suggested politely, but there is no compromise with these people. 
They're never happy.
And if they're not happy, then my boss isn't either.
{ChangeSprite("Tali", "tali_exasperated")}
And she never backs me up.
~currentSpeaker = you 
Why not move?
~currentSpeaker = webdev 
{ChangeSprite("Tali", "tali_talking_forward")}
It’s a good job.
~currentSpeaker = you 
Not from what you described. And from what I heard you can find work elsewhere easily with your skills.
~currentSpeaker = webdev 
{ChangeSprite("Tali", "tali_upset")}
I'm not so sure.
{ChangeSprite("Tali", "tali_exasperated")}
Ugh my boss is ringing me. I have to go.
~characters-=tali
~sfx = "close door"
~currentSpeaker = android
{ChangeSprite("Pandora", "pandora_normal")}
I’m worried about her.
~currentSpeaker = you 
So am I.
~currentSpeaker = android  
{ChangeSprite("Pandora", "pandora_mean")}
Yeah she’s our second best customer. We can’t lose her.
~currentSpeaker = you 
Oh wow {android}, that's so nice of you.
~currentSpeaker = android
{ChangeSprite("Pandora", "pandora_annoyed")}
We've got to think about the business {you}.
{ChangeSprite("Pandora", "pandora_normal")}
I have to go and study now.
~characters-=pandora
¬
~sfx = "open door"
~characters+=kent
¬
~currentSpeaker = comic
{ChangeSprite("Kent", "kent_normal")}
Me again.
~currentSpeaker = you 
Good morning Kent.
~currentSpeaker = comic  
{ChangeSprite("Kent", "kent_happy")}
Morning
{allbooks !? (satin_rain_1,nightthunder_89): I still don't have any comics sorry }
//{allbooks ? nightthunder_89: ->night_thunder->} 
//{allbooks ? satin_rain_1: -> satin_rain->} 
->kent_book_check->
~currentSpeaker = you
~currentSpeaker = comic 
{ChangeSprite("Kent", "kent_normal")}
How’s business?
~currentSpeaker = you 
Slow.
How about you?
~currentSpeaker = comic
{ChangeSprite("Kent", "kent_happy")}
Oh did you hear?
~currentSpeaker = comic
{ChangeSprite("Kent", "kent_side_serious")}
Someone fired a gun on the protesters in Hyde Park. Five people dead, eleven injured. The whole area is on high alert. 
{ChangeSprite("Kent", "kent_amused")}
But hey, it’s good for business.
~currentSpeaker = you 
Business?
~currentSpeaker = comic
The business of getting clicks that is.
{ChangeSprite("Kent", "kent_sad")}
Sorry, was that too far.
~currentSpeaker = you 
Anything else?
~currentSpeaker = comic  
{ChangeSprite("Kent", "kent_normal")}
Nothing much. My boss wants me to put out a bad comic. 
~currentSpeaker = you 
How bad?
~currentSpeaker = comic
{ChangeSprite("Kent", "kent_side_normal")}
It has the Hyde park shooter shooting himself in the mouth.
{ChangeSprite("Kent", "kent_amused")}
This triggers an elaborate Rube Goldberg machine which kills everyone in the vicinity.
I had to simplify some of the panels a bit, but I managed to get the gist of it.
~currentSpeaker = you
How does one even think up something like that?
{ChangeSprite("Kent", "kent_side_serious")}
~currentSpeaker = comic
He got the idea from the rumour that when the shooter shot himself, the bullet flew straight through the back of his skull killing the man behind him.
That man then collapsed upon the woman behind him and fatally concussed her with his picket sign.
~currentSpeaker = you
I don’t even know what to say.
~currentSpeaker = comic
{ChangeSprite("Kent", "kent_amused")}
Another day, another distasteful comic
He let me write a small piece about the manifesto, so there’s that.
~currentSpeaker = you
That's cool at least.
{ChangeSprite("Kent", "kent_sad")}
No one’s going to read it though.
No one cares about politics anymore, unless there’s violence involved.
~currentSpeaker = you
Hey, violence is an integral part of politics.
~currentSpeaker = comic
{ChangeSprite("Kent", "kent_side_serious")}
I wish it wasn’t.
~sfx = "open door"
~characters+=lavender
~currentSpeaker = snob
¬
{ChangeSprite("Kent", "kent_normal")}
{ChangeSprite("Lavender", "lavender_angry")}
{PlayAnimation("Lavender", "shake")}
HEY
{ChangeSprite("Lavender", "lavender_normal")}
Have you got my stuff?
//{allbooks?LUX_222: ->LUX_1->}
->lavender_book_check->
~currentSpeaker = comic 
{ChangeSprite("Kent", "kent_amused")}
Hey there! I like your outfit.
~currentSpeaker = snob
{ChangeSprite("Lavender", "lavender_angry")}
{PlayAnimation("Lavender", "shake")}
It's not a costume.
~currentSpeaker = comic
{ChangeSprite("Kent", "kent_normal")}
I never said it was a costume.
~currentSpeaker = snob 
{ChangeSprite("Lavender", "lavender_thinking")}
Well it was implied.
{ChangeSprite("Kent", "kent_sad")}
~currentSpeaker = comic
Uh sorry to bother you.
{ChangeSprite("Lavender", "lavender_normal")}
~currentSpeaker = snob
My name is Lavender.
~snob="Lavender"
{ChangeSprite("Kent", "kent_normal")}
~currentSpeaker = comic
I'm Kent.
~currentSpeaker = snob 
{ChangeSprite("Lavender", "lavender_thinking")}
Who are you? You work for the Distant Outlook right?
~currentSpeaker = comic
{ChangeSprite("Kent", "kent_amused")}
How do you know that?
~currentSpeaker = snob 
{ChangeSprite("Lavender", "lavender_serious")}
Your badge is hanging out of your pocket.
~currentSpeaker = comic  
{ChangeSprite("Kent", "kent_sad")}
Crap.
~currentSpeaker = snob 
So, what do you do there?
~currentSpeaker = comic  
{ChangeSprite("Kent", "kent_side_normal")}
I work as an illustrator and a writer for the newspaper.
~currentSpeaker = snob 
{ChangeSprite("Lavender", "lavender_thinking")}
Oh, is that it?
~currentSpeaker = comic 
{ChangeSprite("Kent", "kent_normal")}
And what do you do?
~currentSpeaker = snob 
{ChangeSprite("Lavender", "lavender_normal")}
I’m a fashion designer.
{ChangeSprite("Kent", "kent_happy")}
~currentSpeaker = comic  
Of course you are.
~currentSpeaker = snob 
I would have expected more attentiveness from an employee of such a prestigious news organisation.
Mind you it's been going downhill lately.
It's too dry and predictable.
I prefer Calamity.
{ChangeSprite("Kent", "kent_sad")}
~currentSpeaker = comic  
That's just scaremongering garbage.
~currentSpeaker = snob 
And yet they've made quite the profit this year.
My father's thinking of investing more into Calamity and cutting funding to Outlook.
~currentSpeaker = comic
{ChangeSprite("Kent", "kent_amused")}
Your father?
~currentSpeaker = you 
Let’s keep things civil, eh?
~currentSpeaker = comic  
{ChangeSprite("Kent", "kent_side_serious")}
You’re right. I don’t know why I’m even defending them. 
Blue-Carp owns both Distant Outlook and Calamity.
They have a monopoly on the news outlets so they win either way.
You just end up picking the lesser of two evils.
~currentSpeaker = snob 
{ChangeSprite("Lavender", "lavender_thinking")}
It sounds like you just like to whine but you don't do anything.
~currentSpeaker = comic  
What am I meant to do?
~currentSpeaker = snob 
{ChangeSprite("Lavender", "lavender_normal")}
I don't know, leave maybe?
~currentSpeaker = comic  
{ChangeSprite("Kent", "kent_amused")}
The job market's fairly barren at the moment, it's not that easy kid.
~currentSpeaker = snob 
{ChangeSprite("Lavender", "lavender_angry")}
Don't call me kid.
I'm thirty-two.
{ChangeSprite("Kent", "kent_shocked")}
~currentSpeaker = comic 
Oh really?
{ChangeSprite("Kent", "kent_amused")}
Honestly, your skin is amazing. What's your secret?
{ChangeSprite("Lavender", "lavender_serious")}
~currentSpeaker = snob 
As if I'd tell you.
~currentSpeaker = you 
I heard blood of the innocents is popular these days.
{ChangeSprite("Lavender", "lavender_angry")}
~currentSpeaker = snob 
Not funny.
~currentSpeaker = comic 
{snob}, do you bathe in it, or just slather it on your face?
{ChangeSprite("Lavender", "lavender_serious")}
~currentSpeaker = snob 
All you can do is mock everthing.
But there is a plan, we just have to trust it.
The people in power know what they're doing.
{ChangeSprite("Lavender", "lavender_thinking")}
Well, I imagine they must do.
~currentSpeaker = comic  
{ChangeSprite("Kent", "kent_upset")}
You’re delusional. 
We’re almost at war because of them.
Because of Blue we are in quarantine from the rest of civilisation, and nearing a full blown world conflict.
~currentSpeaker = snob 
{ChangeSprite("Lavender", "lavender_angry")}
My father would never allow that.
~currentSpeaker = comic 
{ChangeSprite("Kent", "kent_side_normal")}
Your father?
~currentSpeaker = snob 
{ChangeSprite("Lavender", "lavender_serious")}
You don't even know whom you're talking to.
~currentSpeaker = you 
Hey {snob}, what does that mean?
You said that your father would never allow that.
~currentSpeaker = snob 
{ChangeSprite("Lavender", "lavender_angry")}
I mean that Benedict Blue, the owner of The Blue-Carp Corporation is my father. 
And I refuse to let you spout nonsense about him.  
~currentSpeaker = comic 
{ChangeSprite("Kent", "kent_shocked")}
What?!
{ChangeSprite("Kent", "kent_upset")}
~currentSpeaker = you 
Well this is awkward.
~currentSpeaker = comic  
I’m not sure what you think that name dropping is going to do.
But it’s not impressing me. 
{ChangeSprite("Kent", "kent_amused")}
Rather the opposite.
~currentSpeaker = snob 
{ChangeSprite("Lavender", "lavender_thinking")}
I couldn't care less about your opinion.
~currentSpeaker = you 
I doubt that. 
Why are you here? 
Why would you be so eager to come in here and start this conversation with Kent? 
No one asked you to.
~currentSpeaker = snob 
{ChangeSprite("Lavender", "lavender_shocked")}
<i>\*gasps\*</i>
~characters+=pandora
~currentSpeaker = android  
{ChangeSprite("Pandora", "pandora_annoyed")}
Cas! 
{ChangeSprite("Pandora", "pandora_happy")}
I’m so sorry Miss Blue. I assure you, you are a highly esteemed customer. Would you like a complimentary cup of tea or coffee?
~currentSpeaker = snob 
{ChangeSprite("Lavender", "lavender_thinking")}
Are you trying to bribe me? 
{ChangeSprite("Lavender", "lavender_happy")}
I love tea. 
I want tea, robot.
~currentSpeaker = android
Right away.
~characters-=pandora
~currentSpeaker = you 
Can you not call her the 'r' word? It’s rude.
~currentSpeaker = snob 
{ChangeSprite("Lavender", "lavender_angry")}
Apologise to me now.
~currentSpeaker = you 
Erm...how about no?
~currentSpeaker = snob 
{ChangeSprite("Lavender", "lavender_serious")}
I’ll tell you why I started this conversation.
{ChangeSprite("Lavender", "lavender_thinking")}
I don’t really care about either of you.
{ChangeSprite("Lavender", "lavender_happy")}
But I like this place, I love the funky old book smell, and it’s close to where I work. 
I just wanted to see what kind of people come here. 
{ChangeSprite("Lavender", "lavender_thinking")}
And to be honest, I’m not really very impressed.
~characters+=pandora
¬
~currentSpeaker = android 
Miss Blue, your tea is ready.
~currentSpeaker = snob 
{ChangeSprite("Lavender", "lavender_angry")}
What is this?
~currentSpeaker = android  
Tea.
~currentSpeaker = snob
{ChangeSprite("Lavender", "lavender_normal")}
It’s just plain tea. I want rose tea.
~currentSpeaker = android 
{ChangeSprite("Pandora", "pandora_sad")}
I’m sorry. 
I don’t have that.
~currentSpeaker = snob 
{ChangeSprite("Lavender", "lavender_thinking")}
Aren’t your kind meant to be mind readers or something?
~currentSpeaker = android  
{ChangeSprite("Pandora", "pandora_mean")}
No. That kind of technology hasn’t been discovered yet. Honestly that sounds kind of disturbing to me.
~currentSpeaker = comic  
{ChangeSprite("Kent", "kent_upset")}
Her name is Pandora.
~currentSpeaker = snob 
{ChangeSprite("Kent", "kent_normal")}
{ChangeSprite("Lavender", "lavender_normal")}
Ugh fine. Thank you for the tea. But I will make improvements to this next time.
~currentSpeaker = android 
{ChangeSprite("Pandora", "pandora_confused")}
Improvements?
~currentSpeaker = snob 
{ChangeSprite("Lavender", "lavender_serious")}
Suggestions to improve your failing business.
{ChangeSprite("Lavender", "lavender_normal")}
If you have any more magazines please order them. I’ll collect them the next time I visit.
Bye.
~characters-=lavender
~sfx = "close door"
~currentSpeaker = comic 
{ChangeSprite("Kent", "kent_upset")}
The absolute nerve. 
You should ban her.
~currentSpeaker = you 
We can’t.
She’s technically keeping this business afloat.
~currentSpeaker = comic 
{ChangeSprite("Kent", "kent_side_serious")}
I hate everything.
~currentSpeaker = android  
{ChangeSprite("Pandora", "pandora_shocked")}
Do you think I upset her?
Oh no.
{ChangeSprite("Pandora", "pandora_sad")}
I’m a terrible shop assistant. Ada will be so angry with me.
~currentSpeaker = you 
No Pan, it wasn’t your fault.
~currentSpeaker = android 
{ChangeSprite("Pandora", "pandora_normal")}
What’s Rose tea? 
We must procure some immediately.
~currentSpeaker = you 
OK, but I don’t think it will help. Lavender’s just got a stick up her ass. Nothing’s going to fix that.
~currentSpeaker = android  
{ChangeSprite("Pandora", "pandora_sad")}
I know, but she’s never been angry at me before.
{ChangeSprite("Pandora", "pandora_normal")}
~currentSpeaker = you 
Sometimes when people are uncontrollably angry it spills out everywhere...like a leaky pipe. 
~currentSpeaker = comic  
{ChangeSprite("Kent", "kent_amused")}
What Cas is saying is that people like that lash out at anyone, even if they didn’t do anything wrong. They think they’re entitled to hurt everyone. 
~currentSpeaker = android  
{ChangeSprite("Pandora", "pandora_happy")}
Haha, you know I think this is why I was such a bad therapy IOI. But you two would make great therapy IOIs.
~currentSpeaker = you 
Uh really?
~currentSpeaker = comic
Thanks Pandora. Maybe you can recommend me to career services next time.
{ChangeSprite("Kent", "kent_normal")}
I have to go, I have a lot of missed calls from my boyfriend. I think he’s worried after the shooting.
~currentSpeaker = you 
See you around.
~characters-=kent
~sfx = "close door"
You see Pan, lots of people like you. You’re a great shop assistant.
~currentSpeaker = android  
{ChangeSprite("Pandora", "pandora_pensive")}
I know. 
OK let’s do the orders for today.
->day_2_inventory
==day_2_inventory==
~music = "shop"
->goto_shop->
->read_check->
->end_day_2

==end_day_2==
->go_to_day_3
==go_to_day_3==
~characters+=pandora
¬
~currentSpeaker = android 
I'll sign you out for the day.
~currentSpeaker = you 
*[Yes (save)]
{SaveStory()}
Thanks {android}!
*[No (don't save)]
I can do it myself
~currentSpeaker = you 
-See you tomorrow. Bye!
~currentSpeaker = ""
~scene = "Night"
~music = "night theme"
~sfx = "rain"
¬
{snappedOut=="no": ->night_02_F->|->night_02->}
~scene= "ShopFront"
~music = "An average day"
~sfx = "rain"
¬
15th December, Wednesday
~scene= "GenericScene"
~day+=1
->day_3