-- Made by Oktay Mercan
-- lumberjackturtle a computercraft(Minecraft's mod) Lua sciript
turtle.select(1)
turtle.down(8)
while true do
-- yakit kontrol
  print(turtle.getFuelLevel())
  if turtle.getFuelLevel() <= 10 then
    if turtle.getItemCount(16) <= 1 then
     print("WARNING! Fuel level low!")
     print("Please put fuel to slot 16")
    end
  end
  turtle.select(16)
  turtle.refuel()
-- yakit kontrol sonu
-- etrafini temizleme
  turtle.turnLeft()
  turtle.suck()
  turtle.turnRight()
  turtle.turnRight()
  turtle.suck()
  turtle.turnLeft()
-- etrafini temizleme sonu
-- Envanter kontrol
  if turtle.getItemCount(1) <= 5 then
    print("Sapling check...      fail")
    print("Please put sapling to slot 1")
    return nil
  end
  if turtle.getItemCount(2) <= 3 then
    print("Bonemeal check...      fail")
    print("Please put bonemeal to slot 2")
    return nil
  end
-- Envanter kontrol sonu
  turtle.select(1)
  turtle.place()
  turtle.select(2)
  turtle.place()
  turtle.place()
  turtle.place()
  turtle.place()
  turtle.place()
    if turtle.detect() then
      turtle.dig()
      turtle.suck()
      turtle.digUp()
      turtle.suck()
      turtle.up()
    else
      for d=1,8 do
        turtle.down()
      end
    end
end
