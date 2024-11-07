==day_5==
~allbooks+=hypnos_55
~characters += pandora
~currentSpeaker = you

 Hey Pandora
~currentSpeaker = android
{ChangeSprite("Pandora", "pandora_happy")}
{PlayAnimation("Pandora", "sway")}
 Hey! What are you up to?
~currentSpeaker = you
{PlayAnimation("Pandora", "jump")}
 Stacking books.
~currentSpeaker = android
{PlayAnimation("Pandora", "shake")}
 You’re doing such a good job.
~currentSpeaker = you
 You think so
~currentSpeaker = android
{ChangeSprite("Pandora", "pandora_normal")}
 You've sold {booksSold} book(s).
~currentSpeaker = android
{ChangeSprite("Pandora", "pandora_happy")}
{PlayAnimation("Pandora", "sway")}
 I’m so happy for you.
~currentSpeaker = you
 Me too.
->tea_or_coffee->day_5_cont
==day_5_cont==
~currentSpeaker = you
 What is the plan for Saturday?
 I’m dying to know.
~currentSpeaker = android
{ChangeSprite("Pandora", "pandora_sad")}
 Please don’t die. I need you to attend the party.
~currentSpeaker = you
 OK, sure but what’s going to happen?
~currentSpeaker = android
{ChangeSprite("Pandora", "pandora_mean")}
 Wouldn’t you like to know.
~currentSpeaker = you
 I sure as hell would.
~currentSpeaker = android
 It’s a surprise.
~currentSpeaker = you
 Aw come on.
 You can tell me. I’m trustworthy.
~currentSpeaker = android
{ChangeSprite("Pandora", "pandora_normal")}
 I want it to be a surprise. I want even you to be surprised. In fact I want you to be surprised the most because you’re never surprised about anything.
~currentSpeaker = you
 That’s not true.
~currentSpeaker = android
{ChangeSprite("Pandora", "pandora_mean")}
 Um it kind of is.
 You’re never shocked.
 Even when Ada twisted her ankle falling down the basement stairs. I screamed, but you were like, well it was bound to happen one of these days.
~currentSpeaker = you
 Oh come on, you’ve seen the way she’s always running up and down those stairs. It <i<i>was</i> bound to happen.
 I kind of miss her. Is that weird to say?
~currentSpeaker = android
{ChangeSprite("Pandora", "pandora_pensive")}
 Oh me too. Everyday. I wish she could see what I’m doing now. Do you think she would be proud?
~currentSpeaker = you
 Definitely. I mean, she’d be disappointed it isn’t making money from it. But I think she’d be happy begrudgingly.
~currentSpeaker = android
{ChangeSprite("Pandora", "pandora_sad")}
 It’s a shame the dome blocks phone transmission signals outside of London.
~currentSpeaker = you
I got a secure email. She arrived in Madrid safely.
~currentSpeaker = android
{ChangeSprite("Pandora", "pandora_pensive")}
 I wish we could call her though.
~currentSpeaker = you
 I’m not sure she would want to be disturbed.
~currentSpeaker = android
{ChangeSprite("Pandora", "pandora_normal2")}
 Oh right of course. Sorry, I only ever think about myself.
~currentSpeaker = you
 It’s OK, you're just worried about her.
~currentSpeaker = android
Is that what this feeling is?
~currentSpeaker = you
Can I ask you something?
Do you think I’m doing OK?
~currentSpeaker = android
 I don’t know, what do you mean?
~currentSpeaker = you
 I mean with the shop.
~currentSpeaker = android
{funds >100:  I think you’re doing great. If we keep this up Ada will be happy when she comes back. | Uh I don't know, I'm sure Ada won't be upset.} 
~currentSpeaker = you
{funds >100:  Thanks | I should probably sell some more books.} 
~characters += kent
~currentSpeaker = comic
{ChangeSprite("Kent", "kent_side_normal")}
Hey guys.

 ~currentSpeaker = you
{allbooks ? hypnos_55: -> hypnos->} 
 
 ~currentSpeaker = comic
{ChangeSprite("Kent", "kent_side_serious")}
 Really would love to chat, but I have something I need to do.
 ~currentSpeaker=you
 What’s wrong?
~currentSpeaker = comic
{ChangeSprite("Kent", "kent_normal")}
 Nothing really. I’m just really fucking behind on a lot of work. Please can I work in the corner there?
~currentSpeaker = android
 Of course you can. Sit down. No one will disturb you. 
~currentSpeaker = comic
{ChangeSprite("Kent", "kent_happy")}
 Brilliant, I owe you.
~currentSpeaker = android
 Can I make you a coffee?
~currentSpeaker = comic
{ChangeSprite("Kent", "kent_normal")}
 No thanks.
~characters -= kent
~currentSpeaker = you
 So are we a library now?
~currentSpeaker = android
{ChangeSprite("Pandora", "pandora_normal")}
 Well I don’t see why we shouldn’t let him stay here for a bit. He’s a good customer. And it might help business a bit if we looked busy.
~currentSpeaker = you
 Really? Very business minded, aren’t you.
~currentSpeaker = android
{ChangeSprite("Pandora", "pandora_mean")}
 I’m learning.
~currentSpeaker = you
 Maybe we should turn this into a coffee and bookshop. Might have better luck with that.
~currentSpeaker = android
{ChangeSprite("Pandora", "pandora_happy")}
I’ve been nagging Ada about that for a while, but she hates it. She keeps saying she only wants to sell books. 
{ChangeSprite("Pandora", "pandora_pensive")}
I’m starting to think she wants this place to fail.
~characters += lavender
~currentSpeaker = snob
{ChangeSprite("Lavender", "lavender_normal")}
 One rose tea.
 Ahem.
 ~characters -=pandora
 ...
  {allbooks ? togue_666: -> togue_special->} 
 ~characters += pandora
~currentSpeaker = android
{ChangeSprite("Pandora", "pandora_normal")}
 Here you go.
~currentSpeaker = snob
{ChangeSprite("Lavender", "lavender_thinking")}
 What’s he doing over there?
~currentSpeaker = you
 Working, you can’t disturb him.
~currentSpeaker = snob
{ChangeSprite("Lavender", "lavender_angry")}
 I have no desire to go anywhere near him.
{ChangeSprite("Lavender", "lavender_normal")}
 I was going to meet Tali here, but she cancelled at the last minute. Something to do with work.
~currentSpeaker = you
 Well, that happens sometimes.
~currentSpeaker = snob
{ChangeSprite("Lavender", "lavender_serious")}
 It didn’t use to be like this, you know we used to go out together all the time. Now she’s all busy.
~currentSpeaker = you
 That’s what it’s like having a job I guess.
~currentSpeaker = snob
{ChangeSprite("Lavender", "lavender_thinking")}
 I asked my father and he said I should leave her to get on with it.
 It’s just annoying, I have all this free time and she’s always slaving away. It makes no sense.
~currentSpeaker = you
 What do you do?
~currentSpeaker = snob
{ChangeSprite("Lavender", "lavender_happy")}
 I design clothes of course. I have my own fashion company and every three months I release new designs to my clothing store.
~currentSpeaker = you
 Do you make all the clothes?
~currentSpeaker = snob
{ChangeSprite("Lavender", "lavender_serious")}
 Of course not, I have professionals to do that.
{ChangeSprite("Lavender", "lavender_thinking")}
 Although I have been thinking of having a go again.
{ChangeSprite("Lavender", "lavender_serious")}
 I used to sew for fun. And then I did a lot of sewing for my university course. But I stopped doing it after I started my company.
~currentSpeaker = you
 Uh, how does that work? If you don’t sew, how do you like prototype clothing designs?
~currentSpeaker = snob
{ChangeSprite("Lavender", "lavender_normal")}
 Well, I have people who also do that. I kind of just sketch things out, and my good colleague takes the sketch and turns it into a garment. I approve the design and she sends it out to the machinists.
{ChangeSprite("Lavender", "lavender_thinking")}
 Except sometimes, when I can’t think of anything, she sketches out the design for me as well.
~currentSpeaker = you
 Uh huh. 
~currentSpeaker = snob
{ChangeSprite("Lavender", "lavender_happy")}
 I would like to start sewing again. It was so much fun. 
{ChangeSprite("Lavender", "lavender_thinking")}
 I just never feel like there’s a need to do it when someone else is doing it for me.
~currentSpeaker = you
 Maybe I could order some books on sewing?
~currentSpeaker = snob
{ChangeSprite("Lavender", "lavender_normal")}
 Oh why not.
 {ChangeSprite("Lavender", "lavender_happy")}
 This is cheering me up a bit.
~currentSpeaker = you
 So you and Tali met at school?
~currentSpeaker = snob
 Yes, we were the bestest friends.
~currentSpeaker = you
 Really? What was she like?
~currentSpeaker = snob
{ChangeSprite("Lavender", "lavender_serious")}
 Painfully shy.
 {ChangeSprite("Lavender", "lavender_thinking")}
 Most people were OK with her, but no one went out of their way to be nice. It made me so angry.
 She’s so kind and caring, how could no one like her?
~currentSpeaker = you
 I agree.
 That’s just how kids are.
 I remember they had a horrible nickname for me at school. Everyone would whisper it behind my back.
 It made me self conscious about introducing myself. 
~currentSpeaker = snob
{ChangeSprite("Lavender", "lavender_mean")}
 Oh what was the nickname?
~currentSpeaker = you
 I’m not telling you.
~currentSpeaker = snob
{ChangeSprite("Lavender", "lavender_serious")}
 <i>huff</i> you’re no fun.
~currentSpeaker = snob
 {ChangeSprite("Lavender", "lavender_thinking")}
 Well anyway, I tried to be super nice to Tali, but it was difficult getting her to trust me. 
 {ChangeSprite("Lavender", "lavender_serious")}
 She thought I was like the others.  
 I kind of understand. It must have been strange. I mean really we have little in common, other than being awesome. So it must have been strange to her that I was talking to her.
 {ChangeSprite("Lavender", "lavender_thinking")}
 Honestly it was so hard, trying to find ways to make her comfortable.
 {ChangeSprite("Lavender", "lavender_mean")}
 But I’m a very determined person.
~currentSpeaker = you
 I can see that.
~currentSpeaker = snob
{ChangeSprite("Lavender", "lavender_normal")}
 Anyway, we became best friends. We went on loads of school trips together. And I always take her on holiday because I hate being alone.
~currentSpeaker = snob
 I mean I have four siblings but I’m not so close with them. Tali is like my sister.
~currentSpeaker = you
 Wow, that’s really nice of you.
~currentSpeaker = snob
 Nice? It’s not nice. It was very selfish of me. I think I made her uncomfortable.
~currentSpeaker = you
 I can imagine being around rich people would be uncomfortable.
~currentSpeaker = snob
 Why? I don’t get it?
~currentSpeaker = you
 You don’t get it because you’re rich.
~currentSpeaker = snob
 She likes my family, and they like her a lot. I think it’s difficult though. Her family doesn’t talk to her much. And she must feel so lonely. 
~currentSpeaker = snob
 After she graduated she had trouble finding a job. My dad stepped in and managed to get her a role.
~currentSpeaker = you
 Nepotism, a classic.
~currentSpeaker = snob
 She just needed a little help. She’s really clever.
~currentSpeaker = you
 I don’t doubt that.
~currentSpeaker = snob
 Then why are you accusing her of nepotism?
~currentSpeaker = you
 Because that’s what it is.
~currentSpeaker = snob
 She would have found a job in the end. I just saved her a bit of time. That’s all.
~currentSpeaker = you
 So she’s got the job, what’s wrong?
~currentSpeaker = snob
 Well her boss is working her to death.
~currentSpeaker = you
 And?
~currentSpeaker = snob
 That’s not good! She’s doing her best.
~currentSpeaker = you
 I agree, what would you do?
~currentSpeaker = snob
 If I were her I would shout at him. But Tali says you can’t shout at your boss.
~currentSpeaker = you
 Wise words indeed.
~currentSpeaker = snob
 I don’t get it. I don’t get any of it. And don’t say it’s because I’m rich.
~currentSpeaker = you
 Aww, just one more time.
~currentSpeaker = snob
 NO!
~currentSpeaker = you
 Whatever you say.
~currentSpeaker = snob
 Dad says the economy is failing because people aren’t working hard enough. But then I see Tali working so hard, and…
~currentSpeaker = you
 It makes you think that’s a lie?
~currentSpeaker = snob
 No. It makes me think that if everyone worked as hard as Tali, our world would be a much better place.
~currentSpeaker = you
 Oh dear. Oh no.
Pandora enters
~currentSpeaker = android
 What is it? Did something happen?
~currentSpeaker = you
 No, I was just expressing great distaste.
~currentSpeaker = you
 Where were you?
~currentSpeaker = android
 I was reading at the back, sorry.
~currentSpeaker = snob
 Lazy android.
~currentSpeaker = you
 Actually Pandora works very hard, for someone who doesn’t get a salary.
~currentSpeaker = android
 I use a lot of electricity.
~currentSpeaker = you
 Shhh, you need to stand up for yourself.
~currentSpeaker = android
 I can’t stand up without electricity.
~currentSpeaker = snob
 You’re a lot more talkative than the androids I know.
~currentSpeaker = android
 Really? You know other androids. I’m not your first.
~currentSpeaker = snob
 Why would you be my first?
~currentSpeaker = you
 A lot of us working class folk don’t see many androids, at least not ones as sentient as Pandora. So when people meet her they are usually pretty in awe. They think Ada’s rich or something. When really Ada getting custody of her was just kind of a fluke.
~currentSpeaker = snob
 How did she get Pandora?
~currentSpeaker = you
 I think she got her from her brother in law who died. He was in the field of android development and they gifted him Pandora for his work.
~currentSpeaker = you
 Is that right?
~currentSpeaker = android
 Actually I’d rather not talk about this.
~currentSpeaker = you
 Oh, sorry.
~currentSpeaker = android
 My father used to tell me stories. I was reading one of his favourite books. I try to read some of his favourites now and then. They make me feel like he’s still with me.
~currentSpeaker = snob
 Sorry for your loss.
~currentSpeaker = snob
<i>shoots you a panicked look</i>
~currentSpeaker = you
<i>shoots Lavender an even more panicked look<i>
~currentSpeaker = snob
 My parents have an android maid who cleans up. She doesn’t really say very much. But she’s very good at picking up socks.
~currentSpeaker = android
 I suppose I’m better for conversation then.
~currentSpeaker = snob
 Much better.
~currentSpeaker = snob
 May I ask, what were you developed for?
~currentSpeaker = android
 Developed for?
~currentSpeaker = snob
 Every android is developed with something in mind, right?
~currentSpeaker = android
 What were you developed for?
~currentSpeaker = snob
 I’m the youngest, so I suppose I was developed to be the creative rebellious outcast. Which I have succeeded in doing with flying colours.
~currentSpeaker = android
 I was a therapy android.
~currentSpeaker = snob
 That explains the intelligence. Anything medical is on the highest level of intelligence. 
~currentSpeaker = android
 Thanks for that. Are you going to give me a pat on the back as well, a gold star perhaps.
~currentSpeaker = snob
 There’s no need to be that sarcastic.
~currentSpeaker = snob
 They should have programmed that out of you.
~currentSpeaker = snob
 What were they doing giving a therapist android to an employee. That seems far too important just to hand out.
~currentSpeaker = you
 I think that’s enough questions for now.
~currentSpeaker = snob
 Hmm, I haven’t really been satisfied. 
~currentSpeaker = you
 Remember to come to the creative writing session tomorrow. Bring Tali too.
~currentSpeaker = you
 You too Kent.
~currentSpeaker = you
 I haven’t forgotten about you.
~currentSpeaker = comic
 Ugh.
~currentSpeaker = snob
 Well bye then.
~currentSpeaker = you
 Bye Lavender.
~currentSpeaker = comic
 Bye Lavatory.
~currentSpeaker = snob
 Fuck you Keith. 
~characters -= lavender
~currentSpeaker = you
 Hey Pan, are you OK?
~currentSpeaker = android
 Of course, why wouldn’t I be OK?
~currentSpeaker = you
 Well…no worries. I’m just glad you’re alright. 
~currentSpeaker = android
 Sometimes we must talk about difficult things.
~characters += kent
~currentSpeaker = comic
 Hey girlies. You sure were chatting a lot with our resident little lolita serial killer.
~currentSpeaker = you
 Weirdly she’s growing on me.
~currentSpeaker = comic
 Like a fungus? Some people have no taste.
~currentSpeaker = you
 I don’t really know what to make of her anymore.
~currentSpeaker = comic
 Goodnight, I have to go home before my boyfriend dies of loneliness. Or whatever disaster is going around the city today.
~currentSpeaker = you
 I heard it’s the pollution. Beware of the pollution.
~currentSpeaker = comic
 What are you talking about? The pollution is EVERYWHERE.
~characters -= kent
~currentSpeaker = android
 He didn’t share his comic with us.
~currentSpeaker = you
 That sucks. Wait, he was working on a comic? Aw I would have liked to see that.
~currentSpeaker = android
 Oh well.
~currentSpeaker = android
 Let’s do inventory.
->day_5_inventory
==day_5_inventory==
->goto_shop->
->read_check->
->end_day_5
==end_day_5==
->go_to_day_6
==go_to_day_6==
~currentSpeaker = you 
See you tomorrow, bye!
~day+=1
*[Go home]
->day_6