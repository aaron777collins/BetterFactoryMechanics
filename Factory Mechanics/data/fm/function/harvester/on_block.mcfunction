tag @s remove Move_Back

execute if block ~ ~ ~ iron_trapdoor run function fm:harvester/check_powered

execute as @s[tag=Powered,scores={FM.Int_Save=4..}] run scoreboard players set @s FM.Int_Save 0
execute as @s[tag=Powered,scores={FM.Int_Save=0}] run data modify entity @s Item.components."minecraft:item_model" set value "minecraft:powered_harvester_0"
execute as @s[tag=Powered,scores={FM.Int_Save=1}] run data modify entity @s Item.components."minecraft:item_model" set value "minecraft:powered_harvester_225"
execute as @s[tag=Powered,scores={FM.Int_Save=2}] run data modify entity @s Item.components."minecraft:item_model" set value "minecraft:powered_harvester_45"
execute as @s[tag=Powered,scores={FM.Int_Save=3}] run data modify entity @s Item.components."minecraft:item_model" set value "minecraft:powered_harvester_675"

execute as @s[tag=!Powered] run data modify entity @s Item.components."minecraft:item_model" set value "minecraft:mechanical_harvester"

#execute as @s[tag=Powered] run playsound minecraft:block.grindstone.use block @a[distance=..20] ~ ~ ~ 0.3 0.8

execute as @s[tag=Powered] if block ^ ^ ^1 #minecraft:leaves run playsound minecraft:block.crop.break block @a ~ ~ ~ 1 0
execute as @s[tag=Powered] if block ^ ^ ^1 #minecraft:leaves unless block ^ ^ ^1 minecraft:cherry_leaves run particle minecraft:block{block_state:"minecraft:oak_leaves"} ^ ^ ^1 0.1 0.1 0.1 20 3 normal
execute as @s[tag=Powered] if block ^ ^ ^1 minecraft:cherry_leaves run particle minecraft:block{block_state:"minecraft:cherry_leaves"} ^ ^ ^1 0.1 0.1 0.1 20 3 normal

execute as @s[tag=Powered] if data storage minecraft:harvester {Busy:0} if block ^ ^ ^1 #fm:harvester_blocks run function fm:harvester/action

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

execute if block ~ ~ ~ iron_trapdoor if entity @s[nbt={Facing:0b},tag=Powered] run setblock ~ ~ ~ iron_trapdoor[facing=north,half=top,open=false,powered=true]
execute if block ~ ~ ~ iron_trapdoor if entity @s[nbt={Facing:1b},tag=Powered] run setblock ~ ~ ~ iron_trapdoor[facing=north,half=bottom,open=false,powered=true]

execute if block ~ ~ ~ iron_trapdoor if entity @s[nbt={Facing:0b},tag=!Powered] run setblock ~ ~ ~ iron_trapdoor[facing=north,half=top,open=false]
execute if block ~ ~ ~ iron_trapdoor if entity @s[nbt={Facing:1b},tag=!Powered] run setblock ~ ~ ~ iron_trapdoor[facing=north,half=bottom,open=false]
execute if block ~ ~ ~ iron_trapdoor if entity @s[nbt={Facing:2b},tag=!Powered] run setblock ~ ~ ~ iron_trapdoor[facing=north,half=bottom,open=true]
execute if block ~ ~ ~ iron_trapdoor if entity @s[nbt={Facing:3b},tag=!Powered] run setblock ~ ~ ~ iron_trapdoor[facing=south,half=bottom,open=true]
execute if block ~ ~ ~ iron_trapdoor if entity @s[nbt={Facing:4b},tag=!Powered] run setblock ~ ~ ~ iron_trapdoor[facing=west,half=bottom,open=true]
execute if block ~ ~ ~ iron_trapdoor if entity @s[nbt={Facing:5b},tag=!Powered] run setblock ~ ~ ~ iron_trapdoor[facing=east,half=bottom,open=true]

execute as @s[tag=!Move_Back] unless block ~ ~ ~ iron_trapdoor unless block ~ ~ ~ moving_piston run function fm:harvester/remove