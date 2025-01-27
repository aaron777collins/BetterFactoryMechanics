execute if block ^ ^ ^2.5 water_cauldron if data block ~ ~ ~ Items[{id:"minecraft:bucket"}] run summon minecraft:item ^ ^ ^1.5 {Health:5s,PickupDelay:23s,Item:{count:1,id:"minecraft:water_bucket"}}
execute if block ^ ^ ^2.5 water_cauldron if data block ~ ~ ~ Items[{id:"minecraft:bucket"}] run playsound minecraft:item.bucket.empty block @a[distance=..20] ~ ~ ~
execute if block ^ ^ ^2.5 water_cauldron if data block ~ ~ ~ Items[{id:"minecraft:bucket"}] run setblock ^ ^ ^2.5 cauldron

execute if block ^ ^ ^2.5 lava_cauldron if data block ~ ~ ~ Items[{id:"minecraft:bucket"}] run summon minecraft:item ^ ^ ^1.5 {Health:5s,PickupDelay:23s,Item:{count:1,id:"minecraft:lava_bucket"}}
execute if block ^ ^ ^2.5 lava_cauldron if data block ~ ~ ~ Items[{id:"minecraft:bucket"}] run playsound minecraft:item.bucket.empty_lava block @a[distance=..20] ~ ~ ~
execute if block ^ ^ ^2.5 lava_cauldron if data block ~ ~ ~ Items[{id:"minecraft:bucket"}] run setblock ^ ^ ^2.5 cauldron

execute if block ^ ^ ^2.5 powder_snow_cauldron if data block ~ ~ ~ Items[{id:"minecraft:bucket"}] run summon minecraft:item ^ ^ ^1.5 {Health:5s,PickupDelay:23s,Item:{count:1,id:"minecraft:powder_snow_bucket"}}
execute if block ^ ^ ^2.5 powder_snow_cauldron if data block ~ ~ ~ Items[{id:"minecraft:bucket"}] run playsound minecraft:item.bucket.empty_powder_snow block @a[distance=..20] ~ ~ ~
execute if block ^ ^ ^2.5 powder_snow_cauldron if data block ~ ~ ~ Items[{id:"minecraft:bucket"}] run setblock ^ ^ ^2.5 cauldron

scoreboard players remove @s Item_Amount 1
function fm:deployer/item_save
tag @s add Done_Action