function onUse(cid, item, frompos, item2, topos)
    if item.uid == 10010 then
        if getPlayerStorageValue(cid, 10010) == -1 then
            doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Congratulations! You have gain the quest item.")
            local bag = doPlayerAddItem(cid, 11263, 1)
            doAddContainerItem(bag, 2493, 1)
            doAddContainerItem(bag, 7464, 1)
            doAddContainerItem(bag, 2642, 1)
            setPlayerStorageValue(cid, 10010, 1)
        else
            doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Sorry, the chest is empty.")
        end
        return true
    end
end
