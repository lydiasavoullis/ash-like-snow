==day_7==
~currentSpeaker = you
Hey Pan.
->tea_or_coffee->day_7_cont
==day_7_cont==
~currentSpeaker = you
 Whatcha listening to?
~currentSpeaker = android
 Uh, it’s Cobalt Dragon’s new album.
~currentSpeaker = you
 What’s Cobalt Dragon?
~currentSpeaker = android
 It’s a band I like.
~currentSpeaker = you
 It’s kind of cool, not really my thing though.
~currentSpeaker = android
 What’s your thing?
~currentSpeaker = you
 I don’t know, stuff with less screaming.
~currentSpeaker = android
 I love the screaming. It speaks to my soul.
~currentSpeaker = you
 Of course it does.
~currentSpeaker = you
 Are you screaming internally?
~currentSpeaker = android
 Always. I feel so broken and lost. This music really speaks to me.
~currentSpeaker = you
 I just feel dead inside.
~currentSpeaker = android
 That’s sad.
~currentSpeaker = you
 What you’re feeling is sad too.
~currentSpeaker = android
 Yes, but at least I’m feeling, the feeling makes me feel more alive. That’s a good thing in some ways. But to be dead inside is to feel nothing, that’s sadder.
~currentSpeaker = you
 Hmm, I don’t know about that.
~currentSpeaker = you
 Look, you don’t have to tell me if you don’t want to. But why did Ada get custody of you? Why do you even need someone to have custody of you, you’re like an adult?
~currentSpeaker = android
 I’m two years old, in existing years. But my mental age is twenty four. If I was a human I would be able to live a life without a custodian.
~currentSpeaker = you
 But you’re not.
~currentSpeaker = android
 Yes, so I need someone to provide things like electricity and maintenance. I’m not allowed to leave this area either, without permission from my custodian. I’m not allowed to leave the city without permission from my custodian and the government. 
~currentSpeaker = you
 That’s barbaric.
~currentSpeaker = android
 Well, this technology is still pretty new. I have a body that interacts with the world just like yours. I think like you. That could be dangerous.
~currentSpeaker = you
 Any human can be dangerous.
~currentSpeaker = android
 Yes, but with humans, if they do something wrong they get the blame. If I do something wrong the company that made me gets sued for billions. 
~currentSpeaker = you
 But–
~currentSpeaker = android
 I don’t make the rules.
~currentSpeaker = you
 What was your previous life like? With Ada’s brother in law? Did he treat you well?
~currentSpeaker = android
 Yes. Why do you think he didn’t?
~currentSpeaker = you
 I just worry, you always look a bit distraught when you talk about him.
~currentSpeaker = android
 Well, I suppose that’s because he’s dead, and I miss him.
~currentSpeaker = you
 Shit, I’m sorry. I wasn’t thinking.
~currentSpeaker = android
 Why? Did you think he abused me?
~currentSpeaker = you
 That’s the usual kind of stuff that happens.
~currentSpeaker = android
 What happened to you to make you have such a low opinion of humanity?
~currentSpeaker = you
 Uh, life experience I guess.
~currentSpeaker = you
 I’ve offended you, haven’t I?
~currentSpeaker = android
 You insinuate that my dead father abused me. How could I not be offended?
~currentSpeaker = you
 I mean, you’re a young android woman, and you were just handed over to a middle aged man, who would have an inordinate amount of control over your life. That’s a bit of a strange relationship, you can understand why I would think that. I was concerned about your well being.
~currentSpeaker = android
 My well being…
~currentSpeaker = android
 I wasn’t just handed over without any thought. His character was evaluated and I was assigned to him. If I was not happy with the arrangement, Blue Carp would have been glad to take me back.
~currentSpeaker = android
 He read stories to me, and he listened to the things I had to say. He taught me to cook and fix things and drive. 
~currentSpeaker = you
 Drive? Isn’t it illegal for sentient androids to drive?
~currentSpeaker = android
 He didn’t really have much respect for the law.
~currentSpeaker = android
 He said laws were just arbitrary rules.
~currentSpeaker = you
 Well, some are. Most are there for a good reason though.
~currentSpeaker = android
 After he died I got transferred to Ada.
~currentSpeaker = android
 I wanted to be with her as she was family. I wanted a family so bad.
~currentSpeaker = you
 She doesn’t have much of a maternal instinct.
~currentSpeaker = android
 I know I’m not a child, but I was expecting some kind of warmth. Acknowledgement that we went through the same loss.
~currentSpeaker = android
 I suppose we all grieve in our own way.
~currentSpeaker = you
 Do you want me to stay?
~currentSpeaker = android
 For a little bit longer please.
~currentSpeaker = android
 Just listen to this song.
->end_day_7
==end_day_7==
*[Go home]
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