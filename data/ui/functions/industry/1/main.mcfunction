#時間経過カウント
    #scoreboard players add @s ui_tc 1

#電力をリンク先から引き出す
    function ui:industry/su_input

#電力スコア増加
    scoreboard players operation @s ui_i_su += @s ui_i_sug
    scoreboard players operation @s ui_i_su < @s ui_i_sum

#GUI描画
    execute if entity @s[scores={ui_i_gui=2}] run function ui:industry/gui/default

#土台壊されたら破壊
    execute as @s[tag=ui_i_break] run function ui:industry/1/break