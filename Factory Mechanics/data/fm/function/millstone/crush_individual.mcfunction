execute as @s[tag=Bone,scores={Item_Amount=1..}] run scoreboard players add @s New_Item_Amount 3
execute as @s[tag=Bone,scores={Item_Amount=1..}] if predicate maths:random_0.25 run scoreboard players add @s New_Item_Amount 3

execute as @s[tag=Nautilus,scores={Item_Amount=1..}] run scoreboard players add @s New_Item_Amount 2
execute as @s[tag=Nautilus,scores={Item_Amount=1..}] if predicate maths:random_0.25 run scoreboard players add @s New_Item_Amount 1

execute as @s[tag=Clay,scores={Item_Amount=1..}] run scoreboard players add @s New_Item_Amount 4

execute as @s[tag=Mangrove_Roots,scores={Item_Amount=1..}] run scoreboard players add @s New_Item_Amount 4
execute as @s[tag=Bamboo,scores={Item_Amount=1..}] run scoreboard players add @s New_Item_Amount 4

execute as @s[tag=Sugar,scores={Item_Amount=1..}] run scoreboard players add @s New_Item_Amount 2
execute as @s[tag=Sugar,scores={Item_Amount=1..}] if predicate maths:random_0.1 run scoreboard players add @s New_Item_Amount 1

execute as @s[tag=Diorite,scores={Item_Amount=1..}] if predicate maths:random_0.25 run scoreboard players add @s New_Item_Amount 1

execute as @s[tag=Sugar_High,scores={Item_Amount=1..}] run scoreboard players add @s New_Item_Amount 3

execute as @s[tag=Blaze_Rod,scores={Item_Amount=1..}] run scoreboard players add @s New_Item_Amount 3
execute as @s[tag=Blaze_Rod,scores={Item_Amount=1..}] if predicate maths:random_0.25 run scoreboard players add @s New_Item_Amount 3

execute as @s[tag=Breeze_Rod,scores={Item_Amount=1..}] run scoreboard players add @s New_Item_Amount 4
execute as @s[tag=Breeze_Rod,scores={Item_Amount=1..}] if predicate maths:random_0.25 run scoreboard players add @s New_Item_Amount 2

execute as @s[tag=Amethyst_Block,scores={Item_Amount=1..}] run scoreboard players add @s New_Item_Amount 4
execute as @s[tag=Magma_Block,scores={Item_Amount=1..}] run scoreboard players add @s New_Item_Amount 4

execute as @s[tag=Amethyst_Cluster,scores={Item_Amount=1..}] run scoreboard players add @s New_Item_Amount 7
execute as @s[tag=Amethyst_Cluster,scores={Item_Amount=1..}] if predicate maths:random_0.5 run scoreboard players add @s New_Item_Amount 1

execute as @s[tag=Ice,scores={Item_Amount=1..}] run scoreboard players add @s New_Item_Amount 4

execute as @s[tag=Glowstone,scores={Item_Amount=1..}] run scoreboard players add @s New_Item_Amount 4

execute as @s[tag=Gilded_Blackstone,scores={Item_Amount=1..}] run scoreboard players add @s New_Item_Amount 2
execute as @s[tag=Gilded_Blackstone,scores={Item_Amount=1..}] if predicate maths:random_0.1 run scoreboard players add @s New_Item_Amount 1


execute as @s[tag=Redstone,scores={Item_Amount=1..}] if predicate maths:random_0.1 run scoreboard players add @s New_Item_Amount 1

execute as @s[scores={Item_Amount=1..}] run scoreboard players remove @s Item_Amount 1
execute as @s[scores={Item_Amount=1..}] run function fm:millstone/crush_individual

scoreboard players operation @s New_Item_Amount < 119 const