execute as @s[tag=!Done_Action] unless block ^ ^ ^2.5 minecraft:water if data storage fm:temp Block{id:"minecraft:flint_and_steel"} run function fm:deployer/light_up
execute as @s[tag=!Done_Action] unless block ^ ^ ^2.5 minecraft:water if data storage fm:temp Block{id:"minecraft:fire_charge"} run function fm:deployer/light_up
execute as @s[tag=!Done_Action] unless block ^ ^ ^2.5 minecraft:water if data storage fm:temp Block{id:"minecraft:fire_charge"} run scoreboard players remove @s Item_Amount 1
execute as @s[tag=!Done_Action] unless block ^ ^ ^2.5 minecraft:water if data storage fm:temp Block{id:"minecraft:fire_charge"} run function fm:deployer/item_save

execute as @s[tag=!Done_Action] if data storage fm:temp Block{id:"minecraft:wooden_sword"} positioned ^ ^ ^2.5 align xyz as @e[dx=0,dy=0,dz=0,type=!#fm:uninteractable] run damage @s 4 minecraft:player_attack by @s from @p
execute as @s[tag=!Done_Action] if data storage fm:temp Block{id:"minecraft:stone_sword"} positioned ^ ^ ^2.5 align xyz as @e[dx=0,dy=0,dz=0,type=!#fm:uninteractable] run damage @s 5 minecraft:player_attack by @s from @p
execute as @s[tag=!Done_Action] if data storage fm:temp Block{id:"minecraft:iron_sword"} positioned ^ ^ ^2.5 align xyz as @e[dx=0,dy=0,dz=0,type=!#fm:uninteractable] run damage @s 6 minecraft:player_attack by @s from @p
execute as @s[tag=!Done_Action] if data storage fm:temp Block{id:"minecraft:golden_sword"} positioned ^ ^ ^2.5 align xyz as @e[dx=0,dy=0,dz=0,type=!#fm:uninteractable] run damage @s 4 minecraft:player_attack by @s from @p
execute as @s[tag=!Done_Action] if data storage fm:temp Block{id:"minecraft:diamond_sword"} positioned ^ ^ ^2.5 align xyz as @e[dx=0,dy=0,dz=0,type=!#fm:uninteractable] run damage @s 7 minecraft:player_attack by @s from @p
execute as @s[tag=!Done_Action] if data storage fm:temp Block{id:"minecraft:netherite_sword"} positioned ^ ^ ^2.5 align xyz as @e[dx=0,dy=0,dz=0,type=!#fm:uninteractable] run damage @s 8 minecraft:player_attack by @s from @p

execute as @s[tag=!Done_Action] if data storage fm:temp Block{id:"minecraft:wooden_axe"} positioned ^ ^ ^2.5 align xyz run damage @n[dx=0,dy=0,dz=0,type=!#fm:uninteractable] 7 minecraft:player_attack by @s from @p
execute as @s[tag=!Done_Action] if data storage fm:temp Block{id:"minecraft:stone_axe"} positioned ^ ^ ^2.5 align xyz run damage @n[dx=0,dy=0,dz=0,type=!#fm:uninteractable] 9 minecraft:player_attack by @s from @p
execute as @s[tag=!Done_Action] if data storage fm:temp Block{id:"minecraft:iron_axe"} positioned ^ ^ ^2.5 align xyz run damage @n[dx=0,dy=0,dz=0,type=!#fm:uninteractable] 9 minecraft:player_attack by @s from @p
execute as @s[tag=!Done_Action] if data storage fm:temp Block{id:"minecraft:golden_axe"} positioned ^ ^ ^2.5 align xyz run damage @n[dx=0,dy=0,dz=0,type=!#fm:uninteractable] 7 minecraft:player_attack by @s from @p
execute as @s[tag=!Done_Action] if data storage fm:temp Block{id:"minecraft:diamond_axe"} positioned ^ ^ ^2.5 align xyz run damage @n[dx=0,dy=0,dz=0,type=!#fm:uninteractable] 9 minecraft:player_attack by @s from @p
execute as @s[tag=!Done_Action] if data storage fm:temp Block{id:"minecraft:netherite_axe"} positioned ^ ^ ^2.5 align xyz run damage @n[dx=0,dy=0,dz=0,type=!#fm:uninteractable] 10 minecraft:player_attack by @s from @p

execute as @s[tag=!Done_Action] if data storage fm:temp Block{id:"minecraft:trident"} positioned ^ ^ ^2.5 align xyz run damage @n[dx=0,dy=0,dz=0,type=!#fm:uninteractable] 9 minecraft:player_attack by @s from @p

execute as @s[tag=!Done_Action] if data storage fm:temp Block{id:"minecraft:shears"} positioned ^ ^ ^2.5 align xyz as @n[dx=0,dy=0,dz=0,type=!#fm:uninteractable] positioned ^ ^ ^1.5 run function fm:deployer/shear_entity

execute as @s[tag=!Done_Action] if data storage fm:temp Block{id:"minecraft:golden_apple"} positioned ^ ^ ^2.5 align xyz run tag @n[dx=0,dy=0,dz=0,type=zombie_villager,nbt={ConversionTime:-1,active_effects:[{id:"minecraft:weakness"}]}] add FM.Convert
execute as @s[tag=!Done_Action] if data storage fm:temp Block{id:"minecraft:golden_apple"} positioned ^ ^ ^2.5 align xyz if entity @n[dx=0,dy=0,dz=0,type=zombie_villager,tag=FM.Convert] run scoreboard players remove @s Item_Amount 1
execute as @s[tag=!Done_Action] if data storage fm:temp Block{id:"minecraft:golden_apple"} positioned ^ ^ ^2.5 align xyz if entity @n[dx=0,dy=0,dz=0,type=zombie_villager,tag=FM.Convert] at @s run function fm:deployer/item_save
execute as @s[tag=!Done_Action] if data storage fm:temp Block{id:"minecraft:golden_apple"} positioned ^ ^ ^2.5 align xyz as @n[dx=0,dy=0,dz=0,type=zombie_villager,tag=FM.Convert] run function fm:deployer/convert_villager
execute as @s[tag=!Done_Action] if data storage fm:temp Block{id:"minecraft:golden_apple"} positioned ^ ^ ^2.5 align xyz if entity @n[dx=0,dy=0,dz=0,type=zombie_villager,tag=FM.Convert] run tag @s add Done_Action

execute as @s[tag=!Done_Action] if data storage fm:temp Block{id:"minecraft:bucket"} positioned ^ ^ ^2.5 align xyz if entity @n[dx=0,dy=0,dz=0,type=#fm:milkable] at @s run function fm:deployer/milk_entity
execute as @s[tag=!Done_Action] if data storage fm:temp Block{id:"minecraft:brush"} positioned ^ ^ ^2.5 align xyz if entity @n[dx=0,dy=0,dz=0,type=minecraft:armadillo] at @s run function fm:deployer/brush_entity

execute as @s[tag=!Done_Action] if data storage fm:temp Block{id:"minecraft:wheat"} positioned ^ ^ ^2.5 align xyz run tag @n[dx=0,dy=0,dz=0,type=#fm:wheat_feed,nbt={InLove:0}] add FM.Feed
execute as @s[tag=!Done_Action] if data storage fm:temp Block{id:"minecraft:cod"} positioned ^ ^ ^2.5 align xyz run tag @n[dx=0,dy=0,dz=0,type=#fm:fish_feed,nbt={InLove:0}] add FM.Feed
execute as @s[tag=!Done_Action] if data storage fm:temp Block{id:"minecraft:salmon"} positioned ^ ^ ^2.5 align xyz run tag @n[dx=0,dy=0,dz=0,type=#fm:fish_feed,nbt={InLove:0}] add FM.Feed
execute as @s[tag=!Done_Action] if data storage fm:temp Block{id:"minecraft:wheat_seeds"} positioned ^ ^ ^2.5 align xyz run tag @n[dx=0,dy=0,dz=0,type=chicken,nbt={InLove:0}] add FM.Feed

#execute as @s[tag=!Done_Action] if data storage fm:temp Block{id:"minecraft:seagrass"} positioned ^ ^ ^2.5 align xyz run tag @n[dx=0,dy=0,dz=0,type=turtle,nbt={InLove:0}] add FM.Feed
#execute as @s[tag=!Done_Action] if data storage fm:temp Block{id:"minecraft:bamboo"} positioned ^ ^ ^2.5 align xyz run tag @n[dx=0,dy=0,dz=0,type=panda,nbt={InLove:0}] add FM.Feed
#execute as @s[tag=!Done_Action] if data storage fm:temp Block{id:"minecraft:warped_fungus"} positioned ^ ^ ^2.5 align xyz run tag @n[dx=0,dy=0,dz=0,type=strider,nbt={InLove:0}] add FM.Feed
#execute as @s[tag=!Done_Action] if data storage fm:temp Block{id:"minecraft:crimson_fungus"} positioned ^ ^ ^2.5 align xyz run tag @n[dx=0,dy=0,dz=0,type=hoglin,nbt={InLove:0}] add FM.Feed
execute as @s[tag=!Done_Action] if data storage fm:temp Block{id:"minecraft:slime_ball"} positioned ^ ^ ^2.5 align xyz run tag @n[dx=0,dy=0,dz=0,type=frog,nbt={InLove:0}] add FM.Feed
#execute as @s[tag=!Done_Action] if data storage fm:temp Block{id:"minecraft:cactus"} positioned ^ ^ ^2.5 align xyz run tag @n[dx=0,dy=0,dz=0,type=camel,nbt={InLove:0}] add FM.Feed
execute as @s[tag=!Done_Action] if data storage fm:temp Block{id:"minecraft:torchflower_seeds"} positioned ^ ^ ^2.5 align xyz run tag @n[dx=0,dy=0,dz=0,type=sniffer,nbt={InLove:0}] add FM.Feed
execute as @s[tag=!Done_Action] if data storage fm:temp Block{id:"minecraft:spider_eye"} positioned ^ ^ ^2.5 align xyz run tag @n[dx=0,dy=0,dz=0,type=armadillo,nbt={InLove:0}] add FM.Feed
#execute as @s[tag=!Done_Action] if data storage fm:temp Block{id:"minecraft:hay_block"} positioned ^ ^ ^2.5 align xyz run tag @n[dx=0,dy=0,dz=0,type=#fm:llama,nbt={InLove:0}] add FM.Feed

execute as @s[tag=!Done_Action] if data storage fm:temp Block{id:"minecraft:carrot"} positioned ^ ^ ^2.5 align xyz run tag @n[dx=0,dy=0,dz=0,type=#fm:carrot_feed,nbt={InLove:0}] add FM.Feed
execute as @s[tag=!Done_Action] if data storage fm:temp Block{id:"minecraft:potato"} positioned ^ ^ ^2.5 align xyz run tag @n[dx=0,dy=0,dz=0,type=pig,nbt={InLove:0}] add FM.Feed
execute as @s[tag=!Done_Action] if data storage fm:temp Block{id:"minecraft:beetroot"} positioned ^ ^ ^2.5 align xyz run tag @n[dx=0,dy=0,dz=0,type=pig,nbt={InLove:0}] add FM.Feed

execute as @s[tag=!Done_Action] positioned ^ ^ ^2.5 align xyz if entity @n[dx=0,dy=0,dz=0,type=!#fm:uninteractable,tag=FM.Feed] run scoreboard players remove @s Item_Amount 1
execute as @s[tag=!Done_Action] positioned ^ ^ ^2.5 align xyz if entity @n[dx=0,dy=0,dz=0,type=!#fm:uninteractable,tag=FM.Feed] at @s run function fm:deployer/item_save
execute as @s[tag=!Done_Action] positioned ^ ^ ^2.5 align xyz as @n[dx=0,dy=0,dz=0,type=!#fm:uninteractable,tag=FM.Feed] run function fm:deployer/feed
execute as @s[tag=!Done_Action] positioned ^ ^ ^2.5 align xyz if entity @n[dx=0,dy=0,dz=0,type=!#fm:uninteractable,tag=FM.Feed] run tag @s add Done_Action

execute as @s[tag=!Done_Action] if data storage fm:temp Block{id:"minecraft:name_tag"} positioned ^ ^ ^2.5 align xyz run tag @n[dx=0,dy=0,dz=0,type=!#fm:uninteractable,type=!minecraft:player] add FM.Name

execute as @s[tag=!Done_Action] positioned ^ ^ ^2.5 align xyz if entity @n[dx=0,dy=0,dz=0,type=!#fm:uninteractable,tag=FM.Name] run scoreboard players remove @s Item_Amount 1
execute as @s[tag=!Done_Action] positioned ^ ^ ^2.5 align xyz if entity @n[dx=0,dy=0,dz=0,type=!#fm:uninteractable,tag=FM.Name] at @s run function fm:deployer/item_save
execute as @s[tag=!Done_Action] positioned ^ ^ ^2.5 align xyz as @n[dx=0,dy=0,dz=0,type=!#fm:uninteractable,tag=FM.Name] run function fm:deployer/name_entity
execute as @s[tag=!Done_Action] positioned ^ ^ ^2.5 align xyz if entity @n[dx=0,dy=0,dz=0,type=!#fm:uninteractable,tag=FM.Name] run tag @s add Done_Action

execute as @s[tag=!Done_Action] unless block ^ ^ ^2.5 minecraft:water run function fm:deployer/place_block