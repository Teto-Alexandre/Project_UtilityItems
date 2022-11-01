#

#
data merge storage ui:common {input:{Offer:{buy:{id:"air",Count:0b},buyB:{id:"air",Count:0b},sell:{id:"air",Count:0b},rewardExp:0b,maxUses:2147483647,uses:0}}}

#
data modify storage ui:common input.Offer.buy set from storage ui:common input.Slot1
data modify storage ui:common input.Offer.buyB set from storage ui:common input.Slot2
data modify storage ui:common input.Offer.sell set from storage ui:common input.ResSlot

#
data modify entity @s Offers.Recipes append from storage ui:common input.Offer