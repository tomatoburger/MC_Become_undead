execute if score #BU_gamelule BU_break matches 1 run execute as @a at @s run execute if predicate become_undead:sunlight_check run particle minecraft:smoke ~ ~1.8 ~
execute if score #BU_gamelule BU_break matches 1 run execute as @a at @s run execute if predicate become_undead:sunlight_check run item modify entity @s armor.head become_undead:set_hel_damage

execute if score #BU_gamelule BU_break matches 1 run execute as @a at @s run execute if predicate become_undead:sunlight_check run function become_undead:helmet_sound_stop