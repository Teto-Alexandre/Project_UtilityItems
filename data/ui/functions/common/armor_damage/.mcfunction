#> ui:common/armor_damage/
#
# 身に着けている全ての防具にダメージを与えるスーパーコモン
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
    scoreboard players set $mult ui_temp 100
    scoreboard players operation $mult ui_temp += @s tds_acid
    scoreboard players operation $common.armor_damage ui_temp *= $mult ui_temp
    scoreboard players operation $common.armor_damage ui_temp /= #100 ui_num
    #tellraw @a {"score":{"name":"$common.armor_damage","objective":"ui_temp"}}

# エンティティタイプで分岐
    function ui:common/armor_damage/player

# データ削除
    data remove storage ui:common input
    data remove storage ui:common temp