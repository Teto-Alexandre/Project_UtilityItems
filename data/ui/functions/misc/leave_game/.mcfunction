#> ui:misc/leave_game
#
# 「再ログイン時」最も「実行を優先」する項目
#
# ログアウトしてバグるアイテム、あるだろ？
#
# @public

#エンダーアロー
execute as @s[tag=ui_luck17] run function ui:misc/leave_game/ender_arrow

scoreboard players set @s ui_lg 0

#テスト用
#say リログしたよ！