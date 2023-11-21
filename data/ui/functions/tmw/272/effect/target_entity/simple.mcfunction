# 指定のエンティティ以外をターゲットから外す
data modify storage ui:temp temp.temp.target_entity set from storage ui:temp temp.effect.target_entity

execute if data storage ui:temp temp.temp{target_entity:"player"} run tag @e[type=player] add tmw272_temp_card_effect_target_entity

execute if data storage ui:temp temp.temp{target_entity:"allay"} run tag @e[type=allay] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp.temp{target_entity:"axolotl"} run tag @e[type=axolotl] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp.temp{target_entity:"bat"} run tag @e[type=bat] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp.temp{target_entity:"bee"} run tag @e[type=bee] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp.temp{target_entity:"blaze"} run tag @e[type=blaze] add tmw272_temp_card_effect_target_entity
#execute if data storage ui:temp temp.temp{target_entity:"camel"} run tag @e[type=camel] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp.temp{target_entity:"cat"} run tag @e[type=cat] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp.temp{target_entity:"cave_spider"} run tag @e[type=cave_spider] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp.temp{target_entity:"chicken"} run tag @e[type=chicken] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp.temp{target_entity:"cod"} run tag @e[type=cod] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp.temp{target_entity:"cow"} run tag @e[type=cow] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp.temp{target_entity:"creeper"} run tag @e[type=creeper] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp.temp{target_entity:"dolphin"} run tag @e[type=dolphin] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp.temp{target_entity:"donkey"} run tag @e[type=donkey] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp.temp{target_entity:"drowned"} run tag @e[type=drowned] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp.temp{target_entity:"elder_guardian"} run tag @e[type=elder_guardian] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp.temp{target_entity:"ender_dragon"} run tag @e[type=ender_dragon] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp.temp{target_entity:"enderman"} run tag @e[type=enderman] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp.temp{target_entity:"endermite"} run tag @e[type=endermite] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp.temp{target_entity:"evoker"} run tag @e[type=evoker] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp.temp{target_entity:"fox"} run tag @e[type=fox] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp.temp{target_entity:"frog"} run tag @e[type=frog] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp.temp{target_entity:"ghast"} run tag @e[type=ghast] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp.temp{target_entity:"giant"} run tag @e[type=giant] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp.temp{target_entity:"glow_squid"} run tag @e[type=glow_squid] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp.temp{target_entity:"goat"} run tag @e[type=goat] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp.temp{target_entity:"guardian"} run tag @e[type=guardian] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp.temp{target_entity:"hoglin"} run tag @e[type=hoglin] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp.temp{target_entity:"horse"} run tag @e[type=horse] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp.temp{target_entity:"husk"} run tag @e[type=husk] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp.temp{target_entity:"illusioner"} run tag @e[type=illusioner] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp.temp{target_entity:"iron_golem"} run tag @e[type=iron_golem] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp.temp{target_entity:"llama"} run tag @e[type=llama] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp.temp{target_entity:"magma_cube"} run tag @e[type=magma_cube] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp.temp{target_entity:"mooshroom"} run tag @e[type=mooshroom] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp.temp{target_entity:"mule"} run tag @e[type=mule] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp.temp{target_entity:"ocelot"} run tag @e[type=ocelot] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp.temp{target_entity:"panda"} run tag @e[type=panda] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp.temp{target_entity:"parrot"} run tag @e[type=parrot] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp.temp{target_entity:"phantom"} run tag @e[type=phantom] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp.temp{target_entity:"pig"} run tag @e[type=pig] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp.temp{target_entity:"piglin"} run tag @e[type=piglin] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp.temp{target_entity:"piglin_brute"} run tag @e[type=piglin_brute] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp.temp{target_entity:"pillager"} run tag @e[type=pillager] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp.temp{target_entity:"polar_bear"} run tag @e[type=polar_bear] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp.temp{target_entity:"pufferfish"} run tag @e[type=pufferfish] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp.temp{target_entity:"rabbit"} run tag @e[type=rabbit] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp.temp{target_entity:"ravager"} run tag @e[type=ravager] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp.temp{target_entity:"salmon"} run tag @e[type=salmon] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp.temp{target_entity:"sheep"} run tag @e[type=sheep] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp.temp{target_entity:"shulker"} run tag @e[type=shulker] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp.temp{target_entity:"silverfish"} run tag @e[type=silverfish] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp.temp{target_entity:"skeleton"} run tag @e[type=skeleton] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp.temp{target_entity:"skeleton_horse"} run tag @e[type=skeleton_horse] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp.temp{target_entity:"slime"} run tag @e[type=slime] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp.temp{target_entity:"snow_golem"} run tag @e[type=snow_golem] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp.temp{target_entity:"spider"} run tag @e[type=spider] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp.temp{target_entity:"squid"} run tag @e[type=squid] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp.temp{target_entity:"stray"} run tag @e[type=stray] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp.temp{target_entity:"strider"} run tag @e[type=strider] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp.temp{target_entity:"tropical_fish"} run tag @e[type=tropical_fish] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp.temp{target_entity:"turtle"} run tag @e[type=turtle] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp.temp{target_entity:"vex"} run tag @e[type=vex] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp.temp{target_entity:"villager"} run tag @e[type=villager] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp.temp{target_entity:"vindicator"} run tag @e[type=vindicator] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp.temp{target_entity:"wandering_trader"} run tag @e[type=wandering_trader] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp.temp{target_entity:"warden"} run tag @e[type=warden] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp.temp{target_entity:"witch"} run tag @e[type=witch] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp.temp{target_entity:"wither"} run tag @e[type=wither] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp.temp{target_entity:"wither_skeleton"} run tag @e[type=wither_skeleton] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp.temp{target_entity:"wolf"} run tag @e[type=wolf] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp.temp{target_entity:"zoglin"} run tag @e[type=zoglin] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp.temp{target_entity:"zombie"} run tag @e[type=zombie] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp.temp{target_entity:"zombie_horse"} run tag @e[type=zombie_horse] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp.temp{target_entity:"zombie_villager"} run tag @e[type=zombie_villager] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp.temp{target_entity:"zombified_piglin"} run tag @e[type=zombified_piglin] add tmw272_temp_card_effect_target_entity

data remove storage ui:temp temp.temp

execute unless data storage ui:temp temp.temp.invert run tag @e[tag=ui_temp_players,tag=!tmw272_temp_card_effect_target_entity] add ui_temp_players_no_target
execute if data storage ui:temp temp.temp.invert run tag @e[tag=ui_temp_players,tag=tmw272_temp_card_effect_target_entity] add ui_temp_players_no_target

tag @e[tag=ui_temp_players,tag=tmw272_temp_card_effect_target_entity] remove tmw272_temp_card_effect_target_entity