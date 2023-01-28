INCLUDE variables.ink
EXTERNAL ChangeSprite(name,sprite)
EXTERNAL RemoveCharacter(name)
EXTERNAL AddCharacter(name,sprite)

//EXTERNAL PlayEffect(effectName)
~scene= "ShopFront"
Monday 5th December 2061
~scene= "GenericScene"
<i>I hope you know what you're doing</i>
// ~newsAnnouncement = "Breaking news: A bomb has exploaded in a rubbish bin near the houses of parliament "
¬
~sfx = "open door"
~characters += lavender
//{AddCharacter("Lavender", "lavender_normal")}
// .
// ~newsAnnouncement = "A new study finds that certain drugs prescribed to Fate addicts can cause neurological issues"
// .
// ~newsAnnouncement = "Read more to find out about the nation's favourite books "
¬
~currentSpeaker = snob
{ChangeSprite("Lavender", "lavender_angry")}
HEY you have a freaking customer
~newsAnnouncement = ""
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
Fashion magazines
Specifically Togue
~currentSpeaker = you
Don't you mean Vogue?
~currentSpeaker = snob
{ChangeSprite("Lavender", "lavender_angry")}
I meant what I said I meant
Ugh why do I even bother
~currentSpeaker = ""
{RemoveCharacter("Lavender")}
~characters -= lavender
~sfx = "close door"
~currentSpeaker = you
What the hell was that?
~characters += pandora
~currentSpeaker = android
// She's a lot of fun, isn't she?
// Tea or coffee?
// *[Tea]
// ~currentSpeaker = you
// I fancy some tea
// ->Pan_conversation
// *[coffee]
// ~currentSpeaker = you
// I need a coffee
// ->Pan_conversation
// *[something stronger]
// ->Pan_conversation

// ==Pan_conversation==
~music = "An average day"
~currentSpeaker = android
~characters += pandora
~currentSpeaker = you
How have I never met her before?
~currentSpeaker = android
{ChangeSprite("Pandora", "pandora_mean")}
Luck perhaps?
~currentSpeaker = you
Sounds like she knows Ada
~currentSpeaker = android
{ChangeSprite("Pandora", "pandora_normal")}
I think they meet after hours. She pays her for it, don't worry
And you know Ada never turns down the opportunity to earn a little extra cash
~currentSpeaker = you
She does that just for a couple of old magazines?
~currentSpeaker = android
Uh huh, and this place wouldn't be standing without her
~currentSpeaker = you
They can't be worth that much?
Who can even afford that these days?
~currentSpeaker = android
Well check up on The Trader tonight and you'll find out
Maybe stock up on some Togue magazines if you don't want her to rip your head off next time
~currentSpeaker = you
I should never have agreed to this



//




->END