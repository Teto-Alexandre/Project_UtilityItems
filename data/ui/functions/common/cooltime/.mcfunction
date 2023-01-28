#> ui:common/cooltime/
#
# 汎用フールタイム読み取り+書き込みコモン
#
#    必須入力値
#
#       - as プレイヤー
#
#       - SelectedItem tmwにct{}が設定されているアイテム
#
#    返り値
#
#       - @s ui_ct 汎用ctスコア
#
# @public

# データ読み取り
    data modify storage ui:common ct set from entity @s SelectedItem.tag.tmw.ct
    execute store result score $c.ct.ct ui_temp run data get storage ui:common ct.Amount
    data remove storage ui:common ct

# クールタイム（MPの概念がないのでとりあえず仮追加）
    scoreboard players operation @s ui_ct += $c.ct.ct ui_temp

# スコア消し
    scoreboard players reset $c.ct.ct ui_temp