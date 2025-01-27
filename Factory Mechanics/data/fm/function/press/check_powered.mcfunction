fill ~ ~ ~ ~ ~ ~ minecraft:hopper replace smooth_stone_slab

execute if entity @s[tag=!Powered] if block ~ ~ ~ minecraft:hopper[enabled=false] run playsound minecraft:block.piston.extend block @a ~ ~ ~
execute if entity @s[tag=!Powered] if block ~ ~ ~ minecraft:hopper[enabled=false] run data modify entity @s item.components."minecraft:item_model" set value "minecraft:powered_press"
#execute if entity @s[tag=!Powered] if block ~ ~ ~ minecraft:hopper[enabled=false] unless block ~ ~-2 ~ #minecraft:replaceable run playsound minecraft:block.anvil.land block @a ~ ~ ~ 1 0.6
execute if entity @s[tag=!Powered] if block ~ ~ ~ minecraft:hopper[enabled=false] unless block ~ ~-2 ~ #minecraft:replaceable run playsound minecraft:item.mace.smash_air block @a ~ ~ ~ 1 0.8
execute if entity @s[tag=!Powered] if block ~ ~ ~ minecraft:hopper[enabled=false] unless block ~ ~-2 ~ #minecraft:replaceable run particle minecraft:block{block_state:{Name:"minecraft:anvil"}} ~ ~-1 ~ 0 0 0 0.25 5 normal
execute if entity @s[tag=!Powered] if block ~ ~ ~ minecraft:hopper[enabled=false] unless block ~ ~-2 ~ #minecraft:replaceable positioned ~ ~-1 ~ align xyz as @e[dx=0,dy=0,dz=0,type=minecraft:item,limit=1,sort=random] at @s run function fm:press/press
execute if entity @s[tag=!Powered] if block ~ ~ ~ minecraft:hopper[enabled=false] run tag @s add Powered

execute if entity @s[tag=Powered] if block ~ ~ ~ minecraft:hopper[enabled=true] run playsound minecraft:block.piston.contract block @a ~ ~ ~
execute if entity @s[tag=Powered] if block ~ ~ ~ minecraft:hopper[enabled=true] run data modify entity @s item.components."minecraft:item_model" set value "minecraft:press"
execute if entity @s[tag=Powered] if block ~ ~ ~ minecraft:hopper[enabled=true] run tag @s remove Powered

fill ~ ~ ~ ~ ~ ~ minecraft:smooth_stone_slab[type=top] replace hopper