module music1(clk, speaker);
input clk; //50  mhz clock
output speaker;

// first create a 16bit binary counter
reg [15:0] counter;
always @(posedge clk) 
	if( counter == 101214) 
		counter <= 0;
	else
		counter <= counter+1;

// and use the most significant bit (MSB) of the counter to drive the speaker
assign speaker = counter[15];
endmodule