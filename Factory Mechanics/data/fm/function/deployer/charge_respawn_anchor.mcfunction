fill ^ ^ ^2.5 ^ ^ ^2.5 respawn_anchor[charges=4] replace respawn_anchor[charges=3]
fill ^ ^ ^2.5 ^ ^ ^2.5 respawn_anchor[charges=3] replace respawn_anchor[charges=2]
fill ^ ^ ^2.5 ^ ^ ^2.5 respawn_anchor[charges=2] replace respawn_anchor[charges=1]
fill ^ ^ ^2.5 ^ ^ ^2.5 respawn_anchor[charges=1] replace respawn_anchor[charges=0]

scoreboard players remove @s Item_Amount 1
function fm:deployer/item_save
tag @s add Done_Action