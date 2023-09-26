#各パーティクルに個別実行

# 時間経過
    scoreboard players add @s ui_is 1

# 情報共有
    scoreboard players operation $type ui_temp = @s ui_gpc
    scoreboard players operation $is ui_temp = @s ui_is

# 長く残る爆発
execute if score $type ui_temp matches 1 run function ui:common/particle/ss/upper/1/core
# 指向性のクリティカル表示
execute if score $type ui_temp matches 2 run function ui:common/particle/ss/upper/2/core
# 指向性のマズルスモーク
execute if score $type ui_temp matches 3 run function ui:common/particle/ss/upper/3/core
# 指向性のマズルスモーク小
execute if score $type ui_temp matches 4 run function ui:common/particle/ss/upper/4/core
# 指向性拡散出力テスト用
execute if score $type ui_temp matches 5 run function ui:common/particle/ss/upper/5/core
# 指向性拡散出力テスト用サンプル
execute if score $type ui_temp matches 6 run function ui:common/particle/ss/upper/6/core
# 魔法陣
execute if score $type ui_temp matches 7 run function ui:common/particle/ss/upper/7/core
# 収束 > 拡散（レーザーなし）
execute if score $type ui_temp matches 8 run function ui:common/particle/ss/upper/8/core
# 魔法陣が出ない魔法弾
execute if score $type ui_temp matches 9 run function ui:common/particle/ss/upper/9/core
# 火属性爆発
execute if score $type ui_temp matches 10 run function ui:common/particle/ss/upper/10/core
# 火属性連続爆発
execute if score $type ui_temp matches 11 run function ui:common/particle/ss/upper/11/core
# 雷撃
execute if score $type ui_temp matches 12 run function ui:common/particle/ss/upper/12/core
# 大雷撃
execute if score $type ui_temp matches 13 run function ui:common/particle/ss/upper/13/core
# 雷撃連続
execute if score $type ui_temp matches 14 run function ui:common/particle/ss/upper/14/core
# 雷撃連続大
execute if score $type ui_temp matches 15 run function ui:common/particle/ss/upper/15/core
# コンパス
execute if score $type ui_temp matches 16 run function ui:common/particle/ss/upper/16/core
# 回復
execute if score $type ui_temp matches 17 run function ui:common/particle/ss/upper/17/core
# 回復2
execute if score $type ui_temp matches 18 run function ui:common/particle/ss/upper/18/core
# 風刃のおまけ
execute if score $type ui_temp matches 19 run function ui:common/particle/ss/upper/19/core
# オレンジの線
execute if score $type ui_temp matches 20 run function ui:common/particle/ss/upper/20/core
# 最寄りの人間のディスプレイを電光掲示板に変える情報災害
execute if score $type ui_temp matches 21 run function ui:common/particle/ss/upper/21/core
# 斬撃
execute if score $type ui_temp matches 22 run function ui:common/particle/ss/upper/22/core
# 自壊する岩石（モブグリで上書き設定を変える）
execute if score $type ui_temp matches 23 run function ui:common/particle/ss/upper/23/core
# 白魔法陣
execute if score $type ui_temp matches 24 run function ui:common/particle/ss/upper/24/core
# 広がるリングテンプレ
execute if score $type ui_temp matches 25 run function ui:common/particle/ss/upper/25/core
# 黄色の波動が壁に当たったエフェクト
execute if score $type ui_temp matches 26 run function ui:common/particle/ss/upper/26/core
# 黄色の波動が壁に当たったエフェクト小
execute if score $type ui_temp matches 27 run function ui:common/particle/ss/upper/27/core
# 回転する/しない魔法陣の演出テンプレ
execute if score $type ui_temp matches 28 run function ui:common/particle/ss/upper/28/core
# 地面を走る光
execute if score $type ui_temp matches 29 run function ui:common/particle/ss/upper/29/core
# ロジックアトリエ - マズルフラッシュ
execute if score $type ui_temp matches 30 run function ui:common/particle/ss/upper/30/core
# よくある宙に浮かぶテキスト
execute if score $type ui_temp matches 31 run function ui:common/particle/ss/upper/31/core
# ダメージエフェクト
execute if score $type ui_temp matches 32 run function ui:common/particle/ss/upper/32/core
