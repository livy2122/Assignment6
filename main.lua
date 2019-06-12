---Background
local sky = display.newImageRect("sky.jpg", 800, 1400)
sky.x = display.contentCenterX
sky.y = display.contentCenterY
sky.id = "sky"
----Calculate Button
local Button = display.newImageRect("JUMP.png", 200, 200)
Button.x = display.contentCenterX
Button.y = display.contentCenterY + 200
Button.id = " button"
--Answer text
local answerText = display.newText( "The value of pi is", display.contentCenterX, display.contentCenterY - 200, native.labelFont, 50 )
answerText.id = "answer text"
answerText:setFillColor( 0, 0, 0 )
---Title Text
local positiveNumber = display.newText( "Enter a positive number", display.contentCenterX, display.contentCenterY + 80, native.labelFont, 40 )
positiveNumber.id = "answer text"
positiveNumber:setFillColor( 0, 0, 0 )
----Input box
local Testfield = native.newTextField( display.contentCenterX, display.contentCenterY + -20, 330, 60 )
Testfield.id = "number textField"
-----Button function/Equation
local function ButtonTouch( event )
	local answer = 0
	local Dupe = tonumber(Testfield.text)
	local numbers = -1 

	for i = 1, Dupe, 1 do
	numbers = numbers*-1  
	answer = answer + 4/((2*i)-1)*numbers 
	answerText.text = ("Answer is ".. answer)
	end

	---Text if user inputs negative number
	if Dupe < 0 then
		answerText.text = ("Please enter a Positive Number")
	end
end

Button:addEventListener( "touch", ButtonTouch )
