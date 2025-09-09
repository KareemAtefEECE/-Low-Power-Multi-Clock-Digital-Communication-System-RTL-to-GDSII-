

module ASYNC_FIFO_tb();

parameter  DATA_WIDTH_TB = 8,
           PTR_WIDTH_TB = 4,
           FIFO_DEPTH_TB = 8;

    reg W_CLK;
    reg W_RST;
    reg W_INC;
    reg R_CLK;
    reg R_RST;
    reg R_INC;
    reg[DATA_WIDTH_TB-1:0] WR_DATA;
    wire[DATA_WIDTH_TB-1:0] RD_DATA;
    wire FULL;
    wire EMPTY;

    integer i;

    ASYNC_FIFO #(.DATA_WIDTH_TOP(DATA_WIDTH_TB),
                 .PTR_WIDTH_TOP(PTR_WIDTH_TB),
                 .FIFO_DEPTH_TOP(FIFO_DEPTH_TB)
                ) DUT(
                    W_CLK,
                    W_RST,
                    W_INC,
                    R_CLK,
                    R_RST,
                    R_INC,
                    WR_DATA,
                    RD_DATA,
                    FULL,
                    EMPTY
                );
    
    initial begin
        W_CLK = 1'b0;
        forever
        #5 W_CLK = ~W_CLK;
    end

    initial begin
        R_CLK = 1'b0;
        forever
        #12.5 R_CLK = ~R_CLK;
    end

    initial begin
        W_INC = 1'b0;
        R_INC = 1'b0;
        WR_DATA = 8'd0;
        W_RST = 1'b1;
        R_RST = 1'b1;
        #5
        W_RST = 1'b0;
        R_RST = 1'b0;   
        #5 
        W_RST = 1'b1;
        R_RST = 1'b1;
        W_INC = 1'b1;
    for(i=0;i<9;i=i+1) begin
        @(negedge W_CLK);
        if(!FULL)
     WR_DATA = $random;
         end
     W_INC = 1'b0;
        #200
        R_INC = 1'b1;
        #500
        $stop;
    end

//     always @ (negedge W_CLK)
//   begin
//     for(i=0;i<9;i=i+1) begin
//         if(!FULL)
//      WR_DATA = $random;
//          end
//   end

    endmodule



// module ASYNC_FIFO_tb();

//   parameter D_SIZE = 8 ;                         // data size
//   parameter A_SIZE = 3  ;                         // address size
//   parameter P_SIZE = 4  ;                         // pointer width

//   reg                    W_CLK;              // write domian operating clock
//   reg                    W_RST;             // write domian active low reset  
//   reg                    W_INC;              // write control signal 
//   reg                    R_CLK;              // read domian operating clock
//   reg                    R_RST;             // read domian active low reset 
//   reg                    R_INC;              // read control signal
//   reg   [D_SIZE-1:0]     WR_DATA;             // write data bus 
//   wire  [D_SIZE-1:0]     RD_DATA;             // read data bus
//   wire                   FULL;               // fifo full flag
//   wire                   EMPTY;              // fifo empty flag

//    //----------------------- Define testbench parameters ------------------------------

//   parameter Write_CLK_PERIOD = 10 ; // 100 MHz
//   parameter Read_CLK_PERIOD = 25 ;    // 40 MHz
   
//   parameter Write_CLK_HALF_PERIOD = Write_CLK_PERIOD/2 ;
//   parameter Read_CLK_HALF_PERIOD = Read_CLK_PERIOD/2 ;

//   integer i;


//   // burst length = 20
//   reg [D_SIZE-1:0] Burst_Words [19:0] ;

//   reg [4:0]  count ;


//   // ----------------------- initial block --------------------------------------------------

//  initial 
//     begin

//   //  $dumpfile("Async_fifo.vcd") ;    // $dumpfile is used to specify the name of the verilog dumping file, the dumping file standard name is verilog.dump
//    // $dumpvars;                       // $dumpvars is used to generate the verilog dumping file

//    // $readmemh("stimulus.txt",Burst_Words);             // read hexadeciemal values from stimulus txt file
//   //  $vcdplusmemon();                                   // Enable dumping Memories and arraies 
                   
//     $monitor ("READ DATA is %16d \n", RD_DATA);
     
//     count = 5'b0;
//     W_CLK = 1'b0 ;
//     R_CLK = 1'b0 ;
//     W_RST = 1'b1 ;
//     R_RST = 1'b1 ; 
//     W_INC = 1'b0 ;
//     R_INC = 1'b0 ;
//     #5
//     W_RST = 1'b0 ;
//     R_RST = 1'b0 ; 
//     #5
//     W_RST = 1'b1 ;
//     R_RST = 1'b1 ; 
//     W_INC = 1'b1 ;
//     R_INC = 1'b1 ;


//     #500

//      $finish  ; 
  
//    end

// always @ (negedge W_CLK)
//   begin
//     for(i=0;i<9;i=i+1) begin
//         if(!FULL)
//      WR_DATA = $random;
//          end
//   end


//    // --------------------------------- Clock generator ----------------------------------------

//    always #Write_CLK_HALF_PERIOD  W_CLK = ~W_CLK ;     // 12.5 ns period (80 MHz clock frequency) 
   
//    always #Read_CLK_HALF_PERIOD   R_CLK = ~R_CLK ;     // 20 ns period (50 MHz clock frequency) 

//    // --------------------------------- Module Instantiation ----------------------------------------

// ASYNC_FIFO 
//              DUT (
// .W_CLK(W_CLK),      
// .R_CLK(R_CLK),      
// .W_RST(W_RST),          
// .R_RST(R_RST),        
// .R_INC(R_INC),    
// .W_INC(W_INC),       
// .WR_DATA(WR_DATA),       
// .RD_DATA(RD_DATA),     
// .FULL(FULL),     
// .EMPTY(EMPTY)
// );

// endmodule