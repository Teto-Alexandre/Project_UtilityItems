#> ui:tmw/255/player/crossbow/ss/eo/s_team_id
#
# #チームを持つ汎用パーティクルを管理する
#
# @within function ui:tmw/255/player/crossbow/ss/1

# ID コントロール上の未実行タグを更新、付与する
    tag @e[tag=tmw_255] add ui_tec
    tag @e[tag=ui_tec] add ui_idc

# コントロールを実行
    execute as @e[limit=1,tag=ui_tec] run function ui:tmw/255/player/crossbow/ss/eo/tec
