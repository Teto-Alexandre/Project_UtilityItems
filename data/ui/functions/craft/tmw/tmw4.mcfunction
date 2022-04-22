#=======================================================
#
#   Crafting Common Event
#       -by teto
#
#=======================================================

#媒体となるアイテムを削除
function ui:craft/common/del_sb

#完成品を渡す
give @s minecraft:wooden_sword{tmw:{is:1,id:4,enableQ:1,enableF:1},Enchantments:[{id:"unbreaking",lvl:1s}],HideFlags:3,display:{Name:'[{"text":"魔剣ジャッジメント","color":"white","italic":false,"bold":true}]',Lore:['[{"text":"通常攻撃:[","color":"gray","italic":false},{"text":"5%","color":"red","italic":false},{"text":"]: 閃刃[時縛]","color":"gray","italic":false}]','[{"text":"  不可解な動きを生み出す","color":"gray","italic":false}]','[{"text":"Q: オートエイム切り替え","color":"gray","italic":false}]','[{"text":"  敵を自動で補足する","color":"gray","italic":false}]','[{"text":"S+Q:[","color":"gray","italic":false},{"text":"10%","color":"red","italic":false},{"text":"]:[","color":"gray","italic":false},{"text":"5s","color":"green","italic":false},{"text":"]: 邂逅","color":"gray","italic":false}]','[{"text":"  敵を呼び寄せる光線弾","color":"gray","italic":false}]','[{"text":"F:[","color":"gray","italic":false},{"text":"15%","color":"red","italic":false},{"text":"]: 懺悔","color":"gray","italic":false}]','[{"text":"  周囲の敵は懺悔する","color":"gray","italic":false}]','[{"text":"S+F:[","color":"gray","italic":false},{"text":"50%","color":"red","italic":false},{"text":"]:[","color":"gray","italic":false},{"text":"5s","color":"green","italic":false},{"text":"]: 結界の奇跡","color":"gray","italic":false}]','[{"text":"  短時間無敵化する","color":"gray","italic":false}]']}}
function ui:craft/common/exp/advancement

#レシピおよび進捗消去
recipe take @s ui:tmw/tmw4
advancement revoke @s only ui:craft/tmw/tmw4