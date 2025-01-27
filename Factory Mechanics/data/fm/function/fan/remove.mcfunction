execute unless entity @a[limit=1,distance=..6,sort=nearest,gamemode=creative] run kill @n[type=item,nbt={Item:{id:"minecraft:chain"}},distance=..1]


execute unless entity @a[limit=1,distance=..6,sort=nearest,gamemode=creative] run summon item ^ ^ ^.5 {Item:{id:"minecraft:item_frame",count:1,components:{"minecraft:item_name":'"Copper Fan"',"minecraft:lore":['{"text":"Factory Mechanics"}'],"minecraft:item_model":"minecraft:copper_fan","minecraft:entity_data":{id:"minecraft:item_frame",Silent:1b,Tags:["Fan"],Item:{id:"minecraft:item_frame",count:1b,components:{"minecraft:item_model":"minecraft:copper_fan"}},Fixed:1b,Invisible:1b,Invulnerable:1b}}}}
kill @s