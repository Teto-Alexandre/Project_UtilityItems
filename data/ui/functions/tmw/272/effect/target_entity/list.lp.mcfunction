# 指定のエンティティ以外をターゲットから外す
data modify storage ui:temp temp.temp set from storage ui:temp temp.effect.target_entity.list[0]

execute if data storage ui:temp temp{temp:"player"} run tag @e[tag=ui_temp_players,type=player] add tmw272_temp_card_effect_target_entity

execute if data storage ui:temp temp{temp:"allay"} run tag @e[tag=ui_temp_players,type=allay] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp{temp:"axolotl"} run tag @e[tag=ui_temp_players,type=axolotl] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp{temp:"bat"} run tag @e[tag=ui_temp_players,type=bat] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp{temp:"bee"} run tag @e[tag=ui_temp_players,type=bee] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp{temp:"blaze"} run tag @e[tag=ui_temp_players,type=blaze] add tmw272_temp_card_effect_target_entity
#execute if data storage ui:temp temp{temp:"camel"} run tag @e[tag=ui_temp_players,type=camel] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp{temp:"cat"} run tag @e[tag=ui_temp_players,type=cat] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp{temp:"cave_spider"} run tag @e[tag=ui_temp_players,type=cave_spider] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp{temp:"chicken"} run tag @e[tag=ui_temp_players,type=chicken] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp{temp:"cod"} run tag @e[tag=ui_temp_players,type=cod] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp{temp:"cow"} run tag @e[tag=ui_temp_players,type=cow] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp{temp:"creeper"} run tag @e[tag=ui_temp_players,type=creeper] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp{temp:"dolphin"} run tag @e[tag=ui_temp_players,type=dolphin] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp{temp:"donkey"} run tag @e[tag=ui_temp_players,type=donkey] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp{temp:"drowned"} run tag @e[tag=ui_temp_players,type=drowned] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp{temp:"elder_guardian"} run tag @e[tag=ui_temp_players,type=elder_guardian] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp{temp:"ender_dragon"} run tag @e[tag=ui_temp_players,type=ender_dragon] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp{temp:"enderman"} run tag @e[tag=ui_temp_players,type=enderman] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp{temp:"endermite"} run tag @e[tag=ui_temp_players,type=endermite] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp{temp:"evoker"} run tag @e[tag=ui_temp_players,type=evoker] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp{temp:"fox"} run tag @e[tag=ui_temp_players,type=fox] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp{temp:"frog"} run tag @e[tag=ui_temp_players,type=frog] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp{temp:"ghast"} run tag @e[tag=ui_temp_players,type=ghast] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp{temp:"giant"} run tag @e[tag=ui_temp_players,type=giant] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp{temp:"glow_squid"} run tag @e[tag=ui_temp_players,type=glow_squid] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp{temp:"goat"} run tag @e[tag=ui_temp_players,type=goat] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp{temp:"guardian"} run tag @e[tag=ui_temp_players,type=guardian] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp{temp:"hoglin"} run tag @e[tag=ui_temp_players,type=hoglin] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp{temp:"horse"} run tag @e[tag=ui_temp_players,type=horse] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp{temp:"husk"} run tag @e[tag=ui_temp_players,type=husk] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp{temp:"illusioner"} run tag @e[tag=ui_temp_players,type=illusioner] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp{temp:"iron_golem"} run tag @e[tag=ui_temp_players,type=iron_golem] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp{temp:"llama"} run tag @e[tag=ui_temp_players,type=llama] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp{temp:"magma_cube"} run tag @e[tag=ui_temp_players,type=magma_cube] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp{temp:"mooshroom"} run tag @e[tag=ui_temp_players,type=mooshroom] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp{temp:"mule"} run tag @e[tag=ui_temp_players,type=mule] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp{temp:"ocelot"} run tag @e[tag=ui_temp_players,type=ocelot] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp{temp:"panda"} run tag @e[tag=ui_temp_players,type=panda] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp{temp:"parrot"} run tag @e[tag=ui_temp_players,type=parrot] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp{temp:"phantom"} run tag @e[tag=ui_temp_players,type=phantom] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp{temp:"pig"} run tag @e[tag=ui_temp_players,type=pig] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp{temp:"piglin"} run tag @e[tag=ui_temp_players,type=piglin] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp{temp:"piglin_brute"} run tag @e[tag=ui_temp_players,type=piglin_brute] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp{temp:"pillager"} run tag @e[tag=ui_temp_players,type=pillager] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp{temp:"polar_bear"} run tag @e[tag=ui_temp_players,type=polar_bear] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp{temp:"pufferfish"} run tag @e[tag=ui_temp_players,type=pufferfish] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp{temp:"rabbit"} run tag @e[tag=ui_temp_players,type=rabbit] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp{temp:"ravager"} run tag @e[tag=ui_temp_players,type=ravager] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp{temp:"salmon"} run tag @e[tag=ui_temp_players,type=salmon] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp{temp:"sheep"} run tag @e[tag=ui_temp_players,type=sheep] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp{temp:"shulker"} run tag @e[tag=ui_temp_players,type=shulker] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp{temp:"silverfish"} run tag @e[tag=ui_temp_players,type=silverfish] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp{temp:"skeleton"} run tag @e[tag=ui_temp_players,type=skeleton] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp{temp:"skeleton_horse"} run tag @e[tag=ui_temp_players,type=skeleton_horse] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp{temp:"slime"} run tag @e[tag=ui_temp_players,type=slime] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp{temp:"snow_golem"} run tag @e[tag=ui_temp_players,type=snow_golem] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp{temp:"spider"} run tag @e[tag=ui_temp_players,type=spider] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp{temp:"squid"} run tag @e[tag=ui_temp_players,type=squid] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp{temp:"stray"} run tag @e[tag=ui_temp_players,type=stray] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp{temp:"strider"} run tag @e[tag=ui_temp_players,type=strider] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp{temp:"tropical_fish"} run tag @e[tag=ui_temp_players,type=tropical_fish] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp{temp:"turtle"} run tag @e[tag=ui_temp_players,type=turtle] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp{temp:"vex"} run tag @e[tag=ui_temp_players,type=vex] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp{temp:"villager"} run tag @e[tag=ui_temp_players,type=villager] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp{temp:"vindicator"} run tag @e[tag=ui_temp_players,type=vindicator] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp{temp:"wandering_trader"} run tag @e[tag=ui_temp_players,type=wandering_trader] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp{temp:"warden"} run tag @e[tag=ui_temp_players,type=warden] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp{temp:"witch"} run tag @e[tag=ui_temp_players,type=witch] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp{temp:"wither"} run tag @e[tag=ui_temp_players,type=wither] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp{temp:"wither_skeleton"} run tag @e[tag=ui_temp_players,type=wither_skeleton] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp{temp:"wolf"} run tag @e[tag=ui_temp_players,type=wolf] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp{temp:"zoglin"} run tag @e[tag=ui_temp_players,type=zoglin] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp{temp:"zombie"} run tag @e[tag=ui_temp_players,type=zombie] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp{temp:"zombie_horse"} run tag @e[tag=ui_temp_players,type=zombie_horse] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp{temp:"zombie_villager"} run tag @e[tag=ui_temp_players,type=zombie_villager] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp{temp:"zombified_piglin"} run tag @e[tag=ui_temp_players,type=zombified_piglin] add tmw272_temp_card_effect_target_entity

data remove storage ui:temp temp.temp
data remove storage ui:temp temp.effect.target_entity.list[0]

scoreboard players remove $target_list ui_temp 1
execute if score $target_list ui_temp matches 1.. run function ui:tmw/272/effect/target_entity/list.lp