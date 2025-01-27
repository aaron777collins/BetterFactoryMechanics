tag @s remove Done_Action
tag @s remove Move_Back

function fm:press/check_powered


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


execute as @s[tag=!Move_Back] unless block ~ ~ ~ smooth_stone_slab run function fm:press/remove