execute as @s[nbt={Facing:0b}] run particle minecraft:splash ^ ^ ^4 0.2 2 0.2 0 12
execute as @s[nbt={Facing:1b}] run particle minecraft:splash ^ ^ ^4 0.2 2 0.2 0 12
execute as @s[nbt={Facing:2b}] run particle minecraft:splash ^ ^ ^4 0.2 0.1 2 0 12
execute as @s[nbt={Facing:3b}] run particle minecraft:splash ^ ^ ^4 0.2 0.1 2 0 12
execute as @s[nbt={Facing:4b}] run particle minecraft:splash ^ ^ ^4 2 0.2 0.1 0 12
execute as @s[nbt={Facing:5b}] run particle minecraft:splash ^ ^ ^4 2 0.2 0.1 0 12
execute as @s[nbt={Facing:0b}] run particle minecraft:dust{color:[1,1,1],scale:1} ^ ^ ^4 0.2 2 0.2 0 3
execute as @s[nbt={Facing:1b}] run particle minecraft:dust{color:[1,1,1],scale:1} ^ ^ ^4 0.2 2 0.2 0 3
execute as @s[nbt={Facing:2b}] run particle minecraft:dust{color:[1,1,1],scale:1} ^ ^ ^4 0.2 0.1 2 0 3
execute as @s[nbt={Facing:3b}] run particle minecraft:dust{color:[1,1,1],scale:1} ^ ^ ^4 0.2 0.1 2 0 3
execute as @s[nbt={Facing:4b}] run particle minecraft:dust{color:[1,1,1],scale:1} ^ ^ ^4 2 0.2 0.1 0 3
execute as @s[nbt={Facing:5b}] run particle minecraft:dust{color:[1,1,1],scale:1} ^ ^ ^4 2 0.2 0.1 0 3

execute as @s[nbt={Facing:4b}] align xyz as @e[type=item,dx=-7,dz=0,dy=-1] at @s run function fm:fan/washing
execute as @s[nbt={Facing:5b}] align xyz as @e[type=item,dx=7,dz=0,dy=-1] at @s run function fm:fan/washing
execute as @s[nbt={Facing:0b}] align xyz as @e[type=item,dy=-7,dx=0,dz=0] at @s run function fm:fan/washing
execute as @s[nbt={Facing:1b}] align xyz as @e[type=item,dy=7,dx=0,dz=0] at @s run function fm:fan/washing
execute as @s[nbt={Facing:2b}] align xyz as @e[type=item,dz=-7,dx=0,dy=-1] at @s run function fm:fan/washing
execute as @s[nbt={Facing:3b}] align xyz as @e[type=item,dz=7,dx=0,dy=-1] at @s run function fm:fan/washing