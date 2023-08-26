# グリッチ

# 同形メタ
scoreboard players set $success ui_temp 0
execute if score @s ui_tmw255_state_glitch matches 1.. run scoreboard players remove @s ui_tmw255_state_glitch 1
execute if score @s ui_tmw255_state_glitch matches 1000.. run scoreboard players remove @s ui_tmw255_state_glitch 10
execute if score @s ui_tmw255_state_glitch matches 5000.. run scoreboard players remove @s ui_tmw255_state_glitch 100
execute if score @s ui_tmw255_state_glitch matches 9000.. run scoreboard players remove @s ui_tmw255_state_glitch 100
execute if score @s ui_tmw255_state_glitch matches 1.. run clear @s command_block{glitch:1} 1
execute if score @s ui_tmw255_state_glitch matches 100.. run clear @s command_block{glitch:2} 1
execute if score @s ui_tmw255_state_glitch matches 500.. run clear @s command_block{glitch:1} 10
execute if score @s ui_tmw255_state_glitch matches 1000.. run clear @s command_block{glitch:2} 10
execute if score @s ui_tmw255_state_glitch matches 2000.. run clear @s command_block{glitch:3} 1
execute if score @s ui_tmw255_state_glitch matches 1000.. run title @s title {"text":""}

# モデルデータ抽出
execute store result score $Model ui_temp run data get entity @s SelectedItem.tag.CustomModelData

#
execute unless score $Model ui_temp matches 180075 run scoreboard players set $success ui_temp 1
execute unless score $Model ui_temp matches 180075 run scoreboard players set $Model ui_temp 180075

# 書き込み
execute if score $success ui_temp matches 1 store result storage ui:temp CustomModelData int 1 run scoreboard players get $Model ui_temp
execute if score $success ui_temp matches 1 run item modify entity @s weapon.mainhand ui:gun/each/model
execute if score $success ui_temp matches 1 run scoreboard players reset $Model ui_temp
execute if score $success ui_temp matches 1 run data remove storage ui:temp CustomModelData

#
execute if predicate ui:percentage/25 at @s run particle dust 1 0 1 1 ~ ~ ~ 0.5 0.5 0.5 0 1 force
execute if predicate ui:percentage/25 at @s run particle dust 0 0 0 1 ~ ~ ~ 0.5 0.5 0.5 0 1 force

#
execute if predicate ui:percentage/50 at @s as @e[predicate=ui:load_unhurtable,distance=0.1..5] run function ui:tmw/255/player/crossbow/constant/id/upper/2/attack/
execute if predicate ui:percentage/20 at @s as @e[predicate=ui:load_unhurtable,distance=5..15] run function ui:tmw/255/player/crossbow/constant/id/upper/2/attack/
execute if predicate ui:percentage/5 at @s as @e[predicate=ui:load_unhurtable,distance=15..35] run function ui:tmw/255/player/crossbow/constant/id/upper/2/attack/
execute if predicate ui:percentage/1 at @s as @e[predicate=ui:load_unhurtable,distance=35..75] run function ui:tmw/255/player/crossbow/constant/id/upper/2/attack/
execute if predicate ui:percentage/0.1 at @s as @e[predicate=ui:load_unhurtable,distance=75..120] run function ui:tmw/255/player/crossbow/constant/id/upper/2/attack/

execute if predicate ui:percentage/10 at @s as @e[type=item,distance=..30,sort=random,limit=1] run function ui:tmw/255/player/crossbow/constant/id/upper/2/attack/