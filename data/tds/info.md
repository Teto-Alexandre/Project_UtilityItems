テトのレポート：About this system
〇防具によるダメージ軽減を考えてくれる高度な計算ソフトです

引数を設定
    data merge storage tds: {temp:{Damage:10.00f,DamageType:1,DeathMessage:1,WeaponName:"",EPF:0,BypassArmor:-1/0/1..,BypassResistance:true/false}}
対象を実行者にしてfunctionを実行
    execute as 対象 run function tds:attack

DamageType一覧

1 : 衝撃 (ダメージ軽減:4%) :消滅の矢とか、大多数はここ
2 : 炎熱 (ダメージ軽減:4%,火炎耐性:8%) (恒温:4%)
3 : 圧縮 (ダメージ軽減:4%,爆破耐性:8%)
4 : 貫通 (ダメージ軽減:4%,飛び道具耐性:8%)
5 : 加重 (ダメージ軽減:4%,落下耐性:12%)
6 : 冷却 (ダメージ軽減:4%)　(氷結耐性:8%,恒温:4%)
7 : 時間 (ダメージ軽減:4%)　(紫晶耐性:8%) :アメジスト専用なんじゃないかな
8 : 霊気 (ダメージ軽減:4%)　(霊気耐性:8%) :エーテリウムガンとかでやられる分
9 : 天銀 (ダメージ軽減:4%)　(霊気耐性:8%) :アンデッドにダメージ与えるときに使う
10: 電磁 (ダメージ軽減:4%)　(電磁耐性:8%)
11: 干渉 (ダメージ軽減:4%)　(干渉耐性:8%)

DeathMessage一覧

1 :         Null
2 : 〇 @ ©「VictimはAttackerに溶かされた」酸ダメージで殺される
3 : 〇 @ ©「VictimはAttackerに真っ黒焦げにされた」炎熱ダメージで殺される
4 : 〇 @ ©「VictimはAttackerに氷像にされた」冷却ダメージで殺される
5 : 〇 @ ©「VictimはAttackerの操る不思議エネルギーによって死んだ」霊気ダメージで殺される
6 : 〇 @ ©「VictimはAttackerによってボロボロになった」時間ダメージで殺される
7 : 〇 @ ©「VictimはAttackerによって消滅させられた、..3」消滅の矢とかで殺される
8 : 〇 @ ©「VictimはAttackerの[Weapon]で撃ち抜かれた、...8」銃系で殺される
9 : 〇 @ ©「VictimはAttackerの[Weapon]で命を落とした、...8」汎用武器で殺される
10: 〇 @ ©「Victimは貧血で倒れた」失血ダメージで死ぬ
11: 〇 @ ©「Victimは巨大な力によって為す術もなく死んだ」高ダメージコモンで死ぬ
12: 〇 @ ©「VictimはAttackerに電流を流されて死に至った、..3」エレキショッカー・オートで殺される
13: 〇    「Victimは息絶えた」普通に死ぬ
14: 〇 @ ©「VictimはAttackerの[Weapon]で伝説の礎にされた、...9」特別な武器で殺される
15: 〇 @ ©「VictimはAttackerに[Weapon]を反射されて死んだ、...8」反射後のインクで殺される
16: 〇 @ ©「VictimはAttackerに[Weapon]で消し飛ばされた、...4」爆破武器で殺される
17: 〇 @ ©「VictimはAttackerに[Weapon]で感電して死に至った、...5」電磁武器で殺される
18: 〇 @ ©「VictimはAttackerに[Weapon]でズタボロになった、...5」干渉武器で殺される
