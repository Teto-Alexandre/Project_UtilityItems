# 持ってる武器のデータを取得
    data modify storage ui:gun temp set from entity @s SelectedItem.tag.tmw

#
    tellraw @s [{"text":"=============== Weapon_Info ===============","color":"gray"}]

# サブ情報開示
    execute store result score $temp ui_temp run data get storage ui:gun temp.gun.SubType
    tellraw @s [{"text":" サブウェポン","color":"white"}]
    execute if score $temp ui_temp matches 101 run tellraw @s [{"text":"   > ","color":"gray"},{"text":"スプラッシュボム : 接地して1秒後に爆発する爆弾を投げる","color":"white"}]
    execute if score $temp ui_temp matches 102 run tellraw @s [{"text":"   > ","color":"gray"},{"text":"リフレクター : 5秒間持続する反射結界を投げる","color":"white"}]
    execute if score $temp ui_temp matches 103 run tellraw @s [{"text":"   > ","color":"gray"},{"text":"クイックボム : 何かに当たると爆発する爆弾を投げる","color":"white"}]
    execute if score $temp ui_temp matches 104 run tellraw @s [{"text":"   > ","color":"gray"},{"text":"ライトアップ : 3秒間持続し敵を照らす装置を投げる","color":"white"}]
    execute if score $temp ui_temp matches 105 run tellraw @s [{"text":"   > ","color":"gray"},{"text":"レンバクボム : 連続で爆発する 最後の爆発は強力","color":"white"}]
    execute if score $temp ui_temp matches 106 run tellraw @s [{"text":"   > ","color":"gray"},{"text":"ナノヒール : 5秒間周囲の味方を癒す装置を投げる","color":"white"}]
    execute if score $temp ui_temp matches 107 run tellraw @s [{"text":"   > ","color":"gray"},{"text":"ボルテックス : 4秒間持続するインクの渦を発生させる","color":"white"}]
    execute if score $temp ui_temp matches 108 run tellraw @s [{"text":"   > ","color":"gray"},{"text":"キューバンボム : 地形に吸着する爆弾を投げる","color":"white"}]
    execute if score $temp ui_temp matches 109 run tellraw @s [{"text":"   > ","color":"gray"},{"text":"ポイズンガス : 移動とインク回復を阻害する毒を散布する","color":"white"}]
    execute if score $temp ui_temp matches 110 run tellraw @s [{"text":"   > ","color":"gray"},{"text":"インスタントシールド : 敵の弾を防ぐ盾を設置する","color":"white"}]
    execute if score $temp ui_temp matches 111 run tellraw @s [{"text":"   > ","color":"gray"},{"text":"スプリンクラー : 持続的に塗り広げる装置を設置する","color":"white"}]
    execute if score $temp ui_temp matches 112 run tellraw @s [{"text":"   > ","color":"gray"},{"text":"アクセラレーター : 弾を加速する装置を投げる","color":"white"}]
    execute if score $temp ui_temp matches 201 run tellraw @s [{"text":"   > ","color":"gray"},{"text":"リコール : 瞬時にリスポーン地点に戻る","color":"white"}]
    execute if score $temp ui_temp matches 301 run tellraw @s [{"text":"   > ","color":"gray"},{"text":"トラップ : その場に周囲の敵に反応する爆弾を設置","color":"white"}]
    execute if score $temp ui_temp matches 401 run tellraw @s [{"text":"   > ","color":"gray"},{"text":"ブロードソード : 至近距離の敵を即死させる攻撃","color":"white"}]
    execute if score $temp ui_temp matches 402 run tellraw @s [{"text":"   > ","color":"gray"},{"text":"ヘルハウンド : 最寄りの敵にミサイルを撃つ","color":"white"}]

# スペ情報開示
    execute store result score $temp ui_temp run data get storage ui:gun temp.gun.SPType
    tellraw @s [{"text":" スペシャルウェポン","color":"white"}]
    execute if score $temp ui_temp matches 151 run tellraw @s [{"text":"   > ","color":"gray"},{"text":"トルネード : インクの竜巻を発生させる装置を投げる","color":"white"}]
    execute if score $temp ui_temp matches 152 run tellraw @s [{"text":"   > ","color":"gray"},{"text":"アメフラシ : インクの雨雲を発生させる装置を投げる","color":"white"}]
    execute if score $temp ui_temp matches 251 run tellraw @s [{"text":"   > ","color":"gray"},{"text":"ノヴァ : 自分を中心に広範囲を塗る","color":"white"}]
    execute if score $temp ui_temp matches 252 run tellraw @s [{"text":"   > ","color":"gray"},{"text":"スーパースター : 無敵になり歩いた場所を塗れる","color":"white"}]
    execute if score $temp ui_temp matches 253 run tellraw @s [{"text":"   > ","color":"gray"},{"text":"ボムラッシュ : サブの消費インクが激減する","color":"white"}]
    execute if score $temp ui_temp matches 254 run tellraw @s [{"text":"   > ","color":"gray"},{"text":"インクリメント : インクの回復速度が増加する","color":"white"}]
    execute if score $temp ui_temp matches 255 run tellraw @s [{"text":"   > ","color":"gray"},{"text":"レーダー : 全ての敵の位置を表示する","color":"white"}]
    execute if score $temp ui_temp matches 256 run tellraw @s [{"text":"   > ","color":"gray"},{"text":"スーパーチャクチ : 飛び上がって大爆発する","color":"white"}]
    execute if score $temp ui_temp matches 257 run tellraw @s [{"text":"   > ","color":"gray"},{"text":"サヴァイブ : チーム全員に一度だけ死を回避させる","color":"white"}]
    execute if score $temp ui_temp matches 351 run tellraw @s [{"text":"   > ","color":"gray"},{"text":"メガホンレーザー : 壁を貫通する攻撃を行う","color":"white"}]
    execute if score $temp ui_temp matches 451 run tellraw @s [{"text":"   > ","color":"gray"},{"text":"スーパーショット : 縦に長いショットを発射する","color":"white"}]
    execute if score $temp ui_temp matches 452 run tellraw @s [{"text":"   > ","color":"gray"},{"text":"マルチミサイル : 大量のミサイルを発射する","color":"white"}]
    execute if score $temp ui_temp matches 453 run tellraw @s [{"text":"   > ","color":"gray"},{"text":"トライアングル : 3方向にショットを発射する","color":"white"}]
    execute if score $temp ui_temp matches 454 run tellraw @s [{"text":"   > ","color":"gray"},{"text":"ハイドロポンプ : 一直線にショットを発射する","color":"white"}]
    execute if score $temp ui_temp matches 455 run tellraw @s [{"text":"   > ","color":"gray"},{"text":"ジェットパック : 空を飛び爆発するショットを発射する","color":"white"}]

#
    tellraw @s [{"text":"==========================================","color":"gray"}]

# キャッシュクリア
    data remove storage ui:gun temp
