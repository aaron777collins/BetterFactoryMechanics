execute as @s[tag=Lapis,scores={Item_Amount=1..}] if predicate maths:random_0.75 run scoreboard players add @s New_Item_Amount 1
execute as @s[tag=Lapis,scores={Item_Amount=1..}] run scoreboard players remove @s Item_Amount 1
execute as @s[tag=Lapis,scores={Item_Amount=1..}] run function fm:fan/blast_individual

scoreboard players operation @s New_Item_Amount < 119 const