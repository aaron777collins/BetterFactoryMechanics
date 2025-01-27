execute unless entity @a[limit=1,distance=..6,sort=nearest,gamemode=creative] run kill @n[type=item,nbt={Item:{id:"minecraft:smooth_stone_slab"}},distance=..1]

execute unless entity @a[limit=1,distance=..6,sort=nearest,gamemode=creative] run summon item ~ ~.5 ~ {Item:{id:"minecraft:item_frame",Count:1b,components:{"minecraft:item_name":'"Press"',"minecraft:lore":['{"text":"Factory Mechanics"}'],"minecraft:item_model":"minecraft:press","minecraft:entity_data":{id:"minecraft:item_frame",Silent:1b,Tags:["Press"],Fixed:1b,Invisible:1b}}}}
kill @s