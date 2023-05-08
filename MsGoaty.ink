=== MsGoaty ===
{numInterrogated == 2:
    ...Who do you think did it Ms. Goaty?
    -> momPath
  - else:
    I trusted you, Ms. Goaty- Was I wrong to do that?
    -> nextPerson
}

=== nextPerson ===
* ...
    No, you're right, you would never betray me.
    Ah, then who would it be?
* * ...
    Oh yeah! Dad's almost home, I'll interrogate him next!
    ~numInterrogated += 1
    -> InterrogationMenu

->END