
ITEM.ID = 26

ITEM.Name = "Marathon Runner"

ITEM.NameColor = Color( 85, 85, 255 )

ITEM.Description = "Movement speed is increased by +%s_ when using this power-up"

ITEM.Image = "https://cdn.moat.gg/f/3860e90ff93a1fb663421ddf92fbbffa.png" 

ITEM.Rarity = 3

ITEM.Collection = "Alpha Collection"

ITEM.Stats = {

	{ min = 5, max = 15 }

}

function ITEM:OnPlayerSpawn( ply, powerup_mods )

	/*local new_speed = ply.MaxSpeed * ( 1 + ( ( self.Stats[1].min + ( ( self.Stats[1].max - self.Stats[1].min ) * powerup_mods[1] ) ) / 100 ) )

	ply:SetMaxSpeed( new_speed )

	ply:SetWalkSpeed( new_speed )

	ply:SetRunSpeed( new_speed )

	ply.MaxSpeed = new_speed*/

end