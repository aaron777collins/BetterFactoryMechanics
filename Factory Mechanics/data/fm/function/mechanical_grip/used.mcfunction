execute if items entity @s weapon.mainhand paper[minecraft:item_model="minecraft:mechanical_grip"] run item modify entity @s weapon.mainhand fm:extend_grip
execute if items entity @s weapon.offhand paper[minecraft:item_model="minecraft:mechanical_grip"] run item modify entity @s weapon.offhand fm:extend_grip
scoreboard players set @s FM.Int_Save 7

#"minecraft:placed_block" detects water placed

#advancement revoke @s only fm:grip_place
advancement revoke @s only fm:grip_use
advancement revoke @s only fm:grip_filled_bucket
advancement revoke @s only fm:grip_interact_entity
#advancement revoke @s only fm:grip_item