#=======================================================
#
#   Crafting Common Event
#       -by teto
#
#=======================================================

#媒体となるアイテムを削除
function ui:craft/common/del_sb

#完成品を渡す
give @s minecraft:wooden_sword{tmw:{is:1,id:3,enableQ:1,enableF:1},Enchantments:[{id:"unbreaking",lvl:1s}],HideFlags:3,display:{Name:'[{"text":"魔剣フランベルジュ","color":"red","italic":false,"bold":true}]',Lore:['[{"text":"通常攻撃: 閃刃[崩撃]","color":"gray","italic":false}]','[{"text":"  短時間敵の攻撃力を下げる","color":"gray","italic":false}]','[{"text":"Q:[","color":"gray","italic":false},{"text":"5%","color":"red","italic":false},{"text":"]: 火炎爆弾","color":"gray","italic":false}]','[{"text":"  起爆した後新たに設置する","color":"gray","italic":false}]','[{"text":"F:[","color":"gray","italic":false},{"text":"10%","color":"red","italic":false},{"text":"]: 紅蓮防壁","color":"gray","italic":false}]','[{"text":"  炎への耐性を得る","color":"gray","italic":false}]','[{"text":"S+F:[","color":"gray","italic":false},{"text":"10%","color":"red","italic":false},{"text":"]: 火炎円環","color":"gray","italic":false}]','[{"text":"  範囲内の敵に大ダメージを与える","color":"gray","italic":false}]','[{"text":"S+F:[","color":"gray","italic":false},{"text":"30%","color":"red","italic":false},{"text":"]:[","color":"gray","italic":false},{"text":"3s","color":"green","italic":false},{"text":"]: 業火円環","color":"gray","italic":false}]','[{"text":"  複数の火炎円環を設置する","color":"gray","italic":false}]']}}
function ui:craft/common/exp/advancement

#レシピおよび進捗消去
recipe take @s ui:tmw/tmw3
advancement revoke @s only ui:craft/tmw/tmw3