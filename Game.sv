module Game(output logic [3:0] keyb_row, phases, an, output logic a, b, c, d, e, f, g, dp, input logic [3:0]keyb_col, input logic start, clk, reset);
    logic delay;
    logic button;
    logic isPressed;
    logic [1:0] redundantArray1;
    logic [1:0] redundantArray2;
    logic [3:0] score;
    logic [3:0] random;
    logic [3:0] keyValue;
    logic [3:0] mappedKeyValue;
    logic [3:0] storedKeyValue;
    
    twoBitArrayReverser rev1(redundantArray1, storedKeyValue[3:2]);
    twoBitArrayReverser rev2(redundantArray2, storedKeyValue[1:0]);
    FSMKeypadStartFrequency freq1(button, isPressed | start, clk);
    FSMClockRegisterFrequency freq2(delay, button, clk);
    register regg(storedKeyValue, clk, button, random);
    scoreUpdater update(score, clk, isPressed, reset, result);
    pseudoRandomNumberGenerator rng(random, clk, reset);
    comparator imparator(result, mappedKeyValue, storedKeyValue);
    keyMap mapper(mappedKeyValue, keyValue);
    keypad4X4 keys(clk, keyb_row, keyb_col, keyValue, isPressed);
    steppermotor_wrapper moteur(clk, redundantArray2, redundantArray1, phases, delay);
    SevSeg_4digit leds(clk, 4'b0000, 4'b0000, 4'b0000, score, a, b, c, d, e, f, g, dp, an);
endmodule