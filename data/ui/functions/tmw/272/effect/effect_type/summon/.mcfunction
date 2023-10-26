# カードを与えるテスト
#execute as @e[tag=tmw272_temp_card_effect_target] run function ui:tmw/272/effect/effect_type/create/2

#execute as @e[tag=tmw272_temp_card_effect_target] run tellraw @a[tag=ui_temp_players] ["",{"text":"   ","color":"gray"},{"selector":"@s"},{"text":"が特殊デッキから"},{"score":{"name": "$var","objective": "ui_temp"}},{"text": "枚手札に加えた！"}]

scoreboard players set $shot_type ui_temp 1

summon pig ~ ~ ~ {NoAI:1,Tags:["hc_deck","hc_deck_temp"],Invulnerable:1b,CustomNameVisible:1b,Silent:1b}
execute as @e[tag=hc_deck_temp] run function oh_my_dat:please
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.list set from storage ui:temp temp.effect.list
data modify entity @e[tag=hc_deck_temp,limit=1] CustomName set from storage ui:temp temp.effect.name

tag @s add ui_temp_target
scoreboard players operation @e[tag=hc_deck_temp] ui_team = @s ui_team
execute as @e[tag=hc_deck_temp] at @s run function ui:template/square_shuffle10
execute as @e[tag=hc_deck_temp] at @s run function ui:tmw/272/id/-1/success

tag @e[tag=hc_deck_temp] remove hc_deck_temp

function oh_my_dat:please
