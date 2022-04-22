#既定値を越えたら二分探索に切り替える
execute if score $temp ui_temp matches 32768.. run function ui:tmw/227/orb.lp

summon experience_orb ~ ~ ~ {Tags:["tmw_r_exp"],Value:1s}
execute store result entity @e[tag=tmw_r_exp,limit=1] Value short 1 run scoreboard players get $temp ui_temp
tag @e[tag=tmw_r_exp] remove tmw_r_exp
