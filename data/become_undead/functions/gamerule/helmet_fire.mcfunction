#初期設定:1
scoreboard players add #BU_gamelule BU_head 1
execute if score #BU_gamelule BU_head matches 2 run scoreboard players set #BU_gamelule BU_head 0
#BU_gameluleは自分で作った名前なので予測が出なくてもいきなり入れてOK

#設定変更のログ
execute if score #BU_gamelule BU_head matches 1 run tellraw @s "アンデッド化データパック:ヘルメットを被っている時の炎上をOFFにしました"
execute if score #BU_gamelule BU_head matches 0 run tellraw @s "アンデッド化データパック:ヘルメットを被っている時の炎上をONにしました"