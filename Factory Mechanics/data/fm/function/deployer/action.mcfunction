data modify storage fm:temp Block set from block ~ ~ ~ Items[-1]
execute store result score @s Item_Amount run data get block ~ ~ ~ Items[-1].count

execute as @s[tag=!Done_Action] if block ^ ^ ^2.5 #minecraft:air run function fm:deployer/action_air
execute as @s[tag=!Done_Action] if block ^ ^ ^2.5 minecraft:water run function fm:deployer/action_air

execute as @s[tag=!Done_Action] if block ^ ^ ^2.5 minecraft:cave_vines_plant[berries=true] if data storage fm:temp Block{id:"minecraft:shears"} run function fm:deployer/shear
execute as @s[tag=!Done_Action] if block ^ ^ ^2.5 minecraft:cave_vines[berries=true] if data storage fm:temp Block{id:"minecraft:shears"} run function fm:deployer/shear
execute as @s[tag=!Done_Action] if block ^ ^ ^2.5 minecraft:sweet_berry_bush unless block ^ ^ ^2.5 minecraft:sweet_berry_bush[age=1] if data storage fm:temp Block{id:"minecraft:shears"} run function fm:deployer/shear
execute as @s[tag=!Done_Action] if block ^ ^ ^2.5 minecraft:cocoa[age=2] if data storage fm:temp Block{id:"minecraft:shears"} run function fm:deployer/shear
execute as @s[tag=!Done_Action] if block ^ ^ ^2.5 #minecraft:crops[age=7] if data storage fm:temp Block{id:"minecraft:shears"} run function fm:deployer/shear
execute as @s[tag=!Done_Action] if block ^ ^ ^2.5 minecraft:beetroots[age=3] if data storage fm:temp Block{id:"minecraft:shears"} run function fm:deployer/shear
execute as @s[tag=!Done_Action] if block ^ ^ ^2.5 pumpkin if data storage fm:temp Block{id:"minecraft:shears"} run function fm:deployer/shear

#execute as @s[tag=!Done_Action] if block ^ ^ ^2.5 minecraft:cut_copper_slab if data storage fm:temp Block{id:"minecraft:honeycomb"} run function fm:deployer/wax_parent
#execute as @s[tag=!Done_Action] if block ^ ^ ^2.5 minecraft:cut_copper_slab if data storage fm:temp Block{id:"minecraft:honeycomb_block"} positioned ^ ^ ^2.5 run function fm:deployer/wax

execute as @s[tag=!Done_Action] if block ^ ^ ^2.5 #minecraft:saplings if data storage fm:temp Block{id:"minecraft:bone_meal"} run function fm:deployer/bonemeal_parent

execute as @s[tag=!Done_Action] if block ^ ^ ^2.5 minecraft:brown_mushroom if data storage fm:temp Block{id:"minecraft:bone_meal"} run function fm:deployer/bonemeal_parent
execute as @s[tag=!Done_Action] if block ^ ^ ^2.5 minecraft:red_mushroom if data storage fm:temp Block{id:"minecraft:bone_meal"} run function fm:deployer/bonemeal_parent
execute as @s[tag=!Done_Action] if block ^ ^ ^2.5 minecraft:warped_fungus if block ^ ^-1 ^2.5 warped_nylium if data storage fm:temp Block{id:"minecraft:bone_meal"} run function fm:deployer/bonemeal_parent
execute as @s[tag=!Done_Action] if block ^ ^ ^2.5 minecraft:crimson_fungus if block ^ ^-1 ^2.5 crimson_nylium if data storage fm:temp Block{id:"minecraft:bone_meal"} run function fm:deployer/bonemeal_parent



execute as @s[tag=!Done_Action] if block ^ ^ ^2.5 pink_petals unless block ^ ^ ^2.5 pink_petals[flower_amount=4] if data storage fm:temp Block{id:"minecraft:bone_meal"} run function fm:deployer/bonemeal_parent
execute as @s[tag=!Done_Action] if block ^ ^ ^2.5 sweet_berry_bush unless block ^ ^ ^2.5 sweet_berry_bush[age=3] if data storage fm:temp Block{id:"minecraft:bone_meal"} run function fm:deployer/bonemeal_parent
execute as @s[tag=!Done_Action] if block ^ ^ ^2.5 cocoa unless block ^ ^ ^2.5 cocoa[age=2] if data storage fm:temp Block{id:"minecraft:bone_meal"} run function fm:deployer/bonemeal_parent
execute as @s[tag=!Done_Action] if block ^ ^ ^2.5 cave_vines unless block ^ ^ ^2.5 cave_vines[berries=true] if data storage fm:temp Block{id:"minecraft:bone_meal"} run function fm:deployer/bonemeal_parent
execute as @s[tag=!Done_Action] if block ^ ^ ^2.5 cave_vines_plant unless block ^ ^ ^2.5 cave_vines_plant[berries=true] if data storage fm:temp Block{id:"minecraft:bone_meal"} run function fm:deployer/bonemeal_parent
execute as @s[tag=!Done_Action] if block ^ ^ ^2.5 #minecraft:crops unless block ^ ^ ^2.5 #minecraft:crops[age=7] unless block ^ ^ ^2.5 beetroots[age=3] unless block ^ ^ ^2.5 torchflower_crop unless block ^ ^ ^2.5 pitcher_crop if data storage fm:temp Block{id:"minecraft:bone_meal"} run function fm:deployer/bonemeal_parent

execute as @s[tag=!Done_Action] if block ^ ^ ^2.5 sand run function fm:deployer/bury_parent
execute as @s[tag=!Done_Action] if block ^ ^ ^2.5 gravel run function fm:deployer/bury_parent

execute as @s[tag=!Done_Action] if block ^ ^ ^2.5 water_cauldron run function fm:deployer/bottle_parent
execute as @s[tag=!Done_Action] if block ^ ^ ^2.5 dirt if data storage fm:temp Block{id:"minecraft:potion",components:{"minecraft:potion_contents":{potion:"minecraft:water"}}} run function fm:deployer/bottle_mud
execute as @s[tag=!Done_Action] if block ^ ^ ^2.5 cauldron if data storage fm:temp Block{id:"minecraft:potion",components:{"minecraft:potion_contents":{potion:"minecraft:water"}}} run function fm:deployer/bottle_place
execute as @s[tag=!Done_Action] if block ^ ^ ^2.5 #minecraft:cauldrons run function fm:deployer/bucket_parent

execute as @s[tag=!Done_Action] if block ^ ^ ^2.5 suspicious_sand if data storage fm:temp Block{id:"minecraft:brush"} run function fm:deployer/brush
execute as @s[tag=!Done_Action] if block ^ ^ ^2.5 suspicious_gravel if data storage fm:temp Block{id:"minecraft:brush"} run function fm:deployer/brush

execute as @s[tag=!Done_Action] if block ^ ^ ^2.5 respawn_anchor unless block ^ ^ ^2.5 respawn_anchor[charges=4] if data storage fm:temp Block{id:"minecraft:glowstone"} run function fm:deployer/charge_respawn_anchor