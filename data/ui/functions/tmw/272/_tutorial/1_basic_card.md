# 基本的なカード

サンプルとして作成した軽い攻撃と回復のgiveコマンド
```
give @p minecraft:red_dye{
    tmw:{
        id:272,type:1,enableQ:1,            #ここは必須
        cg:{                                # <-- ここから
            cost:2,                         # マナコスト
            particle_laser:1,               # 対象にレーザーを描画
            particle_self:1001,             # 自分の演出
            particle_look:1,                # 見ている対象の演出
            effects:[                       # (効果)
                {                           #
                    target_type:1,          # ターゲットの取り方
                    effect_type:"damage",   # 何をするか
                    var:1                   # 変化量
                },                          #
                {                           #
                    target_type:2,          # ターゲットの取り方
                    effect_type:"heal",     # 何をするか
                    var:1                   # 変化量
                }                           #
            ]                               # <-- ここまで
        }
    },
    HideFlags:1,
    display:{
        Name:'[{"text":"2:軽い攻撃と回復","italic":false,"color":"white"}]',
        Lore:['[{"text":"標敵に1ダメージ","color":"gray","italic":false}]','[{"text":"1回復","color":"gray","italic":false}]']
    }
}
```

各要素の数値や数を変えるとカードの効果を変えられるよ

#### 備考：基本的な知識
##### [ ] の扱い
[ ] の中には0から複数個の { } を入れることができる
これを利用してeffectsの中に複数の効果を書けるようになっている
#####