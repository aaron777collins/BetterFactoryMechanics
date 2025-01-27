execute as @s[nbt={Item:{id:"minecraft:porkchop"}}] run data merge entity @s {Item:{id:"minecraft:cooked_porkchop"}}
execute as @s[nbt={Item:{id:"minecraft:beef"}}] run data merge entity @s {Item:{id:"minecraft:cooked_beef"}}
execute as @s[nbt={Item:{id:"minecraft:mutton"}}] run data merge entity @s {Item:{id:"minecraft:cooked_mutton"}}
execute as @s[nbt={Item:{id:"minecraft:chicken"}}] run data merge entity @s {Item:{id:"minecraft:cooked_chicken"}}
execute as @s[nbt={Item:{id:"minecraft:cod"}}] run data merge entity @s {Item:{id:"minecraft:cooked_cod"}}
execute as @s[nbt={Item:{id:"minecraft:salmon"}}] run data merge entity @s {Item:{id:"minecraft:cooked_salmon"}}
execute as @s[nbt={Item:{id:"minecraft:potato"}}] run data merge entity @s {Item:{id:"minecraft:baked_potato"}}
execute as @s[nbt={Item:{id:"minecraft:rabbit"}}] run data merge entity @s {Item:{id:"minecraft:cooked_rabbit"}}
execute as @s[nbt={Item:{id:"minecraft:kelp"}}] run data merge entity @s {Item:{id:"minecraft:dried_kelp"}}

execute as @s[nbt={Item:{id:"minecraft:wet_sponge"}}] run data merge entity @s {Item:{id:"minecraft:sponge"}}
execute as @s[nbt={Item:{id:"minecraft:mud"}}] run data merge entity @s {Item:{id:"minecraft:clay"}}

scoreboard players reset @s Smoking_Time