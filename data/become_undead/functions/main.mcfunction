#サンチェックにより火炎ダメージを与える
execute if score #BU_gamelule BU_head matches 0 as @e[predicate=become_undead:sunlight_check] at @s run damage @s 1 minecraft:in_fire

execute if score #BU_gamelule BU_head matches 1 as @e[predicate=become_undead:sunlight_check,predicate=become_undead:helmet_fire_check] at @s run damage @s 1 minecraft:in_fire


#サンチェック適応かつプレイヤーが近くにいるモブ(プレイヤー以外)を燃やす(2Fだからダメージにならない)
execute if score #BU_gamelule BU_head matches 0 as @e[predicate=become_undead:sunlight_check,type=!minecraft:player] at @s if entity @a[distance=..25] run data merge entity @s {Fire:2}

execute if score #BU_gamelule BU_head matches 1 as @e[predicate=become_undead:sunlight_check,type=!minecraft:player,predicate=become_undead:helmet_fire_check] at @s if entity @a[distance=..25] run data merge entity @s {Fire:2}

#タイマーコマンド
scoreboard players add #BU_hensuu BU_timer 1
execute if score #BU_hensuu BU_timer >= #BU_hensuu BU_90 run function become_undead:timer_90
execute if score #BU_hensuu BU_timer >= #BU_hensuu BU_90 run scoreboard players set #BU_hensuu BU_timer 0

#execute as @a at @s run execute unless score @s BU_helmet_damage <= #BU_hensuu BU_999999... run execute store result score @s BU_helmet_damage run data get entity @s Inventory[{Slot:103b}].tag.Damage
#execute as @a[predicate=become_undead:helmet_fire_check] at @s run scoreboard players reset @s BU_helmet_damage



