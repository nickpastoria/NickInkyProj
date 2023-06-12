# Who Stole The Cookie?

"Who Stole The Cookie?" is a narrative-driven detective game designed and developed by Nick Pastoria and Ankie Pon. In this game, players assume the role of a young detective whose cookie has been stolen. The primary objective is to interrogate your family members - Mom, Dad, and your dog Maddy - to uncover the culprit behind the missing cookie. The game is built using the Ink scripting language developed by [Inkle Studios](https://www.inklestudios.com/ink/), and it's used to create interactive narratives.

## How to Play

The game is accessible online and can be played via this [link](https://nickpastoria.github.io/WhoStoleTheCookie/). It is designed to be played through a series of choices made by the player. These choices affect the story's progression and may eventually lead to the revelation of the cookie thief.

## Repository Structure

The repository is organized into several `.ink` files each representing different characters or elements in the game:

- `Dad.ink`: This file contains the narrative and dialogue associated with the character "Dad". The narrative branches based on player's choices and different stat values like `Stats.Curious`, `Stats.Fun`, `Stats.Creative`, etc. The choices made by the player can lead to different dialogue options with Dad.

- `Mom.ink`, `Maddy.ink`, etc.: These files contain dialogues and narratives associated with other characters. Each character file has a similar structure to `Dad.ink`.

## How to Contribute

If you would like to contribute to the development of "Who Stole The Cookie?", please feel free to submit a Pull Request or open an Issue. All contributions are appreciated!

## Authors

- Nick Pastoria
- Ankie Pon

## Tools Used

- [Ink scripting language](https://www.inklestudios.com/ink/) by Inkle Studios
