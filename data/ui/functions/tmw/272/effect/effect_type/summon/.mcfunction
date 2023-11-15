# カードを与えるテスト
#execute as @e[tag=tmw272_temp_card_effect_target] run function ui:tmw/272/effect/effect_type/create/2

#execute as @e[tag=tmw272_temp_card_effect_target] run tellraw @a[tag=ui_temp_players] ["",{"text":"   ","color":"gray"},{"selector":"@s"},{"text":"が特殊デッキから"},{"score":{"name": "$var","objective": "ui_temp"}},{"text": "枚手札に加えた！"}]

scoreboard players set $shot_type ui_temp 1
scoreboard players set $success_message ui_temp 1

execute unless data storage ui:temp temp.effect.id run summon pig ~ ~ ~ {NoAI:1,Tags:["hc_deck","summoned_nocount","hc_deck_temp"],Invulnerable:1b,CustomNameVisible:1b,Silent:1b}
execute if data storage ui:temp temp.effect{id:"allay"} run summon allay ~ ~ ~ {NoAI:1,Tags:["hc_deck","summoned_nocount","hc_deck_temp"],Invulnerable:1b,CustomNameVisible:1b,Silent:1b}
execute if data storage ui:temp temp.effect{id:"axolotl"} run summon axolotl ~ ~ ~ {NoAI:1,Tags:["hc_deck","summoned_nocount","hc_deck_temp"],Invulnerable:1b,CustomNameVisible:1b,Silent:1b}
execute if data storage ui:temp temp.effect{id:"bat"} run summon bat ~ ~ ~ {NoAI:1,Tags:["hc_deck","summoned_nocount","hc_deck_temp"],Invulnerable:1b,CustomNameVisible:1b,Silent:1b}
execute if data storage ui:temp temp.effect{id:"bee"} run summon bee ~ ~ ~ {NoAI:1,Tags:["hc_deck","summoned_nocount","hc_deck_temp"],Invulnerable:1b,CustomNameVisible:1b,Silent:1b}
execute if data storage ui:temp temp.effect{id:"blaze"} run summon blaze ~ ~ ~ {NoAI:1,Tags:["hc_deck","summoned_nocount","hc_deck_temp"],Invulnerable:1b,CustomNameVisible:1b,Silent:1b}
#execute if data storage ui:temp temp.effect{id:"camel"} run summon camel ~ ~ ~ {NoAI:1,Tags:["hc_deck","summoned_nocount","hc_deck_temp"],Invulnerable:1b,CustomNameVisible:1b,Silent:1b}
execute if data storage ui:temp temp.effect{id:"cat"} run summon cat ~ ~ ~ {NoAI:1,Tags:["hc_deck","summoned_nocount","hc_deck_temp"],Invulnerable:1b,CustomNameVisible:1b,Silent:1b}
execute if data storage ui:temp temp.effect{id:"cave_spider"} run summon cave_spider ~ ~ ~ {NoAI:1,Tags:["hc_deck","summoned_nocount","hc_deck_temp"],Invulnerable:1b,CustomNameVisible:1b,Silent:1b}
execute if data storage ui:temp temp.effect{id:"chicken"} run summon chicken ~ ~ ~ {NoAI:1,Tags:["hc_deck","summoned_nocount","hc_deck_temp"],Invulnerable:1b,CustomNameVisible:1b,Silent:1b}
execute if data storage ui:temp temp.effect{id:"cod"} run summon cod ~ ~ ~ {NoAI:1,Tags:["hc_deck","summoned_nocount","hc_deck_temp"],Invulnerable:1b,CustomNameVisible:1b,Silent:1b}
execute if data storage ui:temp temp.effect{id:"cow"} run summon cow ~ ~ ~ {NoAI:1,Tags:["hc_deck","summoned_nocount","hc_deck_temp"],Invulnerable:1b,CustomNameVisible:1b,Silent:1b}
execute if data storage ui:temp temp.effect{id:"creeper"} run summon creeper ~ ~ ~ {NoAI:1,Tags:["hc_deck","summoned_nocount","hc_deck_temp"],Invulnerable:1b,CustomNameVisible:1b,Silent:1b}
execute if data storage ui:temp temp.effect{id:"dolphin"} run summon dolphin ~ ~ ~ {NoAI:1,Tags:["hc_deck","summoned_nocount","hc_deck_temp"],Invulnerable:1b,CustomNameVisible:1b,Silent:1b}
execute if data storage ui:temp temp.effect{id:"donkey"} run summon donkey ~ ~ ~ {NoAI:1,Tags:["hc_deck","summoned_nocount","hc_deck_temp"],Invulnerable:1b,CustomNameVisible:1b,Silent:1b}
execute if data storage ui:temp temp.effect{id:"drowned"} run summon drowned ~ ~ ~ {NoAI:1,Tags:["hc_deck","summoned_nocount","hc_deck_temp"],Invulnerable:1b,CustomNameVisible:1b,Silent:1b}
execute if data storage ui:temp temp.effect{id:"elder_guardian"} run summon elder_guardian ~ ~ ~ {NoAI:1,Tags:["hc_deck","summoned_nocount","hc_deck_temp"],Invulnerable:1b,CustomNameVisible:1b,Silent:1b}
execute if data storage ui:temp temp.effect{id:"ender_dragon"} run summon ender_dragon ~ ~ ~ {NoAI:1,Tags:["hc_deck","summoned_nocount","hc_deck_temp"],Invulnerable:1b,CustomNameVisible:1b,Silent:1b}
execute if data storage ui:temp temp.effect{id:"enderman"} run summon enderman ~ ~ ~ {NoAI:1,Tags:["hc_deck","summoned_nocount","hc_deck_temp"],Invulnerable:1b,CustomNameVisible:1b,Silent:1b}
execute if data storage ui:temp temp.effect{id:"endermite"} run summon endermite ~ ~ ~ {NoAI:1,Tags:["hc_deck","summoned_nocount","hc_deck_temp"],Invulnerable:1b,CustomNameVisible:1b,Silent:1b}
execute if data storage ui:temp temp.effect{id:"evoker"} run summon evoker ~ ~ ~ {NoAI:1,Tags:["hc_deck","summoned_nocount","hc_deck_temp"],Invulnerable:1b,CustomNameVisible:1b,Silent:1b}
execute if data storage ui:temp temp.effect{id:"fox"} run summon fox ~ ~ ~ {NoAI:1,Tags:["hc_deck","summoned_nocount","hc_deck_temp"],Invulnerable:1b,CustomNameVisible:1b,Silent:1b}
execute if data storage ui:temp temp.effect{id:"frog"} run summon frog ~ ~ ~ {NoAI:1,Tags:["hc_deck","summoned_nocount","hc_deck_temp"],Invulnerable:1b,CustomNameVisible:1b,Silent:1b}
execute if data storage ui:temp temp.effect{id:"ghast"} run summon ghast ~ ~ ~ {NoAI:1,Tags:["hc_deck","summoned_nocount","hc_deck_temp"],Invulnerable:1b,CustomNameVisible:1b,Silent:1b}
execute if data storage ui:temp temp.effect{id:"giant"} run summon giant ~ ~ ~ {NoAI:1,Tags:["hc_deck","summoned_nocount","hc_deck_temp"],Invulnerable:1b,CustomNameVisible:1b,Silent:1b}
execute if data storage ui:temp temp.effect{id:"glow_squid"} run summon glow_squid ~ ~ ~ {NoAI:1,Tags:["hc_deck","summoned_nocount","hc_deck_temp"],Invulnerable:1b,CustomNameVisible:1b,Silent:1b}
execute if data storage ui:temp temp.effect{id:"goat"} run summon goat ~ ~ ~ {NoAI:1,Tags:["hc_deck","summoned_nocount","hc_deck_temp"],Invulnerable:1b,CustomNameVisible:1b,Silent:1b}
execute if data storage ui:temp temp.effect{id:"guardian"} run summon guardian ~ ~ ~ {NoAI:1,Tags:["hc_deck","summoned_nocount","hc_deck_temp"],Invulnerable:1b,CustomNameVisible:1b,Silent:1b}
execute if data storage ui:temp temp.effect{id:"hoglin"} run summon hoglin ~ ~ ~ {NoAI:1,Tags:["hc_deck","summoned_nocount","hc_deck_temp"],Invulnerable:1b,CustomNameVisible:1b,Silent:1b}
execute if data storage ui:temp temp.effect{id:"horse"} run summon horse ~ ~ ~ {NoAI:1,Tags:["hc_deck","summoned_nocount","hc_deck_temp"],Invulnerable:1b,CustomNameVisible:1b,Silent:1b}
execute if data storage ui:temp temp.effect{id:"husk"} run summon husk ~ ~ ~ {NoAI:1,Tags:["hc_deck","summoned_nocount","hc_deck_temp"],Invulnerable:1b,CustomNameVisible:1b,Silent:1b}
execute if data storage ui:temp temp.effect{id:"illusioner"} run summon illusioner ~ ~ ~ {NoAI:1,Tags:["hc_deck","summoned_nocount","hc_deck_temp"],Invulnerable:1b,CustomNameVisible:1b,Silent:1b}
execute if data storage ui:temp temp.effect{id:"iron_golem"} run summon iron_golem ~ ~ ~ {NoAI:1,Tags:["hc_deck","summoned_nocount","hc_deck_temp"],Invulnerable:1b,CustomNameVisible:1b,Silent:1b}
execute if data storage ui:temp temp.effect{id:"llama"} run summon llama ~ ~ ~ {NoAI:1,Tags:["hc_deck","summoned_nocount","hc_deck_temp"],Invulnerable:1b,CustomNameVisible:1b,Silent:1b}
execute if data storage ui:temp temp.effect{id:"magma_cube"} run summon magma_cube ~ ~ ~ {NoAI:1,Tags:["hc_deck","summoned_nocount","hc_deck_temp"],Invulnerable:1b,CustomNameVisible:1b,Silent:1b}
execute if data storage ui:temp temp.effect{id:"mooshroom"} run summon mooshroom ~ ~ ~ {NoAI:1,Tags:["hc_deck","summoned_nocount","hc_deck_temp"],Invulnerable:1b,CustomNameVisible:1b,Silent:1b}
execute if data storage ui:temp temp.effect{id:"mule"} run summon mule ~ ~ ~ {NoAI:1,Tags:["hc_deck","summoned_nocount","hc_deck_temp"],Invulnerable:1b,CustomNameVisible:1b,Silent:1b}
execute if data storage ui:temp temp.effect{id:"ocelot"} run summon ocelot ~ ~ ~ {NoAI:1,Tags:["hc_deck","summoned_nocount","hc_deck_temp"],Invulnerable:1b,CustomNameVisible:1b,Silent:1b}
execute if data storage ui:temp temp.effect{id:"panda"} run summon panda ~ ~ ~ {NoAI:1,Tags:["hc_deck","summoned_nocount","hc_deck_temp"],Invulnerable:1b,CustomNameVisible:1b,Silent:1b}
execute if data storage ui:temp temp.effect{id:"parrot"} run summon parrot ~ ~ ~ {NoAI:1,Tags:["hc_deck","summoned_nocount","hc_deck_temp"],Invulnerable:1b,CustomNameVisible:1b,Silent:1b}
execute if data storage ui:temp temp.effect{id:"phantom"} run summon phantom ~ ~ ~ {NoAI:1,Tags:["hc_deck","summoned_nocount","hc_deck_temp"],Invulnerable:1b,CustomNameVisible:1b,Silent:1b}
execute if data storage ui:temp temp.effect{id:"pig"} run summon pig ~ ~ ~ {NoAI:1,Tags:["hc_deck","summoned_nocount","hc_deck_temp"],Invulnerable:1b,CustomNameVisible:1b,Silent:1b}
execute if data storage ui:temp temp.effect{id:"piglin"} run summon piglin ~ ~ ~ {NoAI:1,Tags:["hc_deck","summoned_nocount","hc_deck_temp"],Invulnerable:1b,CustomNameVisible:1b,Silent:1b}
execute if data storage ui:temp temp.effect{id:"piglin_brute"} run summon piglin_brute ~ ~ ~ {NoAI:1,Tags:["hc_deck","summoned_nocount","hc_deck_temp"],Invulnerable:1b,CustomNameVisible:1b,Silent:1b}
execute if data storage ui:temp temp.effect{id:"pillager"} run summon pillager ~ ~ ~ {NoAI:1,Tags:["hc_deck","summoned_nocount","hc_deck_temp"],Invulnerable:1b,CustomNameVisible:1b,Silent:1b}
execute if data storage ui:temp temp.effect{id:"polar_bear"} run summon polar_bear ~ ~ ~ {NoAI:1,Tags:["hc_deck","summoned_nocount","hc_deck_temp"],Invulnerable:1b,CustomNameVisible:1b,Silent:1b}
execute if data storage ui:temp temp.effect{id:"pufferfish"} run summon pufferfish ~ ~ ~ {NoAI:1,Tags:["hc_deck","summoned_nocount","hc_deck_temp"],Invulnerable:1b,CustomNameVisible:1b,Silent:1b}
execute if data storage ui:temp temp.effect{id:"rabbit"} run summon rabbit ~ ~ ~ {NoAI:1,Tags:["hc_deck","summoned_nocount","hc_deck_temp"],Invulnerable:1b,CustomNameVisible:1b,Silent:1b}
execute if data storage ui:temp temp.effect{id:"ravager"} run summon ravager ~ ~ ~ {NoAI:1,Tags:["hc_deck","summoned_nocount","hc_deck_temp"],Invulnerable:1b,CustomNameVisible:1b,Silent:1b}
execute if data storage ui:temp temp.effect{id:"salmon"} run summon salmon ~ ~ ~ {NoAI:1,Tags:["hc_deck","summoned_nocount","hc_deck_temp"],Invulnerable:1b,CustomNameVisible:1b,Silent:1b}
execute if data storage ui:temp temp.effect{id:"sheep"} run summon sheep ~ ~ ~ {NoAI:1,Tags:["hc_deck","summoned_nocount","hc_deck_temp"],Invulnerable:1b,CustomNameVisible:1b,Silent:1b}
execute if data storage ui:temp temp.effect{id:"shulker"} run summon shulker ~ ~ ~ {NoAI:1,Tags:["hc_deck","summoned_nocount","hc_deck_temp"],Invulnerable:1b,CustomNameVisible:1b,Silent:1b}
execute if data storage ui:temp temp.effect{id:"silverfish"} run summon silverfish ~ ~ ~ {NoAI:1,Tags:["hc_deck","summoned_nocount","hc_deck_temp"],Invulnerable:1b,CustomNameVisible:1b,Silent:1b}
execute if data storage ui:temp temp.effect{id:"skeleton"} run summon skeleton ~ ~ ~ {NoAI:1,Tags:["hc_deck","summoned_nocount","hc_deck_temp"],Invulnerable:1b,CustomNameVisible:1b,Silent:1b}
execute if data storage ui:temp temp.effect{id:"skeleton_horse"} run summon skeleton_horse ~ ~ ~ {NoAI:1,Tags:["hc_deck","summoned_nocount","hc_deck_temp"],Invulnerable:1b,CustomNameVisible:1b,Silent:1b}
execute if data storage ui:temp temp.effect{id:"slime"} run summon slime ~ ~ ~ {NoAI:1,Tags:["hc_deck","summoned_nocount","hc_deck_temp"],Invulnerable:1b,CustomNameVisible:1b,Silent:1b}
execute if data storage ui:temp temp.effect{id:"snow_golem"} run summon snow_golem ~ ~ ~ {NoAI:1,Tags:["hc_deck","summoned_nocount","hc_deck_temp"],Invulnerable:1b,CustomNameVisible:1b,Silent:1b}
execute if data storage ui:temp temp.effect{id:"spider"} run summon spider ~ ~ ~ {NoAI:1,Tags:["hc_deck","summoned_nocount","hc_deck_temp"],Invulnerable:1b,CustomNameVisible:1b,Silent:1b}
execute if data storage ui:temp temp.effect{id:"squid"} run summon squid ~ ~ ~ {NoAI:1,Tags:["hc_deck","summoned_nocount","hc_deck_temp"],Invulnerable:1b,CustomNameVisible:1b,Silent:1b}
execute if data storage ui:temp temp.effect{id:"stray"} run summon stray ~ ~ ~ {NoAI:1,Tags:["hc_deck","summoned_nocount","hc_deck_temp"],Invulnerable:1b,CustomNameVisible:1b,Silent:1b}
execute if data storage ui:temp temp.effect{id:"strider"} run summon strider ~ ~ ~ {NoAI:1,Tags:["hc_deck","summoned_nocount","hc_deck_temp"],Invulnerable:1b,CustomNameVisible:1b,Silent:1b}
execute if data storage ui:temp temp.effect{id:"tropical_fish"} run summon tropical_fish ~ ~ ~ {NoAI:1,Tags:["hc_deck","summoned_nocount","hc_deck_temp"],Invulnerable:1b,CustomNameVisible:1b,Silent:1b}
execute if data storage ui:temp temp.effect{id:"turtle"} run summon turtle ~ ~ ~ {NoAI:1,Tags:["hc_deck","summoned_nocount","hc_deck_temp"],Invulnerable:1b,CustomNameVisible:1b,Silent:1b}
execute if data storage ui:temp temp.effect{id:"vex"} run summon vex ~ ~ ~ {NoAI:1,Tags:["hc_deck","summoned_nocount","hc_deck_temp"],Invulnerable:1b,CustomNameVisible:1b,Silent:1b}
execute if data storage ui:temp temp.effect{id:"villager"} run summon villager ~ ~ ~ {NoAI:1,Tags:["hc_deck","summoned_nocount","hc_deck_temp"],Invulnerable:1b,CustomNameVisible:1b,Silent:1b}
execute if data storage ui:temp temp.effect{id:"vindicator"} run summon vindicator ~ ~ ~ {NoAI:1,Tags:["hc_deck","summoned_nocount","hc_deck_temp"],Invulnerable:1b,CustomNameVisible:1b,Silent:1b}
execute if data storage ui:temp temp.effect{id:"wandering_trader"} run summon wandering_trader ~ ~ ~ {NoAI:1,Tags:["hc_deck","summoned_nocount","hc_deck_temp"],Invulnerable:1b,CustomNameVisible:1b,Silent:1b}
execute if data storage ui:temp temp.effect{id:"warden"} run summon warden ~ ~ ~ {NoAI:1,Tags:["hc_deck","summoned_nocount","hc_deck_temp"],Invulnerable:1b,CustomNameVisible:1b,Silent:1b}
execute if data storage ui:temp temp.effect{id:"witch"} run summon witch ~ ~ ~ {NoAI:1,Tags:["hc_deck","summoned_nocount","hc_deck_temp"],Invulnerable:1b,CustomNameVisible:1b,Silent:1b}
execute if data storage ui:temp temp.effect{id:"wither"} run summon wither ~ ~ ~ {NoAI:1,Tags:["hc_deck","summoned_nocount","hc_deck_temp"],Invulnerable:1b,CustomNameVisible:1b,Silent:1b}
execute if data storage ui:temp temp.effect{id:"wither_skeleton"} run summon wither_skeleton ~ ~ ~ {NoAI:1,Tags:["hc_deck","summoned_nocount","hc_deck_temp"],Invulnerable:1b,CustomNameVisible:1b,Silent:1b}
execute if data storage ui:temp temp.effect{id:"wolf"} run summon wolf ~ ~ ~ {NoAI:1,Tags:["hc_deck","summoned_nocount","hc_deck_temp"],Invulnerable:1b,CustomNameVisible:1b,Silent:1b}
execute if data storage ui:temp temp.effect{id:"zoglin"} run summon zoglin ~ ~ ~ {NoAI:1,Tags:["hc_deck","summoned_nocount","hc_deck_temp"],Invulnerable:1b,CustomNameVisible:1b,Silent:1b}
execute if data storage ui:temp temp.effect{id:"zombie"} run summon zombie ~ ~ ~ {NoAI:1,Tags:["hc_deck","summoned_nocount","hc_deck_temp"],Invulnerable:1b,CustomNameVisible:1b,Silent:1b}
execute if data storage ui:temp temp.effect{id:"zombie_horse"} run summon zombie_horse ~ ~ ~ {NoAI:1,Tags:["hc_deck","summoned_nocount","hc_deck_temp"],Invulnerable:1b,CustomNameVisible:1b,Silent:1b}
execute if data storage ui:temp temp.effect{id:"zombie_villager"} run summon zombie_villager ~ ~ ~ {NoAI:1,Tags:["hc_deck","summoned_nocount","hc_deck_temp"],Invulnerable:1b,CustomNameVisible:1b,Silent:1b}
execute if data storage ui:temp temp.effect{id:"zombified_piglin"} run summon zombified_piglin ~ ~ ~ {NoAI:1,Tags:["hc_deck","summoned_nocount","hc_deck_temp"],Invulnerable:1b,CustomNameVisible:1b,Silent:1b}
execute as @e[tag=hc_deck_temp] run function oh_my_dat:please
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.list_origin set from storage ui:temp temp.effect.list
data modify entity @e[tag=hc_deck_temp,limit=1] CustomName set from storage ui:temp temp.effect.name
data modify entity @e[tag=hc_deck_temp,limit=1] ArmorItems set from storage ui:temp temp.effect.ArmorItems
data modify entity @e[tag=hc_deck_temp,limit=1] HandItems set from storage ui:temp temp.effect.HandItems

tag @s add ui_temp_target
tag @s add ui_temp_summoner
scoreboard players operation @e[tag=hc_deck_temp] ui_team = @s ui_team
execute as @e[tag=hc_deck_temp] at @s run function ui:template/horizontal_shuffle5
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
