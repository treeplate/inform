"Island of the Pirate Cats" by a whole lot of people on JoCo 2023

Sandy Beach is a room. "Sand meets crashing waves under a cloudless azure sky. A collection of tall coconut trees stand to the west. A hut sits to the east. To the north is a thoroughly unnecessary pool. There is nothing but water to the south, stretching to the horizon." The printed name of Sandy Beach is "Beach, Corridor". 

The ocean is a scenery thing in Sandy Beach. The ocean is fixed in place. The description of the ocean is "You see a large boat in the distance, and hear laughing from said boat. Unfortunately, you can't go in because you haven't learned to swim yet."

Before going south when the location is Sandy Beach:
	try entering the ocean instead.

Before entering the ocean:
	say "You don't swim. You do not dog paddle. You do not even puppy paddle. You cannot go that way." instead.
	
There is a red herring in Sandy Beach. The description of the red herring is "Don't pay too much attention to this. It's just a red herring."

Litterbox is east from Sandy Beach. "This disgusting corner of the sandy beach serves as the cats' litterbox. It is literally littered with litter. Gross little piles and holes are everywhere.[if the player is not a kitty] You would rather not be here.[else][end if]".

The litter is a scenery object in Litterbox.

Instead of doing something with the litter:
	say "You don't want to[if the player is not a kitty] and the cats don't want you to[else][end if]."

[Digging or searching in litterbox should get you something. Yuck.]

Beach Hut is a room. "A comically small beach hut made of palm wood, with a palm frond roof. [if the player is not elder]The hut houses Elder Cat Forthington.[else][end if]". Beach Hut is inside from Sandy Beach.

Elder Cat Forthington is a person in Beach Hut.
A squeaky hammer is a thing in Beach Hut.
A cat bed is a thing in Beach Hut.
A sunbeam rug is a thing in Beach Hut.

Before doing something with a thing (called the target):
	if the location is Beach Hut:
		if the target is not the squeaky hammer and the target is not Elder Cat Forthington and the player is not a kitty:
			say "Elder Cat Forthington hisses at you and bares his claws. You back up hurriedly from [the target]." instead.

Base of Trees is a room. "A stand of tall coconut trees grows here, providing welcome shade from the blazing island sun. The trees are unclimbable for a little animal such as yourself." Base of Trees is west of Sandy Beach.

A coconut is a container in Base of Trees. A coconut is closed.
The milk is a thing. The milk is in the coconut.

Before doing something with the milk:
	say "You have heard that lactose is in milk. You want to keep all of your toes, so you do not want to drink the lack-toes. But perhaps the Pirate Queen has too many toes...." instead.

The pelican is a person in Base of Trees. "There's a treehouse high above you, with a pelican perched on the treehouse railing." The description of the pelican is "The old pelican has one good eye and wears a straw hat. They nervously scan the shoreline from their perch high above on the tree-house railing."

Before smelling in Base of Trees:
	say "Sniff sniff. It smells like... rum? Really good rum? (How do you know what really good rum smells like? Because you've been around too many pirates, that's why.)" instead.

The silver flask is a closed container. 
Before opening the silver flask:
	say "No drinking the rum! [if the player is not a kitty]You are not yet old enough to drink![else if the player is the mouse](try 'give flask to mouse')[else]This is for the Mouse Admiral![end if]" instead.

Before giving the red herring to the pelican:
	say "The pelican squints at you with its one good eye before accepting the offering. With a clumsy whoosh, it swoops down and snatches the red herring, and then swoops away out of sight with its prize.[paragraph break]It looks like the pelican whapped something shiny with its wing in its excitement. The object teeters... tilts... falls to the sand with a thump. It's a silver flask!";
	remove the red herring from play;
	remove the pelican from play;
	move the silver flask to the location of the player instead.
	
Before giving the blue herring to the pelican:
	say "The pelican squints at you with its one good eye before accepting the offering. With a clumsy whoosh, it swoops down and snatches the blue herring, and then swoops away out of sight with its prize.[paragraph break]It looks like the pelican whapped something shiny with its wing in its excitement. The object teeters... tilts... falls to the sand with a thump. It's a silver flask!";
	remove the blue herring from play;
	remove the pelican from play;
	move the silver flask to the location of the player instead.

Instead of opening the coconut:
	if the player has the machete:
		say "With an impressive swashbuckling slice, you open the coconut! You are a VERY skillful animal and avoid spilling any of the milk. Good job you!";
		now the coconut is open instead;
	if the player has the squeaky hammer:
		say "You bang the hammer on the coconut hopefully. It squeaks. This is not going to work." instead;
	say "How are you going to get it open? You don't have a knife. [if the player is not a kitty]You don't even have sharp claws.[else][end if]";

Shaking is an action applying to one touchable thing.
Understand "shake [something]" as shaking.

Instead of shaking something (called the shakeable): 
	if the shakeable is the coconut:
		say "You can hear the coconut milk sloshing about inside.";
	otherwise:
		say "Shaking [the shakeable] won't advance your secret goals."
		
Treehouse is a room. "This is pretty normal. For a treehouse. At least, for one made by cats."

Throne Room is a room. Throne Room is south of Base of Trees. "The trees part to reveal a lush sundrenched clearing. A sunbeam illuminates a wooden crate sitting on a tall tree stump. [if the player is not the calico and the calico is in Throne Room]A corpulent calico cat is squeezed into the box, wearing a golden crown. Two Maine coons are fanning her with catnip fronds.[else][end if]"

The corpulent calico cat is a person in Throne Room. Understand "Pirate" and "Queen" as the calico cat.

Before giving the coconut to the corpulent calico cat:
	if the player is the calico:
		say "You already have it." instead;
	if the coconut is closed:
		say "Open the coconut first!" instead;
	say "You present the Pirate Queen with the coconut. She looks down her nose at the coconut and says, [if the player is a kitty]'Thank you for this coconut'[else]'I will accept your offering.'[paragraph break]You have earned the trust of the Pirate Queen! What mischief can you complete from here?!? Only you know![end if]";
	if the player is the mouse:
		end the story finally saying "GOOD MOUSEY!" instead;
	if the player is a kitty:
		end the story finally saying "GOOD KITTY!" instead;
	end the story finally saying "GOOD PUPPY!" instead.

Scratching Post is a room. Scratching Post is west of Throne Room. "This is where the cats scratch. It looks much like any other."

Unnecessary Pool is a room. Unnecessary Pool can be froggy. Unnecessary Pool is froggy. "There is no reason a pool should be here, because the cats don't use it. [if Unnecessary Pool is froggy]The booming sound of a bullfrog echoes around the pool. Someone is looking for a companion, but where could they be? [else]It's peaceful and quiet here. [end if]South is the beach." Unnecessary Pool is north of Beach. 

The pungent pool is a scenery thing in Unnecessary Pool. The description of the pungent pool is "There are many catnip fronds floating in the pool. There's a skimmer here, but it may not be working as well as it should."

The pool skimmer is a scenery closed door in Unnecessary Pool. The pool skimmer is fixed in place. The description of the pool skimmer is "[if the pool skimmer is closed]It seems to be jammed but perhaps you can open the lid[else]The pool skimmer is open, and you think you can just squeeze in[end if]." The pool skimmer is inside from Unnecessary Pool. Through the pool skimmer is Secret Mouse Base.

After opening the pool skimmer:
	now Unnecessary Pool is not froggy;
	say "The formerly booming baritone of the frog now comes through as a pathetic squeak. 'Hey! You wrecked my echo chamber!' He bounds away, hopping mad.[paragraph break]Oddly enough, the smell of rum and cheese wafts up from the skimmer. You realize that you might be able to squeeze inside." instead;

Instead of smelling in Unnecessary Pool:
	say "It smells like rum. Why does it smell like rum?!?[paragraph break]It seems like the smell might be coming from the pool."

Secret Mouse Base is a room. "This room is entirely tiled in a gaudy turquoise. Water drips from the walls and ceiling, and the smell of chlorine permeates the air. A small drain sits in the center of the floor. Tiny mouse-size kegs of rum are piled along one wall. An archway on the north wall leads to a gangplank."

The kegs of rum are a scenery thing in Secret Mouse Base. The description of the kegs of rum is "This rum smells cheap." Understand "keg" as the kegs of rum.

The small drain is a scenery door in Secret Mouse Base. The small drain is down from Secret Mouse Base. Through the small drain is Unnecessary Pool. The description of the small drain is "Circular and metal, and apparently loose.  It would be a tight squeeze for you but cavernous for the mice."

Secret Mouse Ship is a room. Secret Mouse Ship is north of Secret Mouse Base. "This pirate ship is made from palm."

The Mouse Admiral is a person in Secret Mouse Ship. The Mouse Admiral can be drunk. The Mouse Admiral is not drunk. The initial appearance of the Mouse Admiral is "[if the Mouse Admiral is drunk]The Mouse Admiral is here, hiccuping and leaning against the helm[else]The Mouse Admiral is here, struggling to turn the helm, which is much larger than he is. It isn't entirely clear why he's doing this given that the ship is moored, but he surely has his reasons[end if]."

Before giving the flask to the Mouse Admiral:
	say "The Mouse Admiral looks superciliously down his whiskered nose at you, but when he twitches his nose, he also sniffs. And then he reallizes... 'That's the good stuff!'[paragraph break]The Mouse Admiral yanks the flask open and pours it into his face.[paragraph break]A silly smile crosses the Mouse Admiral's face and he starts flipping his tail back and forth.";
	now the Mouse Admiral has the flask;
	now the Mouse Admiral is drunk instead.

A fishing net is a container in Secret Mouse Ship. The fishing net is fixed in place and open.

A blue herring is a thing in the fishing net. The description of the blue herring is "You said you didn't want any more red herrings! This one is different!"

The machete is a thing in Secret Mouse Ship.

Before taking the machete:
	if the Mouse Admiral is not drunk and the player is not a kitty and the player is not the mouse:
		say "The Mouse Admiral gives you a very sharp look - sharper than the machete. You'll have to distract the Mouse Admiral somehow before you can do that." instead;
	if the player is not a kitty and the player is not the mouse:
		say "The Mouse Admiral is sufficiently drunk that he does not notice you going after the machete. But you can't count on him staying that way... better act fast!";
		now the player has the machete;
		the Mouse Admiral notices that you have the machete in 2 turns from now instead.
	
At the time when the Mouse Admiral notices that you have the machete:
	carry out the reproaching the player activity.
	
Before going when the player has the machete:
	carry out the reproaching the player activity.

Reproaching the player is an activity.
To carry out the reproaching the player activity:
	if the player has the machete and the player is not a kitty and the player is not the mouse and the player is in the location of the mouse:
		say "'LEAVE IT! BAD PUPPY!' the Mouse Admiral roars. You reflexively drop the machete and cringe. It is hard to be a bad puppy.";
		now the machete is in Secret Mouse Ship.

Cave is a room. Cave is east of Secret Mouse Ship. "The cave has nothing of interest. However, it connects the ship to the water, which is south."

Before going south from Cave:
	say "You are a very bad swimmer! Is this really a good idea?!?";
	if player consents:
		say "You dive into the waves! This was a terrible plan! You are turned upside-down and almost inside-out, but you wash up at....";
		move the player to Sandy Beach instead;
	otherwise:
		say "That was probably for the best." instead.

[A barrel is a wearable open openable container.

Before taking off the barrel:
	say "No. It's yours." instead.]

When play begins:
	say "After three months living in the Island of the Cats, you believe they are starting to trust you. But to cement their trust and become the first Pirate Puppy (and perhaps carry out a nefarious scheme or two of your own), you must earn the approval of the Pirate Cat Queen.[paragraph break]Hey, there's a beach hut here! That might be a good place to start....".

Report smelling: say "You sniff the air. It smells like stuff." instead.
	
Book 2 - Some helpful mechanics

Definition: a direction (called thataway) is viable if the room thataway from the location is a room. 

Instead of going nowhere: 
	let count of exits be the number of viable directions; 
	if the count of exits is 0:
		say "You appear to be trapped in here." instead;
	say "From here, you can [if the count of exits is 1]only[end if] go [list of viable directions]."
	
Book 3 - Added after the event

Release along with an interpreter and source text.

A kitty is a kind of animal. Elder is a kitty. Calico is a kitty.