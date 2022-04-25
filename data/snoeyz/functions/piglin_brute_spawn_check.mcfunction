scoreboard players add .lock snoeyz.piglinCount 1
scoreboard players operation .lock snoeyz.piglinCount %= .lock snoeyz.bruteFrequency
execute if score .lock snoeyz.piglinCount matches 0 run execute at @s run summon minecraft:piglin_brute ~ ~ ~
execute if score .lock snoeyz.piglinCount matches 0 run kill @s