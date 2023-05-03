VAR Wood = 0
VAR Time = 8
VAR AxeProficiency = 1
VAR hasCampfire = false
VAR CampfireLife = 5
VAR CampFireOut = 0
-> intro

=== intro ===
You wake up in the middle of the forest
* [Look around]
    - You look around and see a small axe sitting next to you.
    * * [Pick Up The Axe]
        - - You grab the axe
-> main

=== main ===
{Time > 23: Time = 0}
You currently have {Wood} Wood
The time is currently {Time}:00
{hasCampfire: {CampFireOut - Time > 0: Your campfire will last for {CampFireOut - Time} hours| Your campfire is out}}


+ [Chop Wood]
    -> ChopWood
+ {Time > 20} [Sleep]
    -> Sleep
* {Wood > 3} [Make Campfire]
    -> buildCampfire
-> END

=== buildCampfire ===
You sit down and build a campfire out of the wood you've chopped.
~hasCampfire = true
~Time = Time + 1
~CampFireOut = Time + CampfireLife
->main

=== ChopWood ===
You spend some time chopping wood. 
You gain {AxeProficiency} wood.
~ Wood = Wood + AxeProficiency
~ Time = Time + 1
-> main

=== Sleep ===
You lay down and sleep for the night.
~ Time = 8
-> main
