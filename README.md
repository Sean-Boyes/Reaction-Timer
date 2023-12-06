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
- How: A chain of t-flip-flips with the inverse of each output being fed into the clock of the next
## Encoder (encoder32.vhd)
- Input: 3 bits
- Output: 2 encoded bits
- Usage: The state of Three switches are converted into two binary bits designating the speed of the prescaler
- How: Each switches state is checked from the least to the most significant, a binary 2 bit number is outputed corresponding to first switch that is found high (01, 10, 11)
## Linear Feedback Shift Register (LFSR.vhd)
- Input: Clock and reset
- Output: LFSR Register
- Usage: Creating a "random" 16 bit value
- How: A shift register with register(4, 5, 7, and 15) being xor'ed into the input of the register(0)
## Clock Pre-Scaler (PreScaler.vhd)*

## Hex Display Driver (SegDecoder.vhd)

## Binary Coded Decimal Converter (BCDNum.vhd)

## Binary Coded Decimal Counter (BCDCount2.vhd)

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
