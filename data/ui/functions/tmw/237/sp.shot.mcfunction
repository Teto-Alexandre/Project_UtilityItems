# 射撃体勢！
    function ui:tmw/237/shoot

# 必要データ収集
    data modify storage ui:gun temp2 set from entity @s SelectedItem.tag.tmw.sp
    execute store result score $ink.main ui_temp run data get storage ui:gun temp2.TimeUse

# メインプロセスに送信
    function ui:tmw/237/shot.main

# インク減少
    scoreboard players operation $sptime ui_temp -= $ink.main ui_temp

# 変更した
    scoreboard players set $changed ui_temp 1