INCLUDE variables.ink
EXTERNAL ChangeSprite(name,sprite)
EXTERNAL RemoveCharacter(name)
EXTERNAL AddCharacter(name,sprite)

~scene= "GenericScene"
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

->END