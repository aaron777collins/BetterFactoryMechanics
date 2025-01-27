tag @s remove Water
tag @s remove Move_Back
execute if block ~ ~ ~ minecraft:iron_trapdoor[waterlogged=true] run tag @s add Water
execute if block ~ ~ ~ minecraft:polished_andesite_slab[waterlogged=true] run tag @s add Water

execute if block ~ ~ ~ iron_trapdoor run function fm:drill/check_powered
execute if block ~ ~ ~ polished_andesite_slab run function fm:drill/check_powered

execute as @s[tag=Powered] run data modify entity @s Item.components."minecraft:item_model" set value "minecraft:powered_drill"
execute as @s[tag=!Powered] run data modify entity @s Item.components."minecraft:item_model" set value "minecraft:drill"

execute as @s[tag=Powered] run playsound minecraft:block.grindstone.use block @a[distance=..20] ~ ~ ~ 0.3 0.7
execute as @s[tag=Powered] unless block ^ ^ ^1 #fm:indestructable run playsound minecraft:block.stone.hit block @a[distance=..20] ~ ~ ~ 1 0
execute as @s[tag=Powered] unless block ^ ^ ^1 #fm:indestructable run particle minecraft:block{block_state:"minecraft:stone"} ^ ^ ^1 0.1 0.1 0.1 20 3 normal

execute if entity @s[tag=Powered] unless block ^ ^ ^1 #fm:indestructable if data storage minecraft:drill {Busy:0} run function fm:drill/break_block

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

execute if block ~ ~ ~ polished_andesite_slab if entity @s[tag=!Water,nbt={Facing:0b}] run setblock ~ ~ ~ minecraft:polished_andesite_slab[type=top]
execute if block ~ ~ ~ polished_andesite_slab if entity @s[tag=!Water,nbt={Facing:1b}] run setblock ~ ~ ~ minecraft:polished_andesite_slab[type=bottom]
execute if block ~ ~ ~ iron_trapdoor if entity @s[tag=!Water,nbt={Facing:2b},tag=!Powered] run setblock ~ ~ ~ iron_trapdoor[facing=north,half=bottom,open=true]
execute if block ~ ~ ~ iron_trapdoor if entity @s[tag=!Water,nbt={Facing:3b},tag=!Powered] run setblock ~ ~ ~ iron_trapdoor[facing=south,half=bottom,open=true]
execute if block ~ ~ ~ iron_trapdoor if entity @s[tag=!Water,nbt={Facing:4b},tag=!Powered] run setblock ~ ~ ~ iron_trapdoor[facing=west,half=bottom,open=true]
execute if block ~ ~ ~ iron_trapdoor if entity @s[tag=!Water,nbt={Facing:5b},tag=!Powered] run setblock ~ ~ ~ iron_trapdoor[facing=east,half=bottom,open=true]

execute if block ~ ~ ~ polished_andesite_slab if entity @s[tag=Water,nbt={Facing:0b}] run setblock ~ ~ ~ minecraft:polished_andesite_slab[type=top,waterlogged=true]
execute if block ~ ~ ~ polished_andesite_slab if entity @s[tag=Water,nbt={Facing:1b}] run setblock ~ ~ ~ minecraft:polished_andesite_slab[type=bottom,waterlogged=true]
execute if block ~ ~ ~ iron_trapdoor if entity @s[tag=Water,nbt={Facing:2b},tag=!Powered] run setblock ~ ~ ~ iron_trapdoor[facing=north,half=bottom,open=true,waterlogged=true]
execute if block ~ ~ ~ iron_trapdoor if entity @s[tag=Water,nbt={Facing:3b},tag=!Powered] run setblock ~ ~ ~ iron_trapdoor[facing=south,half=bottom,open=true,waterlogged=true]
execute if block ~ ~ ~ iron_trapdoor if entity @s[tag=Water,nbt={Facing:4b},tag=!Powered] run setblock ~ ~ ~ iron_trapdoor[facing=west,half=bottom,open=true,waterlogged=true]
execute if block ~ ~ ~ iron_trapdoor if entity @s[tag=Water,nbt={Facing:5b},tag=!Powered] run setblock ~ ~ ~ iron_trapdoor[facing=east,half=bottom,open=true,waterlogged=true]

execute as @s[tag=!Move_Back] unless block ~ ~ ~ iron_trapdoor unless block ~ ~ ~ polished_andesite_slab unless block ~ ~ ~ moving_piston run function fm:drill/remove