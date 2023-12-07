# Reaction-Timer
ENSC 252 Optional Project: Reaction Timer Tester
# Components
## Debouncer (Debouncer.vhd)
- Input: Main clock and Button
- Output: Debounced Button
- Usage: Every button used for input is fed through this debouncer circut
- Reason: Mechanical buttons may activate rather quickly when getting to their on and off state, this circut reduces the signals to a signal on and off
- How: The circuit throws away any signal that is not on for 50 ns (or 5 clock cycles at 10ns)
## Counter (Counter.vhd)
- Input: Enable and Clock
- Output: Counter Register
- Usage: When Enable is high, the Counter Register goes up by one every clock cycle
- Reason: We need a register to count up to sync our results together
- How: A chain of t-flip-flips with the inverse of each output being fed into the clock of the next
## Encoder (encoder32.vhd)
- Input: 3 bits
- Output: 2 encoded bits
- Usage: The state of Three switches are converted into two binary bits designating the speed of the prescaler
- Reason: We need to be able to select what speed for the prescaler
- How: Each switches state is checked from the least to the most significant, a binary 2 bit number is outputed corresponding to first switch that is found high (01, 10, 11)
## Linear Feedback Shift Register (LFSR.vhd)
- Input: Clock and reset
- Output: LFSR Register
- Usage: Creating a "random" 16 bit value
- Reason: We need a value for the user to input at to get how well they reacted
- How: A shift register with register(4, 5, 7, and 15) being xor'ed into the input of the register(0)
## Clock 3-Speed-Pre-Scaler (PreScaler.vhd)
- Input: Speed, inClock
- Output: outClock
- Usage: Creating a slower clock
- Reason: Making a section of the circut that is more usable for human interfaces
- How: Depending on the speed inputed, the circut will output a clock cycle when a counter reaches a certain value
## Clock FSM-Pre-Scaler (PreScale.vhd)
- Input: inClock
- Output: outClock
- Usage: Creating a slower clock
- Reason: Provide a slower clock to divice FSM state change by clock and prevent 2 adjacent state to change instataneously on the same input
- How: The circut will output a clock cycle when a counter reaches a certain value
## Hex Display Driver (SegDecoder.vhd)
- Input: Four bits
- Output: Seven Bits
- Usage: Input is decoded for use in a Seven-Bit Display
- Reason: The user need to know what number to react to, whose turn it is, and who has won
- How: The four input bits value are decoded into what segments need to be on for that inputs value
## Binary Coded Decimal Converter (BCDNum.vhd)
- Input: Eight bit BCD number
- Output: Binary number
- Usage: Decoding the BCD counter and LFSR output into equivalent binary numbers
- How: The 8 bit BCD number is indexed to its corresponding integer number, then outputed
## Binary Coded Decimal Counter (BCDCount2.vhd)
- Input: Enable, clock, and reset
- Output: Ones and Tens
- Usage: When Enable is high, the counter goes up by one every clock cycle and reset bit (0 to 3) and (4 to 7) seperately when they reach BCD equivalent of 9.
- Reason: Humans count in decimal and not hex, multiple hex displays are needed to count properly in decimal
- How: When the internal counter(ones) reaches 9, its next cycle will reset to 0 and clock(tens) will increment by 1. 
## Mux (TT1MUX.vhd)
- Input: Two one bit values(x1 and x2), and one bit signal(y1)
- Output: One bit signal
- Usage: The one bit signal determines the output to be one of the input signals (x1 for 0 and x2 for 1)
## T-Flip-Flop (T_FF.vhd)
- Input: One bit value and clock
- Output: One bit value
- Usage: Toggles the output bit when reciving an input and rising edge clock
## D-Flip-Flop (D_FF.vhd)
- Input: One bit value and clock
- Output: One bit value
- Usage: Sets the output bit to the inputbit on the rising edge of the clock
# Top Level Wrapper & FSM (ReactionTimerTop)
- Input: SW(17), KEY(3 downto 0), and clock_50
- Output: HEX(7 downto 0)
- Usage: Display HEX displays and reset counters based on current state determined by switch and Keys
- How: Determines state with a synchronous FSM based on input and prescaled clock_50. Toggles on internal signal appropriate to each state.
![FSM](https://github.com/Sean-Boyes/Reaction-Timer/blob/main/img/FSM.jpg?raw=true)
## Display-Winner (DW)
- Functionality: Toggle on reset of BCDCount2 and return counter to 0. Determines winner via integer subtraction between player score and target. Display winner on HEX7 and HEX6
## Initialize(Initialize)
- Functionality: Toggle off reset of BCDCount2. Display random number from LFSR and set target to LFSR output.
## Player 1 Start (P1Start)
- Functionality: Toggle on enable of BCDCount2. Display P1 on HEX2 and HEX3.
## Player 1 Stop (P1Stop)
- Functionality: Toggle off BCDCount2. Calculate Player 1 score based on current integer value of BCDCount2 value and target
## Clear (Clear)
- Functionality: Toggle on reset of BCDCount2
## Player 2 Start (P2Start)
- Functionality: Toggle off reset and toggle on enable of BCDCount2. Display P2 on HEX2 and HEX3
## Player 2 Stop (P2Stop)
- Functionality: Toggle off BCDCount2. Calculate Player 2 score based on current integer value of BCDCount2 value and target
