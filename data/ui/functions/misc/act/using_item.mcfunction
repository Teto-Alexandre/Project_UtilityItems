#> ui:misc/act/using_item
#
# アイテムを使用している最中に実行される
#
# @within function ui:misc/act/

# u_asset_managerへの引継ぎ
    tag @s add tmw_using_item
    #say アイテムを使っている！

# reset
    advancement revoke @s only ui:player/using_item