with npc(sysval(param1))
	.forecolor = rgba(255,0,0,255)
	.ivala = .ivala + 1
	select case .ivala
		case 160
			.ysp = -8
		case 320
			.ysp = -8
		case 480
			.ysp = -16
			.ivala = 0
	end select
	.ysp = .ysp + 0.26
	if .ysp >= 8 then
		.ysp = 8
	end if
	select case .health
		case 1
			if char(1).x < .x then
				.facing = 1
				.xsp = .xsp - 0.5
			elseif char(1).x > .x then
				.facing = 0
				.xsp = .xsp + 0.5
			end if
		case 2
			if char(1).x < .x then
				.facing = 1
				.xsp = .xsp - 0.1
			elseif char(1).x > .x then
				.facing = 0
				.xsp = .xsp + 0.1
			end if
		case 3
			if char(1).x < .x then
				.facing = 1
				.xsp = .xsp - 0.05
			elseif char(1).x > .x then
				.facing = 0
				.xsp = .xsp + 0.05
			end if
	end select
end with