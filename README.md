# Approach

I approached this using BDD. I first initialized the minitest framework
and then started specifying the card behaviours. They should have suit and
number instance variables. I then specified that cards with invalid numbers
or suits should raise a custom error. I then implemented non-case-sensitivity
and a :to_s method for ease of use.

I then moved on to the deck. A regular deck uses a nested loop to make
an ordered list of cards. Decks also take a "shuffle: true" option which
shuffles the deck using the :shuffle! method I made (this method also
works to reshuffle a deck which has already been made). I also implemented
a convenience method :size and make a more user-friendly :to_s method
which also helped in making one of the spec failure messages more useful.

I then went through and refactored/best-practicified my code as best I could.

# Collaborators

I worked with Sunny, Gabe, and Scott on this project.
We kick posterior regions.
