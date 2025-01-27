tag @s remove Place_Water
tag @s remove Place_Lava
tag @s remove Place_Snow

execute if data storage fm:temp Block{id:"minecraft:water_bucket"} run tag @s add Place_Water
execute if data storage fm:temp Block{id:"minecraft:lava_bucket"} run tag @s add Place_Lava
execute if data storage fm:temp Block{id:"minecraft:powder_snow_bucket"} run tag @s add Place_Snow

execute as @s[tag=Place_Water] run summon minecraft:item ^ ^ ^1.5 {Health:5s,PickupDelay:23s,Item:{count:1,id:"minecraft:bucket"}}
execute as @s[tag=Place_Water] run playsound minecraft:item.bucket.fill block @a[distance=..20] ~ ~ ~
execute as @s[tag=Place_Water] run setblock ^ ^ ^2.5 water_cauldron[level=3]

execute as @s[tag=Place_Lava] run summon minecraft:item ^ ^ ^1.5 {Health:5s,PickupDelay:23s,Item:{count:1,id:"minecraft:bucket"}}
execute as @s[tag=Place_Lava] run playsound minecraft:item.bucket.fill_lava block @a[distance=..20] ~ ~ ~
execute as @s[tag=Place_Lava] run setblock ^ ^ ^2.5 lava_cauldron

execute as @s[tag=Place_Snow] run summon minecraft:item ^ ^ ^1.5 {Health:5s,PickupDelay:23s,Item:{count:1,id:"minecraft:bucket"}}
execute as @s[tag=Place_Snow] run playsound minecraft:item.bucket.fill_powder_snow block @a[distance=..20] ~ ~ ~
execute as @s[tag=Place_Snow] run setblock ^ ^ ^2.5 powder_snow_cauldron[level=3]


scoreboard players remove @s Item_Amount 1
function fm:deployer/item_save
tag @s add Done_Action