tag @s remove Powered

fill ~ ~ ~ ~ ~ ~ minecraft:hopper replace polished_andesite_slab

execute if block ~ ~ ~ minecraft:hopper[enabled=false] run tag @s add Powered
execute if block ~ ~ ~ minecraft:iron_trapdoor[powered=true] run tag @s add Powered

execute if entity @s[nbt={Facing:0b},tag=!Water] run fill ~ ~ ~ ~ ~ ~ minecraft:polished_andesite_slab[type=top] replace hopper
execute if entity @s[nbt={Facing:1b},tag=!Water] run fill ~ ~ ~ ~ ~ ~ minecraft:polished_andesite_slab[type=bottom] replace hopper
execute if entity @s[nbt={Facing:2b},tag=!Water,tag=!Powered] run fill ~ ~ ~ ~ ~ ~ iron_trapdoor[facing=north,half=bottom,open=true]
execute if entity @s[nbt={Facing:3b},tag=!Water,tag=!Powered] run fill ~ ~ ~ ~ ~ ~ iron_trapdoor[facing=south,half=bottom,open=true]
execute if entity @s[nbt={Facing:4b},tag=!Water,tag=!Powered] run fill ~ ~ ~ ~ ~ ~ iron_trapdoor[facing=west,half=bottom,open=true]
execute if entity @s[nbt={Facing:5b},tag=!Water,tag=!Powered] run fill ~ ~ ~ ~ ~ ~ iron_trapdoor[facing=east,half=bottom,open=true]

execute if entity @s[nbt={Facing:0b},tag=Water] run fill ~ ~ ~ ~ ~ ~ minecraft:polished_andesite_slab[type=top,waterlogged=true] replace hopper
execute if entity @s[nbt={Facing:1b},tag=Water] run fill ~ ~ ~ ~ ~ ~ minecraft:polished_andesite_slab[type=bottom,waterlogged=true] replace hopper
execute if entity @s[nbt={Facing:2b},tag=Water,tag=!Powered] run fill ~ ~ ~ ~ ~ ~ iron_trapdoor[facing=north,half=bottom,open=true,waterlogged=true]
execute if entity @s[nbt={Facing:3b},tag=Water,tag=!Powered] run fill ~ ~ ~ ~ ~ ~ iron_trapdoor[facing=south,half=bottom,open=true,waterlogged=true]
execute if entity @s[nbt={Facing:4b},tag=Water,tag=!Powered] run fill ~ ~ ~ ~ ~ ~ iron_trapdoor[facing=west,half=bottom,open=true,waterlogged=true]
execute if entity @s[nbt={Facing:5b},tag=Water,tag=!Powered] run fill ~ ~ ~ ~ ~ ~ iron_trapdoor[facing=east,half=bottom,open=true,waterlogged=true]