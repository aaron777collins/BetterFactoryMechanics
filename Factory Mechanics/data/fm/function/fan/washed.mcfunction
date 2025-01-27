execute as @s[nbt={Item:{id:"minecraft:lava_bucket"}}] run tag @s add Lava_Bucket
execute as @s[tag=Lava_Bucket] store result score @s Item_Amount run data get entity @s Item.count
execute as @s[tag=Lava_Bucket] run data modify entity @s Item.id set value "minecraft:magma_block"

execute at @s[tag=Lava_Bucket] run summon item ~ ~ ~ {Tags:["Bucket"],Item:{id:"minecraft:bucket",count:1b}}
execute at @s[tag=Lava_Bucket] as @n[type=item,tag=Bucket] store result entity @s Item.count int 1 run scoreboard players get @n[type=item,tag=Lava_Bucket] Item_Amount
execute at @s[tag=Lava_Bucket] run tag @n[type=item,tag=Bucket] remove Bucket

execute as @s[tag=Lava_Bucket] run scoreboard players reset @s Item_Amount
execute as @s[tag=Lava_Bucket] run tag @s remove Lava_Bucket



execute as @s[nbt={Item:{id:"minecraft:red_sand"}}] run tag @s add Red_Sand
execute as @s[tag=Red_Sand] store result score @s Item_Amount run data get entity @s Item.count

execute as @s[tag=Red_Sand,scores={Item_Amount=1..}] run function fm:fan/wash_individual
execute as @s[tag=Red_Sand] store result entity @s Item.count int 1 run scoreboard players get @s New_Item_Amount
execute as @s[tag=Red_Sand] run data modify entity @s Item.id set value "minecraft:gold_nugget"

execute as @s[tag=Red_Sand] run scoreboard players reset @s Item_Amount
execute as @s[tag=Red_Sand] run scoreboard players reset @s New_Item_Amount
execute as @s[tag=Red_Sand] run tag @s remove Red_Sand



execute as @s[nbt={Item:{id:"minecraft:gravel"}}] run tag @s add Gravel
execute as @s[tag=Gravel] store result score @s Item_Amount run data get entity @s Item.count

execute as @s[tag=Gravel,scores={Item_Amount=1..}] run function fm:fan/wash_individual
execute as @s[tag=Gravel] store result entity @s Item.count int 1 run scoreboard players get @s New_Item_Amount
execute as @s[tag=Gravel] run data modify entity @s Item.id set value "minecraft:flint"

execute as @s[tag=Gravel,scores={Byproduct_Item_Amount=1..}] run summon item ~ ~ ~ {Tags:["Iron_Nugget"],Item:{id:"minecraft:iron_nugget",count:1}}
execute at @s[tag=Gravel,scores={Byproduct_Item_Amount=1..}] as @n[type=item,tag=Iron_Nugget] store result entity @s Item.count int 1 run scoreboard players get @n[type=item,tag=Gravel] Byproduct_Item_Amount
execute at @s[tag=Gravel,scores={Byproduct_Item_Amount=1..}] run tag @n[type=item,tag=Iron_Nugget] remove Iron_Nugget

execute as @s[tag=Gravel] run scoreboard players reset @s Item_Amount
execute as @s[tag=Gravel] run scoreboard players reset @s Byproduct_Item_Amount
execute as @s[tag=Gravel] run scoreboard players reset @s New_Item_Amount
execute as @s[tag=Gravel] run tag @s remove Gravel


execute as @s[nbt={Item:{id:"minecraft:sand"}}] run tag @s add Sand
execute as @s[tag=Sand] store result score @s Item_Amount run data get entity @s Item.count

execute as @s[tag=Sand,scores={Item_Amount=1..}] run function fm:fan/wash_individual
execute as @s[tag=Sand] store result entity @s Item.count int 1 run scoreboard players get @s New_Item_Amount
execute as @s[tag=Sand] run data modify entity @s Item.id set value "minecraft:clay_ball"

execute as @s[tag=Sand] run scoreboard players reset @s Item_Amount
execute as @s[tag=Sand] run scoreboard players reset @s New_Item_Amount
execute as @s[tag=Sand] run tag @s remove Sand


execute as @s[nbt={Item:{id:"minecraft:soul_sand"}}] run tag @s add Soul_Sand
execute as @s[tag=Soul_Sand] store result score @s Item_Amount run data get entity @s Item.count

execute as @s[tag=Soul_Sand,scores={Item_Amount=1..}] run function fm:fan/wash_individual
execute as @s[tag=Soul_Sand] store result entity @s Item.count int 1 run scoreboard players get @s New_Item_Amount
execute as @s[tag=Soul_Sand] run data modify entity @s Item.id set value "minecraft:quartz"

execute as @s[tag=Soul_Sand,scores={Byproduct_Item_Amount=1..}] run summon item ~ ~ ~ {Tags:["Soul_Gold_Nugget"],Item:{id:"minecraft:gold_nugget",count:1}}
execute at @s[tag=Soul_Sand,scores={Byproduct_Item_Amount=1..}] as @n[type=item,tag=Soul_Gold_Nugget] store result entity @s Item.count int 1 run scoreboard players get @n[type=item,tag=Soul_Sand] Byproduct_Item_Amount
execute at @s[tag=Soul_Sand,scores={Byproduct_Item_Amount=1..}] run tag @n[type=item,tag=Soul_Gold_Nugget] remove Soul_Gold_Nugget

execute as @s[tag=Soul_Sand] run scoreboard players reset @s Item_Amount
execute as @s[tag=Soul_Sand] run scoreboard players reset @s Byproduct_Item_Amount
execute as @s[tag=Soul_Sand] run scoreboard players reset @s New_Item_Amount
execute as @s[tag=Soul_Sand] run tag @s remove Soul_Sand


execute as @s[nbt={Item:{id:"minecraft:dirt"}}] run data merge entity @s {Item:{id:"minecraft:mud"}}
execute as @s[nbt={Item:{id:"minecraft:white_concrete_powder"}}] run data merge entity @s {Item:{id:"minecraft:white_concrete"}}
execute as @s[nbt={Item:{id:"minecraft:orange_concrete_powder"}}] run data merge entity @s {Item:{id:"minecraft:orange_concrete"}}
execute as @s[nbt={Item:{id:"minecraft:magenta_concrete_powder"}}] run data merge entity @s {Item:{id:"minecraft:magenta_concrete"}}
execute as @s[nbt={Item:{id:"minecraft:light_blue_concrete_powder"}}] run data merge entity @s {Item:{id:"minecraft:light_blue_concrete"}}
execute as @s[nbt={Item:{id:"minecraft:yellow_concrete_powder"}}] run data merge entity @s {Item:{id:"minecraft:yellow_concrete"}}
execute as @s[nbt={Item:{id:"minecraft:lime_concrete_powder"}}] run data merge entity @s {Item:{id:"minecraft:lime_concrete"}}
execute as @s[nbt={Item:{id:"minecraft:pink_concrete_powder"}}] run data merge entity @s {Item:{id:"minecraft:pink_concrete"}}
execute as @s[nbt={Item:{id:"minecraft:gray_concrete_powder"}}] run data merge entity @s {Item:{id:"minecraft:gray_concrete"}}
execute as @s[nbt={Item:{id:"minecraft:light_gray_concrete_powder"}}] run data merge entity @s {Item:{id:"minecraft:light_gray_concrete"}}
execute as @s[nbt={Item:{id:"minecraft:cyan_concrete_powder"}}] run data merge entity @s {Item:{id:"minecraft:cyan_concrete"}}
execute as @s[nbt={Item:{id:"minecraft:purple_concrete_powder"}}] run data merge entity @s {Item:{id:"minecraft:purple_concrete"}}
execute as @s[nbt={Item:{id:"minecraft:blue_concrete_powder"}}] run data merge entity @s {Item:{id:"minecraft:blue_concrete"}}
execute as @s[nbt={Item:{id:"minecraft:brown_concrete_powder"}}] run data merge entity @s {Item:{id:"minecraft:brown_concrete"}}
execute as @s[nbt={Item:{id:"minecraft:green_concrete_powder"}}] run data merge entity @s {Item:{id:"minecraft:green_concrete"}}
execute as @s[nbt={Item:{id:"minecraft:red_concrete_powder"}}] run data merge entity @s {Item:{id:"minecraft:red_concrete"}}
execute as @s[nbt={Item:{id:"minecraft:black_concrete_powder"}}] run data merge entity @s {Item:{id:"minecraft:black_concrete"}}



execute as @s[nbt={Item:{id:"minecraft:magma_cream"}}] run tag @s add Magma_Cream
execute as @s[tag=Magma_Cream] run data modify entity @s Item.id set value "minecraft:slime_ball"

execute as @s[tag=Magma_Cream] store result score @s Item_Amount run data get entity @s Item.count
execute as @s[tag=Magma_Cream,scores={Item_Amount=1..}] run function fm:fan/wash_individual
execute as @s[tag=Magma_Cream,scores={New_Item_Amount=1..}] run summon item ~ ~ ~ {Tags:["Blaze_Powder"],Item:{id:"minecraft:blaze_powder",count:1}}
execute at @s[tag=Magma_Cream,scores={New_Item_Amount=1..}] as @n[type=item,tag=Blaze_Powder] store result entity @s Item.count int 1 run scoreboard players get @n[type=item,tag=Magma_Cream] New_Item_Amount
execute at @s[tag=Magma_Cream,scores={New_Item_Amount=1..}] run tag @n[type=item,tag=Blaze_Powder] remove Blaze_Powder

execute as @s[tag=Magma_Cream] run scoreboard players reset @s Item_Amount
execute as @s[tag=Magma_Cream] run scoreboard players reset @s New_Item_Amount
execute as @s[tag=Magma_Cream] run tag @s remove Magma_Cream



execute as @s[nbt={Item:{id:"minecraft:weathered_copper_bulb"}}] run data merge entity @s {Item:{id:"minecraft:oxidized_copper_bulb"}}
execute as @s[nbt={Item:{id:"minecraft:exposed_copper_bulb"}}] run data merge entity @s {Item:{id:"minecraft:weathered_copper_bulb"}}
execute as @s[nbt={Item:{id:"minecraft:copper_bulb"}}] run data merge entity @s {Item:{id:"minecraft:exposed_copper_bulb"}}

execute as @s[nbt={Item:{id:"minecraft:weathered_copper_trapdoor"}}] run data merge entity @s {Item:{id:"minecraft:oxidized_copper_trapdoor"}}
execute as @s[nbt={Item:{id:"minecraft:exposed_copper_trapdoor"}}] run data merge entity @s {Item:{id:"minecraft:weathered_copper_trapdoor"}}
execute as @s[nbt={Item:{id:"minecraft:copper_trapdoor"}}] run data merge entity @s {Item:{id:"minecraft:exposed_copper_trapdoor"}}

execute as @s[nbt={Item:{id:"minecraft:weathered_copper_door"}}] run data merge entity @s {Item:{id:"minecraft:oxidized_copper_door"}}
execute as @s[nbt={Item:{id:"minecraft:exposed_copper_door"}}] run data merge entity @s {Item:{id:"minecraft:weathered_copper_door"}}
execute as @s[nbt={Item:{id:"minecraft:copper_door"}}] run data merge entity @s {Item:{id:"minecraft:exposed_copper_door"}}

execute as @s[nbt={Item:{id:"minecraft:weathered_cut_copper_slab"}}] run data merge entity @s {Item:{id:"minecraft:oxidized_cut_copper_slab"}}
execute as @s[nbt={Item:{id:"minecraft:exposed_cut_copper_slab"}}] run data merge entity @s {Item:{id:"minecraft:weathered_cut_copper_slab"}}
execute as @s[nbt={Item:{id:"minecraft:cut_copper_slab"}}] run data merge entity @s {Item:{id:"minecraft:exposed_cut_copper_slab"}}

execute as @s[nbt={Item:{id:"minecraft:weathered_cut_copper_stairs"}}] run data merge entity @s {Item:{id:"minecraft:oxidized_cut_copper_stairs"}}
execute as @s[nbt={Item:{id:"minecraft:exposed_cut_copper_stairs"}}] run data merge entity @s {Item:{id:"minecraft:weathered_cut_copper_stairs"}}
execute as @s[nbt={Item:{id:"minecraft:cut_copper_stairs"}}] run data merge entity @s {Item:{id:"minecraft:exposed_cut_copper_stairs"}}

execute as @s[nbt={Item:{id:"minecraft:weathered_cut_copper"}}] run data merge entity @s {Item:{id:"minecraft:oxidized_cut_copper"}}
execute as @s[nbt={Item:{id:"minecraft:exposed_cut_copper"}}] run data merge entity @s {Item:{id:"minecraft:weathered_cut_copper"}}
execute as @s[nbt={Item:{id:"minecraft:cut_copper"}}] run data merge entity @s {Item:{id:"minecraft:exposed_cut_copper"}}

execute as @s[nbt={Item:{id:"minecraft:weathered_copper_grate"}}] run data merge entity @s {Item:{id:"minecraft:oxidized_copper_grate"}}
execute as @s[nbt={Item:{id:"minecraft:exposed_copper_grate"}}] run data merge entity @s {Item:{id:"minecraft:weathered_copper_grate"}}
execute as @s[nbt={Item:{id:"minecraft:copper_grate"}}] run data merge entity @s {Item:{id:"minecraft:exposed_copper_grate"}}

execute as @s[nbt={Item:{id:"minecraft:weathered_chiseled_copper"}}] run data merge entity @s {Item:{id:"minecraft:oxidized_chiseled_copper"}}
execute as @s[nbt={Item:{id:"minecraft:exposed_chiseled_copper"}}] run data merge entity @s {Item:{id:"minecraft:weathered_chiseled_copper"}}
execute as @s[nbt={Item:{id:"minecraft:chiseled_copper"}}] run data merge entity @s {Item:{id:"minecraft:exposed_chiseled_copper"}}

execute as @s[nbt={Item:{id:"minecraft:weathered_copper"}}] run data merge entity @s {Item:{id:"minecraft:oxidized_copper"}}
execute as @s[nbt={Item:{id:"minecraft:exposed_copper"}}] run data merge entity @s {Item:{id:"minecraft:weathered_copper"}}
execute as @s[nbt={Item:{id:"minecraft:copper_block"}}] run data merge entity @s {Item:{id:"minecraft:exposed_copper"}}

scoreboard players reset @s Washing_Time