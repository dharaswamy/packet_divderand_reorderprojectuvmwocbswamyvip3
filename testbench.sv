
// Eda link :  https://edaplayground.com/x/nEAV

// ( swamy ) please copy the code but don't change/modify the code here.




//======================================================================================================================

// project name:packet_divider_and reorder logic 
// Description:  this project have 3 agents ,1.register agent,2.transmit_agent,3.recieve_agent.
// but this third vip3(recieve_agent) for recieving the packet from the outside in this project.
// IN this environment have scoreboard ,just for the samples sending from monitor to the scoreboard.


//======================================================================================================================

`include "uvm_macros.svh"
import uvm_pkg::*;

`include "pkt_dvdr_rx_intf.sv"
`include "pkt_dvdr_rx_seq_item.sv"


module tb_top_pkt_dvdr_rx;
  
  pkt_dvdr_rx_seq_item rx_item =new();
  initial begin
    repeat(10) begin
      rx_item.randomize();
      rx_item.print();
    end
  end
  
endmodule:tb_top_pkt_dvdr_rx