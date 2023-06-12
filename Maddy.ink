=== Maddy ===
WOOF!
#IMAGE : Images/Maddy2.png 
~numInterrogated += 1
-> Maddy_Loop

=== Maddy_Loop ===
* Maddy, where were you this morning?
    -> Maddy_Questions.where_were_you
* {Maddy_Questions.where_were_you} OK! What did you do after we played together?
    -> Maddy_Questions.interrogate_2
* Maddy, we can trust each other right?
    -> Maddy_Questions.trust_each_other
* {Maddy_Questions.trust_each_other} If you ate the cookie I hid you would tell me right?
    -> Maddy_Questions.trust_2
* {Stats.Curious} Find a place to hide and watch Maddy for a while.
-> Maddy_Questions.Curious
* {Stats.Fun} Hey Maddy, You wanna go play catch?
-> Maddy_Questions.Fun
* {Stats.Mischevious} Hey maddy, could you go smell dad to see if he stole the cookie?
-> Maddy_Questions.Mischevious
* {Stats.Creative} Put cinnimon on a ball next to a regular ball and see which one Maddy grabs.
-> Maddy_Questions.Creative
* {Stats.Stoic} Stare Maddy down without saying anything.
-> Maddy_Questions.Stoic
* Leave Maddy
 -> InterrogationMenu

=== Maddy_Questions ===
= where_were_you
    Woof!
    {dadFirst == 1:
    Drats! Right, I was playing with you this morning! That doesn't help me
    
    It's alright, chum, why don't you ask Maddy a few more questions?
    - else:
    Drats! Right, I was playing with you this morning! That doesn't help me
    }
-> Maddy_Loop
= trust_each_other
    ~trustInMaddy = 1
    Woof!
    - Ok good. I'm glad, I knew we could trust each other.
-> Maddy_Loop
= trust_2
    Woof!
    - Sigh, yeah... I thought so. I love you maddy. I guess I'll have to ask someone else.
    ->InterrogationMenu
= interrogate_2
    Woof!
    - Hmm. I'll have to check the facts on that one Maddy. You usually sniff around the kitchen for food. At least. That's what Mom tells me.
    ->Maddy_Loop
= Curious
Maddy wanders around the house looking for crumbs on the floor.
Hmm, it does seem like she likes finding crumbs...
->Maddy_Loop
= Fun
You and Maddy run out to the backyard and play catch for a while till you both are tired. You had a great time!
->Maddy_Loop
= Mischevious
~mischeviousMaddy = 1
Maddy tilts her head curiously at you. You decide to take your hand and cover it in cinnamon. She sniffs your hand then you have her follow you to your dad.
Upon seeing your Dad Maddy Jumps up and starts barking!
Interesting...
->Dad
= Creative
You carefully cover a ball with cinnamon and place them both on the floor, you find a place to hide so you can see.
Maddy sniffs her way to the balls, she smells the cinnamon ball, then goes to the plain ball.
She picks up the plain ball and walks back to her doggy bed.
->Maddy_Loop
= Stoic
You stare Maddy right in the eyes, hoping the answer might come pouring out of her soul if you could just stare hard enough. Maddy comes up to you, then starts licking your face all over!
->Maddy_Loop
->DONE
