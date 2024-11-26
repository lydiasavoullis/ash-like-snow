==day_2==
~characters+=pandora
{deliveryToday>0 : ->delivery_1->}
~currentSpeaker = you 
No delivery today
~currentSpeaker = android  
Uh, didn't see anything you liked?
~currentSpeaker = you 
Nope
~currentSpeaker = android 
{ChangeSprite("Pandora", "pandora_mean")}
That's ok, I guess. Saving money is wise.
->tea_or_coffee->day_2_cont

==delivery_1==
~currentSpeaker = android  
 Hey, your delivery has arrived
~currentSpeaker = you 
Great, bring it in 
~currentSpeaker = android 
{deliveryToday>4: This is heavy! | Not a big order, great!}
~currentSpeaker = you 
I hear you.
~currentSpeaker = android 
Well, that's one thing sorted today at least.
->tea_or_coffee->day_2_cont


==day_2_cont==

~currentSpeaker = you 
Is that Tali?
~characters+=tali 
~currentSpeaker = webdev 
Hey girls, how are you doing?
{ChangeSprite("Tali", "tali_normal")}
~currentSpeaker = you 
I’ve seen better days
~currentSpeaker = android  
{PlayAnimation("Pandora", "jump")}
I’m doing well
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
{allbooks ? fantasy_7: ->fantasy_7_book->}
~currentSpeaker = you
How are things holding up?
~currentSpeaker = webdev
{ChangeSprite("Tali", "tali_talking_forward")}
Things have been pretty shit lately. My boss is working me to death. Clients here and there. 
{ChangeSprite("Tali", "tali_talking_side")}
One of these clients wants some impossible things. They want their website to look all clean and minimalist. 
{ChangeSprite("Tali", "tali_talking_forward")}
And then I show them, and they want it even more clean and minimalistic, I don’t know how much I can simplify it. 
I can’t reduce it anymore. They’ll just be left with a blank page at some point.
{ChangeSprite("Tali", "tali_normal")}
~currentSpeaker = you 
Maybe you can compromise?
~currentSpeaker = webdev 
{ChangeSprite("Tali", "tali_upset")}
Ha! There is no compromise with these people. Nothing I do makes my boss happy. 
~currentSpeaker = you 
Why not move?
~currentSpeaker = webdev 
{ChangeSprite("Tali", "tali_talking_forward")}
It’s a good job.
~currentSpeaker = you 
Not from what you described. And from what I heard you can find work elsewhere easily with your skills.
~currentSpeaker = webdev 
{ChangeSprite("Tali", "tali_upset")}
Well, not so easily. Ugh my boss is ringing me. I have to go.
~characters-=tali
~currentSpeaker = android
{ChangeSprite("Pandora", "pandora_normal")}
I’m worried about her.
~currentSpeaker = you 
That’s nice of you.
~currentSpeaker = android  
{ChangeSprite("Pandora", "pandora_normal2")}
Yeah she’s our second best customer. We can’t lose her.
~currentSpeaker = you 
Oh my God. 
~currentSpeaker = android  
{ChangeSprite("Pandora", "pandora_mean")}
{funds<100:Someone has to be fiscally responsible here}
I have to go and study now.
~characters-=pandora
~currentSpeaker = you 
We have a new customer
~characters+=kent
~currentSpeaker = comic
¬
{ChangeSprite("Kent", "kent_normal")}
Me again
~currentSpeaker = you 
Good morning Kent
~currentSpeaker = comic  
{ChangeSprite("Kent", "kent_happy")}
Morning
{allbooks !? (giraffe_1,zebraman_89): I still don't have any comics sorry }
{allbooks ? zebraman_89: ->zebra_man->} 
{allbooks ? giraffe_1: -> giraffe_woman->} 
~currentSpeaker = you
~currentSpeaker = comic 
{ChangeSprite("Kent", "kent_normal")}
How’s business?
~currentSpeaker = you 
Slow
How about you?
~currentSpeaker = comic
{ChangeSprite("Kent", "kent_happy")}
Oh did you hear?
~currentSpeaker = comic
{ChangeSprite("Kent", "kent_side_serious")}
Someone fired a gun in Hyde park. Two people died, eleven injured. 
The whole area is on high alert. But it’s good for business.
{ChangeSprite("Kent", "kent_amused")}
The business of getting clicks that is.
~currentSpeaker = you 
Anything else?
~currentSpeaker = comic  
{ChangeSprite("Kent", "kent_normal")}
Nothing much. My boss wants me to put out a bad comic. 
~currentSpeaker = you 
How bad?
~currentSpeaker = comic
{ChangeSprite("Kent", "kent_side_normal")}
It has the Hyde park shooter reading the government’s new manifesto and then shooting himself in the mouth.
~currentSpeaker = you
 …
 I don’t even know what to say.
~currentSpeaker = comic
{ChangeSprite("Kent", "kent_amused")}
Another day, another distasteful comic
He let me write a small piece about the manifesto, so there’s that.
{ChangeSprite("Kent", "kent_side_normal")}
No one’s going to read it though.
{ChangeSprite("Kent", "kent_side_serious")}
No one cares about politics anymore, unless there’s violence involved.
~currentSpeaker = you
{ChangeSprite("Kent", "kent_normal")}
Hey, violence is an integral part of politics.
~currentSpeaker = comic
{ChangeSprite("Kent", "kent_side_serious")}
I wish it wasn’t.
~characters+=lavender
~currentSpeaker = snob
{ChangeSprite("Kent", "kent_normal")}
¬
{ChangeSprite("Lavender", "lavender_angry")}
{PlayAnimation("Lavender", "shake")}
HEY
{ChangeSprite("Lavender", "lavender_normal")}
Have you got my magazines?
{allbooks?togue_222: ->togue_1->}
~currentSpeaker = comic 
{ChangeSprite("Kent", "kent_amused")}
Who is this child? Do you know her?
~currentSpeaker = snob
{ChangeSprite("Lavender", "lavender_angry")}
{PlayAnimation("Lavender", "shake")}
Ahem
~currentSpeaker = comic
{ChangeSprite("Kent", "kent_normal")}
Where are your parents?
~currentSpeaker = snob 
{ChangeSprite("Lavender", "lavender_thinking")}
I don’t know
~currentSpeaker = comic
What have you got there?
~currentSpeaker = snob
{ChangeSprite("Lavender", "lavender_happy")}
Porn. 
~currentSpeaker = comic
{ChangeSprite("Kent", "kent_shocked")}
{PlayAnimation("Kent", "shake")}
WHAT?!
~currentSpeaker = you
She’s messing about with you. Not a child.
~currentSpeaker = comic
{ChangeSprite("Kent", "kent_normal")}
Uh, are you serious?
~currentSpeaker = snob
{ChangeSprite("Lavender", "lavender_normal")}
I’m thirty two.
~currentSpeaker = comic
{ChangeSprite("Kent", "kent_amused")}
Little bo peep is thirty two.
~currentSpeaker = snob
Call me that again and I’ll rip out your eyeballs.
~currentSpeaker = comic
{ChangeSprite("Kent", "kent_normal")}
Ok. Chill. 
~currentSpeaker = snob 
{ChangeSprite("Lavender", "lavender_thinking")}
Who are you? Calamity personnel?
~currentSpeaker = comic
{ChangeSprite("Kent", "kent_amused")}
How do you know that?
~currentSpeaker = snob 
{ChangeSprite("Lavender", "lavender_normal")}
Your badge is hanging out of your pocket.
~currentSpeaker = comic  
{ChangeSprite("Kent", "kent_normal")}
Is that so?
~currentSpeaker = snob 
So, what do you do?
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
~currentSpeaker = comic  
Of course you are.
~currentSpeaker = snob 
I guess employees like you are the reason why Calamity is so terrible.
It's too boring, leaves out all the gruesome details.
I prefer Apocalypse.
~currentSpeaker = comic  
News isn’t meant to be gruesome. It’s meant to inform the public, and hopefully tell the truth.
~currentSpeaker = snob 
That’s boring. Who cares about the truth?
~currentSpeaker = comic
{ChangeSprite("Kent", "kent_side_normal")}
Okay...if you can't see how messed up that is, there's no point in me arguing wiht you.
~currentSpeaker = snob 
{ChangeSprite("Lavender", "lavender_angry")}
I can see. I’m not the one wearing glasses.
~currentSpeaker = comic  
You know I can see through the glasses, right?
~currentSpeaker = you 
Let’s keep things civil, eh?
~currentSpeaker = comic  
{ChangeSprite("Kent", "kent_side_serious")}
You’re right. I don’t know why I’m even defending them. 
You know Blue Carp owns both Calamity and Apocalypse anyway.
They have a monopoly on the news outlets so they win either way.
Calamity is just your usual scaremongering, Apocalypse is a full blown shitstorm. You just pick the lesser of two devils.
~currentSpeaker = snob 
{ChangeSprite("Lavender", "lavender_thinking")}
If you don’t like your job then just leave.
~currentSpeaker = comic  
I never said that I don’t like my job.
I just have qualms about my employers.
~currentSpeaker = snob 
{ChangeSprite("Lavender", "lavender_normal")}
Maybe some of the things they do are distasteful to you. But they pay your bills, you should be grateful to them.
~currentSpeaker = comic  
{ChangeSprite("Kent", "kent_amused")}
Haha. They don’t just pay my bills you know, I have to do stuff for them first. It’s called work.
~currentSpeaker = snob
I work.
~currentSpeaker = comic  
{ChangeSprite("Kent", "kent_normal")}
I never said that you didn’t.
Just don’t tell me to be grateful to warmongering fucking corporations.
~currentSpeaker = snob 
{ChangeSprite("Lavender", "lavender_angry")}
Don’t talk badly about those corporations.
They keep this city afloat.
~currentSpeaker = comic  
{ChangeSprite("Kent", "kent_upset")}
You’re delusional. 
We’re almost at war because of them.
Because of Blue we are in quarantine from the rest of civilisation, and nearing a full blown world conflict.
~currentSpeaker = snob 
{ChangeSprite("Lavender", "lavender_normal")}
My father would never allow that.
~currentSpeaker = comic 
{ChangeSprite("Kent", "kent_side_normal")}
Well, that doesn't matter. We’re all just pawns in this game.
~currentSpeaker = snob 
{ChangeSprite("Lavender", "lavender_angry")}
I am not a pawn.
~currentSpeaker = you 
Hey {snob}, what does that mean?
~currentSpeaker = snob 
{ChangeSprite("Lavender", "lavender_normal")}
What do you need me to elaborate on?
~currentSpeaker = you 
You said that your father would never allow that.
~currentSpeaker = snob 
{ChangeSprite("Lavender", "lavender_angry")}
I mean that Benedict Blue, the owner of Blue Carp is my father. 
And I refuse to let you spout nonsense about him.  
~currentSpeaker = comic 
{ChangeSprite("Kent", "kent_shocked")}
What?!
~currentSpeaker = you 
I think she might be telling the truth.
{ChangeSprite("Kent", "kent_normal")}
~currentSpeaker = snob 
{ChangeSprite("Lavender", "lavender_normal")}
Of course I’m telling the truth.
~currentSpeaker = you 
Well this is awkward.
~currentSpeaker = comic  
{ChangeSprite("Kent", "kent_amused")}
I’m not sure what you think that name dropping is going to do.
But it’s not impressing me. 
Rather the opposite.
~currentSpeaker = snob 
{ChangeSprite("Lavender", "lavender_thinking")}
I’m a successful entrepreneur and you’re nobodies. I don’t care what you think.
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
{ChangeSprite("Pandora", "pandora_happy")}
Cas! I’m so sorry Miss Blue. I assure you, you are a highly esteemed customer. Would you like a complimentary cup of tea or coffee?
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
Uh, can you not call her the r word. It’s rude.
~currentSpeaker = snob 
{ChangeSprite("Lavender", "lavender_angry")}
Robot is making me tea.
Apologise to me now.
~currentSpeaker = you 
...
~currentSpeaker = snob 
{ChangeSprite("Lavender", "lavender_thinking")}
I’ll tell you why I started this conversation.
I don’t really care about either of you.
{ChangeSprite("Lavender", "lavender_happy")}
But I like this place, I love the funky old book smell, and it’s close to where I work. I want to see what kind of people come here. 
{ChangeSprite("Lavender", "lavender_normal")}
And to be honest, I’m not really very impressed.
But I suppose I never would be. 
~characters+=pandora
~currentSpeaker = android 
{ChangeSprite("Lavender", "lavender_normal")}
Uh, Miss Blue, your tea is ready.
~currentSpeaker = snob 
{ChangeSprite("Lavender", "lavender_angry")}
What is this?
~currentSpeaker = android  
Tea.
~currentSpeaker = snob
{ChangeSprite("Lavender", "lavender_normal")}
It’s just plain black tea. I want rose tea.
~currentSpeaker = android 
{ChangeSprite("Pandora", "pandora_normal2")}
I’m sorry. 
I don’t have that.
~currentSpeaker = snob 
{ChangeSprite("Lavender", "lavender_thinking")}
Aren’t you robots meant to be mind readers or something?
~currentSpeaker = android  
{ChangeSprite("Pandora", "pandora_mean")}
No. That kind of technology hasn’t been discovered yet. Honestly that sounds kind of disturbing to me.
~currentSpeaker = comic  
{ChangeSprite("Kent", "kent_upset")}
Her name is Pandora, you ungrateful brat.
~currentSpeaker = snob 
{ChangeSprite("Kent", "kent_normal")}
{ChangeSprite("Lavender", "lavender_normal")}
Ugh fine. Thank you for the tea. But I will make improvements to this next time.
~currentSpeaker = android 
{ChangeSprite("Pandora", "pandora_normal")}
Improvements?
~currentSpeaker = snob 
{ChangeSprite("Lavender", "lavender_serious")}
Suggestions to improve your failing business.
{ChangeSprite("Lavender", "lavender_normal")}
If you have any more magazines please order them. I’ll collect them the next time I visit.
Bye.
~characters-=lavender
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
Haha, you know I think this is why I was such a bad therapy AI. But you two would make great therapy AIs.
~currentSpeaker = you 
Uh really?
~currentSpeaker = comic  
{ChangeSprite("Kent", "kent_happy")}
Thanks Pandora. Maybe you can recommend me to career services next time.
~currentSpeaker = comic  
{ChangeSprite("Kent", "kent_normal")}
I have to go, I have a lot of missed calls from my boyfriend. I think he’s worried after the shooting.
~currentSpeaker = you 
See you around.
~characters-=kent
You see Pan, lots of people like you. You’re a great shop assistant.
~currentSpeaker = android  
{ChangeSprite("Pandora", "pandora_pensive")}
I know. 
OK let’s do the orders for today.
->day_2_inventory
==day_2_inventory==
->goto_shop->
->read_check->
->end_day_2

==end_day_2==
->go_to_day_3
==go_to_day_3==
~currentSpeaker = you 
See you tomorrow, bye!
+[Go home]
~currentSpeaker = ""
~scene = "Night"
¬
~music = "night theme"
~sfx = "rain"
{snappedOut=="no": ->night_02_F->|->night_02->}
~scene= "ShopFront"
¬
~music = ""
~sfx = "rain"
15th December, Wednesday
~scene= "GenericScene"
¬
~day+=1
->day_3