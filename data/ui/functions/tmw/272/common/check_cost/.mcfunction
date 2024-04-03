# コストタイプ別に参照
execute unless data storage ui:temp card.cost.amount run function ui:tmw/272/common/check_cost/cost_type/old/
execute if data storage ui:temp card.cost.amount run function ui:tmw/272/common/check_cost/cost_type/new/
