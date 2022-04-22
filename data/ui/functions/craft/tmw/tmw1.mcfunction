#=======================================================
#
#   Crafting Common Event
#       -by teto
#
#=======================================================

#媒体となるアイテムを削除
function ui:craft/common/del_sb

#完成品を渡す
give @s minecraft:wooden_sword{tmw:{is:1,id:1,enableQ:1,enableF:1},Enchantments:[{id:"unbreaking",lvl:1s}],HideFlags:3,display:{Name:'[{"text":"魔剣ティルフィング","color":"light_purple","italic":false,"bold":true}]',Lore:['[{"text":"通常攻撃: 閃刃[幻影]","color":"gray","italic":false}]','[{"text":"  周囲の敵を混乱させる","color":"gray","italic":false}]','[{"text":"Q:[","color":"gray","italic":false},{"text":"20%","color":"red","italic":false},{"text":"]: 空間移動","color":"gray","italic":false}]','[{"text":"  視線の先に転移する","color":"gray","italic":false}]','[{"text":"S+Q:[","color":"gray","italic":false},{"text":"30%","color":"red","italic":false},{"text":"]:[","color":"gray","italic":false},{"text":"3s","color":"green","italic":false},{"text":"]: 時空移動","color":"gray","italic":false}]','[{"text":"  素早く敵の後ろに転移する","color":"gray","italic":false}]','[{"text":"  対象が居ない場合は前方に転移する","color":"gray","italic":false}]','[{"text":"F: 湾曲光線","color":"gray","italic":false}]','[{"text":"  敵をロックオンする","color":"gray","italic":false}]','[{"text":"S+F:[","color":"gray","italic":false},{"text":"60%","color":"red","italic":false},{"text":"]:[","color":"gray","italic":false},{"text":"5s","color":"green","italic":false},{"text":"]: 時空切断","color":"gray","italic":false}]','[{"text":"  敵の後ろに転移し居合切りを放つ","color":"gray","italic":false}]','[{"text":"  対象が居ない場合は前方に転移する","color":"gray","italic":false}]']}}
function ui:craft/common/exp/advancement

#レシピおよび進捗消去
recipe take @s ui:tmw/tmw1
advancement revoke @s only ui:craft/tmw/tmw1