tag @s remove Changed_To_Powered
tag @s remove Done_Action
execute as @s[tag=!Powered] if block ~ ~ ~ minecraft:hopper[enabled=false] run tag @s add Changed_To_Powered
execute as @s[tag=Changed_To_Powered] run playsound minecraft:block.piston.extend block @a ~ ~ ~

execute as @s[tag=Changed_To_Powered] run data modify entity @s Item.components."minecraft:item_model" set value "minecraft:powered_deployer"
execute as @s[tag=Changed_To_Powered] if data block ~ ~ ~ Items[] run function fm:deployer/action

execute if block ~ ~ ~ minecraft:hopper unless block ~ ~ ~ minecraft:hopper[enabled=true] run tag @s add Powered


execute as @s[tag=Powered] if block ~ ~ ~ minecraft:hopper[enabled=true] run playsound minecraft:block.piston.contract block @a ~ ~ ~
execute as @s[tag=Powered] if block ~ ~ ~ minecraft:hopper[enabled=true] run data modify entity @s Item.components."minecraft:item_model" set value "minecraft:deployer"
execute as @s[tag=Powered] if block ~ ~ ~ minecraft:hopper[enabled=true] run tag @s remove Powered

data modify storage fm:temp Block set value {count:0,Slot:-1b,id:"minecraft:air"}

execute unless block ~ ~ ~ hopper run function fm:deployer/remove