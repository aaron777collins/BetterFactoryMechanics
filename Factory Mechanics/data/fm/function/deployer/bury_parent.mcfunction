function fm:deployer/bury with block ~ ~ ~ Items[-1]
execute unless block ^ ^ ^2.5 minecraft:air run scoreboard players remove @s Item_Amount 1
execute unless block ^ ^ ^2.5 minecraft:air run function fm:deployer/item_save
