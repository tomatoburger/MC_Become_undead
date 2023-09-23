scoreboard objectives add BU_break dummy
scoreboard objectives add BU_head dummy
scoreboard objectives add BU_timer dummy
scoreboard objectives add BU_90 dummy
scoreboard objectives add BU_999999... dummy
scoreboard players set #BU_hensuu BU_999999... 999999999
scoreboard players set #BU_hensuu BU_90 90

#ルールデフォルト
scoreboard players set #BU_gamelule BU_break 1
scoreboard players set #BU_gamelule BU_head 1

playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 2
tellraw @a {"text":"アンデッド化データパック読み込み完了","color":"gold"}