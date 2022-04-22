#=======================================================
#
#   Crafting Common Event
#       -by teto
#
#=======================================================

#媒体となるアイテムを削除
function ui:craft/common/del_sb

#完成品を渡す
give @s minecraft:stone_axe{Unbreakable:1b,tmw:{is:1,id:8,type:2,enableQ:1},HideFlags:7,display:{Name:'[{"text":"可変ツール[斧モード]","color":"gold","italic":false,"bold":true}]',Lore:['[{"text":"Q: ツルハシモードに変更","color":"gray","italic":false}]','[{"text":"S+Q: KOモードに変更","color":"gray","italic":false}]']}}
function ui:craft/common/exp/tier3

#レシピおよび進捗消去
recipe take @s ui:tmw/tmw8
advancement revoke @s only ui:craft/tmw/tmw8