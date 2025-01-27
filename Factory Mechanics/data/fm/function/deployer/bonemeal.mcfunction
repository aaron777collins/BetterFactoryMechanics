tag @s remove Oak_Tree
tag @s remove Spruce_Tree
tag @s remove Birch_Tree
tag @s remove Jungle_Tree
tag @s remove Acacia_Tree
tag @s remove Cherry_Tree
tag @s remove Azalea_Tree

tag @s remove Brown_Mushroom
tag @s remove Red_Mushroom
tag @s remove Warped_Fungus
tag @s remove Crimson_Fungus


execute if block ~ ~ ~ brown_mushroom if predicate maths:random_0.5 run tag @s add Brown_Mushroom
execute as @s[tag=Brown_Mushroom] run setblock ~ ~ ~ air replace
execute as @s[tag=Brown_Mushroom] run place feature minecraft:huge_brown_mushroom

execute if block ~ ~ ~ red_mushroom if predicate maths:random_0.5 run tag @s add Red_Mushroom
execute as @s[tag=Red_Mushroom] run setblock ~ ~ ~ air replace
execute as @s[tag=Red_Mushroom] run place feature minecraft:red_brown_mushroom

execute if block ~ ~ ~ warped_fungus if predicate maths:random_0.5 run tag @s add Warped_Fungus
execute as @s[tag=Warped_Fungus] run setblock ~ ~ ~ air replace
execute as @s[tag=Warped_Fungus] run place feature minecraft:warped_fungus

execute if block ~ ~ ~ crimson_fungus if predicate maths:random_0.5 run tag @s add Crimson_Fungus
execute as @s[tag=Crimson_Fungus] run setblock ~ ~ ~ air replace
execute as @s[tag=Crimson_Fungus] run place feature minecraft:crimson_fungus



execute if block ~ ~ ~ oak_sapling[stage=1] if predicate maths:random_0.5 run tag @s add Oak_Tree
execute as @s[tag=Oak_Tree] run setblock ~ ~ ~ air replace
execute as @s[tag=Oak_Tree] run place feature oak
execute if block ~ ~ ~ minecraft:oak_sapling[stage=0] run fill ~ ~ ~ ~ ~ ~ minecraft:oak_sapling[stage=1] replace minecraft:oak_sapling[stage=0]

execute if block ~ ~ ~ birch_sapling[stage=1] if predicate maths:random_0.5 run tag @s add Birch_Tree
execute as @s[tag=Birch_Tree] run setblock ~ ~ ~ air replace
execute as @s[tag=Birch_Tree] run place feature birch
execute if block ~ ~ ~ minecraft:birch_sapling[stage=0] run fill ~ ~ ~ ~ ~ ~ minecraft:birch_sapling[stage=1] replace minecraft:birch_sapling[stage=0]

execute if block ~ ~ ~ spruce_sapling[stage=1] if predicate maths:random_0.5 run tag @s add Spruce_Tree
execute as @s[tag=Spruce_Tree] run setblock ~ ~ ~ air replace
execute as @s[tag=Spruce_Tree] run place feature spruce
execute if block ~ ~ ~ minecraft:spruce_sapling[stage=0] run fill ~ ~ ~ ~ ~ ~ minecraft:spruce_sapling[stage=1] replace minecraft:spruce_sapling[stage=0]

execute if block ~ ~ ~ acacia_sapling[stage=1] if predicate maths:random_0.5 run tag @s add Acacia_Tree
execute as @s[tag=Acacia_Tree] run setblock ~ ~ ~ air replace
execute as @s[tag=Acacia_Tree] run place feature acacia ~ ~1 ~
execute as @s[tag=Acacia_Tree] run setblock ~ ~ ~ acacia_log replace
execute if block ~ ~ ~ minecraft:acacia_sapling[stage=0] run fill ~ ~ ~ ~ ~ ~ minecraft:acacia_sapling[stage=1] replace minecraft:acacia_sapling[stage=0]

execute if block ~ ~ ~ cherry_sapling[stage=1] if predicate maths:random_0.5 run tag @s add Cherry_Tree
execute as @s[tag=Cherry_Tree] run setblock ~ ~ ~ air replace
execute as @s[tag=Cherry_Tree] run place feature cherry ~ ~1 ~
execute as @s[tag=Cherry_Tree] run setblock ~ ~ ~ cherry_log replace
execute if block ~ ~ ~ minecraft:cherry_sapling[stage=0] run fill ~ ~ ~ ~ ~ ~ minecraft:cherry_sapling[stage=1] replace minecraft:cherry_sapling[stage=0]


execute if block ~ ~ ~ jungle_sapling[stage=1] if predicate maths:random_0.5 run tag @s add Jungle_Tree
execute as @s[tag=Jungle_Tree] run setblock ~ ~ ~ air replace
execute as @s[tag=Jungle_Tree] run place feature jungle_tree
execute if block ~ ~ ~ minecraft:jungle_sapling[stage=0] run fill ~ ~ ~ ~ ~ ~ minecraft:jungle_sapling[stage=1] replace minecraft:jungle_sapling[stage=0]


execute if block ~ ~ ~ azalea if predicate maths:random_0.75 run tag @s add Azalea_Tree
execute if block ~ ~ ~ flowering_azalea run tag @s add Azalea_Tree
execute as @s[tag=Azalea_Tree] run setblock ~ ~ ~ air replace
execute as @s[tag=Azalea_Tree] run place feature azalea_tree

execute if block ~ ~ ~ minecraft:cave_vines run fill ~ ~ ~ ~ ~ ~ minecraft:cave_vines[berries=true] replace minecraft:cave_vines[berries=false]
execute if block ~ ~ ~ minecraft:cave_vines_plant run fill ~ ~ ~ ~ ~ ~ minecraft:cave_vines_plant[berries=true] replace minecraft:cave_vines_plant[berries=false]

execute if block ~ ~ ~ minecraft:cocoa run fill ~ ~ ~ ~ ~ ~ cocoa[age=2,facing=west] replace minecraft:cocoa[age=1,facing=west]
execute if block ~ ~ ~ minecraft:cocoa run fill ~ ~ ~ ~ ~ ~ minecraft:cocoa[age=1,facing=west] replace minecraft:cocoa[age=0,facing=west]
execute if block ~ ~ ~ minecraft:cocoa run fill ~ ~ ~ ~ ~ ~ cocoa[age=2,facing=east] replace minecraft:cocoa[age=1,facing=east]
execute if block ~ ~ ~ minecraft:cocoa run fill ~ ~ ~ ~ ~ ~ minecraft:cocoa[age=1,facing=east] replace minecraft:cocoa[age=0,facing=east]
execute if block ~ ~ ~ minecraft:cocoa run fill ~ ~ ~ ~ ~ ~ cocoa[age=2,facing=south] replace minecraft:cocoa[age=1,facing=south]
execute if block ~ ~ ~ minecraft:cocoa run fill ~ ~ ~ ~ ~ ~ minecraft:cocoa[age=1,facing=south] replace minecraft:cocoa[age=0,facing=south]
execute if block ~ ~ ~ minecraft:cocoa run fill ~ ~ ~ ~ ~ ~ cocoa[age=2,facing=north] replace minecraft:cocoa[age=1,facing=north]
execute if block ~ ~ ~ minecraft:cocoa run fill ~ ~ ~ ~ ~ ~ minecraft:cocoa[age=1,facing=north] replace minecraft:cocoa[age=0,facing=north]

execute if block ~ ~ ~ minecraft:sweet_berry_bush run fill ~ ~ ~ ~ ~ ~ minecraft:sweet_berry_bush[age=3] replace minecraft:sweet_berry_bush[age=2]
execute if block ~ ~ ~ minecraft:sweet_berry_bush run fill ~ ~ ~ ~ ~ ~ minecraft:sweet_berry_bush[age=2] replace minecraft:sweet_berry_bush[age=1]
execute if block ~ ~ ~ minecraft:sweet_berry_bush run fill ~ ~ ~ ~ ~ ~ minecraft:sweet_berry_bush[age=1] replace minecraft:sweet_berry_bush[age=0]

execute if block ~ ~ ~ minecraft:beetroots run fill ~ ~ ~ ~ ~ ~ minecraft:beetroots[age=3] replace minecraft:beetroots[age=2]
execute if block ~ ~ ~ minecraft:beetroots run fill ~ ~ ~ ~ ~ ~ minecraft:beetroots[age=2] replace minecraft:beetroots[age=1]
execute if block ~ ~ ~ minecraft:beetroots run fill ~ ~ ~ ~ ~ ~ minecraft:beetroots[age=1] replace minecraft:beetroots[age=0]

execute if block ~ ~ ~ minecraft:wheat run fill ~ ~ ~ ~ ~ ~ minecraft:wheat[age=7] replace minecraft:wheat[age=6]
execute if block ~ ~ ~ minecraft:wheat run fill ~ ~ ~ ~ ~ ~ minecraft:wheat[age=7] replace minecraft:wheat[age=5]
execute if block ~ ~ ~ minecraft:wheat run fill ~ ~ ~ ~ ~ ~ minecraft:wheat[age=5] replace minecraft:wheat[age=4]
execute if block ~ ~ ~ minecraft:wheat run fill ~ ~ ~ ~ ~ ~ minecraft:wheat[age=5] replace minecraft:wheat[age=3]
execute if block ~ ~ ~ minecraft:wheat run fill ~ ~ ~ ~ ~ ~ minecraft:wheat[age=5] replace minecraft:wheat[age=2]
execute if block ~ ~ ~ minecraft:wheat run fill ~ ~ ~ ~ ~ ~ minecraft:wheat[age=3] replace minecraft:wheat[age=1]
execute if block ~ ~ ~ minecraft:wheat run fill ~ ~ ~ ~ ~ ~ minecraft:wheat[age=3] replace minecraft:wheat[age=0]

execute if block ~ ~ ~ minecraft:carrots run fill ~ ~ ~ ~ ~ ~ minecraft:carrots[age=7] replace minecraft:carrots[age=6]
execute if block ~ ~ ~ minecraft:carrots run fill ~ ~ ~ ~ ~ ~ minecraft:carrots[age=7] replace minecraft:carrots[age=5]
execute if block ~ ~ ~ minecraft:carrots run fill ~ ~ ~ ~ ~ ~ minecraft:carrots[age=5] replace minecraft:carrots[age=4]
execute if block ~ ~ ~ minecraft:carrots run fill ~ ~ ~ ~ ~ ~ minecraft:carrots[age=5] replace minecraft:carrots[age=3]
execute if block ~ ~ ~ minecraft:carrots run fill ~ ~ ~ ~ ~ ~ minecraft:carrots[age=5] replace minecraft:carrots[age=2]
execute if block ~ ~ ~ minecraft:carrots run fill ~ ~ ~ ~ ~ ~ minecraft:carrots[age=3] replace minecraft:carrots[age=1]
execute if block ~ ~ ~ minecraft:carrots run fill ~ ~ ~ ~ ~ ~ minecraft:carrots[age=3] replace minecraft:carrots[age=0]

execute if block ~ ~ ~ minecraft:potatoes run fill ~ ~ ~ ~ ~ ~ minecraft:potatoes[age=7] replace minecraft:potatoes[age=6]
execute if block ~ ~ ~ minecraft:potatoes run fill ~ ~ ~ ~ ~ ~ minecraft:potatoes[age=7] replace minecraft:potatoes[age=5]
execute if block ~ ~ ~ minecraft:potatoes run fill ~ ~ ~ ~ ~ ~ minecraft:potatoes[age=5] replace minecraft:potatoes[age=4]
execute if block ~ ~ ~ minecraft:potatoes run fill ~ ~ ~ ~ ~ ~ minecraft:potatoes[age=5] replace minecraft:potatoes[age=3]
execute if block ~ ~ ~ minecraft:potatoes run fill ~ ~ ~ ~ ~ ~ minecraft:potatoes[age=5] replace minecraft:potatoes[age=2]
execute if block ~ ~ ~ minecraft:potatoes run fill ~ ~ ~ ~ ~ ~ minecraft:potatoes[age=3] replace minecraft:potatoes[age=1]
execute if block ~ ~ ~ minecraft:potatoes run fill ~ ~ ~ ~ ~ ~ minecraft:potatoes[age=3] replace minecraft:potatoes[age=0]

execute if block ~ ~ ~ minecraft:melon_stem run fill ~ ~ ~ ~ ~ ~ minecraft:melon_stem[age=7] replace minecraft:melon_stem[age=6]
execute if block ~ ~ ~ minecraft:melon_stem run fill ~ ~ ~ ~ ~ ~ minecraft:melon_stem[age=7] replace minecraft:melon_stem[age=5]
execute if block ~ ~ ~ minecraft:melon_stem run fill ~ ~ ~ ~ ~ ~ minecraft:melon_stem[age=5] replace minecraft:melon_stem[age=4]
execute if block ~ ~ ~ minecraft:melon_stem run fill ~ ~ ~ ~ ~ ~ minecraft:melon_stem[age=5] replace minecraft:melon_stem[age=3]
execute if block ~ ~ ~ minecraft:melon_stem run fill ~ ~ ~ ~ ~ ~ minecraft:melon_stem[age=5] replace minecraft:melon_stem[age=2]
execute if block ~ ~ ~ minecraft:melon_stem run fill ~ ~ ~ ~ ~ ~ minecraft:melon_stem[age=3] replace minecraft:melon_stem[age=1]
execute if block ~ ~ ~ minecraft:melon_stem run fill ~ ~ ~ ~ ~ ~ minecraft:melon_stem[age=3] replace minecraft:melon_stem[age=0]

execute if block ~ ~ ~ minecraft:pumpkin_stem run fill ~ ~ ~ ~ ~ ~ minecraft:pumpkin_stem[age=7] replace minecraft:pumpkin_stem[age=6]
execute if block ~ ~ ~ minecraft:pumpkin_stem run fill ~ ~ ~ ~ ~ ~ minecraft:pumpkin_stem[age=7] replace minecraft:pumpkin_stem[age=5]
execute if block ~ ~ ~ minecraft:pumpkin_stem run fill ~ ~ ~ ~ ~ ~ minecraft:pumpkin_stem[age=5] replace minecraft:pumpkin_stem[age=4]
execute if block ~ ~ ~ minecraft:pumpkin_stem run fill ~ ~ ~ ~ ~ ~ minecraft:pumpkin_stem[age=5] replace minecraft:pumpkin_stem[age=3]
execute if block ~ ~ ~ minecraft:pumpkin_stem run fill ~ ~ ~ ~ ~ ~ minecraft:pumpkin_stem[age=5] replace minecraft:pumpkin_stem[age=2]
execute if block ~ ~ ~ minecraft:pumpkin_stem run fill ~ ~ ~ ~ ~ ~ minecraft:pumpkin_stem[age=3] replace minecraft:pumpkin_stem[age=1]
execute if block ~ ~ ~ minecraft:pumpkin_stem run fill ~ ~ ~ ~ ~ ~ minecraft:pumpkin_stem[age=3] replace minecraft:pumpkin_stem[age=0]



execute if block ~ ~ ~ minecraft:pink_petals run fill ~ ~ ~ ~ ~ ~ minecraft:pink_petals[flower_amount=4] replace minecraft:pink_petals[flower_amount=3]
execute if block ~ ~ ~ minecraft:pink_petals run fill ~ ~ ~ ~ ~ ~ minecraft:pink_petals[flower_amount=3] replace minecraft:pink_petals[flower_amount=2]
execute if block ~ ~ ~ minecraft:pink_petals run fill ~ ~ ~ ~ ~ ~ minecraft:pink_petals[flower_amount=2] replace minecraft:pink_petals[flower_amount=1]

playsound minecraft:item.bone_meal.use block @a[distance=..20] ~ ~ ~
execute unless block ~ ~ ~ minecraft:pink_petals run particle minecraft:happy_villager ~ ~ ~ 0.25 0.25 0.25 0.5 20
execute if block ~ ~ ~ minecraft:pink_petals align xyz positioned ~0.5 ~ ~0.5 run particle minecraft:happy_villager ~ ~ ~ 0.25 0.1 0.25 0.5 20
tag @s add Done_Action