"Untitled"

Chapter 1 - The Elevator

Section 1 - In-Elevator Button Definition

An in-elevator button is a kind of thing.
An in-elevator button can be pressed or unpressed. An in-elevator button is usually unpressed.
An in-elevator button has a room called the goal room.
Instead of pushing an in-elevator button (called the beep beep):
	say "You push the [beep beep].";
	if the current room of Elevator is the goal room of the beep beep:
		if the elevator door is closed:
			say "The door opens; you are already at [the goal room of the beep beep].";
			now the elevator door is open;
			now the eledoor of the current room of Elevator is open;
			now the door timer of Elevator is 5;
		else:
			say "The button immediately unactivates; the elevator is already there - and open!";
			now the door timer of Elevator is 5;
	else:
		now the beep beep is pressed;

Instead of examining an in-elevator button (called the beep beep):
  say "[if the beep beep is pressed]The button is pressed.[otherwise]The button is unpressed.";

Section 2 - Elevator-Calling Button Definition

To decide if callable is (goal dir - direction):
	if goal dir is the direction2 of Elevator:
		decide yes;
	if the direction2 of Elevator is north:
		decide yes;
	decide no;

An elevator-calling button is a kind of thing.
An elevator-calling button can be pressed or unpressed. An elevator-calling button is usually unpressed.
An elevator-calling button has a direction called the goal dir.
Instead of pushing an elevator-calling button (called the beep beep):
	say "You push the [beep beep].";
	if the current room of Elevator is the location of the beep beep and callable is the goal dir of the beep beep:
		if the elevator door is closed:
			say "The door opens; the elevator is already here.";
			now the elevator door is open;
			now the eledoor of the current room of Elevator is open;
			now the door timer of Elevator is 5;
		else:
			say "The button immediately unactivates; the elevator is already here - and open!";
			now the door timer of Elevator is 5;
	else:
		now the beep beep is pressed;

Instead of examining an elevator-calling button (called the beep beep):
  say "[if the beep beep is pressed]The button is pressed.[otherwise]The button is unpressed.";

Section 3 - The Elevator Itself

Elevator is a room. Elevator has a room called the current room. The current room of Elevator is Room 1.
Elevator has a number called the door timer. The door timer of Elevator is -1.
Elevator has a direction called the direction2. The direction2 of Elevator is north.
Elevator has a list of elevator-calling buttons called the call buttons.
Elevator has a list of in-elevator buttons called the floor buttons.

Every turn:
	If the door timer of Elevator is 0:
		if the player is in Elevator or the player is in the current room of Elevator:
			say "The door closes and the elevator moves on.";
		now the elevator door is closed;
	now the door timer of Elevator is the door timer of Elevator - 1;
	If the elevator door is closed:
		If the direction2 of Elevator is north:
			If the upwards room of the current room of Elevator is Elevator:
				If the downwards room of the current room of Elevator is Elevator:
					now the direction2 of Elevator is north;
				now the direction2 of Elevator is down;
			else if the downwards room of the current room of Elevator is Elevator:
				now the direction2 of Elevator is up;
			else:
				now the direction2 of Elevator is north;
		If the direction2 of Elevator is up:
			now the current room of Elevator is the upwards room of the current room of Elevator;
			change the north exit of Airlock1 to the airlock room of the current room of Elevator;
			change the south exit of the airlock room of the current room of Elevator to Airlock1;
			If the upwards room of the current room of Elevator is Elevator:
				now the direction2 of Elevator is down;	
		else if the direction2 of Elevator is down:
			now the current room of Elevator is the downwards room of the current room of Elevator;
			change the north exit of Airlock1 to the airlock room of the current room of Elevator;
			change the south exit of the airlock room of the current room of Elevator to Airlock1;
			If the downwards room of the current room of Elevator is Elevator:
				now the direction2 of Elevator is up;
		repeat with the beep beep running through the call buttons of Elevator:
			if the location of the beep beep is the current room of Elevator and the beep beep is pressed and callable is the goal dir of the beep beep:
				now the beep beep is unpressed;
				now the elevator door is open;
				now the eledoor of the current room of Elevator is open;
				now the door timer of Elevator is 5;
				if the player is in Elevator:
					say "The door opens to reveal [the current room of Elevator].";
				if the player is in the current room of Elevator:
					say "The [beep beep] unactivates - the elevator has arrived.";
		repeat with the beep beep running through the floor buttons of Elevator:
			if the goal room of the beep beep is the current room of Elevator and the beep beep is pressed:
				now the beep beep is unpressed;
				now the elevator door is open;
				now the eledoor of the current room of Elevator is open;
				now the door timer of Elevator is 5;
				if the player is in the current room of Elevator:
					say "The door opens to reveal an elevator.";
				if the player is in Elevator:
					say "The [beep beep] unactivates - the elevator has arrived at [the current room of Elevator].";
		
		

Section 4 - The Doors

Instead of going north in Elevator:
	If the door is open:
		say "You walk through the door.";
		now the player is in the current room of Elevator;
	else:
		say "The door needs to be open first!".


There is an elevator door which is north of Elevator. The elevator door is closed and unopenable. The elevator door is a door.
The elevator door is south of Airlock1.

The room 1 elevator door is south of Room 1. The room 1 elevator door is closed and unopenable. The room 1 elevator door is a door.
The room 2 elevator door is south of Room 2. The room 2 elevator door is closed and unopenable. The room 2 elevator door is a door.
The room 1 elevator door is north of Airlock2r1.
The room 2 elevator door is north of Airlock2r2.

Section 5 - The Buttons

There is an in-elevator button called the one-button. "There is a button with a 1 on it.". 
The one-button is in Elevator. The printed name of the one-button is "1 button".
Understand "one button" as the one-button.
Understand "1 button" as the one-button.
Understand "1" as the one-button.
Understand "one" as the one-button.
Understand "button" as the one-button.
The goal room of the one-button is Room 1.
There is an in-elevator button called the two-button. "There is a button with a 2 on it.".
The two-button is in Elevator. The printed name of the two-button is "2 button".
Understand "two button" as the two-button.
Understand "2 button" as the two-button.
Understand "2" as the two-button.
Understand "two" as the two-button.
Understand "button" as the two-button.
The goal room of the two-button is Room 2.
There is an elevator-calling button called the up button. "There is a button with an up arrow on it.".
The up button is in Room 1. 
The goal dir of the up button is up.
There is an elevator-calling button called the down button. "There is a button with an down arrow on it.".
The down button is in Room 2.
The goal dir of the down button is down.

When play begins:
	Add the one-button to the floor buttons of Elevator;
	Add the two-button to the floor buttons of Elevator;
	Add the up button to the call buttons of Elevator;
	Add the down button to the call buttons of Elevator.


Chapter 2 - Connected to the Elevator

Section 1 - Eleroom Definition

An eleroom is a kind of room.
An eleroom has a room called the upwards room.
An eleroom has a room called the downwards room.
An eleroom has a room called the airlock room.
An eleroom has a door called the eledoor.

Instead of going south in an eleroom (called the ert):
	If the door is open and the current room of Elevator is the ert:
		say "You walk through the door.";
		now the player is in Elevator;
	else:
		say "The door needs to be open first!".

Section 2 - Boilerplate

Room 1 is a eleroom. The upwards room of Room 1 is Room 2. The downwards room of Room 1 is Elevator.

Room 2 is a eleroom. The upwards room of Room 2 is Elevator. The downwards room of Room 2 is Room 1.

Section 3 - The Achievement

The achievement is a thing. The description of the achievement is "This is an achievement for collecting every button.".
Every turn:
	If the player has the up button and the player has the down button and the player has the one-button and the player has the two-button:
		if the player has the achievement:
			say "You collected them AGAIN! Fine, you win.";
			end the story finally saying "Hooray!";
		else:
			say "You have collected every single button. Here is your achievement.";
			now the player has the achievement;
			now the up button is in Room 1;
			now the down button is in Room 2;
			now the one-button is in Elevator;
			now the two-button is in Elevator.