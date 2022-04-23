#> ui:common/give
# ーーーーーーーーーーーーーーーーーーー
#
# スコアからスタック数を取得するgiveコモン
#
# ーーーーーーーーーーーーーーーーーーー
#
#    必須入力値
#
#       - storage ui:temp {give:{id:"minecraft:cobblestone",Count:1b}}
#
#       - $c.give.num 個数
#
#       - コマンド実行地点 出現座標
#
# ーーーーーーーーーーーーーーーーーーー
#
#    返り値
#
#       - numスタックの入力アイテムを返す
#
# ーーーーーーーーーーーーーーーーーーー
#
# @public

# act
function ui:common/give/act