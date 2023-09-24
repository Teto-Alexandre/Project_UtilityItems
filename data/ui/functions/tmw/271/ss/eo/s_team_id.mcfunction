#> ui:tmw/271/ss/eo/s_team_id
#
# #タレットを管理する
#
# @within function ui:tmw/271/ss/

# ID コントロール上の未実行タグを更新、付与する
    tag @e[tag=tmw_271_core] add ui_tec
    tag @e[tag=ui_tec] add ui_idc

# コントロールを実行
    execute as @e[limit=1,tag=ui_tec] run function ui:tmw/271/ss/eo/tec
