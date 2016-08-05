
local Mission = MISSION:New( "Pickup Cargo", "High", "Test for Cargo Pickup", coalition.side.RED )

local CargoEngineer = UNIT:FindByName( "Engineer" )
local InfantryCargo = CARGO_UNIT:New( Mission, CargoEngineer, "Engineer", "Engineer Sven", "81", 2000, 25 )

local CargoCarrier = UNIT:FindByName( "Carrier" )

-- This will Load the Cargo into the Carrier, regardless where the Cargo is.
InfantryCargo:Load( CargoCarrier )

-- This will Unboard the Cargo from the Carrier.
-- The Cargo will run from the Carrier to a point in the NearRadius around the Carrier.
InfantryCargo:UnBoard( CargoCarrier, 10 )