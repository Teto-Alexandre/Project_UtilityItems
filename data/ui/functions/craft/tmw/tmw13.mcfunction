#=======================================================
#
#   Crafting Common Event
#       -by teto
#
#=======================================================

#媒体となるアイテムを削除
function ui:craft/common/del_sb

#完成品を渡す
give @s minecraft:wooden_sword{tmw:{is:1,id:13,enableQ:1,enableF:1},Enchantments:[{id:"unbreaking",lvl:1s}],HideFlags:3,display:{Name:'[{"text":"魔剣カラドボルグ","color":"yellow","italic":false,"bold":true}]',Lore:['[{"text":"通常攻撃: 閃刃[加速]","color":"gray","italic":false}]','[{"text":"  短時間攻撃速度上昇","color":"gray","italic":false}]','[{"text":"Q:[","color":"gray","italic":false},{"text":"5%","color":"red","italic":false},{"text":"]: 光鎖","color":"gray","italic":false}]','[{"text":"  壁に鎖を突き刺して移動する","color":"gray","italic":false}]','[{"text":"S+Q:[","color":"gray","italic":false},{"text":"5%","color":"red","italic":false},{"text":"]: 電気パルス","color":"gray","italic":false}]','[{"text":"  めまいを引き起こす","color":"gray","italic":false}]','[{"text":"F:[","color":"gray","italic":false},{"text":"10%","color":"red","italic":false},{"text":"]: スタンボルト","color":"gray","italic":false}]','[{"text":"  壁を貫通する光線弾","color":"gray","italic":false}]']}}
function ui:craft/common/exp/tier4

#レシピおよび進捗消去
recipe take @s ui:tmw/tmw13
advancement revoke @s only ui:craft/tmw/tmw13