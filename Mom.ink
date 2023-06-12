=== MOM ===
{momGreeting == 0:
    #IMAGE: Images/mom1.png
  - else:
    #IMAGE: Images/mom2.png
}
-  "Hey there sweetheart. What are you up to?"
-> Mom1

==Mom1==
* [I need to talk to you.] "Of course, darling. What's on your mind?"
-> Mom23
* [Just wanted to say hi.] "Well, hi there, darling. It's always nice to see you. Anything else on your mind?"
-> Mom1
~momGreeting += 1
-> Mom23
* {Stats.Curious} What did you have for breakfast this morning?
-> Mom_Questions.Curious
* {Stats.Fun} MOM! Can we bake more cookies?
-> Mom_Questions.Fun
* {Stats.Mischevious} Set a trap for mom
-> Mom_Questions.Mischevious
* {Stats.Creative} Try the cookie wanted poster on Mom.
-> Mom_Questions.Creative
* {Stats.Stoic} Stare intensely into Mom's soul
-> Mom_Questions.Stoic
* Leave Mom
 -> InterrogationMenu


== Mom_Questions ==
= Curious
"Oh this morning your father and I had corned beef hash. It's my favorite" (*EWWW*).
That explains the awful smell this morning.
{youJustLeft == 1: 
* [What! But Dad told me he left without breakfast this morning!]
->Mom1
- else:
-> Mom1
}
= Fun
Sorry hun. Not today unfortuntatley.
* Aww why not?
    -> Mom1
    Oh I think you'll see soon enough.
*... sigh... ok.
    Thanks hun.
    -> Mom1
->Mom1
= Mischevious
You grab a piece of paper and draw two circles on it. On the top you write, put an X over your favorite cookie.
You label the two circles, Snickerdoodle, and All Other Cookies.
You leave the piece of paper on the table with a pencil and wait a while.
You come back after some time and see two x's over Snickerdoodle.
You go back to Mom.
->Mom1
= Creative
{Dad_Choices.Creative} You grab the wanted poster you showed to your Dad and bring it to Mom.
{not Dad_Choices.Creative} You quickly grab your art supplies and draw a wanted poster for your missing cookie.
You run up to mom holding the poster in her face.
"Oh sweety. That's wonderful! You drew that all on your own! Lets go put that on the fridge and maybe the theif will show themselves."
->Mom1
= Stoic
Oh no.. You look really upset. I guess we'll have to bake another batch of cookies soon. 
->Mom1
->DONE

==Mom23==
* * [About cookies.] "Cookies, is it? Has something happened to your cookie stash?"
    -> Mom4
* * * [Yes, my snickerdoodle is gone!] "Your special snickerdoodle? Oh no, that's terrible! That was your favorite, wasn't it?"
    -> Mom4
* * * [No, it's a different one.] "Oh, another one? Well, cookies do have a way of disappearing around here. Maybe you need to start an investigation."
    -> Mom4

==Mom4
* * * * [Yes, and I've asked everyone else but they're clueless.] "That sounds like quite a mystery. Remember the time we couldn't find your toy truck and it was under the bed the whole time? Maybe it's something like that."
    -> Mom5
* * * * [No, they all seem suspicious...] 
    {dadFirst == 1:
    "Well, you know how it is with cookies. Everyone loves them. Remember what your father always says, you might just need to ask a few more questions."
    -> Mom5
    -else:
    "Well, you know how it is with cookies. Everyone loves them. Maybe you need to ask a few more questions."
    -> Mom5
    }
    
==Mom5==
* * * * * [Yes, I remember that...] "Well, sometimes things aren't as they seem, darling. By the way, have you asked your Dad about the cookie?"
    -> Mom6
* * * * * [No, I don't remember that...] "It was a while ago, but it taught us to look a little harder and not jump to conclusions. Have you asked your Dad about the cookie?"
    -> Mom6

==Mom6==
* * * * * * [I haven't asked him yet...] "Oh, honey, I think the culprit is right behind you..."
    // * * * * * * * [GASP, Dad! you tricked me!] "I had to do it, sport! It was right there!"
    //     * * * * * * * * [I can't believe it! My own father!] "Well, that's life in the cookie world, champ. But don't worry, we'll bake a new batch tomorrow, okay?"
        -> Ending
* * * * * * [Yes, he denied it.] "Hmmm, I wonder... Oh, honey, I think the culprit is right behind you..."
    // * * * * * * * [GASP, Dad! you tricked me!] "I had to do it, sport! It was right there!"
    //     * * * * * * * * [I can't believe it! My own father!] "Well, that's life in the cookie world, champ. But don't worry, we'll bake a new batch tomorrow, okay?"
        -> Ending
-> END

