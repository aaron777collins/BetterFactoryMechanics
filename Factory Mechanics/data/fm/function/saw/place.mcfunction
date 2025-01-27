execute if entity @s[nbt={Facing:0b}] run setblock ~ ~ ~ minecraft:polished_andesite_slab[type=top]
execute if entity @s[nbt={Facing:1b}] run setblock ~ ~ ~ minecraft:polished_andesite_slab[type=bottom]
execute if entity @s[nbt={Facing:2b}] run setblock ~ ~ ~ iron_trapdoor[facing=north,half=bottom,open=true]
execute if entity @s[nbt={Facing:3b}] run setblock ~ ~ ~ iron_trapdoor[facing=south,half=bottom,open=true]
execute if entity @s[nbt={Facing:4b}] run setblock ~ ~ ~ iron_trapdoor[facing=west,half=bottom,open=true]
execute if entity @s[nbt={Facing:5b}] run setblock ~ ~ ~ iron_trapdoor[facing=east,half=bottom,open=true]

tag @s add Placed

fill ~ ~ ~ ~ ~ ~ minecraft:hopper replace iron_trapdoor
execute if block ~ ~ ~ minecraft:hopper[enabled=false] run tag @s add Powered

execute if entity @s[nbt={Facing:2b},tag=Powered] run fill ~ ~ ~ ~ ~ ~ iron_trapdoor[facing=north,half=bottom,open=true,powered=true]
execute if entity @s[nbt={Facing:3b},tag=Powered] run fill ~ ~ ~ ~ ~ ~ iron_trapdoor[facing=south,half=bottom,open=true,powered=true]
execute if entity @s[nbt={Facing:4b},tag=Powered] run fill ~ ~ ~ ~ ~ ~ iron_trapdoor[facing=west,half=bottom,open=true,powered=true]
execute if entity @s[nbt={Facing:5b},tag=Powered] run fill ~ ~ ~ ~ ~ ~ iron_trapdoor[facing=east,half=bottom,open=true,powered=true]

execute if entity @s[nbt={Facing:2b},tag=!Powered] run fill ~ ~ ~ ~ ~ ~ iron_trapdoor[facing=north,half=bottom,open=true]
execute if entity @s[nbt={Facing:3b},tag=!Powered] run fill ~ ~ ~ ~ ~ ~ iron_trapdoor[facing=south,half=bottom,open=true]
execute if entity @s[nbt={Facing:4b},tag=!Powered] run fill ~ ~ ~ ~ ~ ~ iron_trapdoor[facing=west,half=bottom,open=true]
execute if entity @s[nbt={Facing:5b},tag=!Powered] run fill ~ ~ ~ ~ ~ ~ iron_trapdoor[facing=east,half=bottom,open=true]