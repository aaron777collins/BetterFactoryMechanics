execute as @s[tag=Red_Sand,scores={Item_Amount=1..}] if predicate maths:random_0.1 run scoreboard players add @s New_Item_Amount 3
execute as @s[tag=Red_Sand,scores={Item_Amount=1..}] run scoreboard players remove @s Item_Amount 1
execute as @s[tag=Red_Sand,scores={Item_Amount=1..}] run function fm:fan/wash_individual

execute as @s[tag=Gravel,scores={Item_Amount=1..}] if predicate maths:random_0.25 run scoreboard players add @s New_Item_Amount 1
execute as @s[tag=Gravel,scores={Item_Amount=1..}] if predicate maths:random_0.1 run scoreboard players add @s Byproduct_Item_Amount 1
execute as @s[tag=Gravel,scores={Item_Amount=1..}] run scoreboard players remove @s Item_Amount 1
execute as @s[tag=Gravel,scores={Item_Amount=1..}] run function fm:fan/wash_individual

execute as @s[tag=Soul_Sand,scores={Item_Amount=1..}] if predicate maths:random_0.1 run scoreboard players add @s New_Item_Amount 4
execute as @s[tag=Soul_Sand,scores={Item_Amount=1..}] if predicate maths:random_0.1 run scoreboard players add @s Byproduct_Item_Amount 1
execute as @s[tag=Soul_Sand,scores={Item_Amount=1..}] run scoreboard players remove @s Item_Amount 1
execute as @s[tag=Soul_Sand,scores={Item_Amount=1..}] run function fm:fan/wash_individual

execute as @s[tag=Sand,scores={Item_Amount=1..}] if predicate maths:random_0.25 run scoreboard players add @s New_Item_Amount 1
execute as @s[tag=Sand,scores={Item_Amount=1..}] run scoreboard players remove @s Item_Amount 1
execute as @s[tag=Sand,scores={Item_Amount=1..}] run function fm:fan/wash_individual

execute as @s[tag=Magma_Cream,scores={Item_Amount=1..}] if predicate maths:random_0.1 run scoreboard players add @s New_Item_Amount 1
execute as @s[tag=Magma_Cream,scores={Item_Amount=1..}] run scoreboard players remove @s Item_Amount 1
execute as @s[tag=Magma_Cream,scores={Item_Amount=1..}] run function fm:fan/wash_individual

scoreboard players operation @s New_Item_Amount < 119 const