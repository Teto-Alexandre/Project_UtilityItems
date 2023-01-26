#> ui:common/shield_guard
#
# シールドで攻撃を防ぐスーパーコモン
#
# @input storage ui:common input
#
#      Damage: int
#
# @public

# スコア化
    #data merge storage ui:common {input:{Damage:10,Break:1}}

#
    execute store result score $common.armor_damage ui_temp run data get storage ui:common input.Damage
    scoreboard players set $mult ui_temp 100
    scoreboard players operation $mult ui_temp += @s tds_acid
    scoreboard players operation $common.armor_damage ui_temp *= $mult ui_temp
    scoreboard players operation $common.armor_damage ui_temp /= #100 ui_num

#
    playsound item.shield.block player @a ~ ~ ~ 1 1 0
    particle crit ~ ~1 ~ 0.3 0.3 0.3 0.5 10 force

# エンティティタイプで分岐
    execute if entity @s[tag=tmw_shield_mh] run function ui:common/shield_guard/mainhand
    execute if entity @s[tag=tmw_shield_oh] run function ui:common/shield_guard/offhand

# データ削除
    data remove storage ui:common input
    data remove storage ui:common temp