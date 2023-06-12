INCLUDE Maddy.ink
INCLUDE Dad.ink
INCLUDE Mom.ink
/* ---------------------------------

Copy Pasteable stats block

* {Stats.Curious}
* {Stats.Fun}
* {Stats.Mischevious}
* {Stats.Creative}
* {Stats.Stoic}

 ----------------------------------*/



VAR numInterrogated = 0
VAR momGreeting = 0
///------callbacks---------------
VAR dadFirst = 0
VAR maddyFirst = 0
//-------callbacks in Dad--------
VAR whereWhereYou = 0
VAR didYouEat = 0
VAR whatDoYouKnow = 0
VAR youJustLeft = 0 //in Mom too
VAR somewhereSpecial = 0
//-------------------------------
VAR trustInMaddy = 0
VAR mischeviousMaddy = 0
//---------end callbacks---------

->Stats
=== Stats ===
What kind of child do you want to be?
#IMAGE: Images/protagonist.png
* Curious
->Stats.Curious
* Fun
->Stats.Fun
* Mischevious
->Stats.Mischevious
* Creative
->Stats.Creative
* Stoic
->Stats.Stoic

= Curious
->Intro
= Fun
->Intro
= Mischevious
->Intro
= Creative
->Intro
= Stoic
->Intro
->Intro

=== Intro ===
* The time was 9 o'clock pm last night.
    * * Mom and I had baked a fresh batch of my favorite cookies.
        * * * Snickerdoodle.
            I Love Snickerdoodle.
            * * * * [The Crime]
                I made sure to save an extra snickerdoodle cookie for after school today.
                * * * * * THE COOKIE IS GONE!
                    * * * * * * The Suspects
                    There were only two people around who saw me hide the cookie.
                    -> Suspects

=== Suspects ===
These are the suspects:

* [Dad] 

    #IMAGE: Images/dad1.png

    My prime suspect. He also loves snickerdoodle cookies.
    
    ->Suspects
    
* [Maddy]
    
    #IMAGE: Images/dog1.png
    
    My dog. I told her where I hid the cookie just in-case I forgot where I put it. She is great at keeping secrets.
    ->Suspects

* ->
    One of them must of have taken the cookie! But who?
->InterrogationMenu

=== InterrogationMenu ===
{numInterrogated == 2:
    * Mom
    -> MOM
  - else:
    {numInterrogated == 0: Who should I interrogate first? | Who should I interrogate next?}
}

* {not Dad}Dad
    -> Dad
* Maddy
    -> Maddy
* ->
    I've interrogated everyone! Time to name the culprit
    -> Ending
->END

=== function startInterrogation ===
~numInterrogated += 1

=== Ending ===
So who did it?
* Dad
    "Haha you got me! I was super hungry this morning and couldn't help myself! That's why I bought this whole new box of cookies home from the bakery!
    I love you!"
    {somewhereSpecial == 1:
    This must be the surprise you mentioned earlier!
    #IMAGE: Images/DadWithCookies.png
    ->END
    -else:
    #IMAGE: Images/DadWithCookies.png
    ->END
    }
* Mom
    "Haha it wasn't me darling. Good guess though!"
    #IMAGE: Images/mom3.png
    ->Ending
* [Maddy]
    Woof!
    {trustInMaddy == 1:
    I knew it wouldn't be you, Maddy. We trust each other, remember?
    #IMAGE: Images/maddy3.png
    -else:
    #IMAGE: Images/maddy3.png
    (Mom): "I don't think it was Maddy dear."
    (Mom): "Guess again!"
    ->Ending
    }
->END