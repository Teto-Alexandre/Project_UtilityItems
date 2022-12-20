# カスタムステータスが設定されていないなら質量より武器性能を算出する
execute store result score $Mass ui_temp run data get storage ui:gun temp.Mass
scoreboard players remove $Mass ui_temp 100
scoreboard players operation $Mass ui_temp /= #2 ui_num
execute store result storage ui:gun temp.now.Speed double -0.001 run scoreboard players operation $Mass ui_temp > #0 ui_num
execute store result storage ui:gun temp.now.Attack double 0.03 run scoreboard players add $Mass ui_temp 10
scoreboard players add $Mass ui_temp 40
scoreboard players operation $Mass ui_temp /= #20 ui_num
scoreboard players set $temp ui_temp 10000
scoreboard players operation $temp ui_temp /= $Mass ui_temp
scoreboard players set $temp2 ui_temp 10000
execute store result storage ui:gun temp.now.AttackSpeed double -0.0001 run scoreboard players operation $temp2 ui_temp -= $temp ui_temp
