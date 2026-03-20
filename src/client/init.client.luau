local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Loader = require(ReplicatedStorage.Packages["_Index"]["sleitnick_loader@2.0.0"].loader)

Loader.SpawnAll(Loader.LoadChildren(script),"Init")
