execute as @e[type=#fm:loop,tag=!FM.Ignore] at @s run function fm:entity_loop
data modify storage chute Busy set value 1
data modify storage saw Busy set value 1
data modify storage drill Busy set value 1
data modify storage millstone Busy set value 1
data modify storage harvester Busy set value 1