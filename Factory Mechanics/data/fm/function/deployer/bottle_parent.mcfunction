execute as @s[tag=!Done_Action] if block ^ ^ ^2.5 water_cauldron if data storage fm:temp Block{id:"minecraft:glass_bottle"} run function fm:deployer/bottle_collect
execute as @s[tag=!Done_Action] if block ^ ^ ^2.5 water_cauldron unless block ^ ^ ^2.5 water_cauldron[level=3] if data storage fm:temp Block{id:"minecraft:potion",components:{"minecraft:potion_contents":{potion:"minecraft:water"}}} run function fm:deployer/bottle_place