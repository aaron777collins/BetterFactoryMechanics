scoreboard players set @s .Slot 0
execute if data block ~ ~ ~ Items[{id:"minecraft:honeycomb",Slot:0b}] run scoreboard players add @s .Slot 1
execute if data block ~ ~ ~ Items[{id:"minecraft:honeycomb",Slot:1b}] run scoreboard players add @s .Slot 1
execute if data block ~ ~ ~ Items[{id:"minecraft:honeycomb",Slot:2b}] run scoreboard players add @s .Slot 1
execute if data block ~ ~ ~ Items[{id:"minecraft:honeycomb",Slot:3b}] run scoreboard players add @s .Slot 1
execute if data block ~ ~ ~ Items[{id:"minecraft:honeycomb",Slot:4b}] run scoreboard players add @s .Slot 1

execute as @s[scores={.Slot=1}] store result score @s Item_Amount run data get block ~ ~ ~ Items[{id:"minecraft:honeycomb",Slot:0b}].count
execute as @s[scores={.Slot=2}] store result score @s Item_Amount run data get block ~ ~ ~ Items[{id:"minecraft:honeycomb",Slot:1b}].count
execute as @s[scores={.Slot=3}] store result score @s Item_Amount run data get block ~ ~ ~ Items[{id:"minecraft:honeycomb",Slot:2b}].count
execute as @s[scores={.Slot=4}] store result score @s Item_Amount run data get block ~ ~ ~ Items[{id:"minecraft:honeycomb",Slot:3b}].count
execute as @s[scores={.Slot=5}] store result score @s Item_Amount run data get block ~ ~ ~ Items[{id:"minecraft:honeycomb",Slot:4b}].count

execute positioned ^ ^ ^2.5 run function fm:deployer/wax

scoreboard players remove @s Item_Amount 1
execute as @s[scores={.Slot=1}] store result block ~ ~ ~ Items[{id:"minecraft:honeycomb",Slot:0b}].count int 1 run scoreboard players get @s Item_Amount
execute as @s[scores={.Slot=2}] store result block ~ ~ ~ Items[{id:"minecraft:honeycomb",Slot:1b}].count int 1 run scoreboard players get @s Item_Amount
execute as @s[scores={.Slot=3}] store result block ~ ~ ~ Items[{id:"minecraft:honeycomb",Slot:2b}].count int 1 run scoreboard players get @s Item_Amount
execute as @s[scores={.Slot=4}] store result block ~ ~ ~ Items[{id:"minecraft:honeycomb",Slot:3b}].count int 1 run scoreboard players get @s Item_Amount
execute as @s[scores={.Slot=5}] store result block ~ ~ ~ Items[{id:"minecraft:honeycomb",Slot:4b}].count int 1 run scoreboard players get @s Item_Amount