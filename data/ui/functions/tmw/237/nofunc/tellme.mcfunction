# 持ってる武器のデータを取得
    data modify storage ui:gun temp set from entity @s SelectedItem.tag.tmw

#
    tellraw @s [{"text":"=============== Weapon_Info ===============","color":"gray"}]

# サブ情報開示
    execute store result score $temp ui_temp run data get storage ui:gun temp.gun.SubType
    tellraw @s [{"text":" サブウェポン","color":"white"}]
    execute if score $temp ui_temp matches 101 run tellraw @s [{"text":"   > ","color":"gray"},{"text":"スプラッシュボム : 接地して2秒後に爆発する爆弾を投げる","color":"white"}]
    execute if score $temp ui_temp matches 102 run tellraw @s [{"text":"   > ","color":"gray"},{"text":"リフレクター : 5秒間持続する反射結界を投げる","color":"white"}]
    execute if score $temp ui_temp matches 103 run tellraw @s [{"text":"   > ","color":"gray"},{"text":"クイックボム : 何かに当たると爆発する爆弾を投げる","color":"white"}]
    execute if score $temp ui_temp matches 104 run tellraw @s [{"text":"   > ","color":"gray"},{"text":"ライトアップ : 3秒間持続し敵を照らす装置を投げる","color":"white"}]
    execute if score $temp ui_temp matches 105 run tellraw @s [{"text":"   > ","color":"gray"},{"text":"レンバクボム : 連続で爆発する 最後の爆発は強力","color":"white"}]
    execute if score $temp ui_temp matches 106 run tellraw @s [{"text":"   > ","color":"gray"},{"text":"ナノヒール : 5秒間周囲の味方を癒す装置を投げる","color":"white"}]
    execute if score $temp ui_temp matches 107 run tellraw @s [{"text":"   > ","color":"gray"},{"text":"ボルテックス : 4秒間持続するインクの渦を発生させる","color":"white"}]
    execute if score $temp ui_temp matches 108 run tellraw @s [{"text":"   > ","color":"gray"},{"text":"トルネードver1 : 5秒間持続するインクの竜巻を発生させる","color":"white"}]

# スペ情報開示
    execute store result score $temp ui_temp run data get storage ui:gun temp.gun.SPType
    tellraw @s [{"text":" スペシャルウェポン","color":"white"}]
    execute if score $temp ui_temp matches 101 run tellraw @s [{"text":"   > ","color":"gray"},{"text":"ノヴァ : 自分を中心に広範囲を塗る","color":"white"}]
    execute if score $temp ui_temp matches 102 run tellraw @s [{"text":"   > ","color":"gray"},{"text":"スーパースター : 無敵になり歩いた場所を塗れる","color":"white"}]
    execute if score $temp ui_temp matches 103 run tellraw @s [{"text":"   > ","color":"gray"},{"text":"ボムラッシュ : サブの消費インクが激減する","color":"white"}]
    execute if score $temp ui_temp matches 104 run tellraw @s [{"text":"   > ","color":"gray"},{"text":"インクリメント : インクの回復速度が増加する","color":"white"}]
    execute if score $temp ui_temp matches 105 run tellraw @s [{"text":"   > ","color":"gray"},{"text":"レーダー : 全ての敵の位置を表示する","color":"white"}]
    execute if score $temp ui_temp matches 201 run tellraw @s [{"text":"   > ","color":"gray"},{"text":"トルネード : インクの竜巻を発生させる装置を投げる","color":"white"}]
    execute if score $temp ui_temp matches 301 run tellraw @s [{"text":"   > ","color":"gray"},{"text":"スーパーショット : 縦に長いショットを発射する","color":"white"}]

#
    tellraw @s [{"text":"==========================================","color":"gray"}]

# キャッシュクリア
    data remove storage ui:gun temp
