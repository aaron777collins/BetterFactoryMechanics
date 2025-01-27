execute if block ~ ~ ~ chain[axis=x] run tag @s add x
execute if block ~ ~ ~ chain[axis=y] run tag @s add y
execute if block ~ ~ ~ chain[axis=z] run tag @s add z

fill ~ ~ ~ ~ ~ ~ minecraft:hopper replace chain
execute if block ~ ~ ~ minecraft:hopper[enabled=false] run tag @s add Powered
execute if block ~ ~ ~ minecraft:hopper[enabled=true] run tag @s remove Powered

execute as @s[tag=x] run fill ~ ~ ~ ~ ~ ~ minecraft:chain[axis=x] replace hopper
execute as @s[tag=y] run fill ~ ~ ~ ~ ~ ~ minecraft:chain[axis=y] replace hopper
execute as @s[tag=z] run fill ~ ~ ~ ~ ~ ~ minecraft:chain[axis=z] replace hopper

tag @s remove x
tag @s remove y
tag @s remove z