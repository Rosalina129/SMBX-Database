with npc(sysval(param1))
	select case .health
		case 3
			.id = 285
		case 4
			.forecolor = rgba(255,128,128,255)
			select case .facing
				case 0
					.xsp = 4
				case 1
					.xsp = -4
			end select
		case 5
			.forecolor = rgba(255,192,192,255)
			select case .facing
				case 0
					.xsp = 2
				case 1
					.xsp = -2
			end select
		case 6
			select case .facing
				case 0
					.xsp = 1
				case 1
					.xsp = -1
			end select
	end select
end with