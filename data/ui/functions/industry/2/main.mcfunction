#電力をリンク先から引き出す
    function ui:industry/su_input

#電力スコアを減少して動作を進める
    execute unless score @s ui_i_item matches 64.. if data block ~ ~ ~ Items[{Slot:0b}] if score @s ui_i_su >= @s ui_i_suu run scoreboard players operation @s ui_tc += @s ui_i_ctp
    execute unless score @s ui_i_item matches 64.. if data block ~ ~ ~ Items[{Slot:0b}] if score @s ui_i_su >= @s ui_i_suu run scoreboard players operation @s ui_i_su -= @s ui_i_suu
    scoreboard players operation @s ui_i_su < @s ui_i_sum
    scoreboard players operation @s ui_i_su > #0 ui_num

#動作が進んだらアイテムを産出
    execute unless score @s ui_i_item matches 64.. if score @s ui_tc matches 21.. run scoreboard players add @s ui_i_item 1
    execute unless score @s ui_i_item matches 65.. if score @s ui_tc matches 21.. run scoreboard players set @s ui_tc 1

#GUI描画
    execute if entity @s[scores={ui_i_gui=2}] run function ui:industry/gui/blaze_gen
    
#土台壊されたら破壊
    execute as @s[tag=ui_i_break] run function ui:industry/2/break