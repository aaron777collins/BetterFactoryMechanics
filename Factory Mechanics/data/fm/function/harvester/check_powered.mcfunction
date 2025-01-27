tag @s remove Powered

execute if block ~ ~ ~ minecraft:iron_trapdoor[powered=true] run tag @s add Powered

execute if entity @s[nbt={Facing:0b},tag=!Powered] run fill ~ ~ ~ ~ ~ ~ iron_trapdoor[facing=north,half=top,open=false]
execute if entity @s[nbt={Facing:1b},tag=!Powered] run fill ~ ~ ~ ~ ~ ~ iron_trapdoor[facing=north,half=bottom,open=false]
execute if entity @s[nbt={Facing:2b},tag=!Powered] run fill ~ ~ ~ ~ ~ ~ iron_trapdoor[facing=north,half=bottom,open=true]
execute if entity @s[nbt={Facing:3b},tag=!Powered] run fill ~ ~ ~ ~ ~ ~ iron_trapdoor[facing=south,half=bottom,open=true]
execute if entity @s[nbt={Facing:4b},tag=!Powered] run fill ~ ~ ~ ~ ~ ~ iron_trapdoor[facing=west,half=bottom,open=true]
execute if entity @s[nbt={Facing:5b},tag=!Powered] run fill ~ ~ ~ ~ ~ ~ iron_trapdoor[facing=east,half=bottom,open=true]