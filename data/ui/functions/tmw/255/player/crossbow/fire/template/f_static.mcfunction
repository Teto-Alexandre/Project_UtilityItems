# バーストタイプのテンプレート
execute if entity @s[tag=tmw_active_temp] if score $firetime ui_temp matches 0 store result score $firetime ui_temp run time query gametime
function ui:tmw/255/player/crossbow/fire/template/calc