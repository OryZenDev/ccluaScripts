local args = {...}

function pos(args[1], args[2])
	workspace.TestingBox.Position = base.Position + Vector3.new(base.Size.X/2.5, 4, base.Size.Z/2.5)
end
