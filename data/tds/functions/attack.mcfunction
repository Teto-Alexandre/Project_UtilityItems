#> tds:attack
#
# 実行者のエンティティにダメージを与えます。
#
# 実行者はHealthを持つEntityである必要があります。
#
# @input storage tds:
#   Damage: float
#       与えるダメージを入力
#   DamageType: int
#       ダメージタイプを入力
#   DeathMessage: int
#       死亡時のメッセージを入力
#   WeaponName: string
#       キルログの武器名を入力
#   EPF: int
#       軽減効果のある[エンチャントプロテクションファクター]の合計値
#   DisableParticle: boolean
#       パーティクルを表示するか否か, bool値
#   BypassArmor: int
#       防御力/防具強度を無視するか否か, int
#   BypassResistance: boolean
#       耐性エフェクトを無視するか否か, bool値
#   ShieldGuardable: int
#       盾で防げるか否か
#       0: ガー不   1: 通常ガード可能   2: 斧属性
#   BypassShield: int
#       盾で防げないダメージの割合
#   ShieldDamageMult: int
#       対盾ダメージブーストの百分率
# @context EPFが-1以下の時 EntityのProtectionを参照します
# @public

#declare storage tds:

# 返り値をリセット
    scoreboard players set $Return tds_dmg 0
    scoreboard players set $Lethal tds_dmg 0

# ダメージを与えるためのタグが足りていないならエラーを吐く
    execute unless data storage tds: temp.Damage run tellraw @a [{"text":"ERROR >>","color":"red"},{"text":"引数が足りません","color":"white"},{"text":"\nMissing Damage at tds:attack","color":"white"}]

# タグが足りていれば実行（Healthを持ってなかったら即死する）
    execute if data storage tds: temp.Damage unless entity @s[tag=ui_resistance] unless entity @s[nbt={Invulnerable:1b}] unless entity @s[tag=tds_temp_death] run function tds:core/manager

# 消す
    data remove storage tds: temp