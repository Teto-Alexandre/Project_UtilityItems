#
execute store result score $size ui_temp run data get storage ui:temp temp[0].tag.tmw.bullet.Size
execute if score $size ui_temp <= $max_size ui_temp if score $size ui_temp matches 0.. store result score $slot ui_temp run data get storage ui:temp temp[0].Slot
execute if score $size ui_temp <= $max_size ui_temp if score $size ui_temp matches 0.. run scoreboard players set $num ui_temp -1