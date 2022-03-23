execute as @e[type=minecraft:armor_stand,tag=cobweb_drop_location] at @s run tp @p[tag=cobweb_drop] @s
execute as @e[type=minecraft:armor_stand,tag=cobweb_drop_location] at @s run setblock ~ ~-1 ~ minecraft:netherrack
execute as @e[type=minecraft:armor_stand,tag=cobweb_drop_location] at @s run setblock ~ ~ ~ minecraft:air
tag @p[tag=cobweb_drop] remove cobweb_drop
execute as @e[type=minecraft:armor_stand,tag=cobweb_drop_location] at @s run kill @s