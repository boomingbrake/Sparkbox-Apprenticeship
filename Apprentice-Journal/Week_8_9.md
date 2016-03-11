#Week 8-9

###Game of Life: DOES IT GET EASIER?!?!?!?!?!

I fell in love with a broad named Ruby. I realized that I was playing hard to get.  Clinging to javascript and c# not out of passion but comfort. They were languages that I've invested a good portion of half a decade, so of course I'd have some attachment to them both.  

It wasn't until weeks 8 and 9 when we started looking into javascript that I realized Ruby has a lot to offer. It's been easily 6 months since I had written a lick of JS and it's minimal rules clouds the whole coding process.  As someone who can be overwhelmed with making decisions when there are a lot of options, I appreciate Ruby's structure.  Through Ruby, I now see that C# is needy, requiring very set and get to be defined, when it should know that if I've defined an attribute to a class, OBVIOUSLY I'd like to because to set and retrieve it's value.   

Week 8, The Ryan challenged us to separate the functionality of Game of Life Ruby kata. This involved breaking out the logic that would collect any given cell's neighboring cells and the logic that would evaluate a cell and it's neighbors returning a new state.  These were labeled as the navigator and the rule runner. This challenge prepped us to thinking in a way to make things exchangeable. What if the game's rules changed, writing my game with this pattern would allow me to "unplug" my rule runner and plug in a different, without requiring me to modified/touch the other parts of the game.  This pattern allowed me to more easily test the logic of each unit, this came very handy when I was debugging my code that takes the return values of my navigator and rule runner and creates the next generation of the grid(of life).

I am excited to add front end development to our weekly agenda. I've started putting thought into building my personal website, it seems like a naturally spot to put the lessons we'll be working on into practice. 
