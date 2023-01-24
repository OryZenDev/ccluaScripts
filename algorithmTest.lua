local args = {...}

workspace.TestingBox.Position = args[1].Position + Vector3.new(args[1].Size.X/2.5, 4, args[1].Size.Z/2.5)
