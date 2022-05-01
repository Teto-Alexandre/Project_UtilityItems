#> ui:common/projectile
#
# スコアから飛び道具を生成するコモン
#
#    必須入力値
#
#       - $c.proj.spread 拡散度(0.001m)
#
#       - $c.proj.speed 速度(0.5m/s)
#
#       - $c.proj.range 射程(0.5m)
#
#       - as プレイヤーか人型
#
#    サブ入力値
#
#       - $c.proj.particle 軌跡パーティクル
#
#       - $c.proj.break 破壊力
#
#       - $c.proj.autohit 命中ダメージコモンを利用するか
#
#       - - $c.proj.particle2 軌跡パーティクル
#
#       - - $c.proj.kb ノックバックの強さ
#
#       - - $c.proj.damagetype 攻撃の属性
#
#       - $c.proj.damage 攻撃力(0.5heart)
#
#       - $c.proj.soul_damage 魂攻撃力(%)
#
#    返り値
#
#       - タグ: ui_proj_common付きプロジェクタイルを返す
#
# @public

# act
function ui:common/projectile/summon