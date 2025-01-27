function fm:press/press_particle with entity @s Item

execute if entity @s[nbt={Item:{id:"minecraft:sugar_cane"}}] run data modify entity @s Item.id set value "minecraft:paper"
execute if entity @s[nbt={Item:{id:"minecraft:bamboo"}}] run data modify entity @s Item.id set value "minecraft:paper"
execute if block ~ ~-1 ~ minecraft:wet_sponge if entity @s[nbt={Item:{id:"minecraft:clay"}}] run data modify entity @s Item.id set value "minecraft:dripstone_block"

#execute if block ~ ~-1 ~ minecraft:blue_ice if entity @s[nbt={Item:{id:"minecraft:magma_block"}}] run data modify entity @s Item.id set value "minecraft:basalt"

execute if entity @s[nbt={Item:{id:"minecraft:soul_sand"}}] run playsound minecraft:particle.soul_escape block @a ~ ~ ~ 1
execute if entity @s[nbt={Item:{id:"minecraft:soul_sand"}}] run data modify entity @s Item.id set value "minecraft:sand"

#execute if block ~ ~ ~ minecraft:powder_snow_cauldron if entity @s[nbt={Item:{id:"minecraft:magma_block"}}] run data modify entity @s Item.id set value "minecraft:basalt"

#execute if block ~ ~-1 ~ minecraft:magma_block if entity @s[nbt={Item:{id:"minecraft:gravel"}}] run data modify entity @s Item.id set value "minecraft:andesite"

execute if block ~ ~-1 ~ minecraft:magma_block if entity @s[nbt={Item:{id:"minecraft:calcite"}}] run data modify entity @s Item.id set value "minecraft:diorite"

execute if block ~ ~-1 ~ minecraft:magma_block if entity @s[nbt={Item:{id:"minecraft:red_sand"}}] run data modify entity @s Item.id set value "minecraft:granite"

execute if block ~ ~-1 ~ minecraft:magma_block if entity @s[nbt={Item:{id:"minecraft:bone_block"}}] run data modify entity @s Item.id set value "minecraft:calcite"


#execute if entity @s[nbt={Item:{id:"minecraft:raw_iron"}}] run tag @s add Raw_Redstone
#execute if entity @s[tag=Raw_Redstone] store result score @s Item_Amount run data get entity @s Item.count
#execute if entity @s[tag=Raw_Redstone,scores={Item_Amount=1..}] run function fm:press/press_individual
#execute if entity @s[tag=Raw_Redstone,scores={New_Item_Amount=0}] run kill @s
#execute if entity @s[tag=Raw_Redstone] store result entity @s Item.count int 1 run scoreboard players get @s New_Item_Amount
#execute if entity @s[tag=Raw_Redstone] run data modify entity @s Item.id set value "minecraft:redstone"
#execute if entity @s[tag=Raw_Redstone] run scoreboard players reset @s Item_Amount
#execute if entity @s[tag=Raw_Redstone] run scoreboard players reset @s New_Item_Amount
#execute if entity @s[tag=Raw_Redstone] run tag @s remove Raw_Redstone



execute if block ~ ~-1 ~ minecraft:honeycomb_block if entity @s[nbt={Item:{id:"minecraft:honey_bottle"}}] run tag @s add Honeycomb
execute if entity @s[tag=Honeycomb] store result score @s Item_Amount run data get entity @s Item.count
execute if entity @s[tag=Honeycomb] run data modify entity @s Item.id set value "minecraft:honeycomb"
execute if entity @s[tag=Honeycomb] run summon item ~ ~ ~ {Tags:["Glass"],Item:{id:"minecraft:glass_bottle",count:1}}
execute if entity @s[tag=Honeycomb] as @n[type=item,tag=Glass] store result entity @s Item.count int 1 run scoreboard players get @n[type=item,tag=Honeycomb] Item_Amount
execute if entity @s[tag=Honeycomb] run tag @n[type=item,tag=Glass] remove Glass
execute if entity @s[tag=Honeycomb] run scoreboard players reset @s Item_Amount
execute if entity @s[tag=Honeycomb] run tag @s remove Honeycomb



execute if block ~ ~-1 ~ minecraft:magma_block if entity @s[nbt={Item:{id:"minecraft:gravel"}}] run tag @s add Four
execute if entity @s[tag=Four] store result score @s Item_Amount run data get entity @s Item.count
execute if entity @s[tag=Four,scores={Item_Amount=1..3}] run tag @s remove Four
execute if entity @s[tag=Four,scores={Item_Amount=4..}] run function fm:press/press_individual
execute if entity @s[tag=Four] store result entity @s Item.count int 1 run scoreboard players get @s New_Item_Amount
execute if entity @s[tag=Four] run data modify entity @s Item.id set value "minecraft:cobblestone"

execute if entity @s[tag=Four,scores={Item_Amount=1..3}] run summon item ~ ~ ~ {Tags:["Leftover"],Item:{id:"minecraft:gravel",count:1}}
execute if entity @s[tag=Four,scores={Item_Amount=1..3}] as @n[type=item,tag=Leftover] store result entity @s Item.count int 1 run scoreboard players get @n[type=item,tag=Four] Item_Amount
execute if entity @s[tag=Four,scores={Item_Amount=1..3}] run tag @n[type=item,tag=Leftover] remove Leftover
execute if entity @s[tag=Four] run scoreboard players reset @s Item_Amount
execute if entity @s[tag=Four] run scoreboard players reset @s New_Item_Amount
execute if entity @s[tag=Four] run tag @s remove Four



execute if block ~ ~-1 ~ minecraft:magma_block if entity @s[nbt={Item:{id:"minecraft:cobblestone"}}] run tag @s add Four
execute if entity @s[tag=Four] store result score @s Item_Amount run data get entity @s Item.count
execute if entity @s[tag=Four,scores={Item_Amount=1..3}] run tag @s remove Four
execute if entity @s[tag=Four,scores={Item_Amount=4..}] run function fm:press/press_individual
execute if entity @s[tag=Four] store result entity @s Item.count int 1 run scoreboard players get @s New_Item_Amount
execute if entity @s[tag=Four] run data modify entity @s Item.id set value "minecraft:cobbled_deepslate"

execute if entity @s[tag=Four,scores={Item_Amount=1..3}] run summon item ~ ~ ~ {Tags:["Leftover"],Item:{id:"minecraft:cobblestone",count:1}}
execute if entity @s[tag=Four,scores={Item_Amount=1..3}] as @n[type=item,tag=Leftover] store result entity @s Item.count int 1 run scoreboard players get @n[type=item,tag=Four] Item_Amount
execute if entity @s[tag=Four,scores={Item_Amount=1..3}] run tag @n[type=item,tag=Leftover] remove Leftover
execute if entity @s[tag=Four] run scoreboard players reset @s Item_Amount
execute if entity @s[tag=Four] run scoreboard players reset @s New_Item_Amount
execute if entity @s[tag=Four] run tag @s remove Four


execute if block ~ ~-1 ~ minecraft:magma_block if entity @s[nbt={Item:{id:"minecraft:blaze_powder"}}] run tag @s add Six
execute if entity @s[tag=Six] store result score @s Item_Amount run data get entity @s Item.count
execute if entity @s[tag=Six,scores={Item_Amount=1..5}] run tag @s remove Six
execute if entity @s[tag=Six,scores={Item_Amount=6..}] run function fm:press/press_individual
execute if entity @s[tag=Six] store result entity @s Item.count int 1 run scoreboard players get @s New_Item_Amount
execute if entity @s[tag=Six] run data modify entity @s Item.id set value "minecraft:blaze_rod"

execute if entity @s[tag=Six,scores={Item_Amount=1..5}] run summon item ~ ~ ~ {Tags:["Leftover"],Item:{id:"minecraft:blaze_powder",count:1}}
execute if entity @s[tag=Six,scores={Item_Amount=1..5}] as @n[type=item,tag=Leftover] store result entity @s Item.count int 1 run scoreboard players get @n[type=item,tag=Six] Item_Amount
execute if entity @s[tag=Six,scores={Item_Amount=1..5}] run tag @n[type=item,tag=Leftover] remove Leftover
execute if entity @s[tag=Six] run scoreboard players reset @s Item_Amount
execute if entity @s[tag=Six] run scoreboard players reset @s New_Item_Amount
execute if entity @s[tag=Six] run tag @s remove Six


execute if entity @s[nbt={Item:{id:"minecraft:wind_charge"}}] run tag @s add Six
execute if entity @s[tag=Six] store result score @s Item_Amount run data get entity @s Item.count
execute if entity @s[tag=Six,scores={Item_Amount=1..5}] run tag @s remove Six
execute if entity @s[tag=Six,scores={Item_Amount=6..}] run function fm:press/press_individual
execute if entity @s[tag=Six] store result entity @s Item.count int 1 run scoreboard players get @s New_Item_Amount
execute if entity @s[tag=Six] run data modify entity @s Item.id set value "minecraft:breeze_rod"

execute if entity @s[tag=Six,scores={Item_Amount=1..5}] run summon item ~ ~ ~ {Tags:["Leftover"],Item:{id:"minecraft:wind_charge",count:1}}
execute if entity @s[tag=Six,scores={Item_Amount=1..5}] as @n[type=item,tag=Leftover] store result entity @s Item.count int 1 run scoreboard players get @n[type=item,tag=Six] Item_Amount
execute if entity @s[tag=Six,scores={Item_Amount=1..5}] run tag @n[type=item,tag=Leftover] remove Leftover
execute if entity @s[tag=Six] run scoreboard players reset @s Item_Amount
execute if entity @s[tag=Six] run scoreboard players reset @s New_Item_Amount
execute if entity @s[tag=Six] run tag @s remove Six