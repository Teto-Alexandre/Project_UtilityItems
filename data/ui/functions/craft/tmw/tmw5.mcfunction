#=======================================================
#
#   Crafting Common Event
#       -by teto
#
#=======================================================

#媒体となるアイテムを削除
function ui:craft/common/del_sb

#完成品を渡す
give @s minecraft:wooden_sword{tmw:{is:1,id:5,enableQ:1,enableF:1},Enchantments:[{id:"unbreaking",lvl:1s}],HideFlags:3,display:{Name:'[{"text":"魔剣トルニクス","color":"yellow","italic":false,"bold":true}]',Lore:['[{"text":"通常攻撃:[","color":"gray","italic":false},{"text":"5%","color":"red","italic":false},{"text":"]: 閃刃[雷撃]","color":"gray","italic":false}]','[{"text":"  防具貫通の大ダメージ","color":"gray","italic":false}]','[{"text":"Q:[","color":"gray","italic":false},{"text":"10%","color":"red","italic":false},{"text":"]: 閃光","color":"gray","italic":false}]','[{"text":"  前方にダメージのある突撃","color":"gray","italic":false}]','[{"text":"S+Q:[","color":"gray","italic":false},{"text":"20%","color":"red","italic":false},{"text":"]: 電光石火","color":"gray","italic":false}]','[{"text":"  短時間身体能力を引き上げる","color":"gray","italic":false}]','[{"text":"F:[","color":"gray","italic":false},{"text":"30%","color":"red","italic":false},{"text":"]: 電磁砲","color":"gray","italic":false}]','[{"text":"  壁を貫通する長距離光線弾","color":"gray","italic":false}]']}}
function ui:craft/common/exp/advancement

#レシピおよび進捗消去
recipe take @s ui:tmw/tmw5
advancement revoke @s only ui:craft/tmw/tmw5