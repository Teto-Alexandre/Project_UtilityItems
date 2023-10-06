# もっといろんな数値をコンディションにする、使えるマナを増やす

event_day1付属のダイヤモンドをあなたにを元に、マナ最大値をコンディションにしてマナを増やす効果の仕組みを書くよ

```
give @p minecraft:diamond{
    tmw:{id:272,type:1,enableQ:1,
        cg:{
            cost:5,
            effects:[
                {
                    target_type:2,
                    effect_type:"condition_input",
                    input:"mana_max"
                },
                {
                    condition:{id:1,min:5},
                    target_type:2,
                    effect_type:"mana_max",
                    var:1
                }
            ]
        }
    },
    HideFlags:1,
    display:{
        Name:'[{"text":"5:ダイヤモンドをあなたに","italic":false,"color":"white"}]',
        Lore:['[{"text":"マナの最大値が5以上ならマナ最大値+1","color":"gray","italic":false}]']
    }
}
```

effects の一つ目の {target_type:2,effect_type:"condition_input",input:"mana_max"} は自分のマナ最大値をcontitionに入れるという意味
二つ目の effect の中にある「 condition:{id:1,min:5} 」でこれを拾って実行するか判断する
effect_type:"mana_max" はマナ最大値に var の数値を加算できる effect (マイナスの数字を入れるとマナの最大値が減る)

###### TIPS: 今回出た effect の兄弟
・effect_type:"mana" - 現在のマナの数値にvarを足す
・effect_type:"mana_max" - 現在のマナ最大値にvarを足す
・effect_type:"mana",effect_mode:"=" - 現在のマナの数値をvarにする
・effect_type:"mana_max",effect_mode:"=" - 現在のマナ最大値をvarにする

###### やってみる
前回のサンプルコマンドに自分のマナを1増やす効果を足してみる

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
                {
                    target_type:1,          # ターゲットの取り方
                    effect_type:"damage",   # 何をするか
                    rand:{min:1,max:3}      # 変化量（ランダム値）
                },
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
                },

            # ========================= # <== ここに追加した

                {
                    target_type:2,
                    effect_type:"mana",
                    var:1
                }

            # ========================= #

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
give @p minecraft:red_dye{tmw:{id:272,type:1,enableQ:1,cg:{cost:2,particle_laser:1,particle_self:1001,particle_look:1,effects:[{target_type:1,effect_type:"damage",rand:{min:1,max:3}},{target_type:2,effect_type:"discard",var:2},{condition:{id:1,min:1,continue:1},target_type:1,effect_type:"damage",var:2},{condition:{id:1,min:2},target_type:3,effect_type:"damage",var:2},{case:[{target_type:2,effect_type:"heal",var:1},{target_type:2,effect_type:"heal",var:3},{target_type:2,effect_type:"draw",var:1}]},{target_type:2,effect_type:"mana",var:1}]}},HideFlags:1,display:{Name:'[{"text":"2:軽い攻撃と回復","italic":false,"color":"white"}]',Lore:['[{"text":"標敵に1-3ダメージ","color":"gray","italic":false}]','[{"text":"カードを最大2枚捨て、","color":"gray","italic":false}]','[{"text":"1枚以上捨てていれば標敵にさらに2ダメージ","color":"gray","italic":false}]','[{"text":"2枚捨てていれば自分以外の全員にさらに2ダメージ","color":"gray","italic":false}]','[{"text":"1回復または3回復または1ドロー","color":"gray","italic":false}]','[{"text":"マナを1回復","color":"gray","italic":false}]']}}
```

###### 使い方
effect_type:"mana(_max)" と effect_type:"condition_input",input:"mana(_max)" を使うことで、マナの現在値と最大値を読み取ってその数値を変えることができる