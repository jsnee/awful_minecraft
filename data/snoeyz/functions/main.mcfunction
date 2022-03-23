#tick the RNG score
execute as @p at @s run scoreboard players add @s RNG 1
scoreboard players set @a[scores={RNG=100..}] RNG 0

#tick down fake creepers
execute as @e[type=creeper,tag=FakeCreeper0] run tp @s ~ ~-1000 ~
execute as @e[type=creeper,tag=FakeCreeper1] run tag @s add FakeCreeper0
execute as @e[type=creeper,tag=FakeCreeper2] run tag @s add FakeCreeper1
execute as @e[type=creeper,tag=FakeCreeper3] run tag @s add FakeCreeper2
execute as @e[type=creeper,tag=FakeCreeper4] run tag @s add FakeCreeper3
execute as @e[type=creeper,tag=FakeCreeper5] run tag @s add FakeCreeper4
execute as @e[type=creeper,tag=FakeCreeper6] run tag @s add FakeCreeper5
execute as @e[type=creeper,tag=FakeCreeper7] run tag @s add FakeCreeper6
execute as @e[type=creeper,tag=FakeCreeper8] run tag @s add FakeCreeper7
execute as @e[type=creeper,tag=FakeCreeper9] run tag @s add FakeCreeper8
execute as @e[type=creeper,tag=FakeCreeper10] run tag @s add FakeCreeper9
execute as @e[type=creeper,tag=FakeCreeper11] run tag @s add FakeCreeper10
execute as @e[type=creeper,tag=FakeCreeper12] run tag @s add FakeCreeper11
execute as @e[type=creeper,tag=FakeCreeper13] run tag @s add FakeCreeper12
execute as @e[type=creeper,tag=FakeCreeper14] run tag @s add FakeCreeper13
execute as @e[type=creeper,tag=FakeCreeper15] run tag @s add FakeCreeper14
execute as @e[type=creeper,tag=FakeCreeper16] run tag @s add FakeCreeper15
execute as @e[type=creeper,tag=FakeCreeper17] run tag @s add FakeCreeper16
execute as @e[type=creeper,tag=FakeCreeper18] run tag @s add FakeCreeper17
execute as @e[type=creeper,tag=FakeCreeper19] run tag @s add FakeCreeper18
execute as @e[type=creeper,tag=FakeCreeper20] run tag @s add FakeCreeper19
execute as @e[type=creeper,tag=FakeCreeper21] run tag @s add FakeCreeper20
execute as @e[type=creeper,tag=FakeCreeper22] run tag @s add FakeCreeper21
execute as @e[type=creeper,tag=FakeCreeper23] run tag @s add FakeCreeper22
execute as @e[type=creeper,tag=FakeCreeper24] run tag @s add FakeCreeper23
execute as @e[type=creeper,tag=FakeCreeper25] run tag @s add FakeCreeper24
execute as @e[type=creeper,tag=FakeCreeper26] run tag @s add FakeCreeper25
execute as @e[type=creeper,tag=FakeCreeper27] run tag @s add FakeCreeper26
execute as @e[type=creeper,tag=FakeCreeper28] run tag @s add FakeCreeper27
execute as @e[type=creeper,tag=FakeCreeper29] run tag @s add FakeCreeper28
execute as @e[type=creeper,tag=FakeCreeper30] run tag @s add FakeCreeper29
execute as @p at @s[scores={chest_opened=1..,RNG=..5}] run function snoeyz:fake_creeper
execute as @p at @s[scores={barrel_opened=1..,RNG=..5}] run function snoeyz:fake_creeper
execute as @p at @s[scores={ender_chest_opened=1..,RNG=..5}] run function snoeyz:fake_creeper
execute as @p at @s[scores={shulker_opened=1..,RNG=..5}] run function snoeyz:fake_creeper

#drop random item if haven't slept for too long
execute as @p at @s[scores={last_rest=48000..,RNG=0..10}] run function snoeyz:drop_item_0
execute as @p at @s[scores={last_rest=48000..,RNG=11..21}] run function snoeyz:drop_item_1
execute as @p at @s[scores={last_rest=48000..,RNG=22..33}] run function snoeyz:drop_item_2
execute as @p at @s[scores={last_rest=48000..,RNG=34..44}] run function snoeyz:drop_item_3
execute as @p at @s[scores={last_rest=48000..,RNG=45..55}] run function snoeyz:drop_item_4
execute as @p at @s[scores={last_rest=48000..,RNG=56..66}] run function snoeyz:drop_item_5
execute as @p at @s[scores={last_rest=48000..,RNG=67..77}] run function snoeyz:drop_item_6
execute as @p at @s[scores={last_rest=48000..,RNG=78..88}] run function snoeyz:drop_item_7
execute as @p at @s[scores={last_rest=48000..,RNG=89..99}] run function snoeyz:drop_item_8
scoreboard players operation @p last_rest %= .lock snoeyz.last_rest_trigger


#check for tool break plays
execute as @p at @s[predicate=snoeyz:low_durability_diamond_pick,scores={deepslate_mined=1..,RNG=..5}] run playsound minecraft:item.shield.break player @s
execute as @p at @s[predicate=snoeyz:low_durability_netherite_pick,scores={deepslate_mined=1..,RNG=..5}] run playsound minecraft:item.shield.break player @s
execute as @p at @s[predicate=snoeyz:low_durability_diamond_pick,scores={netherrack_mined=1..,RNG=..5}] run playsound minecraft:item.shield.break player @s
execute as @p at @s[predicate=snoeyz:low_durability_netherite_pick,scores={netherrack_mined=1..,RNG=..5}] run playsound minecraft:item.shield.break player @s
execute as @p at @s[predicate=snoeyz:low_durability_diamond_pick,scores={end_stone_mined=1..,RNG=..5}] run playsound minecraft:item.shield.break player @s
execute as @p at @s[predicate=snoeyz:low_durability_netherite_pick,scores={end_stone_mined=1..,RNG=..5}] run playsound minecraft:item.shield.break player @s

#reset blocks mined scores
execute as @p at @s[scores={deepslate_mined=1..}] run scoreboard players set @s deepslate_mined 0
execute as @p at @s[scores={netherrack_mined=1..}] run scoreboard players set @s netherrack_mined 0
execute as @p at @s[scores={end_stone_mined=1..}] run scoreboard players set @s end_stone_mined 0

#reset containers opened scores
execute as @p at @s[scores={chest_opened=1..}] run scoreboard players set @s chest_opened 0
execute as @p at @s[scores={barrel_opened=1..}] run scoreboard players set @s barrel_opened 0
execute as @p at @s[scores={ender_chest_opened=1..}] run scoreboard players set @s ender_chest_opened 0
execute as @p at @s[scores={shulker_opened=1..}] run scoreboard players set @s shulker_opened 0