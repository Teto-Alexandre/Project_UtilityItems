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

##  dmg:40,bt:1,bc:1,ua:200,mov:20,range:60,ct1:2,ct2:2,rt:20,bu:1,ms:1,kb:8,rc:3,snipe:2,ammo:6,now:{ammo:0,ct:0,bc:0,reload:0}

give @p minecraft:command_block{BlockEntityTag:{Command:"execute as @e[type=item,distance=..5] run data merge entity @s {Item:{tag:{tmw:{gun:{Color:2}}}}}",CustomName:'{"text":"@"}',LastExecution:41485404L,SuccessCount:0,TrackOutput:1b,UpdateLastExecution:1b,auto:0b,conditionMet:1b,id:"minecraft:command_block",powered:0b},display:{Name:'{"text":"色チェンジャー"}'}}

give @p minecraft:carrot_on_a_stick{tmw:{id:237,enableQ:1,enableF:1,gun:{Name:"ラレユプロード",Color:1,BurstType:1,Burst:1,BurstMax:-1,ShotCT:3,BurstCT:4,SubType:101,SPType:102,SPNeed:300,InkMax:1000,MainInkUse:170,SubInkUse:500,MoveInkRegen:30,ShootInkRegen:6,now:{Ink:1000,CT:0,Burst:0,SP:0}},main:{Spread:100,AirSpread:300,Speed:30,RangeType:1,Range:20,FlyParticle:4,EndParticle:6,Damage:140,MultiShot:1,ShotFootStep:1,Sound:1},Lore:['[{"text":"高い攻撃力と対応力がある","color":"gray","italic":false}]']},AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.1,Operation:1,UUID:[I;2,2,1,1],Slot:"mainhand"}]}
give @p minecraft:carrot_on_a_stick{tmw:{id:237,enableQ:1,enableF:1,gun:{Name:"エルドペインター",Color:1,BurstType:2,Burst:3,BurstMax:-1,ShotCT:1,BurstCT:5,SubType:101,SPType:101,SPNeed:300,InkMax:1000,MainInkUse:40,SubInkUse:500,MoveInkRegen:30,ShootInkRegen:6,now:{Ink:1000,CT:0,Burst:0,SP:0}},main:{Spread:400,AirSpread:300,Speed:19,SpeedPlus:5,RangeType:1,Range:80,FlyParticle:4,EndParticle:5,Damage:70,MultiShot:1,ShotFootStep:2,Sound:1},Lore:['[{"text":"圧倒的な連射速度で陣地を広げる","color":"gray","italic":false}]']},AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.2,Operation:1,UUID:[I;2,2,1,1],Slot:"mainhand"}]}
give @p minecraft:carrot_on_a_stick{tmw:{id:237,enableQ:1,enableF:1,gun:{Name:"エルドワード",Color:1,BurstType:1,Burst:1,BurstMax:-1,ShotCT:4,BurstCT:8,SubType:101,SPType:101,SPNeed:300,InkMax:1000,MainInkUse:180,SubInkUse:500,MoveInkRegen:30,ShootInkRegen:6,now:{Ink:1000,CT:0,Burst:0,SP:0}},main:{Spread:100,AirSpread:300,Speed:30,RangeType:1,Range:100,FlyParticle:5,EndParticle:6,Damage:150,MultiShot:1,ShotFootStep:0,Sound:1},Lore:['[{"text":"高威力の爆発弾を発射する","color":"gray","italic":false}]']},AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.0,Operation:1,UUID:[I;2,2,1,1],Slot:"mainhand"}]}
give @p minecraft:carrot_on_a_stick{tmw:{id:237,enableQ:1,enableF:1,gun:{Name:"エルドバスター",Color:1,BurstType:1,Burst:1,BurstMax:-1,ShotCT:3,BurstCT:6,SubType:101,SPType:101,SPNeed:300,InkMax:1000,MainInkUse:200,SubInkUse:500,MoveInkRegen:30,ShootInkRegen:6,now:{Ink:1000,CT:0,Burst:0,SP:0}},main:{Spread:450,AirSpread:300,Speed:20,RangeType:1,Range:60,FlyParticle:6,EndParticle:5,Damage:30,MultiShot:12,ShotFootStep:3,Sound:1},Lore:['[{"text":"発射数が多く近距離戦に強い","color":"gray","italic":false}]']},AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.2,Operation:1,UUID:[I;2,2,1,1],Slot:"mainhand"}]}
give @p minecraft:carrot_on_a_stick{tmw:{id:237,enableQ:1,enableF:1,gun:{Name:"ムニスペインター",Color:1,BurstType:2,Burst:3,BurstMax:-1,ShotCT:2,BurstCT:10,SubType:106,SPType:101,SPNeed:300,InkMax:1000,MainInkUse:50,SubInkUse:500,MoveInkRegen:30,ShootInkRegen:6,now:{Ink:1000,CT:0,Burst:0,SP:0}},main:{Spread:100,AirSpread:300,Speed:27,SpeedPlus:5,RangeType:1,Range:80,FlyParticle:6,EndParticle:5,Damage:65,MultiShot:1,ShotFootStep:1,Sound:1},Lore:['[{"text":"軽量のインクをばら撒く","color":"gray","italic":false}]']},AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.1,Operation:1,UUID:[I;2,2,1,1],Slot:"mainhand"}]}
give @p minecraft:carrot_on_a_stick{tmw:{id:237,enableQ:1,enableF:1,gun:{Name:"アルトワード",Color:1,BurstType:1,Burst:1,BurstMax:-1,ShotCT:6,BurstCT:12,SubType:105,SPType:101,SPNeed:300,InkMax:1000,MainInkUse:230,SubInkUse:500,MoveInkRegen:30,ShootInkRegen:6,now:{Ink:1000,CT:0,Burst:0,SP:0}},main:{Spread:50,AirSpread:300,Speed:35,RangeType:1,Range:200,FlyParticle:5,EndParticle:7,Damage:180,MultiShot:1,ShotFootStep:0,Sound:1},Lore:['[{"text":"遠くの敵を確実に爆破する","color":"gray","italic":false}]']},AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:002,Operation:1,UUID:[I;2,2,1,1],Slot:"mainhand"}]}
give @p minecraft:carrot_on_a_stick{tmw:{id:237,enableQ:1,enableF:1,gun:{Name:"ゲテルバスター",Color:1,BurstType:1,Burst:1,BurstMax:-1,ShotCT:3,BurstCT:6,SubType:104,SPType:101,SPNeed:300,InkMax:1000,MainInkUse:220,SubInkUse:500,MoveInkRegen:30,ShootInkRegen:6,now:{Ink:1000,CT:0,Burst:0,SP:0}},main:{Spread:400,AirSpread:300,Speed:50,RangeType:1,Range:25,FlyParticle:6,EndParticle:5,Damage:30,MultiShot:9,ShotFootStep:3,Sound:1},Lore:['[{"text":"揮発性の散弾が中距離まで届く","color":"gray","italic":false}]']},AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.1,Operation:1,UUID:[I;2,2,1,1],Slot:"mainhand"}]}
give @p minecraft:carrot_on_a_stick{tmw:{id:237,enableQ:1,enableF:1,gun:{Name:"エルドスピンギア",Color:1,BurstType:3,Burst:8,BurstMax:30,ShotCT:0,BurstCT:1,SubType:103,SPType:101,SPNeed:300,InkMax:1000,MainInkUse:25,SubInkUse:500,MoveInkRegen:30,ShootInkRegen:6,now:{Ink:1000,CT:0,Burst:0,SP:0}},main:{Spread:250,AirSpread:100,Speed:20,SpeedPlus:15,RangeType:1,Range:70,FlyParticle:6,EndParticle:5,Damage:50,MultiShot:1,ShotFootStep:2,Sound:1},Lore:['[{"text":"チャージして連射できる","color":"gray","italic":false}]']},AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.0,Operation:1,UUID:[I;2,2,1,1],Slot:"mainhand"}]}
give @p minecraft:carrot_on_a_stick{tmw:{id:237,enableQ:1,enableF:1,gun:{Name:"エルドライナー",Color:1,BurstType:4,Burst:1,BurstMax:40,ShotCT:8,BurstCT:1,SubType:102,SPType:101,SPNeed:300,InkMax:1000,MainInkUse:360,SubInkUse:500,MoveInkRegen:30,ShootInkRegen:6,now:{Ink:1000,CT:0,Burst:0,SP:0}},main:{Spread:50,AirSpread:0,Speed:10,SpeedPlus:10,RangeType:1,Range:70,FlyParticle:6,EndParticle:5,Damage:40,MultiShot:10,ShotFootStep:3,Sound:1},Lore:['[{"text":"チャージして発射できる","color":"gray","italic":false}]']},AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.0,Operation:1,UUID:[I;2,2,1,1],Slot:"mainhand"}]}
