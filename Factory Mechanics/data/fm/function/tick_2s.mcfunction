schedule clear fm:tick_2s
schedule function fm:tick_2s 2s

data modify storage drill Busy set value 0

#execute as @e[type=minecraft:item_frame,tag=Drill,tag=Placed,tag=Powered] at @s unless block ^ ^ ^1 #fm:indestructable run function fm:drill/break_block