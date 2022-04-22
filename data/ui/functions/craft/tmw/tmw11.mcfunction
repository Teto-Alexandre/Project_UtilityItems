#=======================================================
#
#   Crafting Common Event
#       -by teto
#
#=======================================================

#媒体となるアイテムを削除
function ui:craft/common/del_sb

#完成品を渡す
give @s minecraft:crossbow{tmw:{id:11,enableQ:1},Enchantments:[{id:"unbreaking",lvl:1s}],Unbreakable:1b,HideFlags:7,display:{Name:'[{"text":"ポーションランチャー","color":"dark_green","italic":false,"bold":true}]',Lore:['[{"text":"Qでオフハンドのポーションを装填","color":"gray","italic":false}]','[{"text":"装填後は任意のタイミングで発射可能","color":"gray","italic":false}]']}}
function ui:craft/common/exp/tier3

#レシピおよび進捗消去
recipe take @s ui:tmw/tmw11
advancement revoke @s only ui:craft/tmw/tmw11