schedule clear fm:tick_1s
schedule function fm:tick_1s 1s

data modify storage chute Busy set value 0
data modify storage harvester Busy set value 0

#execute as @e[type=minecraft:item_display,tag=Chute] at @s unless block ~ ~-1 ~ #fm:container if data block ~ ~ ~ Items[] run function fm:chute/drop
#execute as @e[type=minecraft:item_frame,tag=Harvester,tag=Placed,tag=Powered] at @s if block ^ ^ ^1 #fm:harvester_blocks run function fm:harvester/action