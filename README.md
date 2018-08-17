# esx_scratchoffs

ESX Scratchoffs is a plugin that adds lottery scratchoff tickets to the stores in GTA.

# Requirements
ESX
esx_shops

# Installation

Run inside of your server-data/resources folder

```
git clone git@github.com:michaelhodgejr/esx_scratchoffs.git [esx]/esx_scratchoffs
```

Add to your server.cfg file

```
start esx_scratchoffs
```

Review and execute the esx_scratchoffs.sql file. If you wish to add additional store locations you can do that 
by adding an entry with an item name of "scratchoff" to the shops table for the various store locations where you wish for scratchoffs
to be bought. 

# Additional Notes
Right now the odds are 50/50. If you'd like to adjust that you can modify the "scratchoffIsAWinner" method in client/main.lua]

The payout is set by default to a random amount between 1 and 10. You can adjust that by modifying the determineWinningAmount in client/main.lua

