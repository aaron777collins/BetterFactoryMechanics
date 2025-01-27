execute if entity @s[tag=Four,scores={Item_Amount=4..}] run scoreboard players add @s New_Item_Amount 1
execute if entity @s[tag=Four,scores={Item_Amount=4..}] run scoreboard players remove @s Item_Amount 4
execute if entity @s[tag=Four,scores={Item_Amount=4..}] run function fm:press/press_individual

execute if entity @s[tag=Six,scores={Item_Amount=6..}] run scoreboard players add @s New_Item_Amount 1
execute if entity @s[tag=Six,scores={Item_Amount=6..}] run scoreboard players remove @s Item_Amount 6
execute if entity @s[tag=Six,scores={Item_Amount=6..}] run function fm:press/press_individual

#execute if entity @s[tag=Raw_Redstone,scores={Item_Amount=1..}] if predicate maths:random_0.25 run scoreboard players add @s New_Item_Amount 1
#execute if entity @s[tag=Raw_Redstone,scores={Item_Amount=1..}] run scoreboard players remove @s Item_Amount 1
#execute if entity @s[tag=Raw_Redstone,scores={Item_Amount=1..}] run function fm:press/press_individual

scoreboard players operation @s New_Item_Amount < 119 const