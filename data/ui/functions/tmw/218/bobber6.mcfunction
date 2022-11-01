#=======================================================================================

data merge storage ui:common {input:{Mode:"dist"}}
execute at @p[scores={ui_tmw_id=218}] run function ui:common/distance
title @p[scores={ui_tmw_id=218}] title [{"score":{"name":"$Return","objective":"ui_temp"}},{"text":"                   "}]
title @p[scores={ui_tmw_id=218}] times 0 5 0

#=======================================================================================