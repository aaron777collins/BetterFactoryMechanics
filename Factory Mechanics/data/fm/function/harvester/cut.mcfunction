loot spawn ~ ~ ~ mine ~ ~ ~ minecraft:shears
setblock ~ ~ ~ air destroy

execute positioned ~ ~1 ~ if block ~ ~ ~ #minecraft:leaves run function fm:harvester/cut
execute positioned ~ ~-1 ~ if block ~ ~ ~ #minecraft:leaves run function fm:harvester/cut
execute positioned ~1 ~ ~ if block ~ ~ ~ #minecraft:leaves run function fm:harvester/cut
execute positioned ~-1 ~ ~ if block ~ ~ ~ #minecraft:leaves run function fm:harvester/cut
execute positioned ~ ~ ~1 if block ~ ~ ~ #minecraft:leaves run function fm:harvester/cut
execute positioned ~ ~ ~-1 if block ~ ~ ~ #minecraft:leaves run function fm:harvester/cut

execute positioned ~ ~1 ~1 if block ~ ~ ~ #minecraft:leaves run function fm:harvester/cut
execute positioned ~ ~1 ~-1 if block ~ ~ ~ #minecraft:leaves run function fm:harvester/cut
execute positioned ~1 ~1 ~ if block ~ ~ ~ #minecraft:leaves run function fm:harvester/cut
execute positioned ~-1 ~1 ~ if block ~ ~ ~ #minecraft:leaves run function fm:harvester/cut

execute positioned ~ ~-1 ~1 if block ~ ~ ~ #minecraft:leaves run function fm:harvester/cut
execute positioned ~ ~-1 ~-1 if block ~ ~ ~ #minecraft:leaves run function fm:harvester/cut
execute positioned ~1 ~-1 ~ if block ~ ~ ~ #minecraft:leaves run function fm:harvester/cut
execute positioned ~-1 ~-1 ~ if block ~ ~ ~ #minecraft:leaves run function fm:harvester/cut

execute positioned ~1 ~ ~1 if block ~ ~ ~ #minecraft:leaves run function fm:harvester/cut
execute positioned ~1 ~ ~-1 if block ~ ~ ~ #minecraft:leaves run function fm:harvester/cut
execute positioned ~-1 ~ ~1 if block ~ ~ ~ #minecraft:leaves run function fm:harvester/cut
execute positioned ~-1 ~ ~-1 if block ~ ~ ~ #minecraft:leaves run function fm:harvester/cut

execute positioned ~ ~1 ~ if block ~ ~ ~ minecraft:cobweb run function fm:harvester/cut
execute positioned ~ ~-1 ~ if block ~ ~ ~ minecraft:cobweb run function fm:harvester/cut
execute positioned ~1 ~ ~ if block ~ ~ ~ minecraft:cobweb run function fm:harvester/cut
execute positioned ~-1 ~ ~ if block ~ ~ ~ minecraft:cobweb run function fm:harvester/cut
execute positioned ~ ~ ~1 if block ~ ~ ~ minecraft:cobweb run function fm:harvester/cut
execute positioned ~ ~ ~-1 if block ~ ~ ~ minecraft:cobweb run function fm:harvester/cut

execute positioned ~ ~1 ~1 if block ~ ~ ~ minecraft:cobweb run function fm:harvester/cut
execute positioned ~ ~1 ~-1 if block ~ ~ ~ minecraft:cobweb run function fm:harvester/cut
execute positioned ~1 ~1 ~ if block ~ ~ ~ minecraft:cobweb run function fm:harvester/cut
execute positioned ~-1 ~1 ~ if block ~ ~ ~ minecraft:cobweb run function fm:harvester/cut

execute positioned ~ ~-1 ~1 if block ~ ~ ~ minecraft:cobweb run function fm:harvester/cut
execute positioned ~ ~-1 ~-1 if block ~ ~ ~ minecraft:cobweb run function fm:harvester/cut
execute positioned ~1 ~-1 ~ if block ~ ~ ~ minecraft:cobweb run function fm:harvester/cut
execute positioned ~-1 ~-1 ~ if block ~ ~ ~ minecraft:cobweb run function fm:harvester/cut

execute positioned ~1 ~ ~1 if block ~ ~ ~ minecraft:cobweb run function fm:harvester/cut
execute positioned ~1 ~ ~-1 if block ~ ~ ~ minecraft:cobweb run function fm:harvester/cut
execute positioned ~-1 ~ ~1 if block ~ ~ ~ minecraft:cobweb run function fm:harvester/cut
execute positioned ~-1 ~ ~-1 if block ~ ~ ~ minecraft:cobweb run function fm:harvester/cut