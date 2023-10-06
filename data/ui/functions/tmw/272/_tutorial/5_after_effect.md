# 追撃、遅延発動、あるいは無限ループ

simple_battle付属の追撃、テストデバッグ3を元に、カード実行時とは別のタイミングで起動する effect を書くよ

1、追撃
```
give @p minecraft:pink_dye{
    tmw:{
        id:272,type:1,enableQ:1,
        cg:{
            cost:2,
            particle_laser:1,
            particle_self:1001,
            particle_look:1,
            effects:[
                {
                    target_type:1,
                    effect_type:"damage",
                    var:1
                },
                {
                    target_type:1,
                    effect_type:"after_effect",
                    cg:{
                        delay:20,
                        name:'[{"text":"追撃","italic":false,"color":"white"}]',
                        lore:['[{"text":"標敵に1ダメージ","color":"gray","italic":false}]'],
                        cost:0,
                        particle_laser:0,
                        particle_self:1001,
                        particle_target:1,
                        effects:[
                            {
                                target_type:7,
                                effect_type:"damage",
                                var:1
                            }
                        ]
                    }
                }
            ]
        }
    },
    HideFlags:1,
    display:{
        Name:'[{"text":"2:追撃","italic":false,"color":"white"}]',
        Lore:['[{"text":"標敵に1ダメージ","color":"gray","italic":false}]','[{"text":"一刻 ","color":"green","italic":false},{"text":"標敵に1ダメージ","color":"gray","italic":false}]']
    }
}
```

effect_type:"after_effect" には var の代わりに cg を書くよ
cg の中身は、実行時とは別のタイミングで起動する effect をカードのNBTデータと同じ形で書く　コピペでOK
この場合の発動タイミングは カードのNBT と同じところにある delay の数値(tick)換算　つまり1秒後
コストを設定した場合は、足りなかった時は発動せずに立ち消える
after_effect として作った場合のみ、target_type:7 が有効　（ effect_type:"after_effect" の実行時点でのターゲットをターゲットとして取る ）
target_type:7 を使わない場合は、プレイヤーがその effect を使ったものとして発動する

2、テストデバッグ3
```
give @p minecraft:cyan_dye{
    tmw:{
        id:272,type:1,enableQ:1,
        cg:{
            cost:3,
            particle_laser:0,
            particle_self:1002,
            particle_look:1,
            effects:[
                {
                    target_type:2,
                    effect_type:"after_effect",
                    cg:{
                        delay_type:1,
                        delay:0,
                        repeat:3,
                        name:'[{"text":"テストデバッグ3","italic":false,"color":"white"}]',
                        lore:['[{"text":"開幕 ","color":"green","italic":false},{"text":"ドロー1","color":"gray","italic":false}]'],cost:0,particle_laser:0,particle_self:1002,effects:[{target_type:2,effect_type:"draw",var:1}]
                    }
                }
            ]
        }
    },
    HideFlags:1,
    display:{
        Name:'[{"text":"3:テストデバッグ3","italic":false,"color":"white"}]',
        Lore:['[{"text":"三度 ","color":"yellow","italic":false},{"text":"開幕 ","color":"green","italic":false},{"text":"ドロー1","color":"gray","italic":false}]']
    }
}
```

delay_type に 1 を指定することで delay の扱いを変更できる　この場合は delay はターンが開始してからの経過時間（tick換算）になる
つまりターンの開始時に発動する能力としてスタックされる
加えて repeat を書くことで、発動回数を設定することができる
（見た目通りの回数にするために1ずらした結果、repeat:0とrepeat:1は同じ一回のみ発動になった）
repeat をマイナスにすることで無限回発動する effect を作成可能

###### TIPS: 1ターンの時間
・0ターン目 - 10秒
・1〜4ターン目 - 5秒
・5〜9ターン目 - 7秒
・10ターン以降 - 10秒
つまり delay_type:1 の上で delay に 100 以上の数値を入れると、そこまでカウントが進むターンまで発動が待機される
