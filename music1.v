module music1(clk, speaker);
input clk; //50  mhz clock
output speaker;

//calculate clock divider for the A 440 note
parameter clkdivider = 50000000/440/2;

reg [14:0] counter;
always @(posedge clk) 

	if( counter == 0) 
		counter <= clkdivider - 1;
	else
		counter <= counter - 1;
		
reg speaker;

always @(posedge clk) if(counter == 0) speaker = ~speaker;
endmodule