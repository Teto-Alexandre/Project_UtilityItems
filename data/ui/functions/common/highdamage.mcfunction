#> ui:common/highdamage
# ーーーーーーーーーーーーーーーーーーー
#
# 実行対象に大ダメージを与えるコモン
#
# ーーーーーーーーーーーーーーーーーーー
#
#    必須入力値
#
#       - as Healthを持つエンティティ
#
# ーーーーーーーーーーーーーーーーーーー
#
#    返り値
#
#       - 軽減可能な1024ダメージを受ける
#
#       - 耐えると進捗がもらえる
#
# ーーーーーーーーーーーーーーーーーーー
#
# @public

# act
tag @s add tds_ui_highdamage
tag @s add tds_ui_highdamage_temp
data merge storage tds: {Damage:1024.00,EPF:-1,BypassArmor:false,BypassResistance:false}
execute at @s run function tds:attack
advancement grant @s[tag=tds_ui_highdamage_temp] only ui:main/other/resist_death