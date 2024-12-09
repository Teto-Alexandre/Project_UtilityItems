playsound block.ender_chest.open player @a ~ ~ ~ 0.5 2 0

scoreboard players reset $error ui_temp

execute if entity @s[tag=tmw272_active] run scoreboard players set $error ui_temp 1
execute unless block ~ ~2 ~ air unless block ~ ~2 ~ cave_air run scoreboard players set $error ui_temp 2
execute if score @s ui_tmw272_no_deck_edit matches 1.. run scoreboard players set $error ui_temp 3
execute if score $error ui_temp matches 1 run function ui:tmw/272/id/-1/deck_edit/fail1
execute if score $error ui_temp matches 2 run function ui:tmw/272/id/-1/deck_edit/fail2
execute if score $error ui_temp matches 3 run function ui:tmw/272/id/-1/deck_edit/fail3
execute if score $error ui_temp matches 1.. run return 0

tag @s remove editing_check

execute unless entity @s[nbt={SelectedItem:{tag:{tmw:{cg:{slots:27}}}}}] run function ui:tmw/272/id/-1/deck_edit/drop_s
execute if entity @s[nbt={SelectedItem:{tag:{tmw:{cg:{slots:27}}}}}] run function ui:tmw/272/id/-1/deck_edit/drop_s27
