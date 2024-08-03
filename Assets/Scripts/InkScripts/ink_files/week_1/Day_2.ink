==day_2==

{deliveryToday>0 : ->delivery_1->}
~currentSpeaker = you 
No delivery today
~currentSpeaker = android  
Uh, didn't see anything you liked?
~currentSpeaker = you 
Nope
~currentSpeaker = android  
That's ok, I guess. Saving money is wise.
->tea_or_coffee->day_2_cont

==delivery_1==
~characters+=pandora
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
~currentSpeaker = you 
I’ve seen better days
~currentSpeaker = android  
I’m doing well
(read last night = true) Cas read me a story last night
~currentSpeaker = webdev 
Aww, that’s cute
~currentSpeaker = you 
I thought it would be good, Pandora said she likes stories.
~currentSpeaker = webdev 
What did you read?
~currentSpeaker = android 
[Pandora says some comments based on what story you read if you even read a story]
~currentSpeaker = webdev 
I’m just stopping by to browse 
And work on a few emails to my boss
~currentSpeaker = you
{allbooks ? fantasy_7: ->fantasy_7_book->}
~currentSpeaker = you
How are things holding up?
~currentSpeaker = webdev
Things have been pretty shit lately. My boss is working me to death. Clients here and there. 
One of these clients wants some impossible things. They want their website to look all clean and minimalist. 
And then I show them, and they want it even more clean and minimalistic, I don’t know how much I can simplify it. 
I can’t reduce it anymore. They’ll just be left with a blank page at some point.
~currentSpeaker = you 
Maybe you can compromise?
~currentSpeaker = webdev 
Ha! There is no compromise with these people. The customer is always right. Nothing I do makes my boss happy. 
~currentSpeaker = you 
Why not move?
~currentSpeaker = webdev 
It’s a good job.
~currentSpeaker = you 
Not from what you described. And from what I heard you can find work elsewhere easily with your skills.
~currentSpeaker = webdev 
Well, not so easily. Ugh my boss is ringing me. I have to go.
~characters-=tali
~currentSpeaker = android  
I’m worried about her.
~currentSpeaker = you 
That’s nice of you.
~currentSpeaker = android  
Yeah she’s our second best customer. We can’t lose her.
~currentSpeaker = you 
Oh my God. 
~currentSpeaker = android  
{funds<100:Someone has to be fiscally responsible here}
~currentSpeaker = you 
We have a new customer
~characters+=kent
~currentSpeaker = comic  
Me again
~currentSpeaker = you 
Good morning Kent
~currentSpeaker = comic  
Morning
{allbooks ? zebraman_89: ->zebra_man->} 
{allbooks ? giraffe_1: -> giraffe_woman->} 
~currentSpeaker = you
{allbooks !? (giraffe_1,zebraman_89): I still don't have any comics sorry }
~currentSpeaker = comic 
How’s business?
~currentSpeaker = you 
Slow
~currentSpeaker = you 
How about you?
~currentSpeaker = comic  
Oh did you hear?
~currentSpeaker = comic  
Someone fired a gun in Hyde park. Two people died, eleven injured. 
~currentSpeaker = comic  
The whole area is on high alert. But it’s good for business.
~currentSpeaker = comic  
The business of getting clicks that is.
~currentSpeaker = you 
Anything else?
~currentSpeaker = comic  
Nothing much. My boss wants me to put out a bad comic. 
~currentSpeaker = you 
How bad?
~currentSpeaker = comic  
It has the Hyde park shooter reading the government’s new manifesto and then shooting himself in the mouth.
~currentSpeaker = you
 …
~currentSpeaker = you
 I don’t even know what to say.
~currentSpeaker = comic
  Another day, another distasteful comic
  He let me write a small piece about the manifesto, so there’s that.
  No one’s going to read it though.
  No one cares about politics anymore, unless there’s violence involved.
~currentSpeaker = you
 Hey, violence is an integral part of politics.
~currentSpeaker = comic
  I wish it wasn’t. 
~characters+=lavender
~currentSpeaker = snob
 HEY
 Have you got my magazines?
{allbooks?togue_222: ->togue_1->}
~currentSpeaker = comic
  Who is this child? Do you know her?
~currentSpeaker = snob
 Ahem
~currentSpeaker = comic
  Where are your parents?
~currentSpeaker = snob 
I don’t know
~currentSpeaker = comic
  What have you got there?
~currentSpeaker = snob
 Porn. 
~currentSpeaker = comic
WHAT?!
~currentSpeaker = you
 She’s messing about with you. Not a child.
~currentSpeaker = comic
  Uh, are you serious?
~currentSpeaker = snob
 I’m thirty two.
~currentSpeaker = comic
  Little bo peep is thirty two.
~currentSpeaker = snob
Call me that again and I’ll rip out your eyeballs.
~currentSpeaker = comic
Chill. 
~currentSpeaker = snob 
Who are you? Calamity personnel?
~currentSpeaker = comic  
How do you know that?
~currentSpeaker = snob 
Your badge is hanging out of your pocket.
~currentSpeaker = comic  
Is that so?
~currentSpeaker = snob 
So, what do you do?
~currentSpeaker = comic  
I work as an illustrator and a writer for the newspaper.
~currentSpeaker = snob 
Oh, is that it?
~currentSpeaker = comic  
And what do you do?
~currentSpeaker = snob 
I’m a fashion designer.
~currentSpeaker = comic  
Of course you are.
~currentSpeaker = snob 
I guess employees like you are the reason why Calamity is so terrible.
~currentSpeaker = snob 
Honestly, I prefer the Apocalypse, it’s way more gruesome. 
~currentSpeaker = comic  
News isn’t meant to be gruesome. It’s meant to tell the truth.
~currentSpeaker = snob 
That’s boring. Who cares about the truth?
~currentSpeaker = comic  
People who want this world to heal.
~currentSpeaker = snob 
Heal.
~currentSpeaker = snob 
You act as if the world is sick, but I don’t see this sickness.
~currentSpeaker = comic  
Then maybe you’re not looking hard enough.
~currentSpeaker = comic  
Or maybe you’re covering your eyes.
~currentSpeaker = snob 
I’m not the one wearing glasses.
~currentSpeaker = comic  
You know I can see through the glasses, right?
~currentSpeaker = you 
Let’s keep things civil, eh?
~currentSpeaker = comic  
You’re right. I don’t know why I’m even defending them. 
You know Blue Carp owns both Calamity and Apocalypse anyway.
They have a monopoly on the news outlets so they win either way.
Calamity is just your usual scaremongering, Apocalypse is a full blown shitstorm. You just pick the lesser of two devils.
~currentSpeaker = snob 
If you don’t like your job then just leave.
~currentSpeaker = comic  
I never said that I don’t like my job.
I just have qualms about my employers.
~currentSpeaker = snob 
Maybe some of the things they do are distasteful to you. But they pay your bills, you should be grateful to them.
~currentSpeaker = comic  
Haha. They don’t just pay my bills you know, I have to do stuff for them first. It’s called work.
~currentSpeaker = snob 
I work.
~currentSpeaker = comic  
I never said that you didn’t.
~currentSpeaker = comic  
Just don’t tell me to be grateful to warmongering fucking corporations.
~currentSpeaker = snob 
Don’t talk badly about those corporations.
They keep this city afloat.
~currentSpeaker = comic  
You’re delusional. 
We’re almost at war because of them.
Because of Blue we are in quarantine from the rest of civilisation, and nearing a full blown world conflict.
~currentSpeaker = snob 
My father would never allow that.
~currentSpeaker = comic  
Well, doesn’t matter what he wants. We’re all just pawns in this game.
~currentSpeaker = snob 
You’re a pawn.
I’m Lavender Blue.
~currentSpeaker = you 
What does that mean?
~currentSpeaker = snob 
I mean that Benedict Blue, the owner of Blue Carp is my father. 
And I refuse to let you spout nonsense about him.  
~currentSpeaker = comic  
What?
~currentSpeaker = you 
I think she might be telling the truth.
~currentSpeaker = snob 
Of course I’m telling the truth.
~currentSpeaker = you 
Well this is awkward.
~currentSpeaker = comic  
I’m not sure what you think that name dropping is going to do.
But it’s not impressing me. 
Rather the opposite.
~currentSpeaker = snob 
I’m a successful entrepreneur and you’re nobodies. I don’t care what you think.
~currentSpeaker = you 
I doubt that. 
Why are you here? 
Why would you be so eager to come in here and start this conversation with Kent? 
No one asked you to.
~currentSpeaker = snob 
<i>gasps</i>
~currentSpeaker = android  
Cas! I’m so sorry Miss Blue. I assure you, you are a highly esteemed customer. Would you like a complimentary cup of tea or coffee?
~currentSpeaker = snob 
Are you trying to bribe me? 
I love tea. 
I want tea, robot.
~currentSpeaker = you 
Uh, can you not call her the r word. It’s rude.
~currentSpeaker = snob 
Robot is making me tea.
Apologise to me now.
~currentSpeaker = you 
...
~currentSpeaker = snob 
I’ll tell you why I started this conversation.
~currentSpeaker = snob 
I don’t really care about either of you.
~currentSpeaker = snob 
But I like this place, I love the funky old book smell, and it’s close to where I work. I want to see what kind of people come here. And to be honest, I’m not really very impressed.
~currentSpeaker = snob 
But I suppose I never would be. 
~currentSpeaker = android  
Uh, Miss Blue, your tea is ready.
~currentSpeaker = snob 
What is this?
~currentSpeaker = android  
Tea.
~currentSpeaker = snob 
It’s just plain black tea. I want rose tea.
~currentSpeaker = android  
I’m sorry. 
I don’t have that.
~currentSpeaker = snob 
Aren’t you robots meant to be mind readers or something?
~currentSpeaker = android  
No. That kind of technology hasn’t been discovered yet. Honestly that sounds kind of disturbing to me.
~currentSpeaker = comic  
Her name is Pandora, you ungrateful brat.
~currentSpeaker = snob 
Ugh fine. Thank you for the tea. But I will make improvements to this next time.
~currentSpeaker = android  
Improvements?
~currentSpeaker = snob 
Suggestions to improve your failing business.
If you have any more magazines please order them. I’ll collect them the next time I visit.
Bye.
characters-=lavender
~currentSpeaker = comic  
The absolute nerve. 
You should ban her.
~currentSpeaker = you 
We can’t.
She’s technically keeping this business afloat.
~currentSpeaker = comic  
I hate everything.
~currentSpeaker = android  
Do you think I upset her?
Oh no.
I’m a terrible shop assistant. Ada will be so angry with me.
~currentSpeaker = you 
No Pan, it wasn’t your fault.
~currentSpeaker = android  
What’s Rose tea? 
We must procure some immediately.
~currentSpeaker = you 
OK, but I don’t think it will help. Lavender’s just got a stick up her arse. Nothing’s going to fix that.
~currentSpeaker = android  
I know, but she’s never been angry at me before.
~currentSpeaker = you 
Sometimes when people are uncontrollably angry it spills out everywhere...like a leaky pipe. 
~currentSpeaker = comic  
What Cas is saying is that people like that lash out at anyone, even if they didn’t do anything wrong. They think they’re entitled to hurt everyone. 
~currentSpeaker = android  
Haha, you know I think this is why I was such a bad therapy AI. But you two would make great therapy AIs.
~currentSpeaker = you 
Uh really?
~currentSpeaker = comic  
Thanks Pandora. Maybe you can recommend me to career services next time.
~currentSpeaker = comic  
I have to go, I have a lot of missed calls from my boyfriend. I think he’s worried after the shooting.
~currentSpeaker = you 
See you around.
characters-=kent
You see Pan, lots of people like you. You’re a great shop assistant.
~currentSpeaker = android  
I know. 
OK let’s do the orders for today.
->day_2_inventory
==day_2_inventory==
Remaining funds: {funds}
*{funds>=200}[Togue Spring issue 394(£200]
~funds -= 200
~deliveryToday+=1
~allbooks+=togue_394
->day_2_inventory
*{funds>=100}[The Sentinel \#105(£70)]
~funds -= 70
~deliveryToday+=1
~allbooks+=sentinel_105
->day_2_inventory
*{funds>=50}[The Betrayal of the Dragon's Heart (£45)]
~funds -= 45
~deliveryToday+=1
~allbooks+=fantasy_dragon_heart
->day_2_inventory
*{funds>=10}[Alice in Wonderland (£10)]
~funds -= 10
~deliveryToday+=1
~allbooks+=Alice_in_Wonderland
~strangerbooks+=rabbithole
->day_2_inventory
+[finished]
->end_day_2

==end_day_2==
->read_check->go_to_day_3
==go_to_day_3==
~currentSpeaker = you 
See you tomorrow, bye!
+[Go home]
->day_3