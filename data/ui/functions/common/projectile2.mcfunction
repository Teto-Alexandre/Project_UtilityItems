#> ui:common/projectile2
#
# storageから飛び道具を生成するコモン
#
#    必須入力値
#
# @input storage ui:common temp.
#   Spread: int
#       スクエアシャッフルの最大距離(0.001m)
#   Speed: int
#       飛翔速度(0.5m/s) 初期値1
#   Range: int
#       飛翔限界(0.5m) 初期値10
#   FlyParticle: int
#       飛翔時のパーティクル呼び出し
#   EndParticle: int
#       消失時のパーティクル呼び出し
#   Break: int
#       対ブロック破壊力(1:やわい,3:ふつう,10:かたい,150:その他)
#   DisableHit: boolean
#       システム側でエンティティに命中させるか否か, bool値
#   Knockback: int
#       対エンティティ吹き飛ばし力(スライム1体換算)
#   DamageType: int
#       攻撃の属性
#   Damage: int
#       攻撃のダメージ(0.5Heart=1HP)
#
#       - as プレイヤーか人型
#
#    返り値
#
#       - タグ: ui_proj_common付きプロジェクタイルを返す
#
# @public

# 足りない数値があれば補完
execute unless data storage ui:common temp.Spread run data modify storage ui:common temp.Spread set value 0
execute unless data storage ui:common temp.Speed run data modify storage ui:common temp.Speed set value 1
execute unless data storage ui:common temp.Range run data modify storage ui:common temp.Range set value 10
execute unless data storage ui:common temp.FlyParticle run data modify storage ui:common temp.FlyParticle set value 1
execute unless data storage ui:common temp.EndParticle run data modify storage ui:common temp.EndParticle set value 1
execute unless data storage ui:common temp.Break run data modify storage ui:common temp.Break set value 0
execute unless data storage ui:common temp.Knockback run data modify storage ui:common temp.Knockback set value 1
execute unless data storage ui:common temp.DamageType run data modify storage ui:common temp.DamageType set value 4
execute unless data storage ui:common temp.Damage run data modify storage ui:common temp.Damage set value 1

# ストレージからデータを受け取る
execute store result score $c.proj.spread ui_temp run data get storage ui:common temp.Spread
execute store result score $c.proj.speed ui_temp run data get storage ui:common temp.Speed
execute store result score $c.proj.range ui_temp run data get storage ui:common temp.Range
execute store result score $c.proj.particle ui_temp run data get storage ui:common temp.FlyParticle
execute store result score $c.proj.particle2 ui_temp run data get storage ui:common temp.EndParticle
execute store result score $c.proj.break ui_temp run data get storage ui:common temp.Break
execute store result score $c.proj.kb ui_temp run data get storage ui:common temp.Knockback
execute store result score $c.proj.damagetype ui_temp run data get storage ui:common temp.DamageType
execute store result score $c.proj.damage ui_temp run data get storage ui:common temp.Damage
scoreboard players set $c.proj.autohit ui_temp 0
execute unless data storage ui:common temp.DisableHit run scoreboard players set $c.proj.autohit ui_temp 1

# act
function ui:common/projectile/summon

# データ消し
data remove storage ui:common temp