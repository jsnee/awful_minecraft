execute store result score .lock snoeyz.ToD run time query daytime
kill @e[type=armor_stand,tag=fake_deepslate]

gamemode survival @p[tag=killed_by_shader_mob,scores={health=1..}]
tag @p[tag=killed_by_shader_mob,scores={health=1..}] remove killed_by_shader_mob

#piglin brute spawning
execute as @e at @s[tag=!keep_piglin,type=minecraft:piglin] run function snoeyz:piglin_brute_spawn_check
tag @e[tag=!keep_piglin,type=minecraft:piglin] add keep_piglin

#tick the RNG score
scoreboard players add @a RNG 1
scoreboard players set @a[scores={RNG=100..}] RNG 0
scoreboard players operation @a RAND += .lock snoeyz.ToD
scoreboard players operation @a RAND %= @a RNG

#tick tired drop troll
scoreboard players remove @a[scores={tired_drop_cooldown=1..}] tired_drop_cooldown 1
tag @a[scores={tired_drop_cooldown=0}] remove tired_drop_cooldown

#fill inventory with deepslate troll
scoreboard players remove @a[scores={try_give_deepslate_cooldown=1..}] try_give_deepslate_cooldown 1
execute as @a unless score @s try_give_deepslate_cooldown matches 0.. run scoreboard players set @s try_give_deepslate_cooldown 0
tag @a[level=5..,scores={try_give_deepslate_cooldown=0}] add can_receive_deepslate
execute as @a at @s[tag=can_receive_deepslate,scores={RNG=0}] unless data entity @s Inventory[{Slot:0b}] run function snoeyz:fill_inventory_with_deepslate
execute as @a at @s[tag=can_receive_deepslate,scores={RNG=1}] unless data entity @s Inventory[{Slot:1b}] run function snoeyz:fill_inventory_with_deepslate
execute as @a at @s[tag=can_receive_deepslate,scores={RNG=2}] unless data entity @s Inventory[{Slot:2b}] run function snoeyz:fill_inventory_with_deepslate
execute as @a at @s[tag=can_receive_deepslate,scores={RNG=3}] unless data entity @s Inventory[{Slot:3b}] run function snoeyz:fill_inventory_with_deepslate
execute as @a at @s[tag=can_receive_deepslate,scores={RNG=4}] unless data entity @s Inventory[{Slot:4b}] run function snoeyz:fill_inventory_with_deepslate
execute as @a at @s[tag=can_receive_deepslate,scores={RNG=5}] unless data entity @s Inventory[{Slot:5b}] run function snoeyz:fill_inventory_with_deepslate
execute as @a at @s[tag=can_receive_deepslate,scores={RNG=6}] unless data entity @s Inventory[{Slot:6b}] run function snoeyz:fill_inventory_with_deepslate
execute as @a at @s[tag=can_receive_deepslate,scores={RNG=7}] unless data entity @s Inventory[{Slot:7b}] run function snoeyz:fill_inventory_with_deepslate
execute as @a at @s[tag=can_receive_deepslate,scores={RNG=8}] unless data entity @s Inventory[{Slot:8b}] run function snoeyz:fill_inventory_with_deepslate
execute as @a at @s[tag=can_receive_deepslate] run scoreboard players set @s try_give_deepslate_cooldown 101
execute as @a at @s[tag=can_receive_deepslate] run scoreboard players operation @s try_give_deepslate_cooldown *= @s RAND
tag @a[tag=can_receive_deepslate] remove can_receive_deepslate

#randomly set blocks to powder snow
execute as @a at @s[scores={RNG=..2}] if block ~ ~ ~ minecraft:snow run fill ~ ~ ~ ~ ~-1 ~ minecraft:powder_snow

#cobweb drop fakeout
execute as @a at @s[predicate=snoeyz:standing_on_netherrack_in_nether,scores={RAND=100..},tag=!cobweb_drop] if block ~ ~-2 ~ minecraft:air run function snoeyz:begin_cobweb_drop
execute as @a at @s[tag=cobweb_drop] if block ~ ~ ~ minecraft:air run execute as @e[type=armor_stand,tag=cobweb_drop_location] run function snoeyz:end_cobweb_drop

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

#spawn fake creeper
execute as @a at @s[scores={chest_opened=1..,RNG=..20}] run function snoeyz:fake_creeper
execute as @a at @s[scores={barrel_opened=1..,RNG=..20}] run function snoeyz:fake_creeper
execute as @a at @s[scores={ender_chest_opened=1..,RNG=..20}] run function snoeyz:fake_creeper
execute as @a at @s[scores={shulker_opened=1..,RNG=..20}] run function snoeyz:fake_creeper

#drop random item if haven't slept for too long
tag @a[tag=!tired_drop_cooldown,scores={last_rest=24000..}] add tired_drop_trigger
execute as @a at @s[tag=tired_drop_trigger,scores={RNG=0..10}] run function snoeyz:drop_item_0
execute as @a at @s[tag=tired_drop_trigger,scores={RNG=11..21}] run function snoeyz:drop_item_1
execute as @a at @s[tag=tired_drop_trigger,scores={RNG=22..33}] run function snoeyz:drop_item_2
execute as @a at @s[tag=tired_drop_trigger,scores={RNG=34..44}] run function snoeyz:drop_item_3
execute as @a at @s[tag=tired_drop_trigger,scores={RNG=45..55}] run function snoeyz:drop_item_4
execute as @a at @s[tag=tired_drop_trigger,scores={RNG=56..66}] run function snoeyz:drop_item_5
execute as @a at @s[tag=tired_drop_trigger,scores={RNG=67..77}] run function snoeyz:drop_item_6
execute as @a at @s[tag=tired_drop_trigger,scores={RNG=78..88}] run function snoeyz:drop_item_7
execute as @a at @s[tag=tired_drop_trigger,scores={RNG=89..99}] run function snoeyz:drop_item_8

#check for tool break plays
execute as @a at @s[predicate=snoeyz:low_durability_netherite_pick,scores={deepslate_mined=1..,RNG=..5}] run playsound minecraft:item.shield.break player @s
execute as @a at @s[predicate=snoeyz:low_durability_netherite_pick,scores={netherrack_mined=1..,RNG=..5}] run playsound minecraft:item.shield.break player @s
execute as @a at @s[predicate=snoeyz:low_durability_netherite_pick,scores={end_stone_mined=1..,RNG=..5}] run playsound minecraft:item.shield.break player @s
execute as @a at @s[predicate=snoeyz:low_durability_diamond_pick,scores={deepslate_mined=1..,RNG=..5}] run playsound minecraft:item.shield.break player @s
execute as @a at @s[predicate=snoeyz:low_durability_diamond_pick,scores={netherrack_mined=1..,RNG=..5}] run playsound minecraft:item.shield.break player @s
execute as @a at @s[predicate=snoeyz:low_durability_diamond_pick,scores={end_stone_mined=1..,RNG=..5}] run playsound minecraft:item.shield.break player @s
execute as @a at @s[predicate=snoeyz:low_durability_iron_pick,scores={deepslate_mined=1..,RNG=..5}] run playsound minecraft:item.shield.break player @s
execute as @a at @s[predicate=snoeyz:low_durability_iron_pick,scores={netherrack_mined=1..,RNG=..5}] run playsound minecraft:item.shield.break player @s
execute as @a at @s[predicate=snoeyz:low_durability_iron_pick,scores={end_stone_mined=1..,RNG=..5}] run playsound minecraft:item.shield.break player @s
execute as @a at @s[predicate=snoeyz:low_durability_stone_pick,scores={deepslate_mined=1..,RNG=..5}] run playsound minecraft:item.shield.break player @s
execute as @a at @s[predicate=snoeyz:low_durability_stone_pick,scores={netherrack_mined=1..,RNG=..5}] run playsound minecraft:item.shield.break player @s
execute as @a at @s[predicate=snoeyz:low_durability_stone_pick,scores={end_stone_mined=1..,RNG=..5}] run playsound minecraft:item.shield.break player @s
execute as @a at @s[predicate=snoeyz:low_durability_wooden_pick,scores={deepslate_mined=1..,RNG=..5}] run playsound minecraft:item.shield.break player @s
execute as @a at @s[predicate=snoeyz:low_durability_wooden_pick,scores={netherrack_mined=1..,RNG=..5}] run playsound minecraft:item.shield.break player @s
execute as @a at @s[predicate=snoeyz:low_durability_wooden_pick,scores={end_stone_mined=1..,RNG=..5}] run playsound minecraft:item.shield.break player @s

#diamond troll
execute as @e[tag=!diamond_troll,type=item,nbt={Item:{id:"minecraft:diamond"}}] run tag @s add diamond_troll
execute as @e[tag=!diamond_troll,type=item,nbt={Item:{id:"minecraft:diamond"}}] at @s run title @p title {"text":"I'm sorry, did you want this?","color":"aqua"}
execute as @e[tag=diamond_troll,type=item,nbt={Item:{id:"minecraft:diamond"}}] run data merge entity @s {NoGravity:true,Motion:[0,0,0]}
execute as @e[tag=diamond_troll,type=item,nbt={Item:{id:"minecraft:diamond"}}] at @p run tp @s ^ ^ ^2.5
execute as @e[tag=diamond_troll,type=item,nbt={Item:{id:"minecraft:diamond"}}] at @s run tp @s ~ ~1 ~

#wolf troll
execute as @e[type=wolf,tag=!angry_like_the_wolf] run data modify entity @s AngryAt set from entity @p UUID
execute as @e[type=wolf,tag=!angry_like_the_wolf] run tag @s add angry_like_the_wolf

#spider view
execute as @e[tag=!killed_by_shader_mob,predicate=snoeyz:spider_targeting_player] if score @p health matches ..0 run function snoeyz:shader_mob_kill
execute as @e[tag=!killed_by_shader_mob,predicate=snoeyz:cave_spider_targeting_player] if score @p health matches ..0 run function snoeyz:shader_mob_kill
tag @a[scores={was_killed_by_enderman=1..}] add killed_by_enderman
tag @a[scores={was_killed_by_creeper=1..}] add killed_by_creeper
tag @a[tag=killed_by_enderman] add killed_by_shader_mob
tag @a[tag=killed_by_creeper] add killed_by_shader_mob
scoreboard players set @a[scores={was_killed_by_enderman=1..}] was_killed_by_enderman 0
scoreboard players set @a[scores={was_killed_by_creeper=1..}] was_killed_by_creeper 0
execute at @a[tag=killed_by_creeper] run summon minecraft:creeper ~ ~ ~ {Tags:[shader_creeper]}
gamemode spectator @a[tag=killed_by_shader_mob]
execute as @a[tag=killed_by_enderman] run spectate @e[type=enderman,limit=1] @s
execute as @a[tag=killed_by_creeper] run spectate @e[tag=shader_creeper,limit=1] @s
tag @a[tag=killed_by_enderman] remove killed_by_enderman
tag @a[tag=killed_by_creeper] remove killed_by_creeper

execute as @a[scores={was_killed=1..},tag=!killed_by_shader_mob] at @s run function snoeyz:reset_shader
execute as @a[scores={was_killed=1..}] run scoreboard players set @s was_killed 0


#super zombies
execute as @e[type=zombie,tag=!zombro] run data merge entity @s {Attributes:[{Base:1d,Name:"minecraft:zombie.spawn_reinforcements"}]}
execute as @e[type=zombie,tag=!zombro] if entity @p[scores={RNG=..50}] run data merge entity @s {Attributes:[{Base:0.5d,Name:"minecraft:generic.movement_speed"}]}
execute as @e[type=zombie,tag=!zombro] run tag @s add zombro

#boat troll
execute as @e at @s[type=boat,tag=!boat_troll] run function snoeyz:boat_troll
execute as @e[type=item] at @s if data entity @s {Item:{id:"minecraft:oak_boat"}} run kill @s
kill @e[type=boat,predicate=snoeyz:ridden_boat_troll_clone]

#replace ghast fireballs
execute as @e[type=minecraft:fireball,nbt=!{Motion:[0d,0d,0d]}] at @s run function snoeyz:replace_with_wither_skull

#ghast sound troll

execute as @a[nbt={Dimension:"minecraft:the_nether"},tag=!ghast_trolled_1,scores={RNG=..20}] at @s run playsound minecraft:entity.ghast.hurt player @s
execute as @a[nbt={Dimension:"minecraft:the_nether"},tag=!ghast_trolled_1,scores={RNG=..20}] at @s run tag @s add ghast_trolled_1
execute as @a[nbt={Dimension:"minecraft:the_nether"},tag=ghast_trolled_1,scores={RNG=40},tag=!ghast_trolled_2] at @s run playsound minecraft:entity.ghast.warn player @s
execute as @a[nbt={Dimension:"minecraft:the_nether"},tag=ghast_trolled_1,scores={RNG=40},tag=!ghast_trolled_2] at @s run tag @s add ghast_trolled_2
execute as @a[nbt={Dimension:"minecraft:the_nether"},tag=ghast_trolled_1,scores={RNG=45},tag=ghast_trolled_2,tag=!ghast_trolled_3] at @s run playsound minecraft:entity.ghast.shoot player @s
execute as @a[nbt={Dimension:"minecraft:the_nether"},tag=ghast_trolled_1,scores={RNG=45},tag=ghast_trolled_2,tag=!ghast_trolled_3] at @s run tag @s add ghast_trolled_3

#reset blocks mined scores
execute as @a at @s[scores={deepslate_mined=1..}] run scoreboard players set @s deepslate_mined 0
execute as @a at @s[scores={netherrack_mined=1..}] run scoreboard players set @s netherrack_mined 0
execute as @a at @s[scores={end_stone_mined=1..}] run scoreboard players set @s end_stone_mined 0

#reset containers opened scores
execute as @a at @s[scores={chest_opened=1..}] run scoreboard players set @s chest_opened 0
execute as @a at @s[scores={barrel_opened=1..}] run scoreboard players set @s barrel_opened 0
execute as @a at @s[scores={ender_chest_opened=1..}] run scoreboard players set @s ender_chest_opened 0
execute as @a at @s[scores={shulker_opened=1..}] run scoreboard players set @s shulker_opened 0