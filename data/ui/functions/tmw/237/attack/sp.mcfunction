# 射撃体勢！
    function ui:tmw/237/constant/shoot

# 必要データ収集
    data modify storage ui:gun temp2 set from entity @s SelectedItem.tag.tmw.sp
    execute store result score $ink.main ui_temp run data get storage ui:gun temp2.TimeUse
    execute store result score $shottype ui_temp run data get storage ui:gun temp2.ShotType
    data modify storage ui:gun temp.DisplayName set from storage ui:gun temp2.Name

# メインプロセスに送信
    execute if score $shottype ui_temp matches 1 run function ui:tmw/237/attack/shot/core
    execute if score $shottype ui_temp matches 2 if entity @s[nbt={OnGround:1b}] run function ui:tmw/237/attack/roll/core
    execute if score $shottype ui_temp matches 101 run function ui:tmw/237/attack/missile/core

# インク減少
    scoreboard players operation $sptime ui_temp -= $ink.main ui_temp

# 変更した
    scoreboard players set $changed ui_temp 1