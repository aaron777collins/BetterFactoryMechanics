summon minecraft:item ^ ^ ^1.5 {Health:5s,PickupDelay:23s,Item:{count:1,id:"minecraft:milk_bucket"}}
playsound minecraft:entity.cow.milk block @a[distance=..20] ~ ~ ~

scoreboard players remove @s Item_Amount 1
function fm:deployer/item_save
tag @s add Done_Action