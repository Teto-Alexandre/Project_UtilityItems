# 全装備から振り分け

#idを共有
scoreboard players operation $id ui_temp = @s ui_id

#同じチームを認識して識別（もしかしたら回復スペル作るかもしれないのでメモ）
scoreboard players operation $team ui_temp = @s ui_team
execute as @e[predicate=ui:load_unhurtable] if score @s ui_team = $team ui_temp run tag @s add ui_temp_team

#
execute store result score $head ui_temp run data get entity @s Inventory.[{Slot:103b}].tag.tmw.type
execute store result score $chest ui_temp run data get entity @s Inventory.[{Slot:102b}].tag.tmw.type
execute store result score $legs ui_temp run data get entity @s Inventory.[{Slot:101b}].tag.tmw.type
execute store result score $feet ui_temp run data get entity @s Inventory.[{Slot:100b}].tag.tmw.type

#
execute if score $head ui_temp matches 3001..4000 run function ui:tmw/601/head/manager
execute if score $chest ui_temp matches 2001..3000 run function ui:tmw/601/chest/manager
execute if score $legs ui_temp matches 1001..2000 run function ui:tmw/601/legs/manager
execute if score $feet ui_temp matches 1..1000 run function ui:tmw/601/feet/manager