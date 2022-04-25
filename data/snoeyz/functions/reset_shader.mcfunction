summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:[shader_reset]}
tag @s add killed_by_shader_mob
gamemode spectator @s
spectate @e[type=armor_stand,tag=shader_reset,limit=1] @p
kill @e[type=armor_stand,tag=shader_reset]
tag @s add killed_by_shader_mob