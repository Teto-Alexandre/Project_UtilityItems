# ランダム値とケース

前回のサンプルコマンドをランダム値とケースを使用して改造する
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

                # ============================= #

                    var:1                   # 変化量

                     ↓

                    rand:{min:1,max:3}      # 変化量（ランダム値）

                # ============================= #

                },                          #

            # ================================== #
            
                {                           #
                    target_type:2,          # ターゲットの取り方
                    effect_type:"heal",     # 何をするか
                    var:1                   # 変化量
                }                           #

                    ↓

                {
                    case:[
                        {
                            target_type:2,
                            effect_type:"heal",
                            var:1
                        },
                        {
                            target_type:2,
                            effect_type:"heal",
                            var:3
                        },
                        {
                            target_type:2,
                            effect_type:"draw",
                            var:1
                        }
                    ]
                }

            # ================================== #

            ]                               # <-- ここまで
        }
    },
    HideFlags:1,
    display:{
        Name:'[{"text":"2:軽い攻撃と回復","italic":false,"color":"white"}]',

    # ========================== #

        Lore:['[{"text":"標敵に1ダメージ","color":"gray","italic":false}]','[{"text":"1回復","color":"gray","italic":false}]']

            ↓

        Lore:['[{"text":"標敵に1-3ダメージ","color":"gray","italic":false}]','[{"text":"1回復または3回復または1ドロー","color":"gray","italic":false}]']
    
    # ========================== #

    }
}
```

結果的にこうなる

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
                    rand:{min:1,max:3}      # 変化量（ランダム値）
                },                          #
                {
                    case:[
                        {
                            target_type:2,
                            effect_type:"heal",
                            var:1
                        },
                        {
                            target_type:2,
                            effect_type:"heal",
                            var:3
                        },
                        {
                            target_type:2,
                            effect_type:"draw",
                            var:1
                        }
                    ]
                }
            ]                               # <-- ここまで
        }
    },
    HideFlags:1,
    display:{
        Name:'[{"text":"2:軽い攻撃と回復","italic":false,"color":"white"}]',
        Lore:['[{"text":"標敵に1-3ダメージ","color":"gray","italic":false}]','[{"text":"1回復または3回復または1ドロー","color":"gray","italic":false}]']
    }
}
```

###### 使い方
effects の中の var の代わりに rand を書くことで、最大値と最小値の間のランダムな数値を var として扱う
effects の中に効果を記載する代わりに case:[{効果},{効果},・・・数は任意] と書くことで、その中からランダムな効果を選んで適応する