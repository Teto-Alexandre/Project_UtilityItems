#> ui:misc/leave_game
#
# 「再ログイン時」最も「実行を優先」する項目
#
# ログアウトしてバグるアイテム、あるだろ？
#
# @public

#エンダーアロー
execute as @s[tag=ui_luck17] run function ui:misc/leave_game/ender_arrow
execute as @s[tag=tmw_271_player] run function ui:misc/leave_game/tmw_271_player

scoreboard players set @s ui_lg 0

#テスト用
#say リログしたよ！