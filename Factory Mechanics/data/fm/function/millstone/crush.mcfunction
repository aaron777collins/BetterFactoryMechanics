$data modify entity @s item.components."minecraft:custom_data".Output set value $(Item)

execute as @s[nbt={item:{components:{"minecraft:custom_data":{Item:{id:"minecraft:stone"}}}}}] run data modify entity @s item.components."minecraft:custom_data".Output.id set value "minecraft:cobblestone"
execute as @s[nbt={item:{components:{"minecraft:custom_data":{Item:{id:"minecraft:andesite"}}}}}] run data modify entity @s item.components."minecraft:custom_data".Output.id set value "minecraft:cobblestone"
execute as @s[nbt={item:{components:{"minecraft:custom_data":{Item:{id:"minecraft:deepslate"}}}}}] run data modify entity @s item.components."minecraft:custom_data".Output.id set value "minecraft:cobbled_deepslate"
execute as @s[nbt={item:{components:{"minecraft:custom_data":{Item:{id:"minecraft:blackstone"}}}}}] run data modify entity @s item.components."minecraft:custom_data".Output.id set value "minecraft:gravel"
execute as @s[nbt={item:{components:{"minecraft:custom_data":{Item:{id:"minecraft:cobbled_deepslate"}}}}}] run data modify entity @s item.components."minecraft:custom_data".Output.id set value "minecraft:gravel"
execute as @s[nbt={item:{components:{"minecraft:custom_data":{Item:{id:"minecraft:cobblestone"}}}}}] run data modify entity @s item.components."minecraft:custom_data".Output.id set value "minecraft:gravel"
execute as @s[nbt={item:{components:{"minecraft:custom_data":{Item:{id:"minecraft:gravel"}}}}}] run data modify entity @s item.components."minecraft:custom_data".Output.id set value "minecraft:sand"
execute as @s[nbt={item:{components:{"minecraft:custom_data":{Item:{id:"minecraft:cactus"}}}}}] run data modify entity @s item.components."minecraft:custom_data".Output.id set value "minecraft:green_dye"
execute as @s[nbt={item:{components:{"minecraft:custom_data":{Item:{id:"minecraft:dripstone_block"}}}}}] run data modify entity @s item.components."minecraft:custom_data".Output.id set value "minecraft:clay_ball"
execute as @s[nbt={item:{components:{"minecraft:custom_data":{Item:{id:"minecraft:granite"}}}}}] run data modify entity @s item.components."minecraft:custom_data".Output.id set value "minecraft:red_sand"
execute as @s[nbt={item:{components:{"minecraft:custom_data":{Item:{id:"minecraft:sandstone"}}}}}] run data modify entity @s item.components."minecraft:custom_data".Output.id set value "minecraft:sand"
execute as @s[nbt={item:{components:{"minecraft:custom_data":{Item:{id:"minecraft:red_sandstone"}}}}}] run data modify entity @s item.components."minecraft:custom_data".Output.id set value "minecraft:red_sand"
execute as @s[nbt={item:{components:{"minecraft:custom_data":{Item:{id:"minecraft:terracotta"}}}}}] run data modify entity @s item.components."minecraft:custom_data".Output.id set value "minecraft:red_sand"
execute as @s[nbt={item:{components:{"minecraft:custom_data":{Item:{id:"minecraft:coarse_dirt"}}}}}] run data modify entity @s item.components."minecraft:custom_data".Output.id set value "minecraft:dirt"
execute as @s[nbt={item:{components:{"minecraft:custom_data":{Item:{id:"minecraft:saddle"}}}}}] run data modify entity @s item.components."minecraft:custom_data".Output.id set value "minecraft:leather"


execute as @s[nbt={item:{components:{"minecraft:custom_data":{Item:{id:"minecraft:stone_bricks"}}}}}] run data modify entity @s item.components."minecraft:custom_data".Output.id set value "minecraft:cracked_stone_bricks"
execute as @s[nbt={item:{components:{"minecraft:custom_data":{Item:{id:"minecraft:deepslate_bricks"}}}}}] run data modify entity @s item.components."minecraft:custom_data".Output.id set value "minecraft:cracked_deepslate_bricks"
execute as @s[nbt={item:{components:{"minecraft:custom_data":{Item:{id:"minecraft:deepslate_tiles"}}}}}] run data modify entity @s item.components."minecraft:custom_data".Output.id set value "minecraft:cracked_deepslate_tiles"
execute as @s[nbt={item:{components:{"minecraft:custom_data":{Item:{id:"minecraft:nether_bricks"}}}}}] run data modify entity @s item.components."minecraft:custom_data".Output.id set value "minecraft:cracked_nether_bricks"
execute as @s[nbt={item:{components:{"minecraft:custom_data":{Item:{id:"minecraft:polished_blackstone_bricks"}}}}}] run data modify entity @s item.components."minecraft:custom_data".Output.id set value "minecraft:cracked_polished_blackstone_bricks"

execute as @s[nbt={item:{components:{"minecraft:custom_data":{Item:{id:"minecraft:basalt"}}}}}] run data modify entity @s item.components."minecraft:custom_data".Output.id set value "minecraft:tuff"
execute as @s[nbt={item:{components:{"minecraft:custom_data":{Item:{id:"minecraft:smooth_basalt"}}}}}] run data modify entity @s item.components."minecraft:custom_data".Output.id set value "minecraft:basalt"


execute as @s[nbt={item:{components:{"minecraft:custom_data":{Item:{id:"minecraft:red_nether_bricks"}}}}}] run tag @s add Redstone
execute as @s[tag=Redstone] store result score @s Item_Amount run data get entity @s item.components."minecraft:custom_data".Item.count
execute as @s[tag=Redstone,scores={Item_Amount=1..}] run function fm:millstone/crush_individual
execute as @s[tag=Redstone] store result entity @s item.components."minecraft:custom_data".Output.count int 1 run scoreboard players get @s New_Item_Amount
execute as @s[tag=Redstone] run data modify entity @s item.components."minecraft:custom_data".Output.id set value "minecraft:redstone"
execute as @s[tag=Redstone] run scoreboard players reset @s Item_Amount
execute as @s[tag=Redstone] run scoreboard players reset @s New_Item_Amount
execute as @s[tag=Redstone] run tag @s remove Redstone

execute as @s[nbt={item:{components:{"minecraft:custom_data":{Item:{id:"minecraft:clay"}}}}}] run tag @s add Clay
execute as @s[tag=Clay] store result score @s Item_Amount run data get entity @s item.components."minecraft:custom_data".Item.count
execute as @s[tag=Clay,scores={Item_Amount=1..}] run function fm:millstone/crush_individual
execute as @s[tag=Clay] store result entity @s item.components."minecraft:custom_data".Output.count int 1 run scoreboard players get @s New_Item_Amount
execute as @s[tag=Clay] run data modify entity @s item.components."minecraft:custom_data".Output.id set value "minecraft:clay_ball"
execute as @s[tag=Clay] run scoreboard players reset @s Item_Amount
execute as @s[tag=Clay] run scoreboard players reset @s New_Item_Amount
execute as @s[tag=Clay] run tag @s remove Clay

#execute as @s[nbt={item:{components:{"minecraft:custom_data":{Item:{id:"minecraft:sweet_berries"}}}}}] run tag @s add Sugar_High
execute as @s[nbt={item:{components:{"minecraft:custom_data":{Item:{id:"minecraft:honeycomb"}}}}}] run tag @s add Sugar_High
execute as @s[tag=Sugar_High] store result score @s Item_Amount run data get entity @s item.components."minecraft:custom_data".Item.count
execute as @s[tag=Sugar_High,scores={Item_Amount=1..}] run function fm:millstone/crush_individual
execute as @s[tag=Sugar_High] store result entity @s item.components."minecraft:custom_data".Output.count int 1 run scoreboard players get @s New_Item_Amount
execute as @s[tag=Sugar_High] run data modify entity @s item.components."minecraft:custom_data".Output.id set value "minecraft:sugar"
execute as @s[tag=Sugar_High] run scoreboard players reset @s Item_Amount
execute as @s[tag=Sugar_High] run scoreboard players reset @s New_Item_Amount
execute as @s[tag=Sugar_High] run tag @s remove Sugar_High


execute as @s[nbt={item:{components:{"minecraft:custom_data":{Item:{id:"minecraft:mangrove_roots"}}}}}] run tag @s add Mangrove_Roots
execute as @s[tag=Mangrove_Roots] store result score @s Item_Amount run data get entity @s item.components."minecraft:custom_data".Item.count
execute as @s[tag=Mangrove_Roots,scores={Item_Amount=1..}] run function fm:millstone/crush_individual
execute as @s[tag=Mangrove_Roots] store result entity @s item.components."minecraft:custom_data".Output.count int 1 run scoreboard players get @s New_Item_Amount
execute as @s[tag=Mangrove_Roots] run data modify entity @s item.components."minecraft:custom_data".Output.id set value "minecraft:stick"
execute as @s[tag=Mangrove_Roots] run scoreboard players reset @s Item_Amount
execute as @s[tag=Mangrove_Roots] run scoreboard players reset @s New_Item_Amount
execute as @s[tag=Mangrove_Roots] run tag @s remove Mangrove_Roots

execute as @s[nbt={item:{components:{"minecraft:custom_data":{Item:{id:"minecraft:bamboo"}}}}}] run tag @s add Bamboo
execute as @s[tag=Bamboo] store result score @s Item_Amount run data get entity @s item.components."minecraft:custom_data".Item.count
execute as @s[tag=Bamboo,scores={Item_Amount=1..}] run function fm:millstone/crush_individual
execute as @s[tag=Bamboo] store result entity @s item.components."minecraft:custom_data".Output.count int 1 run scoreboard players get @s New_Item_Amount
execute as @s[tag=Bamboo] run data modify entity @s item.components."minecraft:custom_data".Output.id set value "minecraft:string"
execute as @s[tag=Bamboo] run scoreboard players reset @s Item_Amount
execute as @s[tag=Bamboo] run scoreboard players reset @s New_Item_Amount
execute as @s[tag=Bamboo] run tag @s remove Bamboo


execute as @s[nbt={item:{components:{"minecraft:custom_data":{Item:{id:"minecraft:amethyst_block"}}}}}] run tag @s add Amethyst_Block
execute as @s[tag=Amethyst_Block] store result score @s Item_Amount run data get entity @s item.components."minecraft:custom_data".Item.count
execute as @s[tag=Amethyst_Block,scores={Item_Amount=1..}] run function fm:millstone/crush_individual
execute as @s[tag=Amethyst_Block] store result entity @s item.components."minecraft:custom_data".Output.count int 1 run scoreboard players get @s New_Item_Amount
execute as @s[tag=Amethyst_Block] run data modify entity @s item.components."minecraft:custom_data".Output.id set value "minecraft:amethyst_shard"
execute as @s[tag=Amethyst_Block] run scoreboard players reset @s Item_Amount
execute as @s[tag=Amethyst_Block] run scoreboard players reset @s New_Item_Amount
execute as @s[tag=Amethyst_Block] run tag @s remove Amethyst_Block

execute as @s[nbt={item:{components:{"minecraft:custom_data":{Item:{id:"minecraft:amethyst_cluster"}}}}}] run tag @s add Amethyst_Cluster
execute as @s[tag=Amethyst_Cluster] store result score @s Item_Amount run data get entity @s item.components."minecraft:custom_data".Item.count
execute as @s[tag=Amethyst_Cluster,scores={Item_Amount=1..}] run function fm:millstone/crush_individual
execute as @s[tag=Amethyst_Cluster] store result entity @s item.components."minecraft:custom_data".Output.count int 1 run scoreboard players get @s New_Item_Amount
execute as @s[tag=Amethyst_Cluster] run data modify entity @s item.components."minecraft:custom_data".Output.id set value "minecraft:amethyst_shard"
execute as @s[tag=Amethyst_Cluster] run scoreboard players reset @s Item_Amount
execute as @s[tag=Amethyst_Cluster] run scoreboard players reset @s New_Item_Amount
execute as @s[tag=Amethyst_Cluster] run tag @s remove Amethyst_Cluster


execute as @s[nbt={item:{components:{"minecraft:custom_data":{Item:{id:"minecraft:nautilus_shell"}}}}}] run tag @s add Nautilus
execute as @s[tag=Nautilus] store result score @s Item_Amount run data get entity @s item.components."minecraft:custom_data".Item.count
execute as @s[tag=Nautilus,scores={Item_Amount=1..}] run function fm:millstone/crush_individual
execute as @s[tag=Nautilus] store result entity @s item.components."minecraft:custom_data".Output.count int 1 run scoreboard players get @s New_Item_Amount
execute as @s[tag=Nautilus] run data modify entity @s item.components."minecraft:custom_data".Output.id set value "minecraft:bone_meal"
execute as @s[tag=Nautilus] run scoreboard players reset @s Item_Amount
execute as @s[tag=Nautilus] run scoreboard players reset @s New_Item_Amount
execute as @s[tag=Nautilus] run tag @s remove Nautilus


execute as @s[nbt={item:{components:{"minecraft:custom_data":{Item:{id:"minecraft:bone"}}}}}] run tag @s add Bone
execute as @s[tag=Bone] store result score @s Item_Amount run data get entity @s item.components."minecraft:custom_data".Item.count
execute as @s[tag=Bone,scores={Item_Amount=1..}] run function fm:millstone/crush_individual
execute as @s[tag=Bone] store result entity @s item.components."minecraft:custom_data".Output.count int 1 run scoreboard players get @s New_Item_Amount
execute as @s[tag=Bone] run data modify entity @s item.components."minecraft:custom_data".Output.id set value "minecraft:bone_meal"
execute as @s[tag=Bone] run scoreboard players reset @s Item_Amount
execute as @s[tag=Bone] run scoreboard players reset @s New_Item_Amount
execute as @s[tag=Bone] run tag @s remove Bone

execute as @s[nbt={item:{components:{"minecraft:custom_data":{Item:{id:"minecraft:magma_block"}}}}}] run tag @s add Magma
execute as @s[tag=Magma] store result score @s Item_Amount run data get entity @s item.components."minecraft:custom_data".Item.count
execute as @s[tag=Magma,scores={Item_Amount=1..}] run function fm:millstone/crush_individual
execute as @s[tag=Magma] store result entity @s item.components."minecraft:custom_data".Output.count int 1 run scoreboard players get @s New_Item_Amount
execute as @s[tag=Magma] run data modify entity @s item.components."minecraft:custom_data".Output.id set value "minecraft:magma_cream"
execute as @s[tag=Magma] run scoreboard players reset @s Item_Amount
execute as @s[tag=Magma] run scoreboard players reset @s New_Item_Amount
execute as @s[tag=Magma] run tag @s remove Magma


execute as @s[nbt={item:{components:{"minecraft:custom_data":{Item:{id:"minecraft:beetroot"}}}}}] run tag @s add Sugar
execute as @s[nbt={item:{components:{"minecraft:custom_data":{Item:{id:"minecraft:sugar_cane"}}}}}] run tag @s add Sugar
execute as @s[tag=Sugar] store result score @s Item_Amount run data get entity @s item.components."minecraft:custom_data".Item.count
execute as @s[tag=Sugar,scores={Item_Amount=1..}] run function fm:millstone/crush_individual
execute as @s[tag=Sugar] store result entity @s item.components."minecraft:custom_data".Output.count int 1 run scoreboard players get @s New_Item_Amount
execute as @s[tag=Sugar] run data modify entity @s item.components."minecraft:custom_data".Output.id set value "minecraft:sugar"
execute as @s[tag=Sugar] run scoreboard players reset @s Item_Amount
execute as @s[tag=Sugar] run scoreboard players reset @s New_Item_Amount
execute as @s[tag=Sugar] run tag @s remove Sugar


execute as @s[nbt={item:{components:{"minecraft:custom_data":{Item:{id:"minecraft:blaze_rod"}}}}}] run tag @s add Blaze_Rod
execute as @s[tag=Blaze_Rod] store result score @s Item_Amount run data get entity @s item.components."minecraft:custom_data".Item.count
execute as @s[tag=Blaze_Rod,scores={Item_Amount=1..}] run function fm:millstone/crush_individual
execute as @s[tag=Blaze_Rod] store result entity @s item.components."minecraft:custom_data".Output.count int 1 run scoreboard players get @s New_Item_Amount
execute as @s[tag=Blaze_Rod] run data modify entity @s item.components."minecraft:custom_data".Output.id set value "minecraft:blaze_powder"
execute as @s[tag=Blaze_Rod] run scoreboard players reset @s Item_Amount
execute as @s[tag=Blaze_Rod] run scoreboard players reset @s New_Item_Amount
execute as @s[tag=Blaze_Rod] run tag @s remove Blaze_Rod

execute as @s[nbt={item:{components:{"minecraft:custom_data":{Item:{id:"minecraft:breeze_rod"}}}}}] run tag @s add Breeze_Rod
execute as @s[tag=Breeze_Rod] store result score @s Item_Amount run data get entity @s item.components."minecraft:custom_data".Item.count
execute as @s[tag=Breeze_Rod,scores={Item_Amount=1..}] run function fm:millstone/crush_individual
execute as @s[tag=Breeze_Rod] store result entity @s item.components."minecraft:custom_data".Output.count int 1 run scoreboard players get @s New_Item_Amount
execute as @s[tag=Breeze_Rod] run data modify entity @s item.components."minecraft:custom_data".Output.id set value "minecraft:wind_charge"
execute as @s[tag=Breeze_Rod] run scoreboard players reset @s Item_Amount
execute as @s[tag=Breeze_Rod] run scoreboard players reset @s New_Item_Amount
execute as @s[tag=Breeze_Rod] run tag @s remove Breeze_Rod



execute as @s[nbt={item:{components:{"minecraft:custom_data":{Item:{id:"minecraft:diorite"}}}}}] run tag @s add Diorite
execute as @s[tag=Diorite] store result score @s Item_Amount run data get entity @s item.components."minecraft:custom_data".Item.count
execute as @s[tag=Diorite,scores={Item_Amount=1..}] run function fm:millstone/crush_individual
execute as @s[tag=Diorite] store result entity @s item.components."minecraft:custom_data".Output.count int 1 run scoreboard players get @s New_Item_Amount
execute as @s[tag=Diorite] run data modify entity @s item.components."minecraft:custom_data".Output.id set value "minecraft:quartz"
execute as @s[tag=Diorite] run scoreboard players reset @s Item_Amount
execute as @s[tag=Diorite] run scoreboard players reset @s New_Item_Amount
execute as @s[tag=Diorite] run tag @s remove Diorite


execute as @s[nbt={item:{components:{"minecraft:custom_data":{Item:{id:"minecraft:glowstone"}}}}}] run tag @s add Glowstone
execute as @s[tag=Glowstone] store result score @s Item_Amount run data get entity @s item.components."minecraft:custom_data".Item.count
execute as @s[tag=Glowstone,scores={Item_Amount=1..}] run function fm:millstone/crush_individual
execute as @s[tag=Glowstone] store result entity @s item.components."minecraft:custom_data".Output.count int 1 run scoreboard players get @s New_Item_Amount
execute as @s[tag=Glowstone] run data modify entity @s item.components."minecraft:custom_data".Output.id set value "minecraft:glowstone_dust"
execute as @s[tag=Glowstone] run scoreboard players reset @s Item_Amount
execute as @s[tag=Glowstone] run scoreboard players reset @s New_Item_Amount
execute as @s[tag=Glowstone] run tag @s remove Glowstone


execute as @s[nbt={item:{components:{"minecraft:custom_data":{Item:{id:"minecraft:gilded_blackstone"}}}}}] run tag @s add Gilded_Blackstone
execute as @s[tag=Gilded_Blackstone] store result score @s Item_Amount run data get entity @s item.components."minecraft:custom_data".Item.count
execute as @s[tag=Gilded_Blackstone,scores={Item_Amount=1..}] run function fm:millstone/crush_individual
execute as @s[tag=Gilded_Blackstone] store result entity @s item.components."minecraft:custom_data".Output.count int 1 run scoreboard players get @s New_Item_Amount
execute as @s[tag=Gilded_Blackstone] run data modify entity @s item.components."minecraft:custom_data".Output.id set value "minecraft:gold_nugget"
execute as @s[tag=Gilded_Blackstone] run scoreboard players reset @s Item_Amount
execute as @s[tag=Gilded_Blackstone] run scoreboard players reset @s New_Item_Amount
execute as @s[tag=Gilded_Blackstone] run tag @s remove Gilded_Blackstone



execute as @s[nbt={item:{components:{"minecraft:custom_data":{Item:{id:"minecraft:ice"}}}}}] run tag @s add Ice
execute as @s[nbt={item:{components:{"minecraft:custom_data":{Item:{id:"minecraft:packed_ice"}}}}}] run tag @s add Ice
execute as @s[nbt={item:{components:{"minecraft:custom_data":{Item:{id:"minecraft:blue_ice"}}}}}] run tag @s add Ice
execute as @s[tag=Ice] store result score @s Item_Amount run data get entity @s item.components."minecraft:custom_data".Item.count
execute as @s[tag=Ice,scores={Item_Amount=1..}] run function fm:millstone/crush_individual
execute as @s[tag=Ice] store result entity @s item.components."minecraft:custom_data".Output.count int 1 run scoreboard players get @s New_Item_Amount
execute as @s[tag=Ice] run data modify entity @s item.components."minecraft:custom_data".Output.id set value "minecraft:snowball"
execute as @s[tag=Ice] run scoreboard players reset @s Item_Amount
execute as @s[tag=Ice] run scoreboard players reset @s New_Item_Amount
execute as @s[tag=Ice] run tag @s remove Ice

data remove entity @s item.components."minecraft:custom_data".Item
