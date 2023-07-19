#=======================================================
#
#   Crafting Common Event
#       -by teto
#
#=======================================================

#媒体となるアイテムを削除
function ui:craft/common/del_sb

#完成品を渡す
give @p minecraft:carrot_on_a_stick{CustomModelData:111004,tmw:{id:15,type:1,ct:{Amount:60},projectile:{Spread:100,Speed:25,Range:10,FlyParticle:4,EndParticle:5,Knockback:11,DamageType:1,Break:3,Damage:60,MultiShot:1,Sound:2}},display:{Name:'{"text":"ダイヤモンドの槍","color":"white","italic":false}',Lore:['[{"text":"────────────","color":"gray","italic":false}]','[{"text":" RC:刺突 ⌚3s","color":"gray","italic":false}]','[{"text":" ⚔:6,⛏3","color":"gray","italic":false}]','[{"text":"────────────","color":"gray","italic":false}]']},AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:6,Operation:0,UUID:[I;1,1,1,1],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-3.2,Operation:0,UUID:[I;1,1,1,2],Slot:"mainhand"}],HideFlags:4}
function ui:craft/common/exp/tier1

#レシピおよび進捗消去
recipe take @s ui:vanilla/diamond_spear
advancement revoke @s only ui:craft/vanilla/diamond_spear