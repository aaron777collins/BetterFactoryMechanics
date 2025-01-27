execute align xyz positioned ~.5 ~.5 ~.5 run setblock ~ ~ ~ minecraft:hopper
execute align xyz positioned ~.5 ~.5 ~.5 run data merge block ~ ~ ~ {CustomName:'"Chute"',lock:{items:"command_block"}}

execute align xyz positioned ~.5 ~.5 ~.5 run summon item_display ~ ~-.4725 ~ {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.47f,0f],scale:[1.01f,1.01f,1.01f]},Tags:["Chute","Placed"],item:{id:"minecraft:item_frame",components:{"minecraft:item_model":"minecraft:chute"}}}
kill @s