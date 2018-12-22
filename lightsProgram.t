%Program name: lightsProgram
%Student names: Ekagra, McHenry
%Date: Sun May 6, 2018
%This program sends output to a parallel port connected to lights and displays the output on screen
import GUI
setscreen ("graphics:1025;600")

%declaring font
var font1 : int
font1 := Font.New ("Times New Roman:26:bold")

%declaring integer variables
var diceNum : int
var randTime : int
var randWires : int %essentially the quotient later in the program
var randomPicker : int
var xvalue : int
var remainder : int
var x, y, button : int  %used for mousewhere

%position variable for when the user wants to change output type
var position : string := "undecided"

%turns all lights on
procedure allOn
    %changing position
    position := "allOn"
    %output
    parallelput (255)
    %representing lights on screen
    drawfilloval (75, 500, 50, 50, red)
    drawfilloval (200, 500, 50, 50, red)
    drawfilloval (325, 500, 50, 50, red)
    drawfilloval (450, 500, 50, 50, red)
    drawfilloval (575, 500, 50, 50, red)
    drawfilloval (700, 500, 50, 50, red)
    drawfilloval (825, 500, 50, 50, red)
    drawfilloval (950, 500, 50, 50, red)
end allOn

%turns all lights off
procedure allOff
    %changing position
    position := "allOff"
    %output
    parallelput (0)
    %draws black ovals to represent off lights
    drawfilloval (75, 500, 49, 49, black)
    drawfilloval (200, 500, 49, 49, black)
    drawfilloval (325, 500, 49, 49, black)
    drawfilloval (450, 500, 49, 49, black)
    drawfilloval (575, 500, 49, 49, black)
    drawfilloval (700, 500, 49, 49, black)
    drawfilloval (825, 500, 49, 49, black)
    drawfilloval (950, 500, 49, 49, black)
end allOff

%turns first light on, second off, third on, fourth off etc.
procedure alternateOn
    %changing position
    position := "alternateOn"
    %output
    parallelput (85)
    %representing on and off lights on screen
    drawfilloval (75, 500, 50, 50, red)
    drawfilloval (200, 500, 49, 49, black)
    drawfilloval (325, 500, 50, 50, red)
    drawfilloval (450, 500, 49, 49, black)
    drawfilloval (575, 500, 50, 50, red)
    drawfilloval (700, 500, 49, 49, black)
    drawfilloval (825, 500, 50, 50, red)
    drawfilloval (950, 500, 49, 49, black)
end alternateOn

%picks one random light to turn on
procedure dice
    %changing position
    position := "dice"
    %picking a random number to decide on what light to turn on
    diceNum := Rand.Int (1, 8)
    %if number is 1, turn first light on
    if diceNum = 1 then
	%output to the first pin
	parallelput (1)
	drawfilloval (75, 500, 50, 50, red)
	drawfilloval (200, 500, 49, 49, black)
	drawfilloval (325, 500, 49, 49, black)
	drawfilloval (450, 500, 49, 49, black)
	drawfilloval (575, 500, 49, 49, black)
	drawfilloval (700, 500, 49, 49, black)
	drawfilloval (825, 500, 49, 49, black)
	drawfilloval (950, 500, 49, 49, black)
	%if number is 2, turn second light on
    elsif diceNum = 2 then
	%output to the second pin
	parallelput (2)
	drawfilloval (75, 500, 49, 49, black)
	drawfilloval (200, 500, 50, 50, red)
	drawfilloval (325, 500, 49, 49, black)
	drawfilloval (450, 500, 49, 49, black)
	drawfilloval (575, 500, 49, 49, black)
	drawfilloval (700, 500, 49, 49, black)
	drawfilloval (825, 500, 49, 49, black)
	drawfilloval (950, 500, 49, 49, black)
	%if number is 3 turn third light on
    elsif diceNum = 3 then
	%output to the third pin
	parallelput (4)
	drawfilloval (75, 500, 49, 49, black)
	drawfilloval (200, 500, 49, 49, black)
	drawfilloval (325, 500, 50, 50, red)
	drawfilloval (450, 500, 49, 49, black)
	drawfilloval (575, 500, 49, 49, black)
	drawfilloval (700, 500, 49, 49, black)
	drawfilloval (825, 500, 49, 49, black)
	drawfilloval (950, 500, 49, 49, black)
	%if number is 4, turn fourth light on
    elsif diceNum = 4 then
	%output to the fourth pin
	parallelput (8)
	drawfilloval (75, 500, 49, 49, black)
	drawfilloval (200, 500, 49, 49, black)
	drawfilloval (325, 500, 49, 49, black)
	drawfilloval (450, 500, 50, 50, red)
	drawfilloval (575, 500, 49, 49, black)
	drawfilloval (700, 500, 49, 49, black)
	drawfilloval (825, 500, 49, 49, black)
	drawfilloval (950, 500, 49, 49, black)
	%if number is 5, turn fifth light on
    elsif diceNum = 5 then
	%output to the fifth pin
	parallelput (16)
	drawfilloval (75, 500, 49, 49, black)
	drawfilloval (200, 500, 49, 49, black)
	drawfilloval (325, 500, 49, 49, black)
	drawfilloval (450, 500, 49, 49, black)
	drawfilloval (575, 500, 50, 50, red)
	drawfilloval (700, 500, 49, 49, black)
	drawfilloval (825, 500, 49, 49, black)
	drawfilloval (950, 500, 49, 49, black)
	%if number is 6, turn sixth light on
    elsif diceNum = 6 then
	%output to the sixth pin
	parallelput (32)
	drawfilloval (75, 500, 49, 49, black)
	drawfilloval (200, 500, 49, 49, black)
	drawfilloval (325, 500, 49, 49, black)
	drawfilloval (450, 500, 49, 49, black)
	drawfilloval (575, 500, 49, 49, black)
	drawfilloval (700, 500, 50, 50, red)
	drawfilloval (825, 500, 49, 49, black)
	drawfilloval (950, 500, 49, 49, black)
	%if number is 7, turn seventh light on
    elsif diceNum = 7 then
	%output to the seventh pin
	parallelput (64)
	drawfilloval (75, 500, 49, 49, black)
	drawfilloval (200, 500, 49, 49, black)
	drawfilloval (325, 500, 49, 49, black)
	drawfilloval (450, 500, 49, 49, black)
	drawfilloval (575, 500, 49, 49, black)
	drawfilloval (700, 500, 49, 49, black)
	drawfilloval (825, 500, 50, 50, red)
	drawfilloval (950, 500, 49, 49, black)
	%turn eighth light on otherwise
    else
	%output to the eighth pin
	parallelput (128)
	drawfilloval (75, 500, 49, 49, black)
	drawfilloval (200, 500, 49, 49, black)
	drawfilloval (325, 500, 49, 49, black)
	drawfilloval (450, 500, 49, 49, black)
	drawfilloval (575, 500, 49, 49, black)
	drawfilloval (700, 500, 49, 49, black)
	drawfilloval (825, 500, 49, 49, black)
	drawfilloval (950, 500, 50, 50, red)
    end if
end dice

%same as alternateOn, but inverts them
process alternateFlash
    %changes position
    position := "alternateFlash"
    loop
	%output
	parallelput (85)
	%displays lights on screen
	drawfilloval (75, 500, 50, 50, red)
	drawfilloval (200, 500, 49, 49, black)
	drawfilloval (325, 500, 50, 50, red)
	drawfilloval (450, 500, 49, 49, black)
	drawfilloval (575, 500, 50, 50, red)
	drawfilloval (700, 500, 49, 49, black)
	drawfilloval (825, 500, 50, 50, red)
	drawfilloval (950, 500, 49, 49, black)
	%if position changes, meaning user clicks something else, stop the program
	if position not= "alternateFlash" then
	    exit
	end if
	%wait for half a second
	delay (500)
	%output
	parallelput (170)
	%display on screen
	drawfilloval (75, 500, 49, 49, black)
	drawfilloval (200, 500, 50, 50, red)
	drawfilloval (325, 500, 49, 49, black)
	drawfilloval (450, 500, 50, 50, red)
	drawfilloval (575, 500, 49, 49, black)
	drawfilloval (700, 500, 50, 50, red)
	drawfilloval (825, 500, 49, 49, black)
	drawfilloval (950, 500, 50, 50, red)
	%if position changes, meaning user clicks something else, stop the program
	if position not= "alternateFlash" then
	    exit
	end if
	%wait for half a second
	delay (500)
    end loop
end alternateFlash

%waves the lights back and forth
process wave
    %changes the position
    position := "wave"
    loop
	parallelput (1)
	%displays lights on screen
	drawfilloval (75, 500, 50, 50, red)
	drawfilloval (200, 500, 49, 49, black)
	drawfilloval (325, 500, 49, 49, black)
	drawfilloval (450, 500, 49, 49, black)
	drawfilloval (575, 500, 49, 49, black)
	drawfilloval (700, 500, 49, 49, black)
	drawfilloval (825, 500, 49, 49, black)
	drawfilloval (950, 500, 49, 49, black)
	%if position changes, meaning user clicks something else, stop the program
	if position not= "wave" then
	    exit
	end if
	%wait
	delay (200)
	parallelput (2)
	drawfilloval (75, 500, 49, 49, black)
	drawfilloval (200, 500, 50, 50, red)
	drawfilloval (325, 500, 49, 49, black)
	drawfilloval (450, 500, 49, 49, black)
	drawfilloval (575, 500, 49, 49, black)
	drawfilloval (700, 500, 49, 49, black)
	drawfilloval (825, 500, 49, 49, black)
	drawfilloval (950, 500, 49, 49, black)
	%if position changes, meaning user clicks something else, stop the program
	if position not= "wave" then
	    exit
	end if
	%wait
	delay (200)
	parallelput (4)
	drawfilloval (75, 500, 49, 49, black)
	drawfilloval (200, 500, 49, 49, black)
	drawfilloval (325, 500, 50, 50, red)
	drawfilloval (450, 500, 49, 49, black)
	drawfilloval (575, 500, 49, 49, black)
	drawfilloval (700, 500, 49, 49, black)
	drawfilloval (825, 500, 49, 49, black)
	drawfilloval (950, 500, 49, 49, black)
	%if position changes, meaning user clicks something else, stop the program
	if position not= "wave" then
	    exit
	end if
	%wait
	delay (200)
	parallelput (8)
	drawfilloval (75, 500, 49, 49, black)
	drawfilloval (200, 500, 49, 49, black)
	drawfilloval (325, 500, 49, 49, black)
	drawfilloval (450, 500, 50, 50, red)
	drawfilloval (575, 500, 49, 49, black)
	drawfilloval (700, 500, 49, 49, black)
	drawfilloval (825, 500, 49, 49, black)
	drawfilloval (950, 500, 49, 49, black)
	%if position changes, meaning user clicks something else, stop the program
	if position not= "wave" then
	    exit
	end if
	%wait
	delay (200)
	parallelput (16)
	drawfilloval (75, 500, 49, 49, black)
	drawfilloval (200, 500, 49, 49, black)
	drawfilloval (325, 500, 49, 49, black)
	drawfilloval (450, 500, 49, 49, black)
	drawfilloval (575, 500, 50, 50, red)
	drawfilloval (700, 500, 49, 49, black)
	drawfilloval (825, 500, 49, 49, black)
	drawfilloval (950, 500, 49, 49, black)
	%if position changes, meaning user clicks something else, stop the program
	if position not= "wave" then
	    exit
	end if
	%wait
	delay (200)
	parallelput (32)
	drawfilloval (75, 500, 49, 49, black)
	drawfilloval (200, 500, 49, 49, black)
	drawfilloval (325, 500, 49, 49, black)
	drawfilloval (450, 500, 49, 49, black)
	drawfilloval (575, 500, 49, 49, black)
	drawfilloval (700, 500, 50, 50, red)
	drawfilloval (825, 500, 49, 49, black)
	drawfilloval (950, 500, 49, 49, black)
	%if position changes, meaning user clicks something else, stop the program
	if position not= "wave" then
	    exit
	end if
	%wait
	delay (200)
	parallelput (64)
	drawfilloval (75, 500, 49, 49, black)
	drawfilloval (200, 500, 49, 49, black)
	drawfilloval (325, 500, 49, 49, black)
	drawfilloval (450, 500, 49, 49, black)
	drawfilloval (575, 500, 49, 49, black)
	drawfilloval (700, 500, 49, 49, black)
	drawfilloval (825, 500, 50, 50, red)
	drawfilloval (950, 500, 49, 49, black)
	%if position changes, meaning user clicks something else, stop the program
	if position not= "wave" then
	    exit
	end if
	%wait
	delay (200)
	parallelput (128)
	drawfilloval (75, 500, 49, 49, black)
	drawfilloval (200, 500, 49, 49, black)
	drawfilloval (325, 500, 49, 49, black)
	drawfilloval (450, 500, 49, 49, black)
	drawfilloval (575, 500, 49, 49, black)
	drawfilloval (700, 500, 49, 49, black)
	drawfilloval (825, 500, 49, 49, black)
	drawfilloval (950, 500, 50, 50, red)
	%if position changes, meaning user clicks something else, stop the program
	if position not= "wave" then
	    exit
	end if
	%wait
	delay (200)
	parallelput (64)
	drawfilloval (75, 500, 49, 49, black)
	drawfilloval (200, 500, 49, 49, black)
	drawfilloval (325, 500, 49, 49, black)
	drawfilloval (450, 500, 49, 49, black)
	drawfilloval (575, 500, 49, 49, black)
	drawfilloval (700, 500, 49, 49, black)
	drawfilloval (825, 500, 50, 50, red)
	drawfilloval (950, 500, 49, 49, black)
	%if position changes, meaning user clicks something else, stop the program
	if position not= "wave" then
	    exit
	end if
	%wait
	delay (200)
	parallelput (32)
	drawfilloval (75, 500, 49, 49, black)
	drawfilloval (200, 500, 49, 49, black)
	drawfilloval (325, 500, 49, 49, black)
	drawfilloval (450, 500, 49, 49, black)
	drawfilloval (575, 500, 49, 49, black)
	drawfilloval (700, 500, 50, 50, red)
	drawfilloval (825, 500, 49, 49, black)
	drawfilloval (950, 500, 49, 49, black)
	%if position changes, meaning user clicks something else, stop the program
	if position not= "wave" then
	    exit
	end if
	%wait
	delay (200)
	parallelput (16)
	drawfilloval (75, 500, 49, 49, black)
	drawfilloval (200, 500, 49, 49, black)
	drawfilloval (325, 500, 49, 49, black)
	drawfilloval (450, 500, 49, 49, black)
	drawfilloval (575, 500, 50, 50, red)
	drawfilloval (700, 500, 49, 49, black)
	drawfilloval (825, 500, 49, 49, black)
	drawfilloval (950, 500, 49, 49, black)
	%if position changes, meaning user clicks something else, stop the program
	if position not= "wave" then
	    exit
	end if
	%wait
	delay (200)
	parallelput (8)
	drawfilloval (75, 500, 49, 49, black)
	drawfilloval (200, 500, 49, 49, black)
	drawfilloval (325, 500, 49, 49, black)
	drawfilloval (450, 500, 50, 50, red)
	drawfilloval (575, 500, 49, 49, black)
	drawfilloval (700, 500, 49, 49, black)
	drawfilloval (825, 500, 49, 49, black)
	drawfilloval (950, 500, 49, 49, black)
	%if position changes, meaning user clicks something else, stop the program
	if position not= "wave" then
	    exit
	end if
	%wait
	delay (200)
	parallelput (4)
	drawfilloval (75, 500, 49, 49, black)
	drawfilloval (200, 500, 49, 49, black)
	drawfilloval (325, 500, 50, 50, red)
	drawfilloval (450, 500, 49, 49, black)
	drawfilloval (575, 500, 49, 49, black)
	drawfilloval (700, 500, 49, 49, black)
	drawfilloval (825, 500, 49, 49, black)
	drawfilloval (950, 500, 49, 49, black)
	%if position changes, meaning user clicks something else, stop the program
	if position not= "wave" then
	    exit
	end if
	%wait
	delay (200)
	parallelput (2)
	drawfilloval (75, 500, 49, 49, black)
	drawfilloval (200, 500, 50, 50, red)
	drawfilloval (325, 500, 49, 49, black)
	drawfilloval (450, 500, 49, 49, black)
	drawfilloval (575, 500, 49, 49, black)
	drawfilloval (700, 500, 49, 49, black)
	drawfilloval (825, 500, 49, 49, black)
	drawfilloval (950, 500, 49, 49, black)
	%if position changes, meaning user clicks something else, stop the program
	if position not= "wave" then
	    exit
	end if
	%wait
	delay (200)
    end loop
end wave

%starts at the ends and closes in repeatedly
process centerIn
    %changes position
    position := "centerIn"
    loop
	%displays on screen
	drawfilloval (75, 500, 50, 50, red)
	drawfilloval (200, 500, 49, 49, black)
	drawfilloval (325, 500, 49, 49, black)
	drawfilloval (450, 500, 49, 49, black)
	drawfilloval (575, 500, 49, 49, black)
	drawfilloval (700, 500, 49, 49, black)
	drawfilloval (825, 500, 49, 49, black)
	drawfilloval (950, 500, 50, 50, red)
	parallelput (129)
	%if position changes, meaning user clicks something else, stop the program
	if position not= "centerIn" then
	    exit
	end if
	delay (200)
	drawfilloval (75, 500, 49, 49, black)
	drawfilloval (200, 500, 50, 50, red)
	drawfilloval (325, 500, 49, 49, black)
	drawfilloval (450, 500, 49, 49, black)
	drawfilloval (575, 500, 49, 49, black)
	drawfilloval (700, 500, 49, 49, black)
	drawfilloval (825, 500, 50, 50, red)
	drawfilloval (950, 500, 49, 49, black)
	parallelput (66)
	%if position changes, meaning user clicks something else, stop the program
	if position not= "centerIn" then
	    exit
	end if
	delay (200)
	drawfilloval (75, 500, 49, 49, black)
	drawfilloval (200, 500, 49, 49, black)
	drawfilloval (325, 500, 50, 50, red)
	drawfilloval (450, 500, 49, 49, black)
	drawfilloval (575, 500, 49, 49, black)
	drawfilloval (700, 500, 50, 50, red)
	drawfilloval (825, 500, 49, 49, black)
	drawfilloval (950, 500, 49, 49, black)
	parallelput (36)
	%if position changes, meaning user clicks something else, stop the program
	if position not= "centerIn" then
	    exit
	end if
	delay (200)
	drawfilloval (75, 500, 49, 49, black)
	drawfilloval (200, 500, 49, 49, black)
	drawfilloval (325, 500, 49, 49, black)
	drawfilloval (450, 500, 50, 50, red)
	drawfilloval (575, 500, 50, 50, red)
	drawfilloval (700, 500, 49, 49, black)
	drawfilloval (825, 500, 49, 49, black)
	drawfilloval (950, 500, 49, 49, black)
	parallelput (24)
	%if position changes, meaning user clicks something else, stop the program
	if position not= "centerIn" then
	    exit
	end if
	%wait
	delay (200)
    end loop
end centerIn

%program picks random delays and random lights to turn on
process psychedelic
    %changes position
    position := "psychedelic"
    loop
	%the max x value for the circles
	xvalue := 950
	%picking random times and random wires every time the loop runs
	randTime := Rand.Int (1, 300)
	randWires := Rand.Int (0, 255)
	%output
	parallelput (randWires)
	%if position changes, meaning user clicks something else, stop the program
	if position not= "psychedelic" then
	    exit
	end if
	%loop that runs 8 times, once for checking each light
	for light : 1 .. 8
	    %gets the remainder of the random output number (0-255) to see if it's odd or even
	    remainder := randWires mod 2
	    %if position changes, meaning user clicks something else, stop the program
	    if position not= "psychedelic" then
		exit
	    end if
	    %if it's odd
	    if remainder = 1 then
		drawfilloval (xvalue, 500, 50, 50, red)
		%otherwise
	    else
		drawfilloval (xvalue, 500, 49, 49, black)
	    end if
	    %if position changes, meaning user clicks something else, stop the program
	    if position not= "psychedelic" then
		exit
	    end if
	    %red outline
	    drawoval (xvalue, 500, 50, 50, red)
	    randWires := randWires div 2
	    %decreases x value for circles by the amount they're separated by
	    xvalue := xvalue - 125
	end for
	%if position changes, meaning user clicks something else, stop the program
	if position not= "psychedelic" then
	    exit
	end if
	%wait a random amount of time
	delay (randTime)
    end loop
end psychedelic

%flashes lights
process flash
    %changes position
    position := "flash"
    loop
	%output, turns lights off
	parallelput (0)
	drawfilloval (75, 500, 49, 49, black)
	drawfilloval (200, 500, 49, 49, black)
	drawfilloval (325, 500, 49, 49, black)
	drawfilloval (450, 500, 49, 49, black)
	drawfilloval (575, 500, 49, 49, black)
	drawfilloval (700, 500, 49, 49, black)
	drawfilloval (825, 500, 49, 49, black)
	drawfilloval (950, 500, 49, 49, black)
	%if position changes, meaning user clicks something else, stop the program
	if position not= "flash" then
	    exit
	end if
	%wait
	delay (500)
	%all lights on
	parallelput (255)
	drawfilloval (75, 500, 50, 50, red)
	drawfilloval (200, 500, 50, 50, red)
	drawfilloval (325, 500, 50, 50, red)
	drawfilloval (450, 500, 50, 50, red)
	drawfilloval (575, 500, 50, 50, red)
	drawfilloval (700, 500, 50, 50, red)
	drawfilloval (825, 500, 50, 50, red)
	drawfilloval (950, 500, 50, 50, red)
	%if position changes, meaning user clicks something else, stop the program
	if position not= "flash" then
	    exit
	end if
	%wait
	delay (500)
    end loop
end flash

%this procedure randomly picks one of the output types, it doesn't randomly turn lights on or off
procedure random
    %changes position
    position := "random"
    %picks random number
    randomPicker := Rand.Int (1, 8)
    %each random number corresponds to a method from above. it excludes itself and the allOff procedure
    if randomPicker = 1 then
	allOn
    elsif randomPicker = 2 then
	alternateOn
    elsif randomPicker = 3 then
	dice
    elsif randomPicker = 4 then
	fork alternateFlash
    elsif randomPicker = 5 then
	fork wave
    elsif randomPicker = 6 then
	fork psychedelic
    else
	fork centerIn
    end if
end random

%declaring main procedure
forward proc main

%main screen
body proc main
    parallelput (0)
    %background color
    GUI.SetBackgroundColor (black)
    %draws outlines for ovals
    drawoval (75, 500, 50, 50, red)
    drawoval (200, 500, 50, 50, red)
    drawoval (325, 500, 50, 50, red)
    drawoval (450, 500, 50, 50, red)
    drawoval (575, 500, 50, 50, red)
    drawoval (700, 500, 50, 50, red)
    drawoval (825, 500, 50, 50, red)
    drawoval (950, 500, 50, 50, red)
    %draws boxes and the text inside them
    drawbox (13, 25, 213, 125, red)
    Font.Draw ("All On", 58, 65, font1, red)
    drawbox (13, 125, 213, 225, red)
    Font.Draw ("All Off", 53, 165, font1, red)
    drawbox (213, 25, 413, 125, red)
    Font.Draw ("Flash", 268, 65, font1, red)
    drawbox (213, 125, 413, 225, red)
    Font.Draw ("Alternate On", 214, 165, font1, red)
    drawbox (413, 25, 613, 125, red)
    Font.Draw ("Alternate", 440, 85, font1, red)
    Font.Draw ("Flash", 471, 50, font1, red)
    drawbox (413, 125, 613, 225, red)
    Font.Draw ("Wave", 468, 165, font1, red)
    drawbox (613, 25, 813, 125, red)
    Font.Draw ("Center In", 638, 65, font1, red)
    drawbox (613, 125, 813, 225, red)
    Font.Draw ("Psychedelic", 630, 165, font1, red)
    drawbox (813, 25, 1013, 125, red)
    Font.Draw ("Dice", 873, 65, font1, red)
    drawbox (813, 125, 1013, 225, red)
    Font.Draw ("Random", 847, 165, font1, red)
    loop
	%checks for mouse location
	mousewhere (x, y, button)
	%checks if the mouse is hovering over, clicked, or not over the button at all. if the mouse is hovering over, it rewrites in a different color, if clicked, it calls a procedure/process
	if x > 13 and x < 213 and y > 25 and y < 125 and button = 0 then
	    drawbox (13, 25, 213, 125, green)
	    Font.Draw ("All On", 58, 65, font1, green)
	elsif x > 13 and x < 213 and y > 25 and y < 125 and button = 1 then
	    allOn
	else
	    drawbox (13, 25, 213, 125, red)
	    Font.Draw ("All On", 58, 65, font1, red)
	end if
	%checks if the mouse is hovering over, clicked, or not over the button at all. if the mouse is hovering over, it rewrites in a different color, if clicked, it calls a procedure/process
	if x > 13 and x < 213 and y > 125 and y < 225 and button = 0 then
	    drawbox (13, 125, 213, 225, green)
	    Font.Draw ("All Off", 53, 165, font1, green)
	elsif x > 13 and x < 213 and y > 125 and y < 225 and button = 1 then
	    allOff
	else
	    drawbox (13, 125, 213, 225, red)
	    Font.Draw ("All Off", 53, 165, font1, red)
	end if
	%checks if the mouse is hovering over, clicked, or not over the button at all. if the mouse is hovering over, it rewrites in a different color, if clicked, it calls a procedure/process
	if x > 213 and x < 413 and y > 25 and y < 125 and button = 0 then
	    drawbox (213, 25, 413, 125, green)
	    Font.Draw ("Flash", 268, 65, font1, green)
	elsif x > 213 and x < 413 and y > 25 and y < 125 and button = 1 then
	    fork flash
	else
	    drawbox (213, 25, 413, 125, red)
	    Font.Draw ("Flash", 268, 65, font1, red)
	end if
	%checks if the mouse is hovering over, clicked, or not over the button at all. if the mouse is hovering over, it rewrites in a different color, if clicked, it calls a procedure/process
	if x > 213 and x < 413 and y > 125 and y < 225 and button = 0 then
	    drawbox (213, 125, 413, 225, green)
	    Font.Draw ("Alternate On", 214, 165, font1, green)
	elsif x > 213 and x < 413 and y > 125 and y < 225 and button = 1 then
	    alternateOn
	else
	    drawbox (213, 125, 413, 225, red)
	    Font.Draw ("Alternate On", 214, 165, font1, red)
	end if
	%checks if the mouse is hovering over, clicked, or not over the button at all. if the mouse is hovering over, it rewrites in a different color, if clicked, it calls a procedure/process
	if x > 413 and x < 613 and y > 25 and y < 125 and button = 0 then
	    drawbox (413, 25, 613, 125, green)
	    Font.Draw ("Alternate", 440, 85, font1, green)
	    Font.Draw ("Flash", 471, 50, font1, green)
	elsif x > 413 and x < 613 and y > 25 and y < 125 and button = 1 then
	    fork alternateFlash
	else
	    drawbox (413, 25, 613, 125, red)
	    Font.Draw ("Alternate", 440, 85, font1, red)
	    Font.Draw ("Flash", 471, 50, font1, red)
	end if
	%checks if the mouse is hovering over, clicked, or not over the button at all. if the mouse is hovering over, it rewrites in a different color, if clicked, it calls a procedure/process
	if x > 413 and x < 613 and y > 125 and y < 225 and button = 0 then
	    drawbox (413, 125, 613, 225, green)
	    Font.Draw ("Wave", 468, 165, font1, green)
	elsif x > 413 and x < 613 and y > 125 and y < 225 and button = 1 then
	    fork wave
	else
	    drawbox (413, 125, 613, 225, red)
	    Font.Draw ("Wave", 468, 165, font1, red)
	end if
	%checks if the mouse is hovering over, clicked, or not over the button at all. if the mouse is hovering over, it rewrites in a different color, if clicked, it calls a procedure/process
	if x > 613 and x < 813 and y > 25 and y < 125 and button = 0 then
	    drawbox (613, 25, 813, 125, green)
	    Font.Draw ("Center In", 638, 65, font1, green)
	elsif x > 613 and x < 813 and y > 25 and y < 125 and button = 1 then
	    fork centerIn
	else
	    drawbox (613, 25, 813, 125, red)
	    Font.Draw ("Center In", 638, 65, font1, red)
	end if
	%checks if the mouse is hovering over, clicked, or not over the button at all. if the mouse is hovering over, it rewrites in a different color, if clicked, it calls a procedure/process
	if x > 613 and x < 813 and y > 125 and y < 225 and button = 0 then
	    drawbox (613, 125, 813, 225, green)
	    Font.Draw ("Psychedelic", 630, 165, font1, green)
	elsif x > 613 and x < 813 and y > 125 and y < 225 and button = 1 then
	    delay (150)%the delay is so that the button isnt accidentally clicked multiple times 
	    fork psychedelic
	else
	    drawbox (613, 125, 813, 225, red)
	    Font.Draw ("Psychedelic", 630, 165, font1, red)
	end if
	%checks if the mouse is hovering over, clicked, or not over the button at all. if the mouse is hovering over, it rewrites in a different color, if clicked, it calls a procedure/process
	if x > 813 and x < 1013 and y > 25 and y < 125 and button = 0 then
	    drawbox (813, 25, 1013, 125, green)
	    Font.Draw ("Dice", 873, 65, font1, green)
	elsif x > 813 and x < 1013 and y > 25 and y < 125 and button = 1 then
	    delay (150)     %the delay is there because if someone holds down the right click for more than a split second the program runs "dice" more than once
	    dice
	else
	    drawbox (813, 25, 1013, 125, red)
	    Font.Draw ("Dice", 873, 65, font1, red)
	end if
	%checks if the mouse is hovering over, clicked, or not over the button at all. if the mouse is hovering over, it rewrites in a different color, if clicked, it calls a procedure/process
	if x > 813 and x < 1013 and y > 125 and y < 225 and button = 0 then
	    drawbox (813, 125, 1013, 225, green)
	    Font.Draw ("Random", 847, 165, font1, green)
	elsif x > 813 and x < 1013 and y > 125 and y < 225 and button = 1 then
	    delay (150)
	    random
	else
	    drawbox (813, 125, 1013, 225, red)
	    Font.Draw ("Random", 847, 165, font1, red)
	end if
    end loop
end main

%runs the main procedure
main
