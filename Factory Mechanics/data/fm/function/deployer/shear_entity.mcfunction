execute if entity @s[type=sheep] run loot spawn ~ ~ ~ loot minecraft:shearing/sheep
execute if entity @s[type=sheep] run data modify entity @s Sheared set value 1b

execute if entity @s[type=bogged] run loot spawn ~ ~ ~ loot minecraft:shearing/bogged
execute if entity @s[type=bogged] run data modify entity @s sheared set value 1b

execute if entity @s[type=snow_golem] run loot spawn ~ ~ ~ loot minecraft:shearing/snow_golem
execute if entity @s[type=snow_golem] run data modify entity @s Pumpkin set value 0b

execute if entity @s[type=mooshroom] run loot spawn ~ ~ ~ loot minecraft:shearing/mooshroom
execute if entity @s[type=mooshroom] run particle minecraft:explosion ~ ~ ~
execute if entity @s[type=mooshroom] at @s run summon cow ~ ~ ~
execute if entity @s[type=mooshroom] run tp @s ~ ~-100 ~
execute if entity @s[type=mooshroom] run kill @s
tag @s add Done_Action