execute if block ~ ~ ~ minecraft:copper_block run setblock ~ ~ ~ minecraft:waxed_copper_block
execute if block ~ ~ ~ minecraft:cut_copper run setblock ~ ~ ~ minecraft:waxed_cut_copper

execute if block ~ ~ ~ minecraft:cut_copper_slab[type=double] run setblock ~ ~ ~ minecraft:waxed_cut_copper_slab[type=double]
execute if block ~ ~ ~ minecraft:cut_copper_slab[type=top] run setblock ~ ~ ~ minecraft:waxed_cut_copper_slab[type=top]
execute if block ~ ~ ~ minecraft:cut_copper_slab[type=bottom] run setblock ~ ~ ~ minecraft:waxed_cut_copper_slab[type=bottom]

execute if block ~ ~ ~ minecraft:cut_copper_stairs run setblock ~ ~ ~ minecraft:waxed_cut_copper_stairs

execute if block ~ ~ ~ minecraft:exposed_copper run setblock ~ ~ ~ minecraft:waxed_exposed_copper
execute if block ~ ~ ~ minecraft:exposed_cut_copper run setblock ~ ~ ~ minecraft:waxed_exposed_cut_copper

execute if block ~ ~ ~ minecraft:exposed_cut_copper_slab[type=double] run setblock ~ ~ ~ minecraft:waxed_exposed_cut_copper_slab[type=double]
execute if block ~ ~ ~ minecraft:exposed_cut_copper_slab[type=top] run setblock ~ ~ ~ minecraft:waxed_exposed_cut_copper_slab[type=top]
execute if block ~ ~ ~ minecraft:exposed_cut_copper_slab[type=bottom] run setblock ~ ~ ~ minecraft:waxed_exposed_cut_copper_slab[type=bottom]

execute if block ~ ~ ~ minecraft:exposed_cut_copper_stairs run setblock ~ ~ ~ minecraft:waxed_exposed_cut_copper_stairs

execute if block ~ ~ ~ minecraft:oxidized_copper run setblock ~ ~ ~ minecraft:waxed_oxidized_copper
execute if block ~ ~ ~ minecraft:oxidized_cut_copper run setblock ~ ~ ~ minecraft:waxed_oxidized_cut_copper

execute if block ~ ~ ~ minecraft:oxidized_cut_copper_slab[type=double] run setblock ~ ~ ~ minecraft:waxed_oxidized_cut_copper_slab[type=double]
execute if block ~ ~ ~ minecraft:oxidized_cut_copper_slab[type=top] run setblock ~ ~ ~ minecraft:waxed_oxidized_cut_copper_slab[type=top]
execute if block ~ ~ ~ minecraft:oxidized_cut_copper_slab[type=bottom] run setblock ~ ~ ~ minecraft:waxed_oxidized_cut_copper_slab[type=bottom]

execute if block ~ ~ ~ minecraft:oxidized_cut_copper_stairs run setblock ~ ~ ~ minecraft:waxed_oxidized_cut_copper_stairs

execute if block ~ ~ ~ minecraft:weathered_copper run setblock ~ ~ ~ minecraft:waxed_weathered_copper
execute if block ~ ~ ~ minecraft:weathered_cut_copper run setblock ~ ~ ~ minecraft:waxed_weathered_cut_copper

execute if block ~ ~ ~ minecraft:weathered_cut_copper_slab[type=double] run setblock ~ ~ ~ minecraft:waxed_weathered_cut_copper_slab[type=double]
execute if block ~ ~ ~ minecraft:weathered_cut_copper_slab[type=top] run setblock ~ ~ ~ minecraft:waxed_weathered_cut_copper_slab[type=top]
execute if block ~ ~ ~ minecraft:weathered_cut_copper_slab[type=bottom] run setblock ~ ~ ~ minecraft:waxed_weathered_cut_copper_slab[type=bottom]

execute if block ~ ~ ~ minecraft:weathered_cut_copper_stairs run setblock ~ ~ ~ minecraft:waxed_weathered_cut_copper_stairs

particle minecraft:wax_on ~ ~ ~ 0.3 0.3 0.3 0.5 50
tag @s add Done_Action