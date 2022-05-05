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
#       必要ならキルログの武器名を入力
#   EPF: int
#       軽減効果のある[エンチャントプロテクションファクター]の合計値
#   DisableParticle: boolean
#       パーティクルを表示するか否か, bool値
#   BypassArmor: boolean
#       防御力/防具強度を無視するか否か, bool値
#   BypassResistance: boolean
#       耐性エフェクトを無視するか否か, bool値
# @context EPFが-1以下の時 EntityのProtectionを参照します
# @public

#============================================================================
#
#   テトのレポート：About this system
#   〇防具によるダメージ軽減を考えてくれる高度な計算ソフトです
#
# 引数を設定
#   data merge storage tds: {Damage:10.00f,DamageType:1,DeathMessage:1,WeaponName:"",EPF:0,BypassArmor:true/false,BypassResistance:true/false}
# 対象を実行者にしてfunctionを実行
#   execute as 対象 run function tds:attack
#
#============================================================================

# DamageType一覧

    ## 1: 衝撃 (ダメージ軽減:4%) :消滅の矢とか、大多数はここ
    ## 2: 炎熱 (ダメージ軽減:4%,火炎耐性:8%) (恒温:4%)
    ## 3: 圧縮 (ダメージ軽減:4%,爆破耐性:8%)
    ## 4: 貫通 (ダメージ軽減:4%,飛び道具耐性:8%)
    ## 5: 加重 (ダメージ軽減:4%,落下耐性:12%)
    ## 6: 冷却 (ダメージ軽減:4%)　(氷結耐性:8%,恒温:4%)
    ## 7: 時間 (ダメージ軽減:4%)　(紫晶耐性:8%) :アメジスト専用なんじゃないかな
    ## 8: 霊気 (ダメージ軽減:4%)　(霊気耐性:8%) :エーテリウムガンとかでやられる分
    ## 9: 天銀 (ダメージ軽減:4%)　(霊気耐性:8%) :アンデッドにダメージ倍率めちゃ増加
    ## 10: 電磁 (ダメージ軽減:4%)　(電磁耐性:8%)

# DeathMessage一覧

    ##  1: 〇    「Victimは燃え尽きた」炎上ダメージで死ぬ
    ##  2: 〇    「Victimは凍り付いた」凍結ダメージで死ぬ
    ##  3: 未 @  「VictimはAttackerに真っ黒焦げにされた」炎熱ダメージで殺される
    ##  4: 未 @  「VictimはAttackerに氷像にされた」冷却ダメージで殺される
    ##  5: 未 @  「VictimはAttackerの操る不思議エネルギーによって死んだ」霊気ダメージで殺される
    ##  6: 未 @  「VictimはAttackerによってボロボロになった」時間ダメージで殺される
    ##  7: 未 @  「VictimはAttackerによって消滅させられた」消滅の矢とかで殺される
    ##  8: 〇 @ ©「VictimはAttackerの[Weapon]で撃ち抜かれた、...8」銃系で殺される
    ##  9: 〇 @ ©「VictimはAttackerの[Weapon]で命を落とした、...8」汎用武器で殺される
    ## 10: 〇    「Victimは貧血で倒れた」失血ダメージで死ぬ
    ## 11: 〇    「Victimは巨大な力によって為す術もなく死んだ」高ダメージコモンで死ぬ
    ## 12: 〇 @  「VictimはAttackerに電流を流されて死に至った」エレキショッカー・オートで殺される
    ## 13: 〇    「Victimは息絶えた」普通に死ぬ

# ダメージを与えるためのタグが足りていないならエラーを吐く
    execute unless data storage tds: Damage run tellraw @a [{"text":"ERROR >>","color":"red"},{"text":"引数が足りません","color":"white"},{"text":"\nMissing Damage at tds:attack","color":"white"}]

# タグが足りていれば実行（Healthを持ってなかったら即死する）
    execute if data storage tds: Damage run function tds:core/attack