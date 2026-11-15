"test2" by Eli Hickson

Part 1 - Setup

There is a room called the Void.

A troom is a kind of container. A troom is usually closed. A troom has a list of list of objects called the exits. A troom is usually hidden.

Traveling is an action applying to one visible thing.
Understand "travel [something]" as traveling.
Check traveling:
	if the noun is not a direction:
		say "You can only travel in directions." instead;
	repeat with entry running through the exits of the holder of the player:
		if the noun is entry 1 of entry:
			continue the action;
	say "You can't go that way." instead;
Carry out traveling:
	repeat with entry running through the exits of the holder of the player:
		if the noun is entry 1 of entry:
			now the player is in entry 2 of entry.
Instead of going a direction: try traveling the noun.
Instead of exiting when the holder of the player is a troom: say "But you aren't in anything at the moment.";

Part 2 - Game

Chapter 1 - House

Section 1 - Bedroom

A troom called the Bedroom is here.
A supporter called the bed is in the Bedroom. "There is a bed." The bed is not portable.
The player is in the Bedroom.
The player is carrying a torch.
The torch is lit.
The matching key of the Bedroom is north.

Section 2 - Hallway

The Hallway is a troom in the Void.
The exits of the Bedroom is {{east, the Hallway}}. The exits of the Hallway is {{west, the Bedroom}}.
There is a cat in the Hallway. "You see a small cat."
Instead of taking the cat: say "The cat meows at you, and you quickly drop it."