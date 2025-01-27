fill ~ ~ ~ ~ ~ ~ minecraft:hopper replace smooth_stone_slab
execute if block ~ ~ ~ minecraft:hopper[enabled=false] run tag @s add Powered
execute if block ~ ~ ~ minecraft:hopper[enabled=true] run tag @s remove Powered
fill ~ ~ ~ ~ ~ ~ minecraft:smooth_stone_slab replace hopper