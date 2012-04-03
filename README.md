CardGame Server
===============

The idea is to expose the CardGame engine via a REST API (or WebSockets or AMPQ). Various clients could then use it to play games (command-line, web, iPhone, etc. - even via curl).

Lifecycle viewed from the Client
--------------------------------
1. Player requests at engine to participate in a game (optionally providing a list of preferred partners)
1. Server assigns the player to a particular game that isn't fully staffed yet, led by a dealer (which is the game engine)
1. When a game is fully staffed, it starts:
    1. Dealer selects the order in which players get to play
    1. Dealer deals out the cards to each client
    1. Dealer puts the first card on the discard pile, telling every player what it is
    1. Dealer selects one player after the other:
        1. Dealer asks player to play and starts the timer for this player.
        1. Player decides to draw one or more cards from the draw pile (depending on what the current card is)
        1. Player plays a card or not (depending on his own choosing, potentially affected by rule set)
1. When the game is finished, the dealer either
  * debits each player with the amount of his remaining cards, and / or
  * credits the winner with the amount of all remaining cards minus an uplift for the dealer

Enforcing the Rules of the Game
===============================
With external players we cannot trust players to not cheat. In order to prevent copying, the dealer will keep track of all cards handed out to players, and will reject any card that was not previously handed out to the player. While this will not prevent copying or tampering with cards, we effectively prevent a player to play a card that was not handed out to him.

Timeouts
========
If the player hasn't played in time or gives up, the full value of all of the player's cards at the beginning of the game is charged.

Web App
=======
We could expose a simple Web UI for our app. Candidates for drag-and-drop would be:

1. [JQuery UI](http://jqueryui.com/demos/droppable/#photo-manager)

[Pusher](http://pusher.com/) seems to have a good implementation for push communication using WebSockets (with fallback to Flash).