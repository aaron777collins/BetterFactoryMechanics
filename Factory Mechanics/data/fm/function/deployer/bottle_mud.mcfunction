execute if block ^ ^ ^2.5 dirt run summon minecraft:item ^ ^ ^1.5 {Health:5s,PickupDelay:23s,Item:{count:1,id:"minecraft:glass_bottle"}}
execute if block ^ ^ ^2.5 dirt run playsound minecraft:entity.player.splash block @a[distance=..20] ~ ~ ~
execute if block ^ ^ ^2.5 dirt run particle minecraft:splash ^ ^ ^2.5 0.25 0.25 0.25 0 25
execute if block ^ ^ ^2.5 dirt run setblock ^ ^ ^2.5 mud

scoreboard players remove @s Item_Amount 1
function fm:deployer/item_save
tag @s add Done_Action