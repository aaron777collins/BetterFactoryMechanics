summon minecraft:item ~ ~-0.5 ~ {Tags:["Chute_Dropped"],Health:5s,PickupDelay:40s,Item:{count:1,id:"minecraft:stone_button"}}
execute as @e[type=item,tag=Chute_Dropped] at @s run data modify entity @s Item set from block ~ ~0.5 ~ Items[-1]
data remove block ~ ~ ~ Items[-1]
tag @e[type=item,tag=Chute_Dropped] remove Chute_Dropped
playsound minecraft:block.dispenser.dispense block @a ~ ~ ~