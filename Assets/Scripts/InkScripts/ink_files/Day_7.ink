// ==day_7_alt==
// ~newsPicture = "headline7"
// ~newsCaption = "Virus and parrot - Illustration by Kent Herring"
// ~newsAnnouncement = "Parrots do not actually spread parrot pox. The public are asked to not realease their pet parrots. These feathered beasts are a scourge upon this nation."
// ¬
// ~newsAnnouncement = ""
// ~scene= "ShopFront"
// ¬
// ~music = ""
// ~sfx = "rain"
// 20th December, Monday
// ~scene= "GenericScene"
// ¬
// ~day+=1
// ->day_8

==day_7==
¬
//{pandoraPoints==0: ->day_7_alt}
~newsPicture = "headline7"
~newsCaption = "Virus and parrot - Illustration by Kent Herring"
~newsAnnouncement = "Parrots do not actually spread parrot pox. The public are urged to not dispose of their pet parrots. There are reports of feathered colonies causing distruptions over London, from people who have released these feathered beasts among fears that they will catch the disease."
¬
~newsAnnouncement = ""
~music="Pandora's theme"
~characters+=pandora
¬
{ChangeSprite("Pandora", "pandora_normal")}
~currentSpeaker = android 
I'll sign you in.
~currentSpeaker = you 
Eh? I'm not working.
~currentSpeaker = android 
Doesn't matter. It's the rules, I have to keep track of any employees who enter or leave the premises.
*[Yes (save)]
~currentSpeaker = you 
{SaveStory()}
Thanks {android}!
*[No (don't save)] 
I can do it myself
~currentSpeaker = you
-Hey Pan.
->tea_or_coffee->day_7_cont
==day_7_cont==
~currentSpeaker = you
 Whatcha listening to?
~currentSpeaker = android
{ChangeSprite("Pandora", "pandora_happy")}
 Uh, it’s Cobalt Dragon’s new album.
~currentSpeaker = you
 I've heard of them.
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
 Are you like screaming internally?
~currentSpeaker = android
{ChangeSprite("Pandora", "pandora_mean")}
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
 Yes, but at least I’m feeling, the feeling makes me feel more alive. 
 That’s a good thing in some ways. 
 But to be dead inside- to feel nothing...that’s sadder.
~currentSpeaker = you
 Hmm, I don’t know about that.
 Look, you don’t have to tell me if you don’t want to. But why are you here?
 ~currentSpeaker = android
 {ChangeSprite("Pandora", "pandora_normal")}
 I was created to serve as a therapy IOI.
 ~currentSpeaker = you
 Why aren't you doing that then?
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
It like sucks that you even need a custodian though.
If you were a human, you would be free.
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
 What was your previous custodian like?
~currentSpeaker = android
{ChangeSprite("Pandora", "pandora_sad")}
 I'm not sure I want to talk about that.
~currentSpeaker = you
 I just worry, you always look a bit distraught when someone metions him.
~currentSpeaker = android
{ChangeSprite("Pandora", "pandora_pensive")}
 Well, I suppose that’s because he’s dead, and I miss him.
~currentSpeaker = you
 He treated you well?
~currentSpeaker = android
{ChangeSprite("Pandora", "pandora_annoyed")}
 Of course.
 {ChangeSprite("Pandora", "pandora_sad")}
 Why? Did you think he was cruel to me?
~currentSpeaker = you
 That’s the usual kind of stuff that happens.
~currentSpeaker = android
{ChangeSprite("Pandora", "pandora_pensive")}
 What happened to you to make you have such a low opinion of humanity?
~currentSpeaker = you
 Uh, general life experience I guess.
 I’ve offended you, haven’t I?
~currentSpeaker = android
{ChangeSprite("Pandora", "pandora_sad")}
 How could I not be offended? He was my father.
 He read stories to me, and he listened to the things I had to say. He taught me how to cook and fix things and drive. 
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
 I always hoped to foster a similar kind of relationship with Ada.
 {ChangeSprite("Pandora", "pandora_sad")}
 It never worked though.
~currentSpeaker = you
 She's just not that kind of person.
~currentSpeaker = android
 I suppose she's grieving too.
 She went through a lot. She lost her brother.
 I am somewhat an unwelcome reminder of him.
 ~currentSpeaker = you
 Don't say that.
 {ChangeSprite("Pandora", "pandora_mean")}
 ~currentSpeaker = android
 Enough about me.
 What about you?
 What's your deal?
 ~currentSpeaker = you
 Well I worked at a shitty company and then I had to leave.
 ~currentSpeaker = android
 Your family?
 ~currentSpeaker = you
 Distant.
 ~currentSpeaker = android
 Friends?
 ~currentSpeaker = you
 Non-existent.
 ~currentSpeaker = android
 Well, you have me.
 Do you want to have a listen?
 ~currentSpeaker = you
 To Cobalt Dragons?
 Uh sure, why not?
~music = "Cobalt dragons"
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
 ~characters-=pandora
 ~music = "A winters dream"
 ~scene="Blank"
 ¬
 [END OF DEMO]
 ->END
//->end_day_7
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
-See you tomorrow. Bye!
¬
~scene = "Night"
~music = "night theme"
~sfx = "rain"
{snappedOut=="no": ->night_07_F->|->night_07->}
¬
~scene= "ShopFront"
~music = ""
~sfx = "rain"
20th December, Monday
~scene= "GenericScene"
~day+=1
->END
->day_8