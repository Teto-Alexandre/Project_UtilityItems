#> ui:misc/leave_game
#
# 「再ログイン時」最も「実行を優先」する項目
#
# ログアウトしてバグるアイテム、あるだろ？
#
# @public

#エンダーアロー
execute as @s[tag=ui_luck17] run gamerule sendCommandFeedback false
gamemode survival @s[tag=ui_luck17,tag=ui_luck17_0]
gamemode creative @s[tag=ui_luck17,tag=ui_luck17_1]
gamemode adventure @s[tag=ui_luck17,tag=ui_luck17_2]
execute as @s[tag=ui_luck17] run gamerule sendCommandFeedback true
tag @s[tag=ui_luck17,tag=ui_luck17_0] remove ui_luck17_0
tag @s[tag=ui_luck17,tag=ui_luck17_1] remove ui_luck17_1
tag @s[tag=ui_luck17,tag=ui_luck17_2] remove ui_luck17_2
tag @s[tag=ui_luck17] remove ui_luck17

scoreboard players set @s ui_lg 0

#テスト用
#say リログしたよ！