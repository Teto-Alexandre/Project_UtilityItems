#> ui:misc/act/double_sneak
#
# 二回連続でスニークを解除した
#
# @within function ui:misc/act/

# u_asset_managerへの引継ぎ
    tag @s add tmw_double_sneak
    #say ダブルスニーク

# reset
    #advancement revoke @s only ui:player/using_item