# スコア化
    execute store result score $num ui_temp run data get storage ui:common input.Num
    scoreboard players remove $num ui_temp 1

#
    execute if score $num ui_temp matches 1.. run function ui:common/particle/create/num.loop
