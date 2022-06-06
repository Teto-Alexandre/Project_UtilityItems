# 射撃体勢！
    function ui:tmw/237/constant/shoot

# 必要データ収集
    data modify storage ui:gun temp2 set from entity @s SelectedItem.tag.tmw.final
    execute store result score $shottype ui_temp run data get storage ui:gun temp2.ShotType

# メインプロセスに送信
    execute if score $shottype ui_temp matches 1 run function ui:tmw/237/attack/shot/core
    execute if score $shottype ui_temp matches 2 run function ui:tmw/237/attack/melee/core

# インク減少
    scoreboard players operation $ink ui_temp -= $ink.main ui_temp

# 変更した
    scoreboard players set $changed ui_temp 1