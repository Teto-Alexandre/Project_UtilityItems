# 遠距離武器

    ##  発射体拡散
    ##  発射体速度
    ##  射程
    ##  ◎　射程タイプ（新規・即時終端、急減速落下、消滅）
    ##  飛翔効果
    ##  終端効果
    ##  ×  ノックバック（オミット）
    ##  ×  攻撃属性（オミット）
    ##  ×  破壊力（オミット）
    ##  メイン直撃ダメージ
    ##  マルチショット

    ##  チームの色
    ##  インク残量
    ##  インク最大値
    ##  インク回復速度・移動形態
    ##  インク回復速度・射撃形態
    ##  サブ種類
    ##  サブ消費インク
    ##  SP種類
    ##  SP要求塗りP

    ##  バーストタイプ・撃ち中断、撃ち継続、チャージ
    ##  バースト数
    ##  バースト上限・継続、チャージのみ有効
    ##  バースト間クールタイム
    ##  射撃クールタイム
    ##  ×  リロードタイム・リロード進行度（オミット）
    ##  ▶  弾消費 → メイン消費インク
    ##  ×  リコイル強度（オミット）
    ##  ×  スナイプ係数（オミット）
    ##  ×　弾最大値・現在値

give @p minecraft:command_block{BlockEntityTag:{Command:"scoreboard players set @p ui_team 2",CustomName:'{"text":"@"}',LastExecution:41485404L,SuccessCount:0,TrackOutput:1b,UpdateLastExecution:1b,auto:0b,conditionMet:1b,id:"minecraft:command_block",powered:0b},display:{Name:'{"text":"色チェンジャー"}'}}

# 武器データ

    ## サブ: 101:スプラッシュ, 102:リフレク, 103:クイボ, 104:ライトアップ, 105:レンバク, 106:リジェネ

    ## スペ: 101:ノヴァ, 102:スーパースター, 103:サブラッシュ, 104:ヴァリアブル, 105:レーダー

# ペインター
give @p minecraft:carrot_on_a_stick{tmw:{id:237,enableQ:1,enableF:1,gun:{Name:"エルドペインター",BaseType:1,BurstType:2,Burst:4,BurstMax:-1,SubType:103,SPType:105,SPTime:60,SPNeed:300,InkMax:1000,MainInkUse:30,SubInkUse:400,MoveInkRegen:30,ShootInkRegen:6,now:{Ink:1000,CT:0,Burst:0,SP:0,SPTime:0,Model:110801}},main:{ShotType:1,ShotCT:1,BurstCT:5,Spread:400,AirSpread:300,SpreadType:1,Speed:19,SpeedPlus:5,RangeType:3,Range:15,FlyParticle:4,EndParticle:5,Damage:70,MultiShot:1,ShotFootStep:2,Sound:1}},display:{Lore:['[{"text":"圧倒的な連射速度で陣地を広げる","color":"gray","italic":false}]']},AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.2,Operation:1,UUID:[I;2,2,1,1],Slot:"mainhand"}]}
give @p minecraft:carrot_on_a_stick{tmw:{id:237,enableQ:1,enableF:1,gun:{Name:"ムニスペインター",BaseType:1,BurstType:2,Burst:3,BurstMax:-1,SubType:102,SPType:101,SPTime:25,SPNeed:300,InkMax:1000,MainInkUse:40,SubInkUse:500,MoveInkRegen:30,ShootInkRegen:6,now:{Ink:1000,CT:0,Burst:0,SP:0,SPTime:0,Model:110801}},main:{ShotType:1,ShotCT:2,BurstCT:10,Spread:100,AirSpread:300,Speed:27,SpeedPlus:5,RangeType:3,Range:25,FlyParticle:6,EndParticle:5,Damage:80,MultiShot:1,ShotFootStep:1,Sound:1}},display:{Lore:['[{"text":"軽量のインクをばら撒く","color":"gray","italic":false}]']},AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.1,Operation:1,UUID:[I;2,2,1,1],Slot:"mainhand"}]}

# バスター
give @p minecraft:carrot_on_a_stick{tmw:{id:237,enableQ:1,enableF:1,gun:{Name:"エルドバスター",BaseType:1,BurstType:1,Burst:1,BurstMax:-1,SubType:106,SPType:104,SPTime:160,SPNeed:300,InkMax:1000,MainInkUse:190,SubInkUse:800,MoveInkRegen:30,ShootInkRegen:6,now:{Ink:1000,CT:0,Burst:0,SP:0,SPTime:0,Model:110801}},main:{ShotType:1,ShotCT:3,BurstCT:6,Spread:450,AirSpread:300,Speed:20,SpeedPlus:0,RangeType:3,Range:16,FlyParticle:4,EndParticle:5,Damage:40,MultiShot:7,ShotFootStep:3,Sound:1}},display:{Lore:['[{"text":"発射数が多く近距離戦に強い","color":"gray","italic":false}]']},AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.2,Operation:1,UUID:[I;2,2,1,1],Slot:"mainhand"}]}
give @p minecraft:carrot_on_a_stick{tmw:{id:237,enableQ:1,enableF:1,gun:{Name:"ゲテルバスター",BaseType:1,BurstType:1,Burst:1,BurstMax:-1,SubType:104,SPType:102,SPTime:200,SPNeed:300,InkMax:1000,MainInkUse:210,SubInkUse:600,MoveInkRegen:30,ShootInkRegen:6,now:{Ink:1000,CT:0,Burst:0,SP:0,SPTime:0,Model:110801}},main:{ShotType:1,ShotCT:3,BurstCT:6,Spread:400,AirSpread:300,Speed:50,SpeedPlus:0,RangeType:3,Range:16,FlyParticle:4,EndParticle:5,Damage:40,MultiShot:5,ShotFootStep:3,Sound:1}},display:{Lore:['[{"text":"揮発性の散弾が中距離まで届く","color":"gray","italic":false}]']},AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.1,Operation:1,UUID:[I;2,2,1,1],Slot:"mainhand"}]}

# ワード
give @p minecraft:carrot_on_a_stick{tmw:{id:237,enableQ:1,enableF:1,gun:{Name:"エルドワード",BaseType:1,BurstType:1,Burst:1,BurstMax:-1,SubType:105,SPType:101,SPTime:25,SPNeed:300,InkMax:1000,MainInkUse:190,SubInkUse:700,MoveInkRegen:30,ShootInkRegen:6,now:{Ink:1000,CT:0,Burst:0,SP:0,SPTime:0,Model:110801}},main:{ShotType:1,ShotCT:4,BurstCT:8,Spread:100,AirSpread:300,Speed:30,SpeedPlus:0,RangeType:3,Range:25,FlyParticle:5,EndParticle:6,Damage:150,MultiShot:1,ShotFootStep:0,Sound:1}},display:{Lore:['[{"text":"高威力の爆発弾を発射する","color":"gray","italic":false}]']},AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.0,Operation:1,UUID:[I;2,2,1,1],Slot:"mainhand"}]}
give @p minecraft:carrot_on_a_stick{tmw:{id:237,enableQ:1,enableF:1,gun:{Name:"アルトワード",BaseType:1,BurstType:1,Burst:1,BurstMax:-1,SubType:101,SPType:103,SPTime:120,SPNeed:300,InkMax:1000,MainInkUse:250,SubInkUse:700,MoveInkRegen:30,ShootInkRegen:6,now:{Ink:1000,CT:0,Burst:0,SP:0,SPTime:0,Model:110801}},main:{ShotType:1,ShotCT:6,BurstCT:12,Spread:50,AirSpread:300,Speed:35,SpeedPlus:0,RangeType:3,Range:40,FlyParticle:5,EndParticle:7,Damage:180,MultiShot:1,ShotFootStep:0,Sound:1}},display:{Lore:['[{"text":"遠くの敵を確実に爆破する","color":"gray","italic":false}]']},AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.0,Operation:1,UUID:[I;2,2,1,1],Slot:"mainhand"}]}

# プロード
give @p minecraft:carrot_on_a_stick{tmw:{id:237,enableQ:1,enableF:1,gun:{Name:"エルドプロード",BaseType:1,BurstType:1,Burst:1,BurstMax:-1,SubType:102,SPType:101,SPTime:25,SPNeed:300,InkMax:1000,MainInkUse:190,SubInkUse:500,MoveInkRegen:30,ShootInkRegen:6,now:{Ink:1000,CT:0,Burst:0,SP:0,SPTime:0,Model:110801}},main:{ShotType:1,ShotCT:3,BurstCT:5,Spread:0,AirSpread:0,Speed:30,SpeedPlus:0,RangeType:1,Range:20,FlyParticle:4,EndParticle:6,Damage:100,MultiShot:1,ShotFootStep:1,Sound:1}},display:{Lore:['[{"text":"空中で炸裂する弾を発射する","color":"gray","italic":false}]']},AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.1,Operation:1,UUID:[I;2,2,1,1],Slot:"mainhand"}]}
give @p minecraft:carrot_on_a_stick{tmw:{id:237,enableQ:1,enableF:1,gun:{Name:"ラレユプロード",BaseType:1,BurstType:1,Burst:1,BurstMax:-1,SubType:104,SPType:105,SPTime:60,SPNeed:300,InkMax:1000,MainInkUse:160,SubInkUse:600,MoveInkRegen:30,ShootInkRegen:6,now:{Ink:1000,CT:0,Burst:0,SP:0,SPTime:0,Model:110801}},main:{ShotType:1,ShotCT:3,BurstCT:4,Spread:100,AirSpread:300,Speed:30,SpeedPlus:0,RangeType:1,Range:15,FlyParticle:4,EndParticle:6,Damage:140,MultiShot:1,ShotFootStep:1,Sound:1}},display:{Lore:['[{"text":"高い攻撃力と対応力がある","color":"gray","italic":false}]']},AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.1,Operation:1,UUID:[I;2,2,1,1],Slot:"mainhand"}]}

# スピンギア
give @p minecraft:carrot_on_a_stick{tmw:{id:237,enableQ:1,enableF:1,gun:{Name:"エルドスピンギア",BaseType:1,BurstType:3,Burst:8,BurstMax:30,SubType:101,SPType:102,SPTime:200,SPNeed:300,InkMax:1000,MainInkUse:20,SubInkUse:700,MoveInkRegen:30,ShootInkRegen:6,now:{Ink:1000,CT:0,Burst:0,SP:0,SPTime:0,Model:110801}},main:{ShotType:1,ShotCT:0,BurstCT:1,Spread:250,AirSpread:100,Speed:20,SpeedPlus:15,RangeType:3,Range:30,FlyParticle:6,EndParticle:5,Damage:50,MultiShot:1,ShotFootStep:2,Sound:1}},display:{Lore:['[{"text":"チャージして連射できる","color":"gray","italic":false}]']},AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.0,Operation:1,UUID:[I;2,2,1,1],Slot:"mainhand"}]}
give @p minecraft:carrot_on_a_stick{tmw:{id:237,enableQ:1,enableF:1,gun:{Name:"ヘヴィスピンギア",BaseType:1,BurstType:3,Burst:12,BurstMax:40,SubType:101,SPType:301,SPTime:120,SPNeed:300,InkMax:1000,MainInkUse:30,SubInkUse:700,MoveInkRegen:30,ShootInkRegen:6,SPBurstType:1,SPBurst:1,SPBurstMax:-1,now:{Ink:1000,CT:0,Burst:0,SP:0,SPTime:0,Model:110801}},main:{ShotType:1,ShotCT:1,BurstCT:2,Spread:180,AirSpread:100,Speed:30,SpeedPlus:10,RangeType:3,Range:45,FlyParticle:4,EndParticle:5,Damage:70,MultiShot:1,ShotFootStep:2,Sound:1},sp:{Name:'{"text":"スーパーショット","color":"gold"}',TimeUse:0,ShotType:1,ShotCT:9,BurstCT:18,Spread:0,AirSpread:0,Speed:35,SpeedPlus:0,RangeType:3,Range:50,FlyParticle:7,EndParticle:4,Damage:300,MultiShot:1,ShotFootStep:2,Sound:1}},display:{Lore:['[{"text":"チャージして連射できる","color":"gray","italic":false}]']},AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:-0.1,Operation:1,UUID:[I;2,2,1,1],Slot:"mainhand"}]}

# ライナー
give @p minecraft:carrot_on_a_stick{tmw:{id:237,enableQ:1,enableF:1,gun:{Name:"エルドライナー",BaseType:1,BurstType:4,Burst:1,BurstMax:40,SubType:103,SPType:104,SPTime:160,SPNeed:300,InkMax:1000,MainInkUse:400,SubInkUse:400,MoveInkRegen:30,ShootInkRegen:6,now:{Ink:1000,CT:0,Burst:0,SP:0,SPTime:0,Model:110801}},main:{ShotType:1,ShotCT:8,BurstCT:1,Spread:50,AirSpread:0,Speed:10,SpeedPlus:10,RangeType:3,Range:40,FlyParticle:4,EndParticle:5,Damage:60,MultiShot:3,ShotFootStep:3,Sound:1}},display:{Lore:['[{"text":"チャージして大量の弾を放つ","color":"gray","italic":false}]']},AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.0,Operation:1,UUID:[I;2,2,1,1],Slot:"mainhand"}]}

# ピアサー
give @p minecraft:carrot_on_a_stick{tmw:{id:237,enableQ:1,enableF:1,gun:{Name:"エルドピアサー",BaseType:1,BurstType:4,Burst:2,BurstMax:40,SubType:101,SPType:105,SPTime:60,SPNeed:300,InkMax:1000,MainInkUse:280,SubInkUse:1000,MoveInkRegen:30,ShootInkRegen:6,now:{Ink:1000,CT:0,Burst:0,SP:0,SPTime:0,Model:110811}},main:{ShotType:1,ShotCT:8,BurstCT:1,Spread:0,AirSpread:0,Speed:600,SpeedPlus:0,RangeType:1,Range:20,FlyParticle:2,EndParticle:5,Damage:140,MultiShot:1,ShotFootStep:2,Sound:1}},display:{Lore:['[{"text":"チャージして高威力の弾を放つ","color":"gray","italic":false}]']},AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.0,Operation:1,UUID:[I;2,2,1,1],Slot:"mainhand"}]}

# チェーン
give @p minecraft:carrot_on_a_stick{tmw:{id:237,enableQ:1,enableF:1,gun:{Name:"ラレユチェーン",BaseType:1,BurstType:5,Burst:101,BurstMax:40,SubType:107,SPType:104,SPTime:160,SPNeed:300,InkMax:1000,MainInkUse:30,SubInkUse:900,MoveInkRegen:30,ShootInkRegen:6,now:{Ink:1000,CT:0,Burst:0,SP:0,SPTime:0,Model:110801}},main:{ShotType:1,ShotCT:4,BurstCT:5,Spread:200,AirSpread:0,Speed:10,SpeedPlus:10,RangeType:3,Range:40,FlyParticle:6,EndParticle:5,Damage:40,MultiShot:1,ShotFootStep:3,Sound:1}},display:{Lore:['[{"text":"徐々に連射速度が上がる","color":"gray","italic":false}]']},AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.0,Operation:1,UUID:[I;2,2,1,1],Slot:"mainhand"}]}

# アンカー
give @p minecraft:carrot_on_a_stick{tmw:{id:237,enableQ:1,enableF:1,gun:{Name:"ラレユアンカー",BaseType:1,BurstType:1,Burst:1,BurstMax:-1,SubType:101,SPType:201,SPTime:100,SPNeed:300,InkMax:1000,MainInkUse:310,SubInkUse:700,MoveInkRegen:30,ShootInkRegen:6,now:{Ink:1000,CT:0,Burst:0,SP:0,SPTime:0,Model:110801}},main:{ShotType:1,ShotCT:8,BurstCT:16,Spread:0,AirSpread:300,Speed:7,SpeedPlus:0,RangeType:1,Range:30,FlyParticle:3,EndParticle:5,Damage:190,MultiShot:1,ShotFootStep:2,Sound:1}},display:{Lore:['[{"text":"弾速が遅い大きな弾を放つ","color":"gray","italic":false}]']},AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.0,Operation:1,UUID:[I;2,2,1,1],Slot:"mainhand"}]}

# スイーパー
give @p minecraft:carrot_on_a_stick{tmw:{id:237,enableQ:1,enableF:1,gun:{Name:"エルドスイーパー",BaseType:2,BurstType:1,Burst:1,BurstMax:-1,HoldBurstType:1,HoldBurst:3,HoldBurstMax:-1,SubType:103,SPType:105,SPTime:60,SPNeed:300,InkMax:1000,MainInkUse:35,SubInkUse:400,MoveInkRegen:30,ShootInkRegen:6,now:{Ink:1000,CT:0,Burst:0,SP:0,SPTime:0,Model:110801}},main:{ShotType:1,ShotCT:1,BurstCT:3,Spread:0,AirSpread:0,SpreadType:1,Speed:35,SpeedPlus:0,RangeType:3,Range:25,FlyParticle:4,EndParticle:4,Damage:110,MultiShot:1,ShotFootStep:2,Sound:1},hold:{ShotType:1,ShotCT:1,BurstCT:2,Spread:500,AirSpread:0,SpreadType:1,Speed:20,SpeedPlus:5,RangeType:3,Range:15,FlyParticle:4,EndParticle:5,Damage:70,MultiShot:1,ShotFootStep:2,Sound:1}},display:{Lore:['[{"text":"狙撃と連射を使い分けられる","color":"gray","italic":false}]']},AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.2,Operation:1,UUID:[I;2,2,1,1],Slot:"mainhand"}]}

# ローラー
give @p minecraft:carrot_on_a_stick{tmw:{id:237,enableQ:1,enableF:1,gun:{Name:"エルドローラー",BaseType:2,BurstType:1,Burst:1,BurstMax:-1,HoldBurstType:2,HoldBurst:3,HoldBurstMax:-1,SubType:103,SPType:105,SPTime:60,SPNeed:300,InkMax:1000,MainInkUse:210,HoldInkUse:20,SubInkUse:400,MoveInkRegen:30,ShootInkRegen:6,now:{Ink:1000,CT:0,Burst:0,SP:0,SPTime:0,Model:110821}},hold:{ShotType:2,CT:1,Width:4,Damage:220,Sound:1},main:{ShotType:1,ShotCT:1,BurstCT:5,Spread:500,AirSpread:0,SpreadType:1,Speed:20,SpeedPlus:5,RangeType:3,Range:15,FlyParticle:5,EndParticle:5,Damage:50,MultiShot:6,ShotFootStep:2,Sound:1}},display:{Lore:['[{"text":"長押しで地面を塗りつつ攻撃できる","color":"gray","italic":false}]']},AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.2,Operation:1,UUID:[I;2,2,1,1],Slot:"mainhand"}]}