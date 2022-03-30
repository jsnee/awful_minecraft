execute as @e[type=minecraft:armor_stand,tag=cobweb_drop_location] at @s run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 minecraft:netherrack replace minecraft:cobweb
execute as @e[type=minecraft:armor_stand,tag=cobweb_drop_location] at @s run tp @p[tag=cobweb_drop] @s
tag @p[tag=cobweb_drop] remove cobweb_drop
execute as @e[type=minecraft:armor_stand,tag=cobweb_drop_location] at @s run kill @s