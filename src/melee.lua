require "libs.SECL.full"
Melee = class:new()
Melee:addparent(Weapon)

Melee.type = "melee"
Melee.cooldownTimer = 0

function Melee:load(id, name, description, minDmg, maxDmg, critMultiplier, cooldown, range, specialR, specialM)
    self.id = id
    self.name = name
    self.description = description
    self.minDmg = minDmg
    self.maxDmg = maxDmg
    self.critMultiplier = critMultiplier
    self.cooldown = cooldown
    self.texture = loadImage("items", self.id)
    self.range = range
    self.specialR = specialR
    self.specialM = specialM
    --[[
        Currently, the weapon specials are still a concept and are mostly placeholder names, the functionality will be given soon enough
        My weapon specials ideas:
            Burst - 3 fast normal range attacks with additional cooldown
            Swipe - 1 fast and large area sweep but less damage and slightly increased cooldown
            Slam - 1 slow but hard hitting attack with a long cooldown
            Charge - dash in the facing direction and push the enemy away from you if hit by the dash, enemy takes small damage; if enemy hits a wall,
            or any other kind of solid surface, deal moderate damage
        Note on the cooldowns: they're not per attack, but instead set the weapon's own cooldownTimer to a given value
            (e.g: Burst sets the cooldown as either a multiplier to the base weapon speed - which wouldn't affect super fast weapons, or set it
                  to a flat value that would be the same for all weapons regardless of speed - which would also be a really bad version of
                  per-ability cooldown, I don't recommend using the flat value option)
      ]]
end

function Melee:leftClick(x, y)
end

function Melee:rightClick(x, y)
end

function Melee:middleClick(x, y)
end
