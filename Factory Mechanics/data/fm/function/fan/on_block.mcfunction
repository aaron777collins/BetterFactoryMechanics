tag @s remove Move_Back

function fm:fan/check_powered

execute as @s[tag=Powered] run data modify entity @s Item.components."minecraft:item_model" set value "minecraft:copper_fan_powered"
execute as @s[tag=!Powered] run data modify entity @s Item.components."minecraft:item_model" set value "minecraft:copper_fan"

execute as @s[tag=Powered] if block ^ ^ ^1 #fm:fan_wash run function fm:fan/wash
execute as @s[tag=Powered] if block ^ ^ ^1 #fm:fan_blast run function fm:fan/blast
execute as @s[tag=Powered] if block ^ ^ ^1 #fm:fan_haunt run function fm:fan/haunt
execute as @s[tag=Powered] if block ^ ^ ^1 #fm:fan_freeze run function fm:fan/freeze
execute as @s[tag=Powered] if block ^ ^ ^1 #fm:fan_smoke run function fm:fan/smoke
#execute as @s[tag=Powered] if block ^ ^ ^1 dragon_head[powered=true] run function fm:fan/halitosis
#execute as @s[tag=Powered] if block ^ ^ ^1 wither_skeleton_skull run function fm:fan/wither
#execute as @s[tag=Powered] if block ^ ^ ^1 conduit[waterlogged=true] run function fm:fan/channel
#execute as @s[tag=Powered] if block ^ ^ ^1 beacon run function fm:fan/enchant
execute as @s[tag=Powered] unless block ^ ^ ^1 #fm:fan_wash unless block ^ ^ ^1 #fm:fan_blast unless block ^ ^ ^1 #fm:fan_haunt unless block ^ ^ ^1 #fm:fan_freeze unless block ^ ^ ^1 #fm:fan_smoke run function fm:fan/none
# unless block ^ ^ ^1 dragon_head[powered=true] unless block ^ ^ ^1 wither_skeleton_skull unless block ^ ^ ^1 conduit[waterlogged=true] unless block ^ ^ ^1 beacon

execute as @s[tag=Powered,nbt={Facing:4b}] align xyz as @e[type=item,tag=!Powered,dx=-7,dz=0,dy=-1] run data modify entity @s Motion[0] set value -0.25
execute as @s[tag=Powered,nbt={Facing:5b}] align xyz as @e[type=item,tag=!Powered,dx=7,dz=0,dy=-1] run data modify entity @s Motion[0] set value 0.25
execute as @s[tag=Powered,nbt={Facing:0b}] align xyz as @e[type=item,tag=!Powered,dy=-7,dx=0,dz=0] run data modify entity @s Motion[1] set value -0.25
execute as @s[tag=Powered,nbt={Facing:1b}] align xyz as @e[type=item,tag=!Powered,dy=7,dx=0,dz=0] run data modify entity @s Motion[1] set value 0.25
execute as @s[tag=Powered,nbt={Facing:2b}] align xyz as @e[type=item,tag=!Powered,dz=-7,dx=0,dy=-1] run data modify entity @s Motion[2] set value -0.25
execute as @s[tag=Powered,nbt={Facing:3b}] align xyz as @e[type=item,tag=!Powered,dz=7,dx=0,dy=-1] run data modify entity @s Motion[2] set value 0.25

execute as @s[tag=Powered,nbt={Facing:4b}] align xyz as @e[type=item,tag=!Powered,dx=-7,dz=0,dy=0] run data modify entity @s FallDistance set value 0f
execute as @s[tag=Powered,nbt={Facing:5b}] align xyz as @e[type=item,tag=!Powered,dx=7,dz=0,dy=0] run data modify entity @s FallDistance set value 0f
execute as @s[tag=Powered,nbt={Facing:0b}] align xyz as @e[type=item,tag=!Powered,dy=-7,dx=0,dz=0] run data modify entity @s FallDistance set value 0f
execute as @s[tag=Powered,nbt={Facing:1b}] align xyz as @e[type=item,tag=!Powered,dy=7,dx=0,dz=0] run data modify entity @s FallDistance set value 0f
execute as @s[tag=Powered,nbt={Facing:2b}] align xyz as @e[type=item,tag=!Powered,dz=-7,dx=0,dy=0] run data modify entity @s FallDistance set value 0f
execute as @s[tag=Powered,nbt={Facing:3b}] align xyz as @e[type=item,tag=!Powered,dz=7,dx=0,dy=0] run data modify entity @s FallDistance set value 0f

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

execute as @s[tag=!Move_Back] unless block ~ ~ ~ chain unless block ~ ~ ~ moving_piston run function fm:fan/remove