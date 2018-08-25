USE `essentialmode`;

INSERT INTO `shops` (`id`, `store`, `item`, `price`) VALUES (7, 'TwentyFourSeven', 'scratchoff', 1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`) VALUES ('scratchoff', 'Scratchoff Ticket', -1, 0, 1);
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`) VALUES ('scratchoff_used', 'Used Scratchoff Ticket', -1, 0, 1);
