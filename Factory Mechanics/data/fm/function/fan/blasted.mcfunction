execute as @s[nbt={Item:{id:"minecraft:raw_iron"}}] run data merge entity @s {Item:{id:"minecraft:iron_ingot"}}
execute as @s[nbt={Item:{id:"minecraft:raw_copper"}}] run data merge entity @s {Item:{id:"minecraft:copper_ingot"}}
execute as @s[nbt={Item:{id:"minecraft:raw_gold"}}] run data merge entity @s {Item:{id:"minecraft:gold_ingot"}}
execute as @s[nbt={Item:{id:"minecraft:raw_iron_block"}}] run data merge entity @s {Item:{id:"minecraft:iron_block"}}
execute as @s[nbt={Item:{id:"minecraft:raw_copper_block"}}] run data merge entity @s {Item:{id:"minecraft:copper_block"}}
execute as @s[nbt={Item:{id:"minecraft:raw_gold_block"}}] run data merge entity @s {Item:{id:"minecraft:gold_block"}}

execute as @s[nbt={Item:{id:"minecraft:iron_ore"}}] run data merge entity @s {Item:{id:"minecraft:iron_ingot"}}
execute as @s[nbt={Item:{id:"minecraft:copper_ore"}}] run data merge entity @s {Item:{id:"minecraft:copper_ingot"}}
execute as @s[nbt={Item:{id:"minecraft:gold_ore"}}] run data merge entity @s {Item:{id:"minecraft:gold_ingot"}}
execute as @s[nbt={Item:{id:"minecraft:nether_gold_ore"}}] run data merge entity @s {Item:{id:"minecraft:gold_ingot"}}
execute as @s[nbt={Item:{id:"minecraft:ancient_debris"}}] run data merge entity @s {Item:{id:"minecraft:netherite_scrap"}}
execute as @s[nbt={Item:{id:"minecraft:diamond_ore"}}] run data merge entity @s {Item:{id:"minecraft:diamond"}}
execute as @s[nbt={Item:{id:"minecraft:emerald_ore"}}] run data merge entity @s {Item:{id:"minecraft:emerald"}}
execute as @s[nbt={Item:{id:"minecraft:lapis_ore"}}] run data merge entity @s {Item:{id:"minecraft:lapis_lazuli"}}
execute as @s[nbt={Item:{id:"minecraft:redstone_ore"}}] run data merge entity @s {Item:{id:"minecraft:redstone"}}
execute as @s[nbt={Item:{id:"minecraft:coal_ore"}}] run data merge entity @s {Item:{id:"minecraft:coal"}}
execute as @s[nbt={Item:{id:"minecraft:nether_quartz_ore"}}] run data merge entity @s {Item:{id:"minecraft:quartz"}}
execute as @s[nbt={Item:{id:"minecraft:deepslate_iron_ore"}}] run data merge entity @s {Item:{id:"minecraft:iron_ingot"}}
execute as @s[nbt={Item:{id:"minecraft:deepslate_copper_ore"}}] run data merge entity @s {Item:{id:"minecraft:copper_ingot"}}
execute as @s[nbt={Item:{id:"minecraft:deepslate_gold_ore"}}] run data merge entity @s {Item:{id:"minecraft:gold_ingot"}}
execute as @s[nbt={Item:{id:"minecraft:deepslate_diamond_ore"}}] run data merge entity @s {Item:{id:"minecraft:diamond"}}
execute as @s[nbt={Item:{id:"minecraft:deepslate_emerald_ore"}}] run data merge entity @s {Item:{id:"minecraft:emerald"}}
execute as @s[nbt={Item:{id:"minecraft:deepslate_lapis_ore"}}] run data merge entity @s {Item:{id:"minecraft:lapis_lazuli"}}
execute as @s[nbt={Item:{id:"minecraft:deepslate_redstone_ore"}}] run data merge entity @s {Item:{id:"minecraft:redstone"}}
execute as @s[nbt={Item:{id:"minecraft:deepslate_coal_ore"}}] run data merge entity @s {Item:{id:"minecraft:coal"}}

execute as @s[nbt={Item:{id:"minecraft:stone"}}] run data merge entity @s {Item:{id:"minecraft:smooth_stone"}}
execute as @s[nbt={Item:{id:"minecraft:sand"}}] run data merge entity @s {Item:{id:"minecraft:glass"}}
execute as @s[nbt={Item:{id:"minecraft:cobblestone"}}] run data merge entity @s {Item:{id:"minecraft:stone"}}
execute as @s[nbt={Item:{id:"minecraft:cobbled_deepslate"}}] run data merge entity @s {Item:{id:"minecraft:deepslate"}}

execute as @s[nbt={Item:{id:"minecraft:clay_ball"}}] run data merge entity @s {Item:{id:"minecraft:brick"}}
execute as @s[nbt={Item:{id:"minecraft:clay"}}] run data merge entity @s {Item:{id:"minecraft:terracotta"}}
execute as @s[nbt={Item:{id:"minecraft:quartz_block"}}] run data merge entity @s {Item:{id:"minecraft:smooth_quartz_block"}}
execute as @s[nbt={Item:{id:"minecraft:resin_clump"}}] run data merge entity @s {Item:{id:"minecraft:resin_brick"}}

execute if predicate fm:charcoal_blocks run data merge entity @s {Item:{id:"minecraft:charcoal"}}

execute as @s[nbt={Item:{id:"minecraft:calcite"}}] run tag @s add Calcite_Lapis
execute as @s[tag=Calcite_Lapis] store result score @s Item_Amount run data get entity @s Item.count

execute as @s[tag=Calcite_Lapis,scores={Item_Amount=1..}] run function fm:fan/blast_individual
execute as @s[tag=Calcite_Lapis] store result entity @s Item.count int 1 run scoreboard players get @s New_Item_Amount
execute as @s[tag=Calcite_Lapis] run data modify entity @s Item.id set value "minecraft:lapis_lazuli"

execute as @s[tag=Calcite_Lapis] run scoreboard players reset @s Item_Amount
execute as @s[tag=Calcite_Lapis] run scoreboard players reset @s New_Item_Amount
execute as @s[tag=Calcite_Lapis] run tag @s remove Calcite_Lapis

scoreboard players reset @s Blasting_Time