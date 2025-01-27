schedule clear fm:tick_3s
schedule function fm:tick_3s 3s

data modify storage saw Busy set value 0
data modify storage millstone Busy set value 0

#execute as @e[type=minecraft:item_display,tag=Millstone,tag=Powered] at @s if data entity @s item.components."minecraft:custom_data".Item run function fm:millstone/crush with entity @s item.components."minecraft:custom_data"
#execute as @e[type=minecraft:item_frame,tag=Saw,tag=Placed,tag=Powered] at @s if block ^ ^ ^1 #fm:saw_base_blocks run function fm:saw/break_block