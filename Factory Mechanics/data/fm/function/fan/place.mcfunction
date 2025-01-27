execute if entity @s[nbt={Facing:0b}] run setblock ~ ~ ~ chain[axis=y]
execute if entity @s[nbt={Facing:1b}] run setblock ~ ~ ~ chain[axis=y]
execute if entity @s[nbt={Facing:2b}] run setblock ~ ~ ~ chain[axis=z]
execute if entity @s[nbt={Facing:3b}] run setblock ~ ~ ~ chain[axis=z]
execute if entity @s[nbt={Facing:4b}] run setblock ~ ~ ~ chain[axis=x]
execute if entity @s[nbt={Facing:5b}] run setblock ~ ~ ~ chain[axis=x]

tag @s add Placed