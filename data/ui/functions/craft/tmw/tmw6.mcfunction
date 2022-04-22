#=======================================================
#
#   Crafting Common Event
#       -by teto
#
#=======================================================

#媒体となるアイテムを削除
function ui:craft/common/del_sb

#完成品を渡す
give @s minecraft:wooden_sword{tmw:{is:1,id:6,enableQ:1,enableF:1},Enchantments:[{id:"unbreaking",lvl:1s}],HideFlags:3,display:{Name:'[{"text":"魔剣ウィンディア","color":"green","italic":false,"bold":true}]',Lore:['[{"text":"通常攻撃:[","color":"gray","italic":false},{"text":"5%","color":"red","italic":false},{"text":"]: 閃刃[風華]","color":"gray","italic":false}]','[{"text":"  敵を浮遊させる","color":"gray","italic":false}]','[{"text":"Q:[","color":"gray","italic":false},{"text":"10%","color":"red","italic":false},{"text":"]: 風力緩衝","color":"gray","italic":false}]','[{"text":"  落下速度を落とし安全に着地する","color":"gray","italic":false}]','[{"text":"S+Q:[","color":"gray","italic":false},{"text":"40%","color":"red","italic":false},{"text":"]: 旋空刃","color":"gray","italic":false}]','[{"text":"  高威力の竜巻を放つ","color":"gray","italic":false}]','[{"text":"F:[","color":"gray","italic":false},{"text":"10%","color":"red","italic":false},{"text":"]: 飛翔","color":"gray","italic":false}]','[{"text":"  その場で飛び上がる","color":"gray","italic":false}]']}}
function ui:craft/common/exp/advancement

#レシピおよび進捗消去
recipe take @s ui:tmw/tmw6
advancement revoke @s only ui:craft/tmw/tmw6