data modify storage ui:temp item set from entity @s Item.tag

data modify storage ui:temp temp.string.1 set string entity @s SelectedItem.tag.display.Name 1 -1
data modify storage ui:temp temp.string.2 set string entity @s SelectedItem.tag.cost
function ui:tmw/272/init/gen_text/name with storage ui:temp temp.string

execute if data storage ui:temp item



function ui:tmw/272/common/value/inport_text with storage ui:tmw272 temp
data modify entity @s Item.tag.display.Lore append value '["",{"text":" ▼ ","color":"gray"},{"selector":"@s"},{"text":"の"},{"storage":"ui:tmw272_text","nbt":"temp.name","interpret":true,"hoverEvent": {"action": "show_text","value":[{"storage":"ui:tmw272_text","nbt":"temp.hover","interpret":true}]}     },{"text":"は"},{"score":{"name": "$tmw272_get_value","objective": "ui_temp"}}]'



data modify entity @s Item.tag.tmw.cg set from storage ui:temp item
data modify entity @s Item.tag.tmw.type set value 1
data modify entity @s Item.tag.tmw.enableQ set value 1
data modify entity @s Item.tag.HideFlags set value 255


data remove storage ui:temp item
data remove storage ui:temp temp

{                                # <-- ここから
    cost:2,                         # マナコスト
    particle_laser:1,               # 対象にレーザーを描画
    particle_self:1001,             # 自分の演出
    particle_look:1,                # 見ている対象の演出
    effects:[                       # (効果)
        {                           #
            target_type:1,          # ターゲットの取り方
            effect_type:"damage",   # 何をするか
            var:1                   # 変化量
        },                          #
        {                           #
            target_type:2,          # ターゲットの取り方
            effect_type:"heal",     # 何をするか
            var:1                   # 変化量
        }                           #
    ]                               # <-- ここまで
}