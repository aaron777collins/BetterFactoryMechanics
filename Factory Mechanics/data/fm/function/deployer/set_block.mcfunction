$setblock ^ ^ ^2.5 $(id)
execute positioned ^ ^ ^2.5 if block ~ ~ ~ cocoa if block ~ ~ ~1 #minecraft:jungle_logs run setblock ~ ~ ~ cocoa[age=0,facing=south]
execute positioned ^ ^ ^2.5 if block ~ ~ ~ cocoa if block ~ ~ ~-1 #minecraft:jungle_logs run setblock ~ ~ ~ cocoa[age=0,facing=north]
execute positioned ^ ^ ^2.5 if block ~ ~ ~ cocoa if block ~1 ~ ~ #minecraft:jungle_logs run setblock ~ ~ ~ cocoa[age=0,facing=east]
execute positioned ^ ^ ^2.5 if block ~ ~ ~ cocoa if block ~-1 ~ ~ #minecraft:jungle_logs run setblock ~ ~ ~ cocoa[age=0,facing=west]
execute positioned ^ ^ ^2.5 if block ~ ~ ~ cocoa unless block ~1 ~ ~ #minecraft:jungle_logs unless block ~-1 ~ ~ #minecraft:jungle_logs unless block ~ ~ ~1 #minecraft:jungle_logs unless block ~ ~ ~-1 #minecraft:jungle_logs run setblock ~ ~ ~ air

execute positioned ^ ^ ^2.5 if block ~ ~ ~ tripwire_hook unless block ~ ~ ~1 #minecraft:air run setblock ~ ~ ~ tripwire_hook[facing=north]
execute positioned ^ ^ ^2.5 if block ~ ~ ~ tripwire_hook unless block ~ ~ ~-1 #minecraft:air run setblock ~ ~ ~ tripwire_hook[facing=south]
execute positioned ^ ^ ^2.5 if block ~ ~ ~ tripwire_hook unless block ~1 ~ ~ #minecraft:air run setblock ~ ~ ~ tripwire_hook[facing=west]
execute positioned ^ ^ ^2.5 if block ~ ~ ~ tripwire_hook unless block ~-1 ~ ~ #minecraft:air run setblock ~ ~ ~ tripwire_hook[facing=east]
execute positioned ^ ^ ^2.5 if block ~ ~ ~ tripwire_hook if block ~1 ~ ~ #minecraft:air if block ~-1 ~ ~ #minecraft:air if block ~ ~ ~1 #minecraft:air if block ~ ~ ~-1 #minecraft:air run setblock ~ ~ ~ air

execute positioned ^ ^ ^2.5 if block ~ ~ ~ ladder unless block ~ ~ ~1 #minecraft:air run setblock ~ ~ ~ ladder[facing=north]
execute positioned ^ ^ ^2.5 if block ~ ~ ~ ladder unless block ~ ~ ~-1 #minecraft:air run setblock ~ ~ ~ ladder[facing=south]
execute positioned ^ ^ ^2.5 if block ~ ~ ~ ladder unless block ~1 ~ ~ #minecraft:air run setblock ~ ~ ~ ladder[facing=west]
execute positioned ^ ^ ^2.5 if block ~ ~ ~ ladder unless block ~-1 ~ ~ #minecraft:air run setblock ~ ~ ~ ladder[facing=east]
execute positioned ^ ^ ^2.5 if block ~ ~ ~ ladder if block ~1 ~ ~ #minecraft:air if block ~-1 ~ ~ #minecraft:air if block ~ ~ ~1 #minecraft:air if block ~ ~ ~-1 #minecraft:air run setblock ~ ~ ~ air

execute positioned ^ ^ ^2.5 if block ~ ~ ~ lantern unless block ~ ~-1 ~ #minecraft:air run setblock ~ ~ ~ lantern[hanging=false]
execute positioned ^ ^ ^2.5 if block ~ ~ ~ lantern if block ~ ~-1 ~ #minecraft:air unless block ~ ~1 ~ #minecraft:air run setblock ~ ~ ~ lantern[hanging=true]
execute positioned ^ ^ ^2.5 if block ~ ~ ~ lantern if block ~ ~-1 ~ #minecraft:air if block ~ ~1 ~ #minecraft:air run setblock ~ ~ ~ air

execute positioned ^ ^ ^2.5 if block ~ ~ ~ pointed_dripstone unless block ~ ~-1 ~ #minecraft:air run setblock ~ ~ ~ pointed_dripstone[vertical_direction=up]
execute positioned ^ ^ ^2.5 if block ~ ~ ~ pointed_dripstone if block ~ ~-1 ~ #minecraft:air unless block ~ ~1 ~ #minecraft:air run setblock ~ ~ ~ pointed_dripstone[vertical_direction=down]
execute positioned ^ ^ ^2.5 if block ~ ~ ~ pointed_dripstone if block ~ ~-1 ~ #minecraft:air if block ~ ~1 ~ #minecraft:air run setblock ~ ~ ~ air

execute positioned ^ ^ ^2.5 if block ~ ~ ~ soul_lantern unless block ~ ~-1 ~ #minecraft:air run setblock ~ ~ ~ soul_lantern[hanging=false]
execute positioned ^ ^ ^2.5 if block ~ ~ ~ soul_lantern if block ~ ~-1 ~ #minecraft:air unless block ~ ~1 ~ #minecraft:air run setblock ~ ~ ~ soul_lantern[hanging=true]
execute positioned ^ ^ ^2.5 if block ~ ~ ~ soul_lantern if block ~ ~-1 ~ #minecraft:air if block ~ ~1 ~ #minecraft:air run setblock ~ ~ ~ air


execute positioned ^ ^ ^2.5 if block ~ ~ ~ sweet_berry_bush if block ~ ~-1 ~ #minecraft:air run setblock ~ ~ ~ air
execute positioned ^ ^ ^2.5 if block ~ ~ ~ cave_vines if block ~ ~1 ~ #minecraft:air run setblock ~ ~ ~ air
execute positioned ^ ^ ^2.5 if block ~ ~ ~ wheat unless block ~ ~-1 ~ farmland run setblock ~ ~ ~ air
execute positioned ^ ^ ^2.5 if block ~ ~ ~ carrots unless block ~ ~-1 ~ farmland run setblock ~ ~ ~ air
execute positioned ^ ^ ^2.5 if block ~ ~ ~ potatoes unless block ~ ~-1 ~ farmland run setblock ~ ~ ~ air
execute positioned ^ ^ ^2.5 if block ~ ~ ~ melon_stem unless block ~ ~-1 ~ farmland run setblock ~ ~ ~ air
execute positioned ^ ^ ^2.5 if block ~ ~ ~ pumpkin_stem unless block ~ ~-1 ~ farmland run setblock ~ ~ ~ air
execute positioned ^ ^ ^2.5 if block ~ ~ ~ beetroots unless block ~ ~-1 ~ farmland run setblock ~ ~ ~ air
execute positioned ^ ^ ^2.5 if block ~ ~ ~ nether_wart unless block ~ ~-1 ~ soul_sand run setblock ~ ~ ~ air



execute positioned ^ ^ ^2.5 if block ~ ~ ~ torch unless block ~ ~ ~1 #minecraft:air run setblock ~ ~ ~ wall_torch[facing=north]
execute positioned ^ ^ ^2.5 if block ~ ~ ~ torch unless block ~ ~ ~-1 #minecraft:air run setblock ~ ~ ~ wall_torch[facing=south]
execute positioned ^ ^ ^2.5 if block ~ ~ ~ torch unless block ~1 ~ ~ #minecraft:air run setblock ~ ~ ~ wall_torch[facing=west]
execute positioned ^ ^ ^2.5 if block ~ ~ ~ torch unless block ~-1 ~ ~ #minecraft:air run setblock ~ ~ ~ wall_torch[facing=east]
execute positioned ^ ^ ^2.5 if block ~ ~ ~ torch unless block ~ ~-1 ~ #minecraft:air run setblock ~ ~ ~ torch
execute positioned ^ ^ ^2.5 if block ~ ~ ~ torch if block ~ ~-1 ~ #minecraft:air if block ~1 ~ ~ #minecraft:air if block ~-1 ~ ~ #minecraft:air if block ~ ~ ~1 #minecraft:air if block ~ ~ ~-1 #minecraft:air run setblock ~ ~ ~ air

execute positioned ^ ^ ^2.5 if block ~ ~ ~ soul_torch unless block ~ ~ ~1 #minecraft:air run setblock ~ ~ ~ soul_wall_torch[facing=north]
execute positioned ^ ^ ^2.5 if block ~ ~ ~ soul_torch unless block ~ ~ ~-1 #minecraft:air run setblock ~ ~ ~ soul_wall_torch[facing=south]
execute positioned ^ ^ ^2.5 if block ~ ~ ~ soul_torch unless block ~1 ~ ~ #minecraft:air run setblock ~ ~ ~ soul_wall_torch[facing=west]
execute positioned ^ ^ ^2.5 if block ~ ~ ~ soul_torch unless block ~-1 ~ ~ #minecraft:air run setblock ~ ~ ~ soul_wall_torch[facing=east]
execute positioned ^ ^ ^2.5 if block ~ ~ ~ soul_torch unless block ~ ~-1 ~ #minecraft:air run setblock ~ ~ ~ soul_torch
execute positioned ^ ^ ^2.5 if block ~ ~ ~ soul_torch if block ~ ~-1 ~ #minecraft:air if block ~1 ~ ~ #minecraft:air if block ~-1 ~ ~ #minecraft:air if block ~ ~ ~1 #minecraft:air if block ~ ~ ~-1 #minecraft:air run setblock ~ ~ ~ air

execute positioned ^ ^ ^2.5 if block ~ ~ ~ redstone_torch unless block ~ ~ ~1 #minecraft:air run setblock ~ ~ ~ redstone_wall_torch[facing=north]
execute positioned ^ ^ ^2.5 if block ~ ~ ~ redstone_torch unless block ~ ~ ~-1 #minecraft:air run setblock ~ ~ ~ redstone_wall_torch[facing=south]
execute positioned ^ ^ ^2.5 if block ~ ~ ~ redstone_torch unless block ~1 ~ ~ #minecraft:air run setblock ~ ~ ~ redstone_wall_torch[facing=west]
execute positioned ^ ^ ^2.5 if block ~ ~ ~ redstone_torch unless block ~-1 ~ ~ #minecraft:air run setblock ~ ~ ~ redstone_wall_torch[facing=east]
execute positioned ^ ^ ^2.5 if block ~ ~ ~ redstone_torch unless block ~ ~-1 ~ #minecraft:air run setblock ~ ~ ~ redstone_torch
execute positioned ^ ^ ^2.5 if block ~ ~ ~ redstone_torch if block ~ ~-1 ~ #minecraft:air if block ~1 ~ ~ #minecraft:air if block ~-1 ~ ~ #minecraft:air if block ~ ~ ~1 #minecraft:air if block ~ ~ ~-1 #minecraft:air run setblock ~ ~ ~ air


execute positioned ^ ^ ^2.5 if block ~ ~ ~ lever unless block ~ ~ ~1 #minecraft:air run setblock ~ ~ ~ lever[facing=north,face=wall]
execute positioned ^ ^ ^2.5 if block ~ ~ ~ lever unless block ~ ~ ~-1 #minecraft:air run setblock ~ ~ ~ lever[facing=south,face=wall]
execute positioned ^ ^ ^2.5 if block ~ ~ ~ lever unless block ~1 ~ ~ #minecraft:air run setblock ~ ~ ~ lever[facing=west,face=wall]
execute positioned ^ ^ ^2.5 if block ~ ~ ~ lever unless block ~-1 ~ ~ #minecraft:air run setblock ~ ~ ~ lever[facing=east,face=wall]
execute positioned ^ ^ ^2.5 if block ~ ~ ~ lever unless block ~ ~-1 ~ #minecraft:air run setblock ~ ~ ~ lever[face=floor]
execute positioned ^ ^ ^2.5 if block ~ ~ ~ lever if block ~ ~-1 ~ #minecraft:air unless block ~ ~1 ~ #minecraft:air run setblock ~ ~ ~ lever[face=ceiling]
execute positioned ^ ^ ^2.5 if block ~ ~ ~ lever if block ~ ~1 ~ #minecraft:air if block ~ ~-1 ~ #minecraft:air if block ~1 ~ ~ #minecraft:air if block ~-1 ~ ~ #minecraft:air if block ~ ~ ~1 #minecraft:air if block ~ ~ ~-1 #minecraft:air run setblock ~ ~ ~ air


execute positioned ^ ^ ^2.5 if block ~ ~ ~ chorus_flower unless block ~ ~-1 ~ minecraft:end_stone run setblock ~ ~ ~ air
execute positioned ^ ^ ^2.5 if block ~ ~ ~ frogspawn unless block ~ ~-1 ~ minecraft:water run setblock ~ ~ ~ air
execute positioned ^ ^ ^2.5 if block ~ ~ ~ cactus unless block ~ ~-1 ~ #minecraft:sand unless block ~ ~-1 ~ minecraft:cactus run setblock ~ ~ ~ air
execute positioned ^ ^ ^2.5 if block ~ ~ ~ lily_pad unless block ~ ~-1 ~ minecraft:water run setblock ~ ~ ~ air