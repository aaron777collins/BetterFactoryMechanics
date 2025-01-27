setblock ~ ~ ~ smooth_stone_slab[type=top]

execute align xyz positioned ~.5 ~.5 ~.5 run summon item_display ~ ~-.4955 ~ {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.5f,0f],scale:[1.01f,1.01f,1.01f]},Tags:["Press","Placed"],item:{id:"minecraft:item_frame",components:{"minecraft:item_model":"minecraft:press"}}}
kill @s