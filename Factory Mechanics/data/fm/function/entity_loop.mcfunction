execute as @s[type=minecraft:item_frame,tag=Chute,tag=!Placed] unless block ~ ~ ~ #minecraft:replaceable run function fm:chute/remove
execute as @s[type=minecraft:item_frame,tag=Chute,tag=!Placed] if block ~ ~ ~ #minecraft:replaceable run function fm:chute/place
execute as @s[type=minecraft:item_display,tag=Chute] run function fm:chute/on_block

execute as @s[type=minecraft:item_frame,tag=Fan,tag=!Placed] unless block ~ ~ ~ #minecraft:replaceable run function fm:fan/remove
execute as @s[type=minecraft:item_frame,tag=Fan,tag=!Placed] if block ~ ~ ~ #minecraft:replaceable run function fm:fan/place
execute as @s[type=minecraft:item_frame,tag=Fan,tag=Placed] run function fm:fan/on_block

execute as @s[type=minecraft:item_frame,tag=Deployer,tag=!Placed] unless block ~ ~ ~ #minecraft:replaceable run function fm:deployer/remove
execute as @s[type=minecraft:item_frame,tag=Deployer,tag=!Placed] if block ~ ~ ~ #minecraft:replaceable run function fm:deployer/place
execute as @s[type=minecraft:item_frame,tag=Deployer,tag=Placed] run function fm:deployer/on_block

execute as @s[type=minecraft:item_frame,tag=Saw,tag=!Placed] unless block ~ ~ ~ #minecraft:replaceable run function fm:saw/remove
execute as @s[type=minecraft:item_frame,tag=Saw,tag=!Placed] if block ~ ~ ~ #minecraft:replaceable run function fm:saw/place
execute as @s[type=minecraft:item_frame,tag=Saw,tag=Placed] run function fm:saw/on_block

execute as @s[type=minecraft:item_frame,tag=Drill,tag=!Placed] unless block ~ ~ ~ #minecraft:replaceable run function fm:drill/remove
execute as @s[type=minecraft:item_frame,tag=Drill,tag=!Placed] if block ~ ~ ~ #minecraft:replaceable run function fm:drill/place
execute as @s[type=minecraft:item_frame,tag=Drill,tag=Placed] run function fm:drill/on_block

execute as @s[type=minecraft:item_frame,tag=Millstone,tag=!Placed] unless block ~ ~ ~ #minecraft:replaceable run function fm:millstone/remove
execute as @s[type=minecraft:item_frame,tag=Millstone,tag=!Placed] if block ~ ~ ~ #minecraft:replaceable run function fm:millstone/place
execute as @s[type=minecraft:item_display,tag=Millstone] run function fm:millstone/on_block

execute as @s[type=minecraft:item_frame,tag=Harvester,tag=!Placed] unless block ~ ~ ~ #minecraft:replaceable run function fm:harvester/remove
execute as @s[type=minecraft:item_frame,tag=Harvester,tag=!Placed] if block ~ ~ ~ #minecraft:replaceable run function fm:harvester/place
execute as @s[type=minecraft:item_frame,tag=Harvester,tag=Placed] run function fm:harvester/on_block

execute as @s[type=minecraft:item_frame,tag=Press,tag=!Placed] unless block ~ ~ ~ #minecraft:replaceable run function fm:press/remove
execute as @s[type=minecraft:item_frame,tag=Press,tag=!Placed] if block ~ ~ ~ #minecraft:replaceable run function fm:press/place
execute as @s[type=minecraft:item_display,tag=Press] run function fm:press/on_block

scoreboard players remove @s[type=player,scores={FM.Int_Save=1..}] FM.Int_Save 1
execute as @s[type=player,scores={FM.Int_Save=0}] if items entity @s weapon.mainhand paper[minecraft:item_model="minecraft:extended_mechanical_grip"] run item modify entity @s weapon.mainhand fm:retract_grip
execute as @s[type=player,scores={FM.Int_Save=0}] if items entity @s weapon.offhand paper[minecraft:item_model="minecraft:extended_mechanical_grip"] run item modify entity @s weapon.offhand fm:retract_grip

scoreboard players reset @s[type=player,scores={FM.Int_Save=0}] FM.Int_Save

tag @s[type=minecraft:item_frame,tag=!Harvester,tag=!Drill,tag=!Saw,tag=!Deployer,tag=!Fan] add FM.Ignore
tag @s[type=minecraft:item_display,tag=!Press,tag=!Chute,tag=!Millstone] add FM.Ignore