schedule clear fm:tick_3t
schedule function fm:tick_3t 3t

execute as @e[type=minecraft:item_frame,tag=Harvester,tag=Placed,tag=Powered] run scoreboard players add @s FM.Int_Save 1