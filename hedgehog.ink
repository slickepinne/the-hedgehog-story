/*
  Welcome lovely codegrammers. This is a comment and the perfect place to explain a bit about the project itself. 
  Name, date, maybe even a quote. 
    Name: Fjon - The Hedgehog
    Date: February 2021
    Description: An interactive short story about Fjon, a little hedgehog who wanted to become a codegram pet.
*/

// Before we start writing the game itself, it might make sense to set some global variables. 
// These can be strings, booleans, integers. Whatever you actually want and need.
VAR headache = true

// Let's start with the intro which will be present at the very beginning

Fjon was a little creature. Cute and a bit spiky. Nothing unusual since Fjon was a hedgehog. Not so normal was the fact that Fjon was able to communicate with people. He literally spoke. His voice was a bit scratchy and high, just like excited children sound. And yes, he himself was a bit excited, too. Fjon was on a mission to become a Codegram pet. Will he reach his dream or will the obstacles be too difficult to overcome?

// And here comes the gameplay

// We call the first szene, a divert
-> Hej

// This is the first szene, a knot (easily identified by ===. Could also be written as === Hej ===)

=== Hej
  #hej
  After kind of a rough night (you had a couple of beers in front of the laptop to celebrate finishing an exciting and challenging project with your colleagues), you're trying to get a clean head wandering around in the nearby forest, when you suddenly hear an ear-piercing tone:
  "Hej you." #hedge
  You turn around but you don't see anyone.
  "Over here." , says the voice. #hedge
    + [Check the place again] -> check_again
    + [Don't check it again] -> do_not_check_again

=== check_again
  #brown_lurking
  You check the surrounding once again but you are alone. Although, something brown-ish is lurking from under that bush on the right side. And at the same time you spot it, the bush is moving and a hedgehog appears. You start to laugh. The hedgehog couldn't be the one who talked to you. So, you are thinking that either you had too many drinks last night or someone is playing a trick on you – when you hear 
  "It's me, down here." #hedge
  Okay, not too many drinks. Someone plays a prank. But who?
    -> choose_your_codegrammer


=== do_not_check_again
  #fall_down
  You don't like this. The headache comes back. So you pretend to not having heard anything and you continue to walk. In the next second, you fall. Too exhausted for fast reactions, your face lands in the mud. When you raise it, you stare in the eyes, or better, nose, of a small hedgehog. He grins. Seriously. The hedgehog is smiling. 
  "We could have solved this differently, you know?", he babbles. #hedge
  You put your face down again. That animal didn't talk to you. It's all in your head. You fell down and hurt your head. You hear a cracking sound from the bushes behind you. You knew it. Someone is playing a prank. But who?
    -> choose_your_codegrammer


=== choose_your_codegrammer
#codegrammer
  + [Agustí]
    -> hedgehogs_can_speak("Agustí")
  + [Aitor]
    -> hedgehogs_can_speak("Aitor")
  + [Andrea]
    -> hedgehogs_can_speak("Andrea")
  + [Arnau]
    -> hedgehogs_can_speak("Arnau")
  + [David]
   -> hedgehogs_can_speak("David")
  + [Dasha]
    -> hedgehogs_can_speak("Dasha")
  + [Marc D.]
    -> hedgehogs_can_speak("Marc D.")
  + [Edgar]
    -> hedgehogs_can_speak("Edgar")
  + [Eva]
    -> hedgehogs_can_speak("Eva")
  + [Georgi]
    -> hedgehogs_can_speak("Georgi")
  + [Hugo]
    -> hedgehogs_can_speak("Hugo")
  + [Josep]
    -> hedgehogs_can_speak("Josep")
  + [Leo]
    -> hedgehogs_can_speak("Leo")
  + [Marina]
    -> hedgehogs_can_speak("Marina")
  + [Marc R.]
    -> hedgehogs_can_speak("Marc R.")
  + [Nick]
    -> hedgehogs_can_speak("Nick")
  + [Oriol]
    -> hedgehogs_can_speak("Oriol")
  + [Svenja]
    -> hedgehogs_can_speak("Svenja")
  + [Txus]
    -> hedgehogs_can_speak("Txus")
  + [Vero]
    -> hedgehogs_can_speak("Vero")


=== hedgehogs_can_speak(guiltyCodegrammer)
  #choosen
  The hedgehog looked grumpy.
  "You really believe {guiltyCodegrammer} would do that? Don't you know that Hedgehogs can talk - IF THEY decide to let YOU hear them?" #hedge
  And with that, the hedgehog comes a little bit closer.
  "I'm Fjon, by the way.", he says. #hedge
    * [You stay where you are] -> stay_and_sit_down
    * [You leave] -> hurry

=== stay_and_sit_down
  #sit_down
  It's too much for your nerves (and headache), so you sit down. Fjon crawls to your legs, climbs on your right one and finds himself an obvious comfortable position. He starts talking again: 
  "You know, it's actually pretty amazing to meet you here. I was on the way to your office but that was a bit tricky with the whole remote thingy. The reason, I was looking for you, well, not specifically you, but any Codegrammer, no offence, is that I heard so much about your pets. They even have their own room in the wide world web. And I, ... I want to become a Codegram pet as well." #hedge
  He looked as if he was waiting for an answer.
    * [You give him an answer] -> give_answer
    * [You say nothing] -> give_no_answer

=== hurry
  #hurry
  { do_not_check_again:
    Carefully not to fall again, you turn around and walk slowly in the direction you came from. 
    "Are you still mad, that I put that tree branch in front of you? I won't hurt you ever again. Just hear me out, pleeeease." #hedge
    This is getting really creepy. A speaking hedgehog.
    -> stay_and_sit_down
  }
  { not do_not_check_again:
    You turn around and walk slowly in the direction you came from. 
    "Why are you running away? I did decide to let you hear me and you still don't believe me? See, I can jump and roll on my back." #hedge
    You turn around and it's exactly the way he said it is. A hedgehog jumping around, not very high tho and rolling around.
    -> stay_and_sit_down
  }

=== give_answer
  #help
  Still confused about the fact that you are sitting in the forest with a hedgehog named Fjon on your legs, you hear yourself asking:
  "And how can I help you becoming a codegram pet?". 
    -> explanation

=== give_no_answer
  #no_answer
  You look at him and wait. "Did you hear me?" You still don't answer. 
  "Don't you like animals? Although, no, that is not possible. Everybody at Codegram loves animals, am I right?" #hedge
  The hedgehog jumps down from your leg and rolls on his back. You reach out to tickle the little creature. Fjon starts to laugh. So do you and after a little while, you hear yourself asking: "Okay, little guy, how can I help you?"
    -> explanation


=== explanation
  "Nothing easier than that. You can adopt me!". #hedge
  Fjon jumps down from your leg on the earthy path and runs excitedly from left to right and back. 
  "I promise. I'll be suuuuuper nice and I will never use my quills to hurt you. Big hedgehog promise!" #hedge
  Fjon stops and looks at you with big eyes, well as big as Hedgehog eyes can be. 
    * [You adopt Fjon] -> adopt_fjon
    * [You ask Svenja to adopt him] -> ask_svenja_to_adopt

=== adopt_fjon
  #adopt_fjon
  In these complicated times, it's always nice to have a friend by your side. And Fjon was right, working remotely can make you feel lonely from time to time. At least, if you don't have such a wonderful team like you have at Codegram. And Fjon, with his funny voice, would just fit perfectly to Bimo, Boira and Black, Juanita and Luna and Yoko and maybe even Ona. You won't let him near Hugo tho. That's for sure. And with these thought, you pick him up and carry him home where you'll send cute pictures to the 'ot-pet' channel and a day later, the hedgehog Fjon has his own page in the wide world web. 
    -> END

=== ask_svenja_to_adopt
  #svenja_adoption
  While it's true that you kinda became fond of this little thingy, you don't have time for a hedgehog right now. But you are sure that Svenja would take him in. So, you say to Fjon: "Don't worry. I'll take care of you. Unfortunately, you can't become my pet but I'll visit you super often and we'll sea each other in our Friday group calls because pets are welcome every time, everywhere. I'll take you to Svenja – she has two adorable dogs: Ona and Hugo. She'll be happy to give you a new home." Fjon smiles. You pick him up and carry him to Svenja.
    -> epilogue

=== epilogue
  #epilogue
  EPILOGUE
  Sadly, you forgot Hugos' manner and his special taste for cats and hedgehogs. The day you left him in Svenjas' hands was the last day you saw Fjon alive.
    -> END