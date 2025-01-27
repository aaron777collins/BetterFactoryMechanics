execute if block ^ ^ ^1 #minecraft:leaves run function fm:harvester/break_block
execute if block ^ ^ ^1 cobweb run function fm:harvester/break_block
execute if block ^ ^ ^1 #minecraft:dirt run playsound minecraft:item.hoe.till block @a[distance=..20] ^ ^ ^1
execute if block ^ ^ ^1 rooted_dirt run summon minecraft:item ^ ^ ^.5 {Health:5s,PickupDelay:23s,Item:{count:1,id:"minecraft:hanging_roots"}}
execute if block ^ ^ ^1 #minecraft:dirt run setblock ^ ^ ^1 minecraft:farmland replace

execute if block ^ ^ ^1 minecraft:cave_vines_plant[berries=true] run summon minecraft:item ^ ^ ^.5 {Health:5s,PickupDelay:23s,Item:{count:1,id:"minecraft:glow_berries"}}
execute if block ^ ^ ^1 minecraft:cave_vines[berries=true] run summon minecraft:item ^ ^ ^.5 {Health:5s,PickupDelay:23s,Item:{count:1,id:"minecraft:glow_berries"}}
execute if block ^ ^ ^1 minecraft:cave_vines_plant[berries=true] run playsound minecraft:block.cave_vines.pick_berries block @a[distance=..20] ^ ^ ^1
execute if block ^ ^ ^1 minecraft:cave_vines[berries=true] run playsound minecraft:block.cave_vines.pick_berries block @a[distance=..20] ^ ^ ^1
execute if block ^ ^ ^1 minecraft:cave_vines_plant[berries=true] run fill ^ ^ ^1 ^ ^ ^1 cave_vines_plant[berries=false] replace cave_vines_plant[berries=true]
execute if block ^ ^ ^1 minecraft:cave_vines[berries=true] run fill ^ ^ ^1 ^ ^ ^1 cave_vines[berries=false] replace cave_vines[berries=true]

execute if block ^ ^ ^1 minecraft:sweet_berry_bush[age=3] run summon minecraft:item ^ ^ ^.5 {Health:5s,PickupDelay:23s,Item:{count:3,id:"minecraft:sweet_berries"}}
execute if block ^ ^ ^1 minecraft:sweet_berry_bush[age=3] run playsound minecraft:block.sweet_berry_bush.pick_berries block @a[distance=..20] ^ ^ ^1
execute if block ^ ^ ^1 minecraft:sweet_berry_bush[age=3] run fill ^ ^ ^1 ^ ^ ^1 sweet_berry_bush[age=1] replace sweet_berry_bush[age=3]


execute if block ^ ^ ^1 minecraft:pink_petals[flower_amount=4] run summon minecraft:item ^ ^ ^.5 {Health:5s,PickupDelay:23s,Item:{count:4,id:"minecraft:pink_petals"}}
execute if block ^ ^ ^1 minecraft:pink_petals[flower_amount=4] run playsound minecraft:block.pink_petals.break block @a[distance=..20] ^ ^ ^1
execute if block ^ ^ ^1 minecraft:pink_petals[flower_amount=4] run fill ^ ^ ^1 ^ ^ ^1 pink_petals[flower_amount=1] replace pink_petals[flower_amount=4]

execute if block ^ ^ ^1 #minecraft:crops[age=7] run loot spawn ^ ^ ^.5 mine ^ ^ ^1
execute if block ^ ^ ^1 minecraft:beetroots[age=3] run loot spawn ^ ^ ^.5 mine ^ ^ ^1
execute if block ^ ^ ^1 minecraft:nether_wart[age=3] run loot spawn ^ ^ ^.5 mine ^ ^ ^1

execute if block ^ ^ ^1 #minecraft:crops[age=7] run playsound minecraft:block.crop.break block @a[distance=..20] ^ ^ ^1
execute if block ^ ^ ^1 minecraft:beetroots[age=3] run playsound minecraft:block.crop.break block @a[distance=..20] ^ ^ ^1
execute if block ^ ^ ^1 minecraft:nether_wart[age=3] run playsound minecraft:block.nether_wart.break block @a[distance=..20] ^ ^ ^1

execute if block ^ ^ ^1 minecraft:wheat[age=7] run setblock ^ ^ ^1 wheat[age=0]
execute if block ^ ^ ^1 minecraft:potatoes[age=7] run setblock ^ ^ ^1 potatoes[age=0]
execute if block ^ ^ ^1 minecraft:carrots[age=7] run setblock ^ ^ ^1 carrots[age=0]
execute if block ^ ^ ^1 minecraft:beetroots[age=3] run setblock ^ ^ ^1 beetroots[age=0]
execute if block ^ ^ ^1 minecraft:nether_wart[age=3] run setblock ^ ^ ^1 nether_wart[age=0]

execute if block ^ ^ ^1 minecraft:sculk run setblock ^ ^ ^1 minecraft:air destroy

#execute if block ^ ^ ^1 minecraft:sculk_vein run summon experience_orb ^ ^ ^.5 {Value:1}
#execute if block ^ ^ ^1 minecraft:sculk_vein run setblock ^ ^ ^1 minecraft:air destroy