#=======================================================
#
#   Crafting Common Event
#       -by teto
#
#=======================================================

#媒体となるアイテムを削除
function ui:craft/common/del_sb

#完成品を渡す
give @s minecraft:wooden_sword{tmw:{is:1,id:2,enableQ:1,enableF:1},Enchantments:[{id:"unbreaking",lvl:1s}],HideFlags:3,display:{Name:'[{"text":"魔剣アニマ","color":"aqua","italic":false,"bold":true}]',Lore:['[{"text":"通常攻撃: 閃刃[破魂]","color":"gray","italic":false}]','[{"text":"  敵の魂を破壊し自己に吸収する","color":"gray","italic":false}]','[{"text":"Q:[","color":"gray","italic":false},{"text":"20%","color":"red","italic":false},{"text":"]: 穿魂光線","color":"gray","italic":false}]','[{"text":"  連射できる光線弾","color":"gray","italic":false}]','[{"text":"S+Q:[","color":"gray","italic":false},{"text":"50%","color":"red","italic":false},{"text":"]: 崩壊波動","color":"gray","italic":false}]','[{"text":"  周囲に大ダメージを与える","color":"gray","italic":false}]','[{"text":"F:[","color":"gray","italic":false},{"text":"20%","color":"red","italic":false},{"text":"]: 即時再生","color":"gray","italic":false}]','[{"text":"  活撃の一手","color":"gray","italic":false}]','[{"text":"S+F:[","color":"gray","italic":false},{"text":"20%","color":"red","italic":false},{"text":"]: 緩衝防壁","color":"gray","italic":false}]','[{"text":"  後手の守護","color":"gray","italic":false}]']}}
function ui:craft/common/exp/advancement

#レシピおよび進捗消去
recipe take @s ui:tmw/tmw2
advancement revoke @s only ui:craft/tmw/tmw2