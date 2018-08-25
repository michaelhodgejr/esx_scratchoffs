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

Create and modify your configuration file

``
  cp config.lua.default config.lua
``

Add to your server.cfg file

```
start esx_scratchoffs
```

Review and execute the esx_scratchoffs.sql file. If you wish to add additional store locations you can do that
by adding an entry with an item name of "scratchoff" to the shops table for the various store locations where you wish for scratchoffs
to be bought.

# Additional Notes
The payout amount and the 1 in x chance of winning can be configured in the config file.

# Upgrade Notes

__Version 1.1.0 -> 1.2.0__

Run the following SQL Statement:

```
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`) VALUES ('scratchoff_used', 'Used Scratchoff Ticket', -1, 0, 1);
```

Create your configuration file

```
 cp config.lua.default config.lua
```
