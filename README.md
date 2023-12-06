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

## Encoder 32 bit (encoder32.vhd)

## Linear Feedback Shift Register (LFSR.vhd)

## Clock Pre-Scaler (PreScaler.vhd)*

## Hex Display Driver (SegDecoder.vhd)

## Binary Coded Decimal Converter (BCDNum.vhd)

## Binary Coded Decimal Counter (BCDCount2.vhd)

## Mux (TT1MUX.vhd)

## T-Flip-Flop (T_FF.vhd)

## D-Flip-Flop (D_FF.vhd)


