summon minecraft:item ~ ~-.5 ~ {Tags:["Millstone_Dropped"],Health:5s,PickupDelay:23s,Item:{count:1,id:"minecraft:stone_button"}}
execute as @e[type=item,tag=Millstone_Dropped] run data modify entity @s Item set from entity @e[type=item_display,tag=Millstone,sort=nearest,limit=1,distance=..0.5] item.components."minecraft:custom_data".Output
data remove entity @s item.components."minecraft:custom_data".Output
tag @e[type=item,tag=Millstone_Dropped] remove Millstone_Dropped
playsound minecraft:block.dispenser.dispense block @a ~ ~ ~