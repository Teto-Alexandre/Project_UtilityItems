#function ui:industry/su_input

#電力をリンク先から引き出す
    #これ
        tag @s add ui_temp_this
    #送電速度リセット
        scoreboard players set $temp ui_i_suc 0
    #リンク先の取得
        execute as @e[tag=ui_i] if score @s ui_i_id = @e[tag=ui_temp_this,limit=1] ui_i_link run tag @s add ui_temp_trg
    #装置の最大蓄電量と現在の蓄電量の差をとる
        scoreboard players operation $max ui_i_suc = @s ui_i_sum
        scoreboard players operation $max ui_i_suc -= @s ui_i_su
    #リンク先の送電速度を取得
        scoreboard players operation $temp ui_i_suc = @e[tag=ui_temp_trg] ui_i_suo
    #取得した送電速度<リンク先にある電力
    #取得した送電速度<蓄電量差
        scoreboard players operation $temp ui_i_suc < @e[tag=ui_temp_trg] ui_i_su
        scoreboard players operation $temp ui_i_suc < $max ui_i_suc
    #送電速度の分だけ電力増加
        scoreboard players operation @s ui_i_su += $temp ui_i_suc
    #リンク先の電力を送電速度の分減少
        scoreboard players operation @e[tag=ui_temp_trg] ui_i_su -= $temp ui_i_suc
    #TAG整理
        tag @s remove ui_temp_this
        tag @e[tag=ui_temp_trg] remove ui_temp_trg