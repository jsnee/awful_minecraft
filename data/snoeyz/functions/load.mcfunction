scoreboard objectives add deepslate_mined minecraft.mined:minecraft.deepslate "Deepslate Mined"
scoreboard objectives add netherrack_mined minecraft.mined:minecraft.netherrack "Netherrack Mined"
scoreboard objectives add end_stone_mined minecraft.mined:minecraft.end_stone "End Stone Mined"
scoreboard objectives add chest_opened minecraft.custom:open_chest "Chest Opened"
scoreboard objectives add barrel_opened minecraft.custom:open_barrel "Barrel Opened"
scoreboard objectives add ender_chest_opened minecraft.custom:open_enderchest "Ender Chest Opened"
scoreboard objectives add shulker_opened minecraft.custom:open_shulker_box "Ender Chest Opened"
scoreboard objectives add last_rest minecraft.custom:time_since_rest "Time Since Rest"
scoreboard objectives add RNG dummy "RNG"
scoreboard objectives add RAND dummy "MoarRng"
scoreboard objectives add tired_drop_cooldown dummy "Tired Drop Cooldown"
scoreboard objectives add try_give_deepslate_cooldown dummy "Try Give Deepslate Cooldown"
scoreboard objectives add health health "Health"
scoreboard objectives add was_killed_by_creeper minecraft.killed_by:creeper "Was Killed By Creeper"
scoreboard objectives add was_killed_by_enderman minecraft.killed_by:enderman "Was Killed By Enderman"
scoreboard objectives add was_killed minecraft.custom:deaths "Was Killed"
scoreboard objectives add world_time minecraft.custom:total_world_time "Total World_Time"

scoreboard objectives add snoeyz.piglinCount dummy "Piglin Count"
scoreboard objectives add snoeyz.bruteFrequency dummy "Piglin Brute Frequency"
scoreboard players set .lock snoeyz.bruteFrequency 50
scoreboard objectives add snoeyz.ToD dummy "Time of Day"
scoreboard objectives add snoeyz.last_rest_trigger dummy
scoreboard players set .lock snoeyz.ToD 0
scoreboard players set .lock snoeyz.last_rest_trigger 48000