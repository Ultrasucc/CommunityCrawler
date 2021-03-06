function itemFactory(id)
    --[[
        Melee:  (id, name, description, minDmg, maxDmg, critMultiplier, cooldown, range, specialR, specialM)
        Ranged: (id, name, description, minDmg, maxDmg, critMultiplier, cooldown, bulletNum, spread, specialR, specialM)
        specialR - right click special, specialM - middle mouse button special
    ]]--
    if id == "luger" then
        local item = Ranged()
        item:load("luger", "Luger", "A WW2 German pistol.", 3, 5, 1.1, 0.2, 1, 0, "burst", "none")
        return item
    elseif id == "pocketShotgun" then
        local item = Ranged()
        item:load("pocketShotgun", "Pocket Shotgun", "A shotgun. That fits in your pocket.", 3, 5, 1.3, 1, 5, 15, "none", "none")
        return item
    elseif id == "sword" then
        local item = Melee()
        item:load("sword", "Sword", "It's a sword, it doesn't do magic tricks.", 5, 7, 1.5, 0.07, 1.3, "burst", "none")
        return item
    else
        return nil
    end
end

function entityFactory(id)
    if id == "rose" then
        local entity = Entity()
        entity.animFrames = 4
        entity.id = "rose"
        entity.hostile = true
        return entity
    elseif id == "zombie" then
        local entity = Entity()
        entity.animFrames = 4
        entity.id = "zombie"
        entity.hostile = true
        return entity
    elseif id == "skelebomber" then
        local entity = Entity()
        entity.animFrames = 4
        entity.id = "skelebomber"
        entity.hostile = true
        return entity
    elseif id == "crate" then
        local entity = Prop()
        entity.animFrames = 1
        entity.id = "crate"
        return entity
    else
        return nil
    end
end
