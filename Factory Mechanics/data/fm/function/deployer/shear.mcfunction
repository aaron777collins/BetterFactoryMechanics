execute if block ^ ^ ^2.5 pumpkin run summon minecraft:item ^ ^ ^1.5 {Health:5s,PickupDelay:23s,Item:{count:4,id:"minecraft:pumpkin_seeds"}}
execute if block ^ ^ ^2.5 pumpkin run playsound minecraft:block.pumpkin.carve block @a[distance=..20] ^ ^ ^2.5
execute if block ^ ^ ^2.5 pumpkin run fill ^ ^ ^2.5 ^ ^ ^2.5 carved_pumpkin replace pumpkin

execute if block ^ ^ ^2.5 minecraft:cave_vines_plant[berries=true] run summon minecraft:item ^ ^ ^1.5 {Health:5s,PickupDelay:23s,Item:{count:1,id:"minecraft:glow_berries"}}
execute if block ^ ^ ^2.5 minecraft:cave_vines[berries=true] run summon minecraft:item ^ ^ ^1.5 {Health:5s,PickupDelay:23s,Item:{count:1,id:"minecraft:glow_berries"}}
execute if block ^ ^ ^2.5 minecraft:cave_vines_plant[berries=true] run playsound minecraft:block.cave_vines.pick_berries block @a[distance=..20] ^ ^ ^2.5
execute if block ^ ^ ^2.5 minecraft:cave_vines[berries=true] run playsound minecraft:block.cave_vines.pick_berries block @a[distance=..20] ^ ^ ^2.5
execute if block ^ ^ ^2.5 minecraft:cave_vines_plant[berries=true] run fill ^ ^ ^2.5 ^ ^ ^2.5 cave_vines_plant[berries=false] replace cave_vines_plant[berries=true]
execute if block ^ ^ ^2.5 minecraft:cave_vines[berries=true] run fill ^ ^ ^2.5 ^ ^ ^2.5 cave_vines[berries=false] replace cave_vines[berries=true]

execute if block ^ ^ ^2.5 minecraft:sweet_berry_bush[age=2] run summon minecraft:item ^ ^ ^1.5 {Health:5s,PickupDelay:23s,Item:{count:1,id:"minecraft:sweet_berries"}}
execute if block ^ ^ ^2.5 minecraft:sweet_berry_bush[age=3] run summon minecraft:item ^ ^ ^1.5 {Health:5s,PickupDelay:23s,Item:{count:3,id:"minecraft:sweet_berries"}}
execute if block ^ ^ ^2.5 minecraft:sweet_berry_bush run playsound minecraft:block.sweet_berry_bush.pick_berries block @a[distance=..20] ^ ^ ^2.5
execute if block ^ ^ ^2.5 minecraft:sweet_berry_bush run fill ^ ^ ^2.5 ^ ^ ^2.5 sweet_berry_bush[age=1] replace sweet_berry_bush[age=2]
execute if block ^ ^ ^2.5 minecraft:sweet_berry_bush run fill ^ ^ ^2.5 ^ ^ ^2.5 sweet_berry_bush[age=1] replace sweet_berry_bush[age=3]

execute if block ^ ^ ^2.5 cocoa run loot spawn ^ ^ ^1.5 mine ^ ^ ^2.5
execute if block ^ ^ ^2.5 cocoa run playsound minecraft:block.wood.break block @a[distance=..20] ^ ^ ^2.5
execute if block ^ ^ ^2.5 cocoa run setblock ^ ^ ^2.5 air

execute if block ^ ^ ^2.5 #minecraft:crops run loot spawn ^ ^ ^1.5 mine ^ ^ ^2.5
execute if block ^ ^ ^2.5 #minecraft:crops run playsound minecraft:block.crop.break block @a[distance=..20] ^ ^ ^2.5
execute if block ^ ^ ^2.5 #minecraft:crops run setblock ^ ^ ^2.5 air

tag @s add Done_Action