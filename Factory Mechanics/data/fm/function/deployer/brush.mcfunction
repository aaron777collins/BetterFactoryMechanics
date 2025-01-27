execute if block ^ ^ ^2.5 minecraft:suspicious_sand run particle minecraft:block{block_state:"minecraft:suspicious_sand"} ^ ^ ^2 0 0 0 1 10

execute if block ^ ^ ^2.5 minecraft:suspicious_sand unless block ^ ^ ^2.5 minecraft:suspicious_sand[dusted=3] run playsound minecraft:item.brush.brushing.sand block @a[distance=..20] ^ ^ ^2.5

execute if block ^ ^ ^2.5 minecraft:suspicious_sand[dusted=3] run playsound minecraft:item.brush.brushing.sand.complete block @a[distance=..20] ^ ^ ^2.5
execute if block ^ ^ ^2.5 minecraft:suspicious_sand[dusted=3] run function fm:deployer/summon_item with block ^ ^ ^2.5
execute if block ^ ^ ^2.5 minecraft:suspicious_sand[dusted=3] run particle minecraft:block{block_state:"minecraft:suspicious_sand"} ^ ^ ^2.5 0.3 0.3 0.3 20 50

execute if block ^ ^ ^2.5 minecraft:suspicious_sand run fill ^ ^ ^2.5 ^ ^ ^2.5 sand replace suspicious_sand[dusted=3]
execute if block ^ ^ ^2.5 minecraft:suspicious_sand run fill ^ ^ ^2.5 ^ ^ ^2.5 suspicious_sand[dusted=3] replace suspicious_sand[dusted=2]
execute if block ^ ^ ^2.5 minecraft:suspicious_sand run fill ^ ^ ^2.5 ^ ^ ^2.5 suspicious_sand[dusted=2] replace suspicious_sand[dusted=1]
execute if block ^ ^ ^2.5 minecraft:suspicious_sand run fill ^ ^ ^2.5 ^ ^ ^2.5 suspicious_sand[dusted=1] replace suspicious_sand[dusted=0]



execute if block ^ ^ ^2.5 minecraft:suspicious_gravel run particle minecraft:block{block_state:"minecraft:suspicious_gravel"} ^ ^ ^2 0 0 0 1 10
execute if block ^ ^ ^2.5 minecraft:suspicious_gravel unless block ^ ^ ^2.5 minecraft:suspicious_gravel[dusted=3] run playsound minecraft:item.brush.brushing.gravel block @a[distance=..20] ^ ^ ^2.5

execute if block ^ ^ ^2.5 minecraft:suspicious_gravel[dusted=3] run playsound minecraft:item.brush.brushing.gravel.complete block @a[distance=..20] ^ ^ ^2.5
execute if block ^ ^ ^2.5 minecraft:suspicious_gravel[dusted=3] run function fm:deployer/summon_item with block ^ ^ ^2.5
execute if block ^ ^ ^2.5 minecraft:suspicious_gravel[dusted=3] run particle minecraft:block{block_state:"minecraft:suspicious_gravel"} ^ ^ ^2.5 0.3 0.3 0.3 20 50

execute if block ^ ^ ^2.5 minecraft:suspicious_gravel run fill ^ ^ ^2.5 ^ ^ ^2.5 gravel replace suspicious_gravel[dusted=3]
execute if block ^ ^ ^2.5 minecraft:suspicious_gravel run fill ^ ^ ^2.5 ^ ^ ^2.5 suspicious_gravel[dusted=3] replace suspicious_gravel[dusted=2]
execute if block ^ ^ ^2.5 minecraft:suspicious_gravel run fill ^ ^ ^2.5 ^ ^ ^2.5 suspicious_gravel[dusted=2] replace suspicious_gravel[dusted=1]
execute if block ^ ^ ^2.5 minecraft:suspicious_gravel run fill ^ ^ ^2.5 ^ ^ ^2.5 suspicious_gravel[dusted=1] replace suspicious_gravel[dusted=0]

tag @s add Done_Action