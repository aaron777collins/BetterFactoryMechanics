tag @s remove Move_Back

execute if block ~ ~ ~ iron_trapdoor run function fm:saw/check_powered
execute if block ~ ~ ~ polished_andesite_slab run function fm:saw/check_powered

execute as @s[tag=Powered] run data modify entity @s Item.components."minecraft:item_model" set value "minecraft:powered_saw"
execute as @s[tag=!Powered] run data modify entity @s Item.components."minecraft:item_model" set value "minecraft:saw"

execute as @s[tag=Powered] run playsound minecraft:block.grindstone.use block @a[distance=..20] ~ ~ ~ 0.3 0.8

execute as @s[tag=Powered] if block ^ ^ ^1 #minecraft:logs run playsound minecraft:block.wood.hit block @a ~ ~ ~ 1 0
execute as @s[tag=Powered] if block ^ ^ ^1 #minecraft:logs run particle minecraft:block{block_state:"minecraft:oak_log"} ^ ^ ^1 0.1 0.1 0.1 20 3 normal
execute as @s[tag=Powered] if block ^ ^ ^1 mushroom_stem run playsound minecraft:block.fungus.hit block @a ~ ~ ~ 1 0
execute as @s[tag=Powered] if block ^ ^ ^1 mushroom_stem run particle minecraft:block{block_state:"minecraft:mushroom_stem"} ^ ^ ^1 0.1 0.1 0.1 20 3 normal
execute as @s[tag=Powered] if block ^ ^ ^1 mangrove_roots run playsound minecraft:block.wood.hit block @a ~ ~ ~ 1 0
execute as @s[tag=Powered] if block ^ ^ ^1 mangrove_roots run particle minecraft:block{block_state:"minecraft:mangrove_roots"} ^ ^ ^1 0.1 0.1 0.1 20 3 normal
#execute as @s[tag=Powered] if block ^ ^ ^1 pumpkin run playsound minecraft:block.wood.hit block @a ~ ~ ~ 1 0
#execute as @s[tag=Powered] if block ^ ^ ^1 pumpkin run particle minecraft:block{block_state:"minecraft:pumpkin"} ^ ^ ^1 0.1 0.1 0.1 20 3 normal
#execute as @s[tag=Powered] if block ^ ^ ^1 melon run playsound minecraft:block.wood.hit block @a ~ ~ ~ 1 0
#execute as @s[tag=Powered] if block ^ ^ ^1 melon run particle minecraft:block{block_state:"minecraft:melon"} ^ ^ ^1 0.1 0.1 0.1 20 3 normal
execute as @s[tag=Powered] if block ^ ^ ^1 bamboo run playsound minecraft:block.bamboo.hit block @a ~ ~ ~ 1 0
execute as @s[tag=Powered] if block ^ ^ ^1 bamboo run particle minecraft:block{block_state:"minecraft:bamboo"} ^ ^ ^1 0.1 0.1 0.1 20 3 normal

execute as @s[tag=Powered] if data storage minecraft:saw {Busy:0} if block ^ ^ ^1 #fm:saw_base_blocks run function fm:saw/break_block

execute if block ~1 ~ ~ minecraft:moving_piston[facing=west]{progress:0.0f,extending:0b,blockState:{Name:"minecraft:piston_head"}} run tp @s ~1 ~ ~
execute if block ~-1 ~ ~ minecraft:moving_piston[facing=east]{progress:0.0f,extending:0b,blockState:{Name:"minecraft:piston_head"}} run tp @s ~-1 ~ ~
execute if block ~ ~-1 ~ minecraft:moving_piston[facing=up]{progress:0.0f,extending:0b,blockState:{Name:"minecraft:piston_head"}} run tp @s ~ ~-1 ~
execute if block ~ ~1 ~ minecraft:moving_piston[facing=down]{progress:0.0f,extending:0b,blockState:{Name:"minecraft:piston_head"}} run tp @s ~ ~1 ~
execute if block ~ ~ ~1 minecraft:moving_piston[facing=north]{progress:0.0f,extending:0b,blockState:{Name:"minecraft:piston_head"}} run tp @s ~ ~ ~1
execute if block ~ ~ ~-1 minecraft:moving_piston[facing=south]{progress:0.0f,extending:0b,blockState:{Name:"minecraft:piston_head"}} run tp @s ~ ~ ~-1

execute if block ~1 ~ ~ minecraft:moving_piston[facing=east]{progress:0.0f,extending:1b} run tp @s ~1 ~ ~
execute if block ~-1 ~ ~ minecraft:moving_piston[facing=west]{progress:0.0f,extending:1b} run tp @s ~-1 ~ ~
execute if block ~ ~-1 ~ minecraft:moving_piston[facing=down]{progress:0.0f,extending:1b} run tp @s ~ ~-1 ~
execute if block ~ ~1 ~ minecraft:moving_piston[facing=up]{progress:0.0f,extending:1b} run tp @s ~ ~1 ~
execute if block ~ ~ ~1 minecraft:moving_piston[facing=south]{progress:0.0f,extending:1b} run tp @s ~ ~ ~1
execute if block ~ ~ ~-1 minecraft:moving_piston[facing=north]{progress:0.0f,extending:1b} run tp @s ~ ~ ~-1

execute if block ~1 ~ ~ minecraft:moving_piston[facing=west]{progress:0.0f,extending:0b} run tp @s ~1 ~ ~
execute if block ~-1 ~ ~ minecraft:moving_piston[facing=east]{progress:0.0f,extending:0b} run tp @s ~-1 ~ ~
execute if block ~ ~-1 ~ minecraft:moving_piston[facing=up]{progress:0.0f,extending:0b} run tp @s ~ ~-1 ~
execute if block ~ ~1 ~ minecraft:moving_piston[facing=down]{progress:0.0f,extending:0b} run tp @s ~ ~1 ~
execute if block ~ ~ ~1 minecraft:moving_piston[facing=north]{progress:0.0f,extending:0b} run tp @s ~ ~ ~1
execute if block ~ ~ ~-1 minecraft:moving_piston[facing=south]{progress:0.0f,extending:0b} run tp @s ~ ~ ~-1

execute if block ~1 ~ ~ minecraft:moving_piston[facing=west]{progress:0.0f,extending:0b} run tag @s add Move_Back
execute if block ~-1 ~ ~ minecraft:moving_piston[facing=east]{progress:0.0f,extending:0b} run tag @s add Move_Back
execute if block ~ ~-1 ~ minecraft:moving_piston[facing=up]{progress:0.0f,extending:0b} run tag @s add Move_Back
execute if block ~ ~1 ~ minecraft:moving_piston[facing=down]{progress:0.0f,extending:0b} run tag @s add Move_Back
execute if block ~ ~ ~1 minecraft:moving_piston[facing=north]{progress:0.0f,extending:0b} run tag @s add Move_Back
execute if block ~ ~ ~-1 minecraft:moving_piston[facing=south]{progress:0.0f,extending:0b} run tag @s add Move_Back

execute if block ~ ~ ~ polished_andesite_slab if entity @s[nbt={Facing:0b}] run setblock ~ ~ ~ minecraft:polished_andesite_slab[type=top]
execute if block ~ ~ ~ polished_andesite_slab if entity @s[nbt={Facing:1b}] run setblock ~ ~ ~ minecraft:polished_andesite_slab[type=bottom]
execute if block ~ ~ ~ iron_trapdoor if entity @s[nbt={Facing:2b},tag=!Powered] run setblock ~ ~ ~ iron_trapdoor[facing=north,half=bottom,open=true]
execute if block ~ ~ ~ iron_trapdoor if entity @s[nbt={Facing:3b},tag=!Powered] run setblock ~ ~ ~ iron_trapdoor[facing=south,half=bottom,open=true]
execute if block ~ ~ ~ iron_trapdoor if entity @s[nbt={Facing:4b},tag=!Powered] run setblock ~ ~ ~ iron_trapdoor[facing=west,half=bottom,open=true]
execute if block ~ ~ ~ iron_trapdoor if entity @s[nbt={Facing:5b},tag=!Powered] run setblock ~ ~ ~ iron_trapdoor[facing=east,half=bottom,open=true]

execute as @s[tag=!Move_Back] unless block ~ ~ ~ iron_trapdoor unless block ~ ~ ~ polished_andesite_slab unless block ~ ~ ~ moving_piston run function fm:saw/remove