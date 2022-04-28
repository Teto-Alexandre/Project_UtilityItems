#時間経過カウント
    #scoreboard players add @s ui_tc 1

#電力をリンク先から引き出す（蓄電機は代わりに給電する）
    function ui:industry/su_input

#GUI描画
    execute if entity @s[scores={ui_i_gui=2}] run function ui:industry/gui/furnace

#かまど用処理
    #エネルギー容量に応じてGUIの見た目上の変化
        execute if score @s ui_i_su >= @s ui_i_suu run data merge block ~ ~ ~ {BurnTime:200s}
        execute unless score @s ui_i_su >= @s ui_i_suu run data merge block ~ ~ ~ {BurnTime:0s}
        execute if data block ~ ~ ~ Items[{Slot:0b}] if score @s ui_i_su >= @s ui_i_suu run scoreboard players operation @s ui_i_su -= @s ui_i_suu
    #電力が0を下回らないようにする
        scoreboard players operation @s ui_i_su > #0 ui_num
    #加工速度をインチキ加速
        scoreboard players set @s ui_i_ctt 2000
        scoreboard players operation @s ui_i_ctt /= @s ui_i_ctp
        execute store result block ~ ~ ~ CookTimeTotal short 1 run scoreboard players get @s ui_i_ctt

#土台壊されたら破壊
    execute as @s[tag=ui_i_break] run function ui:industry/5/break