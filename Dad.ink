=== Dad ===
Hey there, chum! What's wrong?

* Why don't you tell me, Dad...or should I say, Thief!
    Woah! I never stole anything.
    
* * Don't try to lie to me, Dad! I know you stole the cookie that I saved for school!
    It wasn't me, I had my fill yesterday!

* * * Then who else could it be!
    {numInterrogated == 0:
    I don't know...But why don't we try to figure this out together, chum?
    -> workwithDad
  - else:
    Have you asked Mom?
    -> momPath
}

=== workwithDad ===
* * * * Alright...
    ~numInterrogated += 1
    -> InterrogationMenu

=== momPath ===
Oh...
    -> MOM

-> END