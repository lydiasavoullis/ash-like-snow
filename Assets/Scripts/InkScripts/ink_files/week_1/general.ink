
==read_check==
~music ="Making friends"
//can read on 8 days
//can't read on first day
//Pandora will tell you about how she loves childrens stories
+{allbooks ? myths_legends}[Read Greek myths]
 -> read_greek_myths
+ {allbooks ? Alice_in_Wonderland} [Read Alice in Wonderland]
->read_alice_in_wonderland
+ {allbooks ? Howls_Moving_Castle} [Read Howl's Moving Castle]
->read_howls_moving_castle
+ {allbooks ? t_lion_witch_wardrobe} [Read The Lion the Witch and the Wardrobe]
->read_lion_witch_wardrobe
+ {allbooks ? the_wiz_oz} [Read The Wizard of Oz]
->read_the_wizard_of_oz
+ {allbooks ? the_hobbit}[Read The Hobbit]
->read_the_hobbit
+ {allbooks ? t_secret_garden}[Read The Secret Garden]
->read_the_secret_garden
+ {allbooks ? alice_looking_glass} [Read Alice Through the Looking-Glass]
->read_through_the_looking_glass
+ {allbooks ? matilda} [Read Matilda]
->read_matilda
*->->
~music =""
==tea_or_coffee==
~button = "cup"
~currentSpeaker = android  
Tea or coffee?
+[Tea]
->->
+[Coffee]
->->
+[No thanks]
->->
==read_alice_in_wonderland==
~currentSpeaker = you 
I bought you something
~currentSpeaker = android  
Hehe, you shouldn't be spending money on me
~currentSpeaker = you 
It was nothing
~currentSpeaker = android  
So will you read it to me?
~currentSpeaker = "" 
Ok, just a little bit
\*You read to Pandora\*
\*For a moment you feel at peace\*
...
~currentSpeaker = android  
Well, you shouldn't really just drink or eat random things you find in strange places
~currentSpeaker = you 
Common sense dictates
But you know, what if it's like a really tasty piece of cake, or a really nice drink?
~currentSpeaker = android  
{you}! How could you?
~currentSpeaker = you 
I like to live dangerously
~currentSpeaker = android 
I can't be poisoned, so I don't have to worry
But you should be more careful
~currentSpeaker = you 
I'm joking, I don't go around eating abandoned food
But Alice is a kid, kids do that kind of thing
I used to eat crayons
~currentSpeaker = android 
I will continue this tonight, I want to see what happens
Perhaps she will have to have her stomach pumped later on
~currentSpeaker = you 
Don't you sleep?
~currentSpeaker = android 
I reacharge, I only need to do so for about four hours though
~currentSpeaker = you 
So you've got the rest of the night to enjoy yourself
I'm jealous
~currentSpeaker = android 
It's true, I have it good
~allbooks-= Alice_in_Wonderland
->->
==read_greek_myths==
~currentSpeaker = you 
I bought something you might like
~currentSpeaker = android  
What?!
~currentSpeaker = you 
It's just a book
~currentSpeaker = android  
I love it
Read me the first chapter
Pleaaasee
~currentSpeaker = you 
Hmmm, ok
~currentSpeaker = "" 
\*You read to Pandora\*
\*As you do so a sense of calm fills the room\*
...
~currentSpeaker = android  
Woah, that was sad
~currentSpeaker = you 
Yeah
~currentSpeaker = android 
If he'd just did as his father said he wouldn't have fallen to his death
~currentSpeaker = you 
Well, yes
~currentSpeaker = android 
So we should all do as we're told
~currentSpeaker = you 
Uh no, I think the story is more about the dangers of pride
It's not suggesting we never question authority
~currentSpeaker = android 
But if he'd just listened to his father
...
sorry
~currentSpeaker = you 
No worries, I promise there are better stories in there
I mean, less depressing
And some more depressing
Maybe like 90% depressing
~currentSpeaker = android 
It's OK I can handle depressing
~currentSpeaker = you 
Well, you'll enjoy it then
~allbooks-= myths_legends
->->
==read_howls_moving_castle==
~currentSpeaker = you 
I bought you something.
It's called Howl's Moving Castle.
~currentSpeaker = android
How can a castle move?
~currentSpeaker = you
Magic. 
~currentSpeaker = android  
Nice! Please read to me. 
~currentSpeaker = you 
OK
~currentSpeaker = ""
\*You read to Pandora\*
\*You feel tranquility fill your very being\*
...
~currentSpeaker = android  
Do you have siblings?
~currentSpeaker = you 
No...did you?
~currentSpeaker = android  
I'm non-organic {you}
~currentSpeaker = you 
Well you could have had adopted siblings
~currentSpeaker = android  
It must be nice I think, to have a family like that.
To have sisters to talk to.
~currentSpeaker = you 
To fight with.
~currentSpeaker = android  
I can't wait to finish this tonight.
~allbooks-= Howls_Moving_Castle
->->
==read_lion_witch_wardrobe==
~currentSpeaker = you 
Pandora I've got something for you.
It's a book by C.S. Lewis
~currentSpeaker = android
Is that a name I should know.
~currentSpeaker = you 
I would hope so.
Well now you know.

\*You read to Pandora\*
\*Briefly you think you feel content. Almost.\*
~currentSpeaker = android
What's Turkish delight?
~currentSpeaker = you
It's a kind of sweet.
~currentSpeaker = android
Is it very tasty?
~currentSpeaker = you
Yes, it's quite nice.
~currentSpeaker = android
I wish I could taste it!
~currentSpeaker = you
You're not missing out on much.
~currentSpeaker = android
But you just said it was good.
~currentSpeaker = you
Well, it's full of sugar, not very healthy. 
It's more like momentary pleasure, that is immediately suceeded by regret.
~currentSpeaker = android
All pleasure is momentary though.
~currentSpeaker = you
Yes, but some types of pleasure are more satisfying and don't come with negative consequences.
~currentSpeaker = android
That's a very interesting way of putting it.
I'm looking forward to reading the rest of it!
~allbooks-=t_lion_witch_wardrobe
->->
==read_the_wizard_of_oz==
~currentSpeaker = you
I've got another book for you.
~currentSpeaker = android
Great! I'm looking forward to this.
~currentSpeaker = you
\*You read to Pandora\*
\*You feel your heart beat slow for a couple of minutes.\*
~currentSpeaker = android
What's your favourite colour?
~currentSpeaker = you
Eh? That's a bit out of the blue.
~currentSpeaker = android
Well, this book seems to be full of different colours with different symbolism, it was just making me wonder what kind of colours you like.
~currentSpeaker = you
I don't know. 
I like silver.
~currentSpeaker = android
Silver!
~currentSpeaker = you
Does that say something about me?
~currentSpeaker = android
No.
I don't know.
Silver why silver.
~currentSpeaker = you
It's like the colour of metal and the colour of the sky on a cloudy day and the colour of the stars. 
~currentSpeaker = android
Hmm.
I like blue.
~currentSpeaker = you
Why blue?
~currentSpeaker = android
It's a calming colour, it decreases anxiety and stress.
~currentSpeaker = you
Is that something you have a lot of.
~currentSpeaker = android
No, but it's helpful to know, for humans.
~currentSpeaker = you
You can wave blue flags around to calm us down.
~currentSpeaker = android
Ha! They'd probably think I was protesting against something.
~currentSpeaker = you
Just say you're protesting against bad mental health.
~currentSpeaker = android
I'm looking forward to finishing this book.
~allbooks-=the_wiz_oz
->->
==read_the_hobbit==
~currentSpeaker = you
I have another book.
~currentSpeaker = android
We are in a bookshop.
~currentSpeaker = you
Yes, but this one is for you.
It's called The Hobbit. 
It's by a very unimportant author.
~currentSpeaker = android
I love the name.
Hobbit.
~currentSpeaker = you
It is a nice word.
~currentSpeaker = android
It sounds like a combination of hobble and rabbit.
~currentSpeaker = you
\*You read to Pandora\*
\*Everything feels so much quieter now.\*
~currentSpeaker = android
That was so interesting.
~currentSpeaker = you
Really?
~currentSpeaker = android
I can't wait to read about the dragon. I love dragons.
~currentSpeaker = you
They are pretty cool.
Isn't Cobalt Dragons your favourite band?
~currentSpeaker = android
That is true, but unrelated to my love of dragons.
~currentSpeaker = you
Why do you love dragons?
~currentSpeaker = android
They're like dinosaurs but sexy.
~currentSpeaker = you
...what?
~currentSpeaker = android
Dinosaurs are ok, but they're for kids and kind of dorky.
Dragons are like cool dinosaurs.
They can breathe fire and have massive mounds of gold and are super clever.
And they have much better designs.
~currentSpeaker = you
I mean, dinosaurs weren't exactly designed. They evolved.
~currentSpeaker = android
That's no excuse!
Lots of cool looking things evolved.
~currentSpeaker = you
You don't think dinosaurs look cool?
~currentSpeaker = android
No. T-rexes have those tiny arms and giant legs. They're just like big creepy chickens.
Whereas dragons look like big badass lizards.
~currentSpeaker = you
Imaginary stuff is just cooler I guess.
~currentSpeaker = android
Some imaginary things are cooler.
->->
==read_matilda==
~currentSpeaker = you
Hey so I have this book you might like.
It's called Matilda, it's about this girl who likes reading.
~currentSpeaker = android
Who doesn't?
~currentSpeaker = you
I've heard some people don't.
~currentSpeaker = android
Shame on them!
~currentSpeaker = you
Yes, I think you will like this a lot.
\*You read to Pandora\*
\*Shivers run down your spine\*
~currentSpeaker = android
That was quite horrible...
I can't wait to read the rest of it.
~currentSpeaker = you
I thought so.
~currentSpeaker = android
How can people be so...narrow minded?
~currentSpeaker = you
I feel like some people just see life as the sum of its parts.
Everything is a means to an end.
~currentSpeaker = android
That's sad.
That's what therapy is for.
~currentSpeaker = you
I'm not sure therapy can fix everything.
~currentSpeaker = android
I wholeheartedly disagree.
~currentSpeaker = you
Well of course you're going to say that.
~currentSpeaker = android
I'm not just saying that because it was my profession. I believe it.
Just keep in mind, the client has to put in the effort too.
You have to want to change.
~currentSpeaker = you
See that's a trap.
Imagine if I went to the doctor for a broken leg, and he put it in a cast. Then I went back and it wasn't fixed, and he tells me I have to want it to heal.
~currentSpeaker = android
That's a false equivalence.
Your leg isn't your brain.
Even when your leg is healing you need to do certain things to make sure it heals. Like don't put your weight on that leg.
With the brain it's slightly different.
You have to have be determined to solve your problems.
~currentSpeaker = you
Sounds difficult.
~currentSpeaker = android
All healing is difficult.
It would be disingenuous to suggest otherwise.
But it doesn't mean it's not worth it.
->->
==read_through_the_looking_glass==
~currentSpeaker = you
I have something for you.
~currentSpeaker = android
Let's see.
Didn't we already read this.
~currentSpeaker = you
It's the sequel.
~currentSpeaker = android
Let's read it!
\*You read to Pandora\*
\*For a moment you don't exist\*
~currentSpeaker = android
We should get a cat.
~currentSpeaker = you
Ada doesn't like cats.
~currentSpeaker = android
Do you like cats?
~currentSpeaker = you
I certainly don't mind them.
But this isn't my shop.
~currentSpeaker = android
We can convince her.
Animals are good for anxiety.
~currentSpeaker = you
They can also induce anxiety.
~currentSpeaker = android
It depends on the animal...
->->
==read_the_secret_garden==
~currentSpeaker = you
I bought another kids book.
~currentSpeaker = android
What is it?
~currentSpeaker = you
It's called The Secret Garden.
And that is pretty much what it is about.
~currentSpeaker = android
I love gardens.
\*You read to Pandora\*
\*The world around you stops moving.\*
~currentSpeaker = android
That's pretty horrible.
~currentSpeaker = you
Yeah, she's a bit of a brat. But she does get better.
~currentSpeaker = android
No.
I mean it's horrible for her.
Losing her parents so young.
And being neglected by them on top of that.
~currentSpeaker = you
They gave her everything she wanted.
~currentSpeaker = android
That's not love, and that's not how you treat a child.
They ignored her, treated her like a pet. 
A child needs attention, mental stimulation and most of all emotional support from their caregivers.
~currentSpeaker = you
Oh.
I didn't know that.
~currentSpeaker = android
Well now you do.
I can't wait to continue reading this.
->->