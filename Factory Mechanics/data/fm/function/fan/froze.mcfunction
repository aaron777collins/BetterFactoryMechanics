execute as @s[nbt={Item:{id:"minecraft:packed_ice"}}] run data merge entity @s {Item:{id:"minecraft:blue_ice"}}
execute as @s[nbt={Item:{id:"minecraft:ice"}}] run data merge entity @s {Item:{id:"minecraft:packed_ice"}}

execute as @s[nbt={Item:{id:"minecraft:magma_block"}}] run data merge entity @s {Item:{id:"minecraft:obsidian"}}
execute as @s[nbt={Item:{id:"minecraft:snow"}}] run data merge entity @s {Item:{id:"minecraft:snow_block"}}
execute as @s[nbt={Item:{id:"minecraft:snowball"}}] run data merge entity @s {Item:{id:"minecraft:snow"}}
execute as @s[nbt={Item:{id:"minecraft:magma_cream"}}] run data merge entity @s {Item:{id:"minecraft:slime_ball"}}


execute as @s[nbt={Item:{id:"minecraft:powder_snow_bucket"}}] run tag @s add Powder_Snow_Bucket
execute as @s[tag=Powder_Snow_Bucket] store result score @s Item_Amount run data get entity @s Item.count
execute as @s[tag=Powder_Snow_Bucket] run data modify entity @s Item.id set value "minecraft:ice"

execute at @s[tag=Powder_Snow_Bucket] run summon item ~ ~ ~ {Tags:["Bucket"],Item:{id:"minecraft:bucket",count:1}}
execute at @s[tag=Powder_Snow_Bucket] as @e[type=item,tag=Bucket,sort=nearest,limit=1] store result entity @s Item.count int 1 run scoreboard players get @e[type=item,tag=Powder_Snow_Bucket,sort=nearest,limit=1] Item_Amount
execute at @s[tag=Powder_Snow_Bucket] run tag @e[type=item,tag=Bucket,sort=nearest,limit=1] remove Bucket

execute as @s[tag=Powder_Snow_Bucket] run scoreboard players reset @s Item_Amount
execute as @s[tag=Powder_Snow_Bucket] run tag @s remove Powder_Snow_Bucket

execute as @s[nbt={Item:{id:"minecraft:water_bucket"}}] run data merge entity @s {Item:{id:"minecraft:powder_snow_bucket"}}


execute as @s[nbt={Item:{id:"minecraft:potion",components:{"minecraft:potion_contents":{potion:"minecraft:water"}}}}] run tag @s add Water_Bottle
execute as @s[tag=Water_Bottle] store result score @s Item_Amount run data get entity @s Item.count
execute as @s[tag=Water_Bottle] run data modify entity @s Item.id set value "minecraft:snowball"

execute at @s[tag=Water_Bottle] run summon item ~ ~ ~ {Tags:["Bottle"],Item:{id:"minecraft:glass_bottle",count:1}}
execute at @s[tag=Water_Bottle] as @e[type=item,tag=Bottle,sort=nearest,limit=1] store result entity @s Item.count int 1 run scoreboard players get @e[type=item,tag=Water_Bottle,sort=nearest,limit=1] Item_Amount
execute at @s[tag=Water_Bottle] run tag @e[type=item,tag=Bottle,sort=nearest,limit=1] remove Bottle

execute as @s[tag=Water_Bottle] run scoreboard players reset @s Item_Amount
execute as @s[tag=Water_Bottle] run tag @s remove Water_Bottle


#execute as @s[nbt={Item:{id:"minecraft:honey_bottle"}}] run tag @s add Honey_Bottle
#execute as @s[tag=Honey_Bottle] store result score @s Item_Amount run data get entity @s Item.count
#execute as @s[tag=Honey_Bottle] run data modify entity @s Item.id set value "minecraft:honeycomb"

#execute at @s[tag=Honey_Bottle] run summon item ~ ~ ~ {Tags:["Bottle"],Item:{id:"minecraft:glass_bottle",count:1}}
#execute at @s[tag=Honey_Bottle] as @e[type=item,tag=Bottle,sort=nearest,limit=1] store result entity @s Item.count int 1 run scoreboard players get @e[type=item,tag=Honey_Bottle,sort=nearest,limit=1] Item_Amount
#execute at @s[tag=Honey_Bottle] run tag @e[type=item,tag=Bottle,sort=nearest,limit=1] remove Bottle

#execute as @s[tag=Honey_Bottle] run scoreboard players reset @s Item_Amount
#execute as @s[tag=Honey_Bottle] run tag @s remove Honey_Bottle








execute as @s[nbt={Item:{id:"minecraft:dragon_breath"}}] run tag @s add Dragon
execute as @s[tag=Dragon] store result score @s Item_Amount run data get entity @s Item.count

execute as @s[tag=Dragon,scores={Item_Amount=1..}] run function fm:fan/freeze_individual
execute as @s[tag=Dragon] run data modify entity @s Item.id set value "minecraft:glass_bottle"

execute as @s[tag=Dragon,scores={New_Item_Amount=1..}] run summon item ~ ~ ~ {Tags:["Pink_Dye"],Item:{id:"minecraft:pink_dye",count:1}}
execute at @s[tag=Dragon,scores={New_Item_Amount=1..}] as @n[type=item,tag=Pink_Dye] store result entity @s Item.count int 1 run scoreboard players get @n[type=item,tag=Dragon] New_Item_Amount
execute at @s[tag=Dragon,scores={New_Item_Amount=1..}] run tag @n[type=item,tag=Pink_Dye] remove Pink_Dye


execute as @s[tag=Dragon,scores={Byproduct_Item_Amount=1..}] run summon item ~ ~ ~ {Tags:["White_Dye"],Item:{id:"minecraft:white_dye",count:1}}
execute at @s[tag=Dragon,scores={Byproduct_Item_Amount=1..}] as @n[type=item,tag=White_Dye] store result entity @s Item.count int 1 run scoreboard players get @n[type=item,tag=Dragon] Byproduct_Item_Amount
execute at @s[tag=Dragon,scores={Byproduct_Item_Amount=1..}] run tag @n[type=item,tag=White_Dye] remove White_Dye


execute as @s[tag=Dragon] run scoreboard players reset @s Item_Amount
execute as @s[tag=Dragon] run scoreboard players reset @s Byproduct_Item_Amount
execute as @s[tag=Dragon] run scoreboard players reset @s New_Item_Amount
execute as @s[tag=Dragon] run tag @s remove Dragon









scoreboard players reset @s Freezing_Time