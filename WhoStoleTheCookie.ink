INCLUDE Maddy.ink
INCLUDE Dad.ink
INCLUDE MsGoaty.ink
INCLUDE Mom.ink



VAR numInterrogated = 0
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
                    There were only three people around who saw me hide the cookie.
                    -> Suspects

=== Suspects ===

* Dad
    My prime suspect. He also loves snickerdoodle cookies.
    ->Suspects
* Maddy
    My dog. I told her where I hid the cookie just in-case I forgot where I put it. She is great at keeping secrets.
    ->Suspects
* Ms. Goaty
    She was sitting on the counter with my mom and I when we were baking. She would have seen me hide the cookie away.
    ->Suspects
* ->
    One of them must of have taken the cookie! But who?
->InterrogationMenu

=== InterrogationMenu ===
{numInterrogated == 0:Who should I interrogate first? | Who should I interrogate next?}
* Dad
    -> Dad
* Maddy
    -> Maddy
* Ms Goaty
    -> MsGoaty
* ->
    I've interrogated everyone! Time to name the culprit
    -> Ending
->END

=== function startInterrogation ===
~numInterrogated += 1

=== Ending ===
->END