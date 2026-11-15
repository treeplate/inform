Chapter 1 - Declarations

Section 1 - Noun Types

A cat is a kind of animal.

Section 2 - Verb Types

Petting is an action applying to one thing.
Understand "pet [something]" as petting.

Chapter 2 - Definitions

Section 1 - Noun Properties

A cat can be seen or unseen. A cat is usually unseen. An unseen cat is usually undescribed.

Section 2 - What Verbs Do

Instead of petting a cat, say "[The noun] says meow."
Instead of petting a thing that is not a cat, say "Petting [the noun] achieves nothing.";

Chapter 3 - Story

Section 1 - Living Room

The Living Room is a room. "An empty room. North is the front door and south is the cat room."
There is a door called the front door.
The front door is scenery, locked and lockable.
The key unlocks the front door.
The front door is north of the Living Room.

Section 2 - Cat Room

The Cat Room is south of the Living Room. "The home of your cat, Eddie. South is the cat flap."

There is a closed door called the cat flap. The cat flap is scenery.
Understand "catflap" as the cat flap.
The cat flap is south of the Cat Room.
The cat flap is north of the grassy area.
After opening the cat flap:
  say "The cat flap closes.";
  now the cat flap is closed.
Check going through the cat flap: say "The cat flap is too small to fit through." instead;



Section 3 - The Cat

Eddie is a cat in the grassy area. Understand "cat" as Eddie.

When play begins: the cat arrives in 10 turns from now.

At the time when the cat arrives:
	now Eddie is undescribed;
	now Eddie is unseen;
	if the player is in the Cat Room:
		say "A cat comes through the cat flap; you name it Eddie after your last cat.";
		now Eddie is seen;
		now Eddie is described;
	now Eddie is in the Cat Room;
	the cat moves in 10 turns from now;
	the cat leaves in 100 turns from now.
	
At the time when the cat moves:
	let the next space be a random room which is adjacent to the location of Eddie;
	if Eddie is visible, say "Eddie wanders over to [the next space].";
	if the player is in the next space:
		If Eddie is seen:
			say "Eddie arrives from [the location of Eddie].";
		else:
			say "A cat arrives from [the location of Eddie]. It must have came through the cat flap. You name it Eddie after your last cat.";
			now Eddie is seen;
			now Eddie is described;
	move Eddie to the next space.
	
At the time when the cat leaves:
	if Eddie is in the Living Room:
		if the player is in the Living Room:
			say "Eddie rushes south to the Cat Room. He's probably not coming back.";
		move Eddie to the Cat Room;
		if the player is in the Cat Room:
			say "Eddie rushes in from the Living Room.";
	if Eddie is in the Cat Room:
		if the player is in the Cat Room:
			say "Eddie rushes south to the grassy area. He then runs away, never to be seen again.";
		now Eddie is in the grassy area;
	the cat arrives in 10 turns from now.

Every turn when the player is in the location of Eddie and Eddie is unseen:
  now Eddie is seen;
  now Eddie is described;
  say "It's a cat! It must have came through the cat flap. You name it Eddie after your last cat.".