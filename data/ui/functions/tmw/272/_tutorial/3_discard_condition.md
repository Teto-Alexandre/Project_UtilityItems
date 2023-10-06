# 手札を捨てる、捨てたことで誘発する

simple_battle付属のディスカードショットを元に、手札を捨てるギミックとそれを条件とした effect の作り方を書くよ

```
give @p minecraft:black_dye{
    tmw:{id:272,type:1,enableQ:1,
        cg:{
            cost:4,
            effects:[
                {target_type:1,effect_type:"damage",var:2},
                {target_type:2,effect_type:"discard",var:1},
                {condition:{id:1,min:1},target_type:1,effect_type:"damage",var:3}
            ]
        }
    },
    HideFlags:1,
    display:{
        Name:'[{"text":"4:ディスカードショット","italic":false,"color":"white"}]',
        Lore:['[{"text":"一番左のカードを１枚捨てる","color":"gray","italic":false}]','[{"text":"相手に２ダメージ与える","color":"gray","italic":false}]','[{"text":"捨てた場合さらにダメージ３与える","color":"gray","italic":false}]']
    }
}
```

effects の二つ目の {target_type:2,effect_type:"discard",var:1} は自分の持っているカードを1枚 clear するという意味
ここでclearされたカードの枚数はconditionという数値に加算されていく
その後、三つ目の effect の {condition:{id:1,min:1},target_type:1,effect_type:"damage",var:3} の中にある「 condition:{id:1,min:1} 」がconditionの数値を読み取って、target_type:1,effect_type:"damage",var:3 を実行するかどうかを判断している

###### TIPS: conditionの使い方
・id - 判断に用いるシステムの種類　現在は1(最大最小)のみ存在 0と書いた場合は何も書かなかった時と同じ
・min - ok を出す condition の最小値   手札を N 枚以上捨てた時、ターン数が N 以上の時などに使える
・max - ok を出す condition の最大値   HP が N 以下の時、マナ最大値が N 以下の時などに使える
・continue - これを付けると condition機能 使用後に condition が 0 に戻らなくなる   連続して条件をつけたい時にどうぞ

###### やってみる
前回のサンプルコマンドにカードを2枚捨て、捨てた枚数に応じて強くなる改造をする

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

            # ========================= # <== ここに追加した

                {
                    target_type:2,          # ターゲットの取り方（自分）
                    effect_type:"discard",  # 何をするか（カードを捨てる）
                    var:2                   # 変化量（2枚）
                },
                {
                    condition:{             # 条件をつける
                        id:1,
                        min:1,              # 1枚以上捨てた？
                        continue:1          # conditionをリセットせずに続ける
                    },
                    target_type:1,          # ターゲットの取り方（見ている相手）
                    effect_type:"damage",   # 何をするか（ダメージを与える）
                    var:2                   # 変化量（2）
                },
                {
                    condition:{             # 条件をつける
                        id:1,
                        min:2               # 2枚以上捨てた？
                    },
                    target_type:3,          # ターゲットの取り方（自分以外全員）
                    effect_type:"damage",   # 何をするか（ダメージを与える）
                    var:2                   # 変化量（2）
                },   

            # ========================= #

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
        Lore:['[{"text":"標敵に1-3ダメージ","color":"gray","italic":false}]','[{"text":"カードを最大2枚捨て、","color":"gray","italic":false}]','[{"text":"1枚以上捨てていれば標敵にさらに2ダメージ","color":"gray","italic":false}]','[{"text":"2枚捨てていれば自分以外の全員にさらに2ダメージ","color":"gray","italic":false}]','[{"text":"1回復または3回復または1ドロー","color":"gray","italic":false}]']
    }
}
```

コピー用のgiveコマンド（タブとコメントを消した版）

```
give @p minecraft:red_dye{tmw:{id:272,type:1,enableQ:1,cg:{cost:2,particle_laser:1,particle_self:1001,particle_look:1,effects:[{target_type:1,effect_type:"damage",rand:{min:1,max:3}},{target_type:2,effect_type:"discard",var:2},{condition:{id:1,min:1,continue:1},target_type:1,effect_type:"damage",var:2},{condition:{id:1,min:2},target_type:3,effect_type:"damage",var:2},{case:[{target_type:2,effect_type:"heal",var:1},{target_type:2,effect_type:"heal",var:3},{target_type:2,effect_type:"draw",var:1}]}]}},HideFlags:1,display:{Name:'[{"text":"2:軽い攻撃と回復","italic":false,"color":"white"}]',Lore:['[{"text":"標敵に1-3ダメージ","color":"gray","italic":false}]','[{"text":"カードを最大2枚捨て、","color":"gray","italic":false}]','[{"text":"1枚以上捨てていれば標敵にさらに2ダメージ","color":"gray","italic":false}]','[{"text":"2枚捨てていれば自分以外の全員にさらに2ダメージ","color":"gray","italic":false}]','[{"text":"1回復または3回復または1ドロー","color":"gray","italic":false}]']}}
```

###### 使い方
effect_type:"discard" と condition を使うことで、手札を捨ててその枚数に応じた変更がある効果を作れる