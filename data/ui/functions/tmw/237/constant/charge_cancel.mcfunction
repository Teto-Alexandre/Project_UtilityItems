# チャージキャンセル判定

#
    execute store result score $keeplevel ui_temp run data get storage ui:gun temp.KeepLevel
    scoreboard players operation $temp ui_temp = $ishold ui_temp
    scoreboard players operation $temp ui_temp -= $burst.max ui_temp
    scoreboard players operation $temp ui_temp += $keeplevel ui_temp
    #tellraw @a [{"score":{"objective":"ui_temp","name":"$temp"}}]
    execute store result score $chargekeep ui_temp run data get storage ui:gun temp.ChargeKeep
    execute if score $temp ui_temp matches 1.. if score @s ui_st2 > $chargekeep ui_temp run function ui:tmw/237/constant/charge_cancel2
    execute if score $temp ui_temp matches ..0 run function ui:tmw/237/constant/charge_cancel3