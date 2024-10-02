scoreboard players set $editing_check ui_temp 0

execute if entity @a[tag=ui_temp_player,tag=editing_check] unless data entity @a[tag=ui_temp_player,limit=1] SelectedItem.tag.tmw.cg.editing run tellraw @a[tag=ui_temp_player,limit=1] [{"text":"[Idling] > ","color": "yellow"},{"text":"デッキの内容を上書きしました","color": "gray"}]

execute unless entity @a[tag=ui_temp_player,tag=editing_check] unless data entity @a[tag=ui_temp_player,limit=1] SelectedItem.tag.tmw.cg.editing run tellraw @a[tag=ui_temp_player,limit=1] [{"text":"[Warning] > ","color": "red"},{"text":"このデッキは現在編集しているデッキではありません","color": "gray"}]
execute unless entity @a[tag=ui_temp_player,tag=editing_check] unless data entity @a[tag=ui_temp_player,limit=1] SelectedItem.tag.tmw.cg.editing run tellraw @a[tag=ui_temp_player,limit=1] [{"text":"[Warning] > ","color": "red"},{"text":"本当に編集内容でこのデッキを上書きしますか？","color": "gray"}]
execute unless entity @a[tag=ui_temp_player,tag=editing_check] unless data entity @a[tag=ui_temp_player,limit=1] SelectedItem.tag.tmw.cg.editing run scoreboard players set $editing_check ui_temp 1
execute unless entity @a[tag=ui_temp_player,tag=editing_check] unless data entity @a[tag=ui_temp_player,limit=1] SelectedItem.tag.tmw.cg.editing run tag @a[tag=ui_temp_player,limit=1] add editing_check

execute if data entity @a[tag=ui_temp_player,limit=1] SelectedItem.tag.tmw.cg.editing run tellraw @a[tag=ui_temp_player,limit=1] [{"text":"[Idling] > ","color": "green"},{"text":"デッキの編集を保存しました","color": "gray"}]

execute if score $editing_check ui_temp matches 0 unless block ~ ~ ~ barrel run function ui:tmw/272/id/-1/deck_edit/success2
execute if score $editing_check ui_temp matches 0 if block ~ ~ ~ barrel run function ui:tmw/272/id/-1/deck_edit/success2_s27

execute if score $editing_check ui_temp matches 0 run playsound block.ender_chest.close player @a ~ ~ ~ 0.5 2 0
execute if score $editing_check ui_temp matches 1 run playsound block.dispenser.fail player @a ~ ~ ~ 0.5 1 0

scoreboard players reset $editing_check ui_temp