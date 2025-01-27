execute if block ~ ~ ~ #fm:saw_silk_touch_blocks run loot spawn ~ ~ ~ mine ~ ~ ~ minecraft:iron_axe[minecraft:enchantments={levels:{'minecraft:silk_touch':1}}]
setblock ~ ~ ~ air destroy

execute positioned ~ ~1 ~ if block ~ ~ ~ #fm:saw_blocks run function fm:saw/cut
execute positioned ~ ~-1 ~ if block ~ ~ ~ #fm:saw_blocks run function fm:saw/cut
execute positioned ~1 ~ ~ if block ~ ~ ~ #fm:saw_blocks run function fm:saw/cut
execute positioned ~-1 ~ ~ if block ~ ~ ~ #fm:saw_blocks run function fm:saw/cut
execute positioned ~ ~ ~1 if block ~ ~ ~ #fm:saw_blocks run function fm:saw/cut
execute positioned ~ ~ ~-1 if block ~ ~ ~ #fm:saw_blocks run function fm:saw/cut

execute positioned ~ ~1 ~1 if block ~ ~ ~ #fm:saw_blocks run function fm:saw/cut
execute positioned ~ ~1 ~-1 if block ~ ~ ~ #fm:saw_blocks run function fm:saw/cut
execute positioned ~1 ~1 ~ if block ~ ~ ~ #fm:saw_blocks run function fm:saw/cut
execute positioned ~-1 ~1 ~ if block ~ ~ ~ #fm:saw_blocks run function fm:saw/cut

execute positioned ~ ~-1 ~1 if block ~ ~ ~ #fm:saw_blocks run function fm:saw/cut
execute positioned ~ ~-1 ~-1 if block ~ ~ ~ #fm:saw_blocks run function fm:saw/cut
execute positioned ~1 ~-1 ~ if block ~ ~ ~ #fm:saw_blocks run function fm:saw/cut
execute positioned ~-1 ~-1 ~ if block ~ ~ ~ #fm:saw_blocks run function fm:saw/cut

execute positioned ~1 ~ ~1 if block ~ ~ ~ #fm:saw_blocks run function fm:saw/cut
execute positioned ~1 ~ ~-1 if block ~ ~ ~ #fm:saw_blocks run function fm:saw/cut
execute positioned ~-1 ~ ~1 if block ~ ~ ~ #fm:saw_blocks run function fm:saw/cut
execute positioned ~-1 ~ ~-1 if block ~ ~ ~ #fm:saw_blocks run function fm:saw/cut