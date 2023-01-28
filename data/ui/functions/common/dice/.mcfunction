#> ui:common/dice/
#
# スコアを元にダイスをシミュレートするコモン
#
#    必須入力値
#
#       - $c.dice.max ダイスの面の数
#
#       - $c.dice.add 固定値
#
#       - $c.dice.dis 次のダイス目に干渉する数値の影響を受けるか
#
#       - as プレイヤーか人型
#
#    サブ入力値
#
#       - @s ui_d_luck ダイスの確率補正の種類
#
#       - @s ui_d_addmax ダイスの最大値がn上昇
#
#       - @s ui_d_addmin ダイスの最小値がn上昇
#
#       - @s ui_d_addmax ダイスの最終値がn上昇
#
#       - @s ui_d_mult ダイスの最終値をn/10倍する
#
#    返り値
#
#       - @s ui_d_num ダイスを振った結果
#
#       - $max ui_d_num 元の最大値+固定値
#
#       - $min ui_d_num 固定値+1
#
# 確率補正はデフォルトダイスに対し数値分追加でダイスを振ってその中の最大値を返すもの
# 
# よって最小値が出なくなるわけではない
#
# @public

# act
function ui:common/dice/roll