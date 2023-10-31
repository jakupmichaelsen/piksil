pico-8 cartridge // http://www.pico-8.com
version 41
__lua__
function _init()
	x=63
	y=63
 sprite=1
 stimer=0
 ani_speed=1
 first_frame=1
 last_frame=4
 
end
--test

function _update()

-- hey ho --

-- yoyoyo -- 

-- player movement -- 

if stimer<ani_speed then 
	stimer+=1

	else
	
		if btn(1) then
			x+=1
			if sprite<last_frame then
				sprite+=1
			else
				sprite=first_frame
		 end
		
		elseif btn(0) then
			x-=1
			if sprite<last_frame then
				sprite+=1
			else
				sprite=first_frame
		 end
		end
		
		if btn(2) then
			y-=1
			if sprite<last_frame then
				sprite+=1
			else
				sprite=first_frame
		 end
		
		elseif btn(3) then
			y+=1
			if sprite<last_frame then
				sprite+=1
			else
				sprite=first_frame
		 end
		end
		stimer=0
	end
end


function _draw()
	cls()
	spr(sprite,x,y)
end

__gfx__
00000000000000000044444000000000004444400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000000000044444000ccccc00044444000ccccc00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0070070000ccccc00cf72f2000ccccc00cf72f200000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000770000cf72f200cfffff00cf72f200cfffff00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000770000cfffff0000cc0000cfffff0000cc0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700000cc0000fcccc00000cc00000cccc000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000cccc00000cd0f000ccccf00f0dc0f00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000000000f0cd0f000c00d000f0dc00000d00c000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
__map__
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
__sfx__
00010000100500805009050120500d0500f05010050120501305014050190501c05022050270502c0502e0502f0502f0502f0502e0502d0502c0502b0502905025050220500f0501b0501b050000000000000000
