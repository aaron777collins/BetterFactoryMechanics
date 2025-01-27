data modify storage fm:temp Block_Place set from block ~ ~ ~ Items[-1]

function fm:deployer/set_block_from_item with storage fm:temp Block_Place

execute unless block ^ ^ ^2.5 #minecraft:air run tag @s add Done_Action

execute unless block ^ ^ ^2.5 #minecraft:air run scoreboard players remove @s Item_Amount 1
execute unless block ^ ^ ^2.5 #minecraft:air run function fm:deployer/item_save