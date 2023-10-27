#tellraw @a[scores={ui_tmw601_accessory=5007}] ["",{"text":"> ","color":"gray","bold": true},{"selector":"@s"},{"text":"がマッチに敗北しました"}]

tellraw @a[tag=ui_temp_players] ["",{"selector":"@s"},{"text": "が戦線離脱しました"}]

#scoreboard players reset @s ui_tmw272_link_id
#tag @s remove tmw272_active

## 死んだ時に生きている@aの報酬にカードを追加
function oh_my_dat:please
data modify storage ui:temp temp.death set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.list
execute if entity @s[tag=!summoned_nocount] as @a[tag=ui_temp_players,tag=!ui_temp_player] run function ui:tmw/272/match/player/reward

scoreboard players reset $rand_old1 ui_calc1
scoreboard players reset $rand_old2 ui_calc1
function oh_my_dat:please

execute if entity @s[type=player] at @s run function ui:tmw/272/match/player/death.player
execute if entity @s[tag=hc_deck] at @s run function ui:tmw/272/match/player/death.player
execute if entity @s[tag=!hc_deck] if entity @s[type=!player] at @s run function ui:tmw/272/match/player/death.entity

data remove storage ui:temp temp.death