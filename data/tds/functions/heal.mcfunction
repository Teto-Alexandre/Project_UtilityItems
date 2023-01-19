#> tds:heal
#
# 実行者のエンティティにダメージを与えます。
#
# 実行者はHealthを持つEntityである必要があります。
#
# @input storage tds:
#   Amount: float
#       与えるダメージを入力
#   DisableParticle: boolean
#       パーティクルを表示するか否か, bool値
# @public

# 返り値をリセット
    scoreboard players set $Return tds_dmg 0

# ダメージを与えるためのタグが足りていないならエラーを吐く
    execute unless data storage tds: temp.Amount run tellraw @a [{"text":"ERROR >>","color":"red"},{"text":"引数が足りません","color":"white"},{"text":"\nMissing Amount at tds:heal","color":"white"}]

# タグが足りていれば実行（Healthを持ってなかったら即死する）
    execute if data storage tds: temp.Amount run function tds:core/heal