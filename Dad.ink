=== Dad ===
{maddyFirst == 1:
Hey there, chum! Hi Maddy! What's wrong?
-else:
Hey there, chum! What's wrong?
}
->DadRestart
=== DadRestart ===
#IMAGE: Images/Dad2.png
* Where were you this morning?
    ->Dad_Choices.where_were_you
*  {Dad_Choices.where_were_you} So you just left for work without eating breakfast, sounds like a great time to nab a cookie.
    ->Dad_Choices.you_just_left
* {Dad_Choices.you_just_left} Somewhere special?
            ~somewhereSpecial = 1
            Yeah it's a surprise that I'll tell you about later.
            ->DadRestart
* Did you eat my cookie?
    ->Dad_Choices.did_you_eat
* What do you know about the cookies we made last night?
    ->Dad_Choices.what_do_you_know
* {Dad_Choices.what_do_you_know} Yeah you were a really big fan of the cookies. Perhaps too big a fan...
        Yeah your mother and you are great bakers! Your snickerdoodles are the best!
        -> DadRestart
* {Stats.Curious} Ask chatGPT if it thinks dad took the cookie.
    ->Dad_Choices.Curious
* {Stats.Fun} Ask Dad if he wants to make cookies with you today.
    ->Dad_Choices.Fun
* {Stats.Creative} Make a wanted poster for your cookie
    ->Dad_Choices.Creative
* {Stats.Stoic} Stare at dad intensely.
    ->Dad_Choices.Stoic
* {Stats.Mischevious} Lie and accuse dad of taking the cookie!
    ->Dad_Choices.Mischevious
* Leave Dad
    ->DadDone
* ->DadDone


=== Dad_Choices ===
= where_were_you
~whereWhereYou = 1
I woke up this morning, I had to leave super quick so I didn't even have time to make breakfast.
->DadRestart
= you_just_left
~youJustLeft = 1
Yeah I just headed straight to work. I've been starving all day! But I did get the chance to stop somewhere special on
the way home.
->DadRestart
= did_you_eat
~didYouEat = 1
{whatDoYouKnow == 1:
Chum, I just told you I had some last night!
- else:
Eat your cookie? What cookie? I know you and mom baked some cookies last night, did you have a special one?
}
->DadRestart
= what_do_you_know
~whatDoYouKnow = 1
{didYouEat == 1:
They were fantastic, chum! Thank you for sharing some with me last night.
-else:
I know you and mom made some cookies last night. They smelled really great, and they tasted even better. I had some remember?
}
->DadRestart
= Curious
"Well, it sounds like a bit of a cookie mystery! I can't really say for sure since I wasn't there and I don't know your dad's habits. But, I can suggest a fun way to figure it out! Next time you have a cookie, maybe you could leave a tiny note near it saying, "Please don't eat this, it's my special cookie!" If your cookie still disappears, then it might be time to play detective and look for cookie crumbs! But remember, it's always important to communicate. You could also just ask your dad if he saw or ate the cookie. 😊"
Drats! Thats a good idea... for next time. But I still need to find the answer now.
 ->DadRestart
= Fun
Ahh. Sorry bud. I'm actually super busy, and don't have a taste for cookies today.
 ->DadRestart
= Mischevious
{mischeviousMaddy == 1:
You yell! "You! YOU! I know it was you who took my cookie!"
Dad looks at you with a shocked expression on his face.
"I'm sorry kiddo," he pleas. "I was really hungry this morning and I needed to grab something before I went to work."
You stare at him! "I KNEW IT! I knew it because Maddy ran right up to you when I told her to track the scent of cinnamon!"
"Oh gosh, chum, you're  too smart for your own good. I did plan on making it up to you though!"
"That's why I bought this whole new box of cookies home from the bakery!
    I love you!"
    #IMAGE: Images/DadWithCookies.png
    ->END
-else:
You yell! "You! YOU! I know it was you who took my cookie!"
Dad looks at you with a shocked expression on his face.
"I'm sorry kiddo," he pleas. "I was really hungry this morning and I needed to grab something before I went to work."
You stare at him! "I MADE IT UP! I didn't know it was you!"
"You didn't, well you sure got me good! I did plan on making it up to you though!"
"That's why I bought this whole new box of cookies home from the bakery!
    I love you!"
    #IMAGE: Images/DadWithCookies.png
    ->END
}
= Creative
You leave the conversation for now to go and do your best drawing a wanted poster for your cookie.
The sign says "My Cookie, Wanted! (Alive) 1 Hug Reward"
You hurry back to show the sign to your dad.
"Oh shoot! I'm sorry you lost your cookie. Could I get that hug anyway?"
* sure
    You give your dad a hug, and he hugs you back
    ->DadRestart
* no
    You shake your head and say! No I need to find my cookie first!
    ->DadRestart
= Stoic
You stare at dad directly in the eyes. Unflinching.
Dad breaks the silence.
"Is something wrong bud? You seem upset"
 ->DadRestart


=== DadDone ===
* Then who else could it be!
    {numInterrogated == 0:
    I don't know...But why don't we try to figure this out together, chum?
    -> workwithDad
  - else:
    Have you asked Mom?
    -> momPath
    }
=== workwithDad ===
* Alright...
    {maddyFirst == 1:
    Alright, lets go. You too, Maddy come on!
    -else:
    Alright, lets go!
    }
    ~numInterrogated += 1
    ~dadFirst = 1
    -> InterrogationMenu

=== momPath ===
Oh...
    -> MOM

-> END