# スプリンクラー発射
scoreboard players set $particle.fly ui_temp 6
scoreboard players set $particle.end ui_temp 1
scoreboard players set $speed ui_temp 14
scoreboard players set $mod ui_calc1 6
function ui:common/rand
scoreboard players operation $speed.add ui_temp = $rand ui_calc1
scoreboard players set $range ui_temp 35
scoreboard players set $rangetype ui_temp 3
scoreboard players set $damage ui_temp 40
execute if score $team ui_temp matches 1 run data modify storage ui:gun temp.DisplayName set value '{"text":"スプリンクラー","color":"aqua"}'
execute if score $team ui_temp matches 2 run data modify storage ui:gun temp.DisplayName set value '{"text":"スプリンクラー","color":"light_purple"}'
execute if score $team ui_temp matches 3 run data modify storage ui:gun temp.DisplayName set value '{"text":"スプリンクラー","color":"yellow"}'
execute if score $team ui_temp matches 4 run data modify storage ui:gun temp.DisplayName set value '{"text":"スプリンクラー","color":"green"}'
function ui:tmw/237/attack/shot/fire_straight
playsound entity.firework_rocket.blast player @a ~ ~ ~ 0.8 2 0