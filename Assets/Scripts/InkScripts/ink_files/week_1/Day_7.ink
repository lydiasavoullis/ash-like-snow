==day_7_alt==
~scene= "ShopFront"
¬
~music = ""
~sfx = "rain"
20th December, Monday
~scene= "GenericScene"
¬
~day+=1
->day_8

==day_7==
{pandoraPoints==0: ->day_7_alt}

~characters+=pandora
~currentSpeaker = android 
I'll sign you in.
~currentSpeaker = you 
Eh? I'm not working.
~currentSpeaker = android 
Doesn't matter. It's the rules, I have to keep track of any employees who enter or leave the premises.
~currentSpeaker = you 
*[Yes (save)]
{SaveStory()}
Thanks {android}!
*[No (don't save)] 
I can do it myself
{ChangeSprite("Pandora", "pandora_normal")}
~currentSpeaker = you
Hey Pan.
->tea_or_coffee->day_7_cont
==day_7_cont==
~currentSpeaker = you
 Whatcha listening to?
~currentSpeaker = android
{ChangeSprite("Pandora", "pandora_happy")}
 Uh, it’s Cobalt Dragon’s new album.
~currentSpeaker = you
 What’s Cobalt Dragon?
~currentSpeaker = android
{ChangeSprite("Pandora", "pandora_normal")}
 It’s a band I like.
~currentSpeaker = you
 It’s kind of cool, not really my thing though.
~currentSpeaker = android
 What’s your thing?
~currentSpeaker = you
 I don’t know, stuff with less screaming.
~currentSpeaker = android
{ChangeSprite("Pandora", "pandora_happy")}
 I love the screaming. It speaks to my soul.
~currentSpeaker = you
 Of course it does.
~currentSpeaker = you
 Are you screaming internally?
~currentSpeaker = android
{ChangeSprite("Pandora", "pandora_pensive")}
 Always. I feel so broken and lost. 
~currentSpeaker = you
 I just feel dead inside.
~currentSpeaker = android
{ChangeSprite("Pandora", "pandora_sad")}
 That’s sad.
~currentSpeaker = you
 What you’re feeling is sad too.
~currentSpeaker = android
{ChangeSprite("Pandora", "pandora_pensive")}
 Yes, but at least I’m feeling, the feeling makes me feel more alive. That’s a good thing in some ways. 
 But to be dead inside- to feel nothing...that’s sadder.
~currentSpeaker = you
 Hmm, I don’t know about that.
 Look, you don’t have to tell me if you don’t want to. But why are you here?
 ~currentSpeaker = android
 {ChangeSprite("Pandora", "pandora_normal")}
 I was created to serve as a therapy IOI.
 ~currentSpeaker = you
 Why aren't you doing that then? Why are you working in a bookshop?
~currentSpeaker = android
{ChangeSprite("Pandora", "pandora_sad")}
...
Let's just say it didn't work out.
~currentSpeaker = you
Right.
~currentSpeaker = android
{ChangeSprite("Pandora", "pandora_normal")}
I'm glad I'm here.
Ada is a good custodian.
~currentSpeaker = you
Custodian?
~currentSpeaker = android
{ChangeSprite("Pandora", "pandora_pensive")}
I am an IOI, therefore I need a custodian.
I know it seems silly. I'm two years old in human years, but mentally I'm approximately twenty four. 
But I still need someone to look after me.
If I was human, I would be free.
~currentSpeaker = you
 But you’re not.
~currentSpeaker = android
{ChangeSprite("Pandora", "pandora_sad")}
 Indeed, I'm not. 
 I’m not allowed to leave this building, without permission from my custodian. 
 I’m not allowed to leave the city without permission from my custodian and the government. 
~currentSpeaker = you
 That’s barbaric.
~currentSpeaker = android
{ChangeSprite("Pandora", "pandora_pensive")}
 Well, this technology is still pretty new. I have a body that interacts with the world just like yours. I think like you. That could be dangerous.
~currentSpeaker = you
 Any human can be dangerous.
~currentSpeaker = android
{ChangeSprite("Pandora", "pandora_normal")}
 Yes, but with humans, if they do something wrong they get the blame. If I do something wrong the company that made me gets sued. 
~currentSpeaker = you
 But–
~currentSpeaker = android
{ChangeSprite("Pandora", "pandora_pensive")}
 I don’t make the rules.
~currentSpeaker = you
 What was your previous life like? With Ada’s brother? Did he treat you well?
~currentSpeaker = android
{ChangeSprite("Pandora", "pandora_sad")}
 Yes. What makes you think he didn’t?
~currentSpeaker = you
 I just worry, you always look a bit distraught when you talk about him.
~currentSpeaker = android
{ChangeSprite("Pandora", "pandora_pensive")}
 Well, I suppose that’s because he’s dead, and I miss him.
~currentSpeaker = you
 Shit, I’m sorry. I wasn’t thinking.
~currentSpeaker = android
{ChangeSprite("Pandora", "pandora_normal")}
 Why? Did you think he was cruel to me?
~currentSpeaker = you
 That’s the usual kind of stuff that happens.
~currentSpeaker = android
{ChangeSprite("Pandora", "pandora_pensive")}
 What happened to you to make you have such a low opinion of humanity?
~currentSpeaker = you
 Uh, life experience I guess.
 I’ve offended you, haven’t I?
~currentSpeaker = android
{ChangeSprite("Pandora", "pandora_sad")}
 How could I not be offended? He was my father.
 He read stories to me, and he listened to the things I had to say. He taught me to cook and fix things and drive. 
~currentSpeaker = you
 Drive? Isn’t it illegal for IOIs to drive?
~currentSpeaker = android
{ChangeSprite("Pandora", "pandora_normal")}
 He didn’t really have much respect for the law.
 He said laws were just arbitrary rules.
~currentSpeaker = you
 Well, some are. Most are there for a good reason though.
~currentSpeaker = android
{ChangeSprite("Pandora", "pandora_pensive")}
 After he died I got transferred to Ada.
 I wanted to be with her as she was family. I wanted a family so bad.
~currentSpeaker = you
 She doesn’t have much of a maternal instinct.
~currentSpeaker = android
 I know I’m not a child, but I was expecting some kind of warmth. Acknowledgement that we went through the same loss.
 I suppose we all grieve in our own way.
~currentSpeaker = you
 Do you want me to stay?
~currentSpeaker = android
{ChangeSprite("Pandora", "pandora_normal")}
 For a little bit longer please.
 Just listen to this song.
 ~currentSpeaker = ""
 ...
 ...
 ...
->end_day_7
==end_day_7==
~characters+=pandora
~currentSpeaker = you 
I have to go now.
~currentSpeaker = android 
Want me to sign you out?
~currentSpeaker = you 
*[Yes (save)]
{SaveStory()}
Thanks {android}!
*[No (don't save)] 
I can do it myself
~scene = "Night"
¬
~music = "night theme"
~sfx = "rain"
{snappedOut=="no": ->night_07_F->|->night_07->}
~scene= "ShopFront"
¬
~music = ""
~sfx = "rain"
20th December, Monday
~scene= "GenericScene"
¬
~day+=1
->day_8