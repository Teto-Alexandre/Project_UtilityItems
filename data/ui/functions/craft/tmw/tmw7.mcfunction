#=======================================================
#
#   Crafting Common Event
#       -by teto
#
#=======================================================

#媒体となるアイテムを削除
function ui:craft/common/del_sb

#完成品を渡す
give @s minecraft:stone_sword{Unbreakable:1b,tmw:{is:1,id:7,enableQ:1},Enchantments:[{id:"unbreaking",lvl:1s}],HideFlags:7,display:{Name:'[{"text":"量産型トルニクス","color":"#cccc33","italic":false,"bold":true}]',Lore:['[{"text":"Q:[","color":"gray","italic":false},{"text":"10%","color":"red","italic":false},{"text":"]: 風化した閃光","color":"gray","italic":false}]','[{"text":"  前方にダメージのない短距離跳躍","color":"gray","italic":false}]']}}
function ui:craft/common/exp/tier3

#レシピおよび進捗消去
recipe take @s ui:tmw/tmw7
advancement revoke @s only ui:craft/tmw/tmw7