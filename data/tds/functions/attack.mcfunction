#> tds:attack
#
# 実行者のエンティティにダメージを与えます。
#
# 実行者はHealthを持つEntityである必要があります。
#
# @input **storage tds:**
#   **Damage**: float
#       与えるダメージを入力
#   **EPF**: int
#       軽減効果のある[エンチャントプロテクションファクター]の合計値
#   **DisableParticle**: boolean
#       パーティクルを表示するか否か, bool値
#   **BypassArmor**: boolean
#       防御力/防具強度を無視するか否か, bool値
#   **BypassResistance**: boolean
#       耐性エフェクトを無視するか否か, bool値
# @context EPFが-1以下の時 EntityのProtectionを参照します
#
# @public

#============================================================================
#
#   テトのレポート：About this system
#   〇防具によるダメージ軽減を考えてくれる高度な計算ソフトです
#
# 引数を設定
#   data merge storage tds: {Damage:10.00f,EPF:0,BypassArmor:true/false,BypassResistance:true/false}
# 対象を実行者にしてfunctionを実行
#   execute as 対象 run function tds:attack
#
#============================================================================

# ダメージを与えるためのタグが足りていないならエラーを吐く
    execute unless data storage tds: Damage run tellraw @a [{"text":"ERROR >>","color":"red"},{"text":"引数が足りません","color":"white"},{"text":"\nMissing Damage at tds:attack","color":"white"}]

# タグが足りていれば実行（Healthを持ってなかったら即死する）
    execute if data storage tds: Damage run function tds:core/attack