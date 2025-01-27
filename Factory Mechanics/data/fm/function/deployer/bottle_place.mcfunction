summon minecraft:item ^ ^ ^1.5 {Health:5s,PickupDelay:23s,Item:{count:1,id:"minecraft:glass_bottle"}}
playsound minecraft:item.bottle.fill block @a[distance=..20] ^ ^ ^2.5
fill ^ ^ ^2.5 ^ ^ ^2.5 water_cauldron[level=3] replace water_cauldron[level=2]
fill ^ ^ ^2.5 ^ ^ ^2.5 water_cauldron[level=2] replace water_cauldron[level=1]
fill ^ ^ ^2.5 ^ ^ ^2.5 water_cauldron[level=1] replace cauldron

scoreboard players remove @s Item_Amount 1
function fm:deployer/item_save
tag @s add Done_Action