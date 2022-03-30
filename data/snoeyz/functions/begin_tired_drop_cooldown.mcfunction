tag @s add tired_drop_cooldown
tag @s remove tired_drop_trigger
scoreboard players operation @s tired_drop_cooldown = @s last_rest
scoreboard players operation @s tired_drop_cooldown %= .lock snoeyz.last_rest_trigger
scoreboard players operation @s tired_drop_cooldown /= @s RNG