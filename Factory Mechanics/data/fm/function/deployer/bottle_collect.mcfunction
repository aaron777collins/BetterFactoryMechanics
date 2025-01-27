execute if block ^ ^ ^2.5 water_cauldron run summon minecraft:item ^ ^ ^1.5 {Health:5s,PickupDelay:23s,Item:{count:1,id:"minecraft:potion",components:{"minecraft:potion_contents":{potion:"minecraft:water"}}}}
execute if block ^ ^ ^2.5 water_cauldron run playsound minecraft:item.bottle.empty block @a[distance=..20] ^ ^ ^2.5
execute if block ^ ^ ^2.5 water_cauldron run fill ^ ^ ^2.5 ^ ^ ^2.5 cauldron replace water_cauldron[level=1]
execute if block ^ ^ ^2.5 water_cauldron run fill ^ ^ ^2.5 ^ ^ ^2.5 water_cauldron[level=1] replace water_cauldron[level=2]
execute if block ^ ^ ^2.5 water_cauldron run fill ^ ^ ^2.5 ^ ^ ^2.5 water_cauldron[level=2] replace water_cauldron[level=3]

scoreboard players remove @s Item_Amount 1
function fm:deployer/item_save
tag @s add Done_Action