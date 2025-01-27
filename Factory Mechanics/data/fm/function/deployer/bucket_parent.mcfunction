execute as @s[tag=!Done_Action] if block ^ ^ ^2.5 water_cauldron[level=3] if data storage fm:temp Block{id:"minecraft:bucket"} run function fm:deployer/bucket_collect
execute as @s[tag=!Done_Action] if block ^ ^ ^2.5 lava_cauldron if data storage fm:temp Block{id:"minecraft:bucket"} run function fm:deployer/bucket_collect
execute as @s[tag=!Done_Action] if block ^ ^ ^2.5 powder_snow_cauldron[level=3] if data storage fm:temp Block{id:"minecraft:bucket"} run function fm:deployer/bucket_collect

execute as @s[tag=!Done_Action] if block ^ ^ ^2.5 cauldron if data storage fm:temp Block{id:"minecraft:water_bucket"} run function fm:deployer/bucket_place
execute as @s[tag=!Done_Action] if block ^ ^ ^2.5 cauldron if data storage fm:temp Block{id:"minecraft:lava_bucket"} run function fm:deployer/bucket_place
execute as @s[tag=!Done_Action] if block ^ ^ ^2.5 cauldron if data storage fm:temp Block{id:"minecraft:powder_snow_bucket"} run function fm:deployer/bucket_place