#初期設定:1
scoreboard players add #BU_gamelule BU_break 1
execute if score #BU_gamelule BU_break matches 2 run scoreboard players set #BU_gamelule BU_break 0
#BU_gameluleは自分で作った名前なので予測が出なくてもいきなり入れてOK

#設定変更のログ
execute if score #BU_gamelule BU_break matches 1 run tellraw @s "アンデッド化データパック:日光にさらされている時の耐久値の減少をONにしました"
execute if score #BU_gamelule BU_break matches 0 run tellraw @s "アンデッド化データパック:日光にさらされている時の耐久値の減少をOFFにしました"