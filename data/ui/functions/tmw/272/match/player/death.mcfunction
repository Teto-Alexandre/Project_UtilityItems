execute if entity @s[tag=!summoned_delete] run tellraw @a[tag=ui_temp_players] ["",{"selector":"@s"},{"text": "が戦線離脱しました"}]

#scoreboard players reset @s ui_tmw272_link_id
#tag @s remove tmw272_active
scoreboard players set $rand_num ui_temp 1
execute if score @s ui_tmw272_reward_count matches 0..30 run scoreboard players operation $rand_num ui_temp = @s ui_tmw272_reward_count

## 死んだ時に生きている@aの報酬にカードを追加
function oh_my_dat:please
data modify storage ui:temp temp.death set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.list_origin
#execute if data storage ui:temp temp.death[{tag:{tmw:{cg:{only_one:1}}}}] run data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.reward
execute store result score $mod ui_calc1 run data get storage ui:temp temp.death
execute if entity @s[tag=!summoned_delete] as @a[tag=ui_temp_players,tag=!ui_temp_player,tag=!tmw272_spectate] if score $rand_num ui_temp matches 1.. run function ui:tmw/272/match/player/reward

scoreboard players reset $rand_old1 ui_calc1
scoreboard players reset $rand_old2 ui_calc1
scoreboard players reset $rand_old3 ui_calc1
scoreboard players reset $rand_old4 ui_calc1
scoreboard players reset $rand_old5 ui_calc1
scoreboard players reset $rand_num ui_temp
scoreboard players reset $rand_num_temp ui_temp
function oh_my_dat:please

execute if entity @s[type=player] at @s run function ui:tmw/272/match/player/death.player
execute if entity @s[tag=hc_deck] if entity @s[tag=!summoned_delete] at @s run function ui:tmw/272/match/player/death.player
execute if entity @s[tag=hc_deck] if entity @s[tag=summoned_delete] at @s run function ui:tmw/272/match/player/death.entity
execute if entity @s[tag=!hc_deck] if entity @s[type=!player] at @s run function ui:tmw/272/match/player/death.entity

data remove storage ui:temp temp.death