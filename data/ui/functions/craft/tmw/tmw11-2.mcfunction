#=======================================================
#
#   Crafting Common Event
#       -by teto
#
#=======================================================

#媒体となるアイテムを削除
function ui:craft/common/del_sb

#完成品を渡す
give @s minecraft:crossbow{tmw:{id:11,type:2,enableQ:1},Enchantments:[{id:"unbreaking",lvl:1s}],Unbreakable:1b,HideFlags:7,display:{Name:'[{"text":"希望と幻想の薬弾砲","color":"#99ff99","italic":false,"bold":true}]',Lore:['[{"text":"Qでオフハンドのポーションを装填","color":"gray","italic":false}]','[{"text":"装填状態でQを押すと排出","color":"gray","italic":false}]','[{"text":"装填後は任意のタイミングで発射可能","color":"gray","italic":false}]','[{"text":"無尽蔵に複製される弾丸が尽きることはない","color":"red","italic":false}]']}}
function ui:craft/common/exp/tier5

#レシピおよび進捗消去
recipe take @s ui:tmw/tmw11-2
advancement revoke @s only ui:craft/tmw/tmw11-2