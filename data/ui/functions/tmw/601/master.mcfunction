# 全装備から振り分け

# idを共有
scoreboard players operation $id ui_temp = @s ui_id

# 同じチームを認識して識別（もしかしたら回復スペル作るかもしれないのでメモ）
scoreboard players operation $team ui_temp = @s ui_team
execute as @e[predicate=ui:load_unhurtable] if score @s ui_team = $team ui_temp run tag @s add ui_temp_team

# 装備データ更新
execute store result score $head ui_temp run data get entity @s Inventory.[{Slot:103b}].tag.tmw.type
execute store result score $chest ui_temp run data get entity @s Inventory.[{Slot:102b}].tag.tmw.type
execute store result score $legs ui_temp run data get entity @s Inventory.[{Slot:101b}].tag.tmw.type
execute store result score $feet ui_temp run data get entity @s Inventory.[{Slot:100b}].tag.tmw.type

# 装備変更全体
execute unless score @s ui_tmw601_head = $head ui_temp run tag @s add tmw601_changed_all
execute unless score @s ui_tmw601_chest = $chest ui_temp run tag @s add tmw601_changed_all
execute unless score @s ui_tmw601_legs = $legs ui_temp run tag @s add tmw601_changed_all
execute unless score @s ui_tmw601_feet = $feet ui_temp run tag @s add tmw601_changed_all

# 頭
execute if entity @s[tag=tmw601_changed_all] unless score @s ui_tmw601_head = $head ui_temp run tag @s add tmw601_changed
execute if score @s[tag=tmw601_changed] ui_tmw601_head matches 4001..5000 run function ui:tmw/601/head/remove
execute if score $head ui_temp matches 4001..5000 run function ui:tmw/601/head/manager
tag @s[tag=tmw601_changed] remove tmw601_changed

# 胴
execute if entity @s[tag=tmw601_changed_all] unless score @s ui_tmw601_chest = $chest ui_temp run tag @s add tmw601_changed
execute if score @s[tag=tmw601_changed] ui_tmw601_chest matches 3001..4000 run function ui:tmw/601/chest/remove
execute if score $chest ui_temp matches 3001..4000 run function ui:tmw/601/chest/manager
tag @s[tag=tmw601_changed] remove tmw601_changed

# 脚
execute if entity @s[tag=tmw601_changed_all] unless score @s ui_tmw601_legs = $legs ui_temp run tag @s add tmw601_changed
execute if score @s[tag=tmw601_changed] ui_tmw601_legs matches 2001..3000 run function ui:tmw/601/legs/remove
execute if score $legs ui_temp matches 2001..3000 run function ui:tmw/601/legs/manager
tag @s[tag=tmw601_changed] remove tmw601_changed

# 足
execute if entity @s[tag=tmw601_changed_all] unless score @s ui_tmw601_feet = $feet ui_temp run tag @s add tmw601_changed
execute if score @s[tag=tmw601_changed] ui_tmw601_feet matches 1001..2000 run function ui:tmw/601/feet/remove
execute if score $feet ui_temp matches 1001..2000 run function ui:tmw/601/feet/manager
tag @s[tag=tmw601_changed] remove tmw601_changed

# 次tick用の今つけてる装備データ更新
scoreboard players operation @s ui_tmw601_head = $head ui_temp
scoreboard players operation @s ui_tmw601_chest = $chest ui_temp
scoreboard players operation @s ui_tmw601_legs = $legs ui_temp
scoreboard players operation @s ui_tmw601_feet = $feet ui_temp

# 装備を付けてるよ
tag @s[tag=tmw601_changed_all] remove tmw601_changed_all
tag @s add tmw601_master