# 投げるよ!
    execute at @s run tag @e[type=snowball,sort=nearest,limit=1] add ui_temp_snowball
    execute if entity @e[tag=ui_temp_snowball,nbt={Item:{tag:{tmw:{id:236}}}}] as @s[scores={ui_uses=1..}] at @s anchored eyes positioned ^ ^ ^ run function ui:tmw/236/tick
    tag @e[tag=ui_temp_snowball] remove ui_temp_snowball

# 予測線表示
    scoreboard players set $visible ui_temp 1
    execute store result score $temp2 ui_temp run data get entity @s SelectedItem.tag.tmw.type
    execute at @s[nbt={Inventory:[{tag:{tmw:{id:10,type:6}}}]}] anchored eyes positioned ^ ^ ^ unless score $temp2 ui_temp matches 4 unless score $temp2 ui_temp matches 7 run function ui:tmw/236/linemanager
