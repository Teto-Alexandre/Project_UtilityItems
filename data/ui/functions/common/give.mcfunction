#> ui:common/give
#
# スコアからスタック数を取得するgiveコモン
#
#    必須入力値
#
#       - storage ui:temp {give:{id:"minecraft:cobblestone",Count:1b}}
#
#       - $c.give.num 個数
#
#       - コマンド実行地点 出現座標
#
#    返り値
#
#       - numスタックの入力アイテムを返す
#
# @public

# act
function ui:common/give/act