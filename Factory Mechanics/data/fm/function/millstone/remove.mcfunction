execute unless entity @a[limit=1,distance=..6,sort=nearest,gamemode=creative] run kill @n[type=item,nbt={Item:{id:"minecraft:smooth_stone_slab"}},distance=..1]

execute unless entity @a[limit=1,distance=..6,sort=nearest,gamemode=creative] run summon item ~ ~.5 ~ {Item:{id:"minecraft:item_frame",count:1,components:{"minecraft:item_name":'"Millstone"',"minecraft:lore":['{"text":"Factory Mechanics"}'],"minecraft:item_model":"minecraft:millstone","minecraft:entity_data":{id:"minecraft:item_frame",Silent:1b,Tags:["Millstone"],Fixed:1b,Invisible:1b}}}}
kill @s