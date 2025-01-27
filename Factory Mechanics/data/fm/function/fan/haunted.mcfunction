execute as @s[nbt={Item:{id:"minecraft:sand"}}] run data merge entity @s {Item:{id:"minecraft:soul_sand"}}
execute as @s[nbt={Item:{id:"minecraft:red_sand"}}] run data merge entity @s {Item:{id:"minecraft:soul_sand"}}

execute as @s[nbt={Item:{id:"minecraft:dirt"}}] run data merge entity @s {Item:{id:"minecraft:soul_soil"}}

execute as @s[nbt={Item:{id:"minecraft:cobblestone"}}] run data merge entity @s {Item:{id:"minecraft:blackstone"}}
execute as @s[nbt={Item:{id:"minecraft:ink_sac"}}] run data merge entity @s {Item:{id:"minecraft:glow_ink_sac"}}
execute as @s[nbt={Item:{id:"minecraft:obsidian"}}] run data merge entity @s {Item:{id:"minecraft:crying_obsidian"}}

execute as @s[nbt={Item:{id:"minecraft:red_mushroom"}}] run data merge entity @s {Item:{id:"minecraft:crimson_fungus"}}
execute as @s[nbt={Item:{id:"minecraft:brown_mushroom"}}] run data merge entity @s {Item:{id:"minecraft:warped_fungus"}}
execute as @s[nbt={Item:{id:"minecraft:potion"}}] run data merge entity @s {Item:{id:"minecraft:ominous_bottle"}}
execute as @s[nbt={Item:{id:"minecraft:potato"}}] run data merge entity @s {Item:{id:"minecraft:poisonous_potato"}}
execute as @s[nbt={Item:{id:"minecraft:brick"}}] run data merge entity @s {Item:{id:"minecraft:nether_brick"}}


execute as @s[nbt={Item:{id:"minecraft:torch"}}] run data merge entity @s {Item:{id:"minecraft:soul_torch"}}
execute as @s[nbt={Item:{id:"minecraft:lantern"}}] run data merge entity @s {Item:{id:"minecraft:soul_lantern"}}
execute as @s[nbt={Item:{id:"minecraft:campfire"}}] run data merge entity @s {Item:{id:"minecraft:soul_campfire"}}

#execute as @s[nbt={Item:{id:"minecraft:poppy"}}] run data merge entity @s {Item:{id:"minecraft:wither_rose"}}
execute as @s[nbt={Item:{id:"minecraft:rose_bush"}}] run data merge entity @s {Item:{id:"minecraft:wither_rose"}}
execute as @s[nbt={Item:{id:"minecraft:skeleton_skull"}}] run data merge entity @s {Item:{id:"minecraft:wither_skeleton_skull"}}

execute as @s[nbt={Item:{id:"minecraft:rotten_flesh"}}] run data merge entity @s {Item:{id:"minecraft:leather"}}



execute as @s[nbt={Item:{id:"minecraft:iron_ingot"}}] run data merge entity @s {Item:{id:"minecraft:raw_iron"}}
execute as @s[nbt={Item:{id:"minecraft:gold_ingot"}}] run data merge entity @s {Item:{id:"minecraft:raw_gold"}}
execute as @s[nbt={Item:{id:"minecraft:copper_ingot"}}] run data merge entity @s {Item:{id:"minecraft:raw_copper"}}
execute as @s[nbt={Item:{id:"minecraft:resin_brick"}}] run data merge entity @s {Item:{id:"minecraft:resin_clump"}}



execute as @s[nbt={Item:{id:"minecraft:lapis_lazuli"}}] run tag @s add Lapis
execute as @s[tag=Lapis] store result score @s Item_Amount run data get entity @s Item.count

execute as @s[tag=Lapis,scores={Item_Amount=1..}] run function fm:fan/haunt_individual
execute as @s[tag=Lapis] store result entity @s Item.count int 1 run scoreboard players get @s New_Item_Amount
execute as @s[tag=Lapis] run data modify entity @s Item.id set value "minecraft:prismarine_shard"

execute as @s[tag=Lapis,scores={Byproduct_Item_Amount=1..}] run summon item ~ ~ ~ {Tags:["Crystals"],Item:{id:"minecraft:prismarine_crystals",count:1}}
execute at @s[tag=Lapis,scores={Byproduct_Item_Amount=1..}] as @n[type=item,tag=Crystals] store result entity @s Item.count int 1 run scoreboard players get @n[type=item,tag=Lapis] Byproduct_Item_Amount
execute at @s[tag=Lapis,scores={Byproduct_Item_Amount=1..}] run tag @n[type=item,tag=Crystals] remove Crystals

execute as @s[tag=Lapis] run scoreboard players reset @s Item_Amount
execute as @s[tag=Lapis] run scoreboard players reset @s Byproduct_Item_Amount
execute as @s[tag=Lapis] run scoreboard players reset @s New_Item_Amount
execute as @s[tag=Lapis] run tag @s remove Lapis


scoreboard players reset @s Haunting_Time