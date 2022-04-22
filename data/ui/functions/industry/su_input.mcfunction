#function ui:industry/su_input

#電力をリンク先から引き出す
    #送電速度リセット
        scoreboard players reset @s ui_i_suc
    #リンク先の取得
        execute as @e[tag=ui_i,scores={ui_i_id=1..}] run scoreboard players operation @s ui_i_idc = @s ui_i_id
        scoreboard players operation @e[tag=ui_i,scores={ui_i_idc=1..}] ui_i_idc -= @s ui_i_link
    #装置の最大蓄電量と現在の蓄電量の差をとる
        scoreboard players operation max ui_i_suc = @s ui_i_sum
        scoreboard players operation max ui_i_suc -= @s ui_i_su
    #リンク先の送電速度を取得
        scoreboard players operation @s ui_i_suc = @e[tag=ui_i,distance=1..,scores={ui_i_idc=0}] ui_i_suo
    #取得した送電速度<リンク先にある電力
    #取得した送電速度<蓄電量差
        scoreboard players operation @s ui_i_suc < @e[tag=ui_i,distance=1..,scores={ui_i_idc=0}] ui_i_su
        scoreboard players operation @s ui_i_suc < max ui_i_suc
    #送電速度の分だけ電力増加
        scoreboard players operation @s ui_i_su += @s ui_i_suc
    #リンク先の電力を送電速度の分減少
        scoreboard players operation @e[tag=ui_i,distance=1..,scores={ui_i_idc=0}] ui_i_su -= @s ui_i_suc