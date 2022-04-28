#時間経過カウント
    #scoreboard players add @s ui_tc 1

#電力をリンク先から引き出す（蓄電機は代わりに給電する）
    #function ui:industry/su_input
    function ui:industry/battery/su_input

#GUI描画
    execute if entity @s[scores={ui_i_gui=2}] run function ui:industry/gui/default

#土台壊されたら破壊
    execute as @s[tag=ui_i_break] run function ui:industry/3/break