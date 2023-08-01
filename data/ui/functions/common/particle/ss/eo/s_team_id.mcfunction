#> ui:common/particle/ss/eo/s_team_id
#
# #チームを持つ汎用パーティクルを管理する
#
# @within function ui:common/particle/ss/global

# ID コントロール上の未実行タグを更新、付与する
    tag @e[tag=ui_common_particle,scores={ui_gpc=..-10001}] add ui_tec
    tag @e[tag=ui_tec] add ui_idc

# コントロールを実行
    execute as @e[limit=1,tag=ui_tec] run function ui:common/particle/ss/eo/tec
