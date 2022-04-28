#function ui:industry/su_input

#電力をその座標から引き出す
    #給電速度リセット
        scoreboard players set $temp ui_i_suc 0
    #装置の最大蓄電量と現在の蓄電量の差をとる
        scoreboard players operation $max ui_i_suc = @s ui_i_sum
        scoreboard players operation $max ui_i_suc -= @s ui_i_su
    #蓄電機の給電速度を取得
        scoreboard players operation $temp ui_i_suc = @s ui_i_sui
    #取得した給電速度<この座標にある電力
    #取得した給電速度<蓄電量差
        scoreboard players operation $temp ui_i_suc < @e[tag=ui_i,distance=..0.5] ui_i_su
        scoreboard players operation $temp ui_i_suc < $max ui_i_suc
    #給電速度の分だけ電力増加
        scoreboard players operation @s ui_i_su += $temp ui_i_suc
    #この座標の電力を給電速度の分減少
        scoreboard players operation @e[tag=ui_i,distance=..0.5] ui_i_su -= $temp ui_i_suc