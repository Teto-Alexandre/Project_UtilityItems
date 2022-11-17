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
    #data merge storage ui:common {input:{Damage:10}}

#
    execute store result score $common.armor_damage ui_temp run data get storage ui:common input.Damage

#
    playsound item.shield.block player @a ~ ~ ~ 1 1 0

# エンティティタイプで分岐
    execute if entity @s[tag=tmw_shield_mh_n] run function ui:common/shield_guard/mainhand
    execute if entity @s[tag=tmw_shield_mh_s] run function ui:common/shield_guard/mainhand
    execute if entity @s[tag=tmw_shield_oh_n] run function ui:common/shield_guard/offhand
    execute if entity @s[tag=tmw_shield_oh_s] run function ui:common/shield_guard/offhand

# データ削除
    data remove storage ui:common input
    data remove storage ui:common temp