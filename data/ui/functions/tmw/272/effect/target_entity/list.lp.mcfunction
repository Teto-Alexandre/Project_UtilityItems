# 指定のエンティティ以外をターゲットから外す
data modify storage ui:temp temp.temp set from storage ui:temp temp.effect.target_entity.list[0]

execute if data storage ui:temp temp{temp:"player"} run tag @e[type=player] add tmw272_temp_card_effect_target_entity

execute if data storage ui:temp temp{temp:"allay"} run tag @e[type=allay] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp{temp:"axolotl"} run tag @e[type=axolotl] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp{temp:"bat"} run tag @e[type=bat] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp{temp:"bee"} run tag @e[type=bee] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp{temp:"blaze"} run tag @e[type=blaze] add tmw272_temp_card_effect_target_entity
#execute if data storage ui:temp temp{temp:"camel"} run tag @e[type=camel] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp{temp:"cat"} run tag @e[type=cat] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp{temp:"cave_spider"} run tag @e[type=cave_spider] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp{temp:"chicken"} run tag @e[type=chicken] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp{temp:"cod"} run tag @e[type=cod] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp{temp:"cow"} run tag @e[type=cow] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp{temp:"creeper"} run tag @e[type=creeper] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp{temp:"dolphin"} run tag @e[type=dolphin] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp{temp:"donkey"} run tag @e[type=donkey] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp{temp:"drowned"} run tag @e[type=drowned] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp{temp:"elder_guardian"} run tag @e[type=elder_guardian] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp{temp:"ender_dragon"} run tag @e[type=ender_dragon] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp{temp:"enderman"} run tag @e[type=enderman] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp{temp:"endermite"} run tag @e[type=endermite] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp{temp:"evoker"} run tag @e[type=evoker] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp{temp:"fox"} run tag @e[type=fox] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp{temp:"frog"} run tag @e[type=frog] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp{temp:"ghast"} run tag @e[type=ghast] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp{temp:"giant"} run tag @e[type=giant] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp{temp:"glow_squid"} run tag @e[type=glow_squid] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp{temp:"goat"} run tag @e[type=goat] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp{temp:"guardian"} run tag @e[type=guardian] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp{temp:"hoglin"} run tag @e[type=hoglin] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp{temp:"horse"} run tag @e[type=horse] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp{temp:"husk"} run tag @e[type=husk] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp{temp:"illusioner"} run tag @e[type=illusioner] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp{temp:"iron_golem"} run tag @e[type=iron_golem] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp{temp:"llama"} run tag @e[type=llama] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp{temp:"magma_cube"} run tag @e[type=magma_cube] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp{temp:"mooshroom"} run tag @e[type=mooshroom] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp{temp:"mule"} run tag @e[type=mule] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp{temp:"ocelot"} run tag @e[type=ocelot] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp{temp:"panda"} run tag @e[type=panda] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp{temp:"parrot"} run tag @e[type=parrot] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp{temp:"phantom"} run tag @e[type=phantom] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp{temp:"pig"} run tag @e[type=pig] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp{temp:"piglin"} run tag @e[type=piglin] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp{temp:"piglin_brute"} run tag @e[type=piglin_brute] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp{temp:"pillager"} run tag @e[type=pillager] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp{temp:"polar_bear"} run tag @e[type=polar_bear] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp{temp:"pufferfish"} run tag @e[type=pufferfish] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp{temp:"rabbit"} run tag @e[type=rabbit] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp{temp:"ravager"} run tag @e[type=ravager] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp{temp:"salmon"} run tag @e[type=salmon] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp{temp:"sheep"} run tag @e[type=sheep] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp{temp:"shulker"} run tag @e[type=shulker] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp{temp:"silverfish"} run tag @e[type=silverfish] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp{temp:"skeleton"} run tag @e[type=skeleton] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp{temp:"skeleton_horse"} run tag @e[type=skeleton_horse] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp{temp:"slime"} run tag @e[type=slime] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp{temp:"snow_golem"} run tag @e[type=snow_golem] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp{temp:"spider"} run tag @e[type=spider] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp{temp:"squid"} run tag @e[type=squid] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp{temp:"stray"} run tag @e[type=stray] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp{temp:"strider"} run tag @e[type=strider] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp{temp:"tropical_fish"} run tag @e[type=tropical_fish] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp{temp:"turtle"} run tag @e[type=turtle] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp{temp:"vex"} run tag @e[type=vex] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp{temp:"villager"} run tag @e[type=villager] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp{temp:"vindicator"} run tag @e[type=vindicator] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp{temp:"wandering_trader"} run tag @e[type=wandering_trader] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp{temp:"warden"} run tag @e[type=warden] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp{temp:"witch"} run tag @e[type=witch] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp{temp:"wither"} run tag @e[type=wither] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp{temp:"wither_skeleton"} run tag @e[type=wither_skeleton] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp{temp:"wolf"} run tag @e[type=wolf] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp{temp:"zoglin"} run tag @e[type=zoglin] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp{temp:"zombie"} run tag @e[type=zombie] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp{temp:"zombie_horse"} run tag @e[type=zombie_horse] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp{temp:"zombie_villager"} run tag @e[type=zombie_villager] add tmw272_temp_card_effect_target_entity
execute if data storage ui:temp temp{temp:"zombified_piglin"} run tag @e[type=zombified_piglin] add tmw272_temp_card_effect_target_entity

data remove storage ui:temp temp.temp
data remove storage ui:temp temp.effect.target_entity.list[0]

scoreboard players remove $target_list ui_temp 1
execute if score $target_list ui_temp matches 1.. run function ui:tmw/272/effect/target_entity/list.lp