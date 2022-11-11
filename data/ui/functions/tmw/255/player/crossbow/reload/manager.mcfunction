# リロード

# 現在の装弾数を確認
    data modify storage ui:temp temp set from entity @s SelectedItem.tag.tmw.bullets
    execute store result score $num ui_temp run data get storage ui:temp temp
    scoreboard players set $check ui_temp 0
    function ui:tmw/255/player/crossbow/reload/linear_count
    execute store result score $magazine ui_temp run data get storage ui:gun temp.Magazine
    scoreboard players operation $magazine ui_temp -= $check ui_temp

# 弾を消費
    scoreboard players set $add ui_temp 0
    execute if score $magazine ui_temp matches ..0 at @s run playsound block.note_block.hat player @s ~ ~ ~ 1 0.8 0
    execute if score $magazine ui_temp matches 1.. run function ui:tmw/255/player/crossbow/reload/ammo_checked

# データクリア
    data remove storage ui:temp temp
    data remove storage ui:temp temp2

#
    execute if score $add ui_temp matches 1 run function ui:tmw/255/player/crossbow/reload/manager