#> ui:common/particle/ss/eo/s_id
#
# # ID のみを持つ汎用パーティクルを管理する
#
# @within function ui:common/particle/ss/global

# ID コントロール上の未実行タグを更新、付与する
    tag @e[tag=ui_common_particle,scores={ui_gpc=-10000..-1}] add ui_idc

#
    scoreboard players set $team ui_temp 0

# コントロールを実行
    execute as @e[limit=1,tag=ui_idc] run function ui:common/particle/ss/eo/idc
