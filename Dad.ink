
=== Dad ===
Hey there, chum! What's wrong?
->DadRestart
=== DadRestart ===
#IMAGE: Images/Dad2.png
* Where were you this morning?
    ->Dad_Choices.where_were_you
*  {Dad_Choices.where_were_you} So you just left for work without eating breakfast, sounds like a great time to nab a cookie.
    ->Dad_Choices.you_just_left
* {Dad_Choices.you_just_left} Somewhere special?
            Yeah it's a surprise that I'll tell you about later.
            ->DadRestart
* Did you eat my cookie?
    ->Dad_Choices.did_you_eat
* What do you know about the cookies we made last night?
    ->Dad_Choices.what_do_you_know
* {Dad_Choices.what_do_you_know} Yeah you were a really big fan of the cookies. Perhaps too big a fan...
        Yeah your mother and you are great bakers! Your snickerdoodles are the best!
        -> DadRestart

* ->DadDone

=== Dad_Choices ===
= where_were_you
I woke up this morning, I had to leave super quick so I didn't even have time to make breakfast.
->DadRestart
= you_just_left 
Yeah I just headed straight to work. I've been starving all day! But I did get the chance to stop somewhere special on the way home.
->DadRestart
= did_you_eat
Eat your cookie? What cookie? I know you and mom baked some cookies last night, did you have a special one?
->DadRestart
= what_do_you_know
I know you and mom made some cookies last night. They smelled really great, and they tasted even better. I had some remember?
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
    ~numInterrogated += 1
    -> InterrogationMenu

=== momPath ===
Oh...
    -> MOM

-> END