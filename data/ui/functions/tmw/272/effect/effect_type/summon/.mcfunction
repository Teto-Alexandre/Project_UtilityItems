# カードを与えるテスト
#execute as @e[tag=tmw272_temp_card_effect_target] run function ui:tmw/272/effect/effect_type/create/2

#execute as @e[tag=tmw272_temp_card_effect_target] run tellraw @a[tag=ui_temp_players] ["",{"text":"   ","color":"gray"},{"selector":"@s"},{"text":"が特殊デッキから"},{"score":{"name": "$var","objective": "ui_temp"}},{"text": "枚手札に加えた！"}]

scoreboard players set $shot_type ui_temp 1
scoreboard players set $success_message ui_temp 1

execute unless data storage ui:temp temp.effect.id run summon pig ~ ~ ~ {NoAI:1,Tags:["hc_deck","summoned_nocount","summoned_delete","hc_deck_temp","ui_temp_players"],Invulnerable:1b,CustomNameVisible:1b,Silent:1b}
$execute if data storage ui:temp temp.effect.id run summon $(id) ~ ~ ~ {NoAI:1,Invulnerable:1b,CustomNameVisible:1b,Silent:1b,Tags:["hc_deck","summoned_nocount","hc_deck_temp","ui_temp_players"]}
execute as @e[tag=hc_deck_temp] run function oh_my_dat:please
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.list_origin set from storage ui:temp temp.effect.list
data modify entity @e[tag=hc_deck_temp,limit=1] CustomName set from storage ui:temp temp.effect.name
data modify entity @e[tag=hc_deck_temp,limit=1] ArmorItems set from storage ui:temp temp.effect.ArmorItems
data modify entity @e[tag=hc_deck_temp,limit=1] HandItems set from storage ui:temp temp.effect.HandItems

tag @s add ui_temp_target
tag @s add ui_temp_summoner
scoreboard players operation @e[tag=hc_deck_temp] ui_team = @s ui_team
execute as @e[tag=hc_deck_temp] at @s run function ui:template/horizontal_shuffle10
execute as @e[tag=hc_deck_temp] at @s run particle dust 1 1 1 5 ~ ~ ~ 1 1 1 0 10 force
execute as @e[tag=hc_deck_temp] at @s run particle end_rod ~ ~ ~ 0 0 0 0.1 10 force
execute as @e[tag=hc_deck_temp] at @s run playsound entity.firework_rocket.blast player @a ~ ~ ~ 1 1.4 0
execute as @e[tag=hc_deck_temp] at @s run function ui:tmw/272/id/-1/success

execute as @e[tag=hc_deck_temp] if data storage ui:temp temp.effect.mana store result score @s ui_tmw272_mana_limit run data get storage ui:temp temp.effect.mana
execute as @e[tag=hc_deck_temp] if data storage ui:temp temp.effect.health store result score @s ui_tmw272_health_limit run data get storage ui:temp temp.effect.health
execute as @e[tag=hc_deck_temp] if data storage ui:temp temp.effect.health store result score @s ui_tmw272_health run data get storage ui:temp temp.effect.health
execute as @e[tag=hc_deck_temp] run scoreboard players operation @s ui_tmw272_summoner_obj_id = @e[tag=ui_temp_summoner] ui_obj_id

tag @e[tag=hc_deck_temp] remove hc_deck_temp

function oh_my_dat:please
tag @s add ui_temp_player
tag @s remove ui_temp_summoner
