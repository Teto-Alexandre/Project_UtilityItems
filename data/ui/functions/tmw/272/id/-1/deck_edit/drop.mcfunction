playsound block.ender_chest.open player @a ~ ~ ~ 0.5 2 0

execute if entity @s[tag=tmw272_active] run function ui:tmw/272/id/-1/deck_edit/drop_s.fail
execute unless entity @s[tag=tmw272_active] run tag @s remove editing_check
execute unless entity @s[tag=tmw272_active] unless entity @s[nbt={SelectedItem:{tag:{tmw:{cg:{slots:27}}}}}] run function ui:tmw/272/id/-1/deck_edit/drop_s
execute unless entity @s[tag=tmw272_active] if entity @s[nbt={SelectedItem:{tag:{tmw:{cg:{slots:27}}}}}] run function ui:tmw/272/id/-1/deck_edit/drop_s27