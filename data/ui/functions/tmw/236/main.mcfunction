# 投げるよ!
    execute as @s[scores={ui_uses=1..}] at @s anchored eyes positioned ^ ^ ^ run function ui:tmw/236/tick

# 予測線表示
    scoreboard players set $visible ui_temp 1
    execute store result score $temp2 ui_temp run data get entity @s SelectedItem.tag.tmw.type
    execute at @s[nbt={Inventory:[{tag:{tmw:{id:10,type:6}}}]}] anchored eyes positioned ^ ^ ^ unless score $temp2 ui_temp matches 4 unless score $temp2 ui_temp matches 7 run function ui:tmw/236/linemanager
