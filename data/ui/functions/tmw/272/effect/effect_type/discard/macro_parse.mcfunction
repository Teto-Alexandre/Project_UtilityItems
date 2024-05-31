data modify storage ui:macro temp.1 set from storage ui:temp temp.effect.macro
function ui:template/macro/to_string/
data modify storage ui:temp temp.effect.macro set string storage ui:macro temp.NewString 1 -1
