interface pkt_dvdr_rx_intf (input logic clk,rst_n);

logic rx_en;
logic [7:0] rx_data;

  
//modport driver
  modport driver_modp(output rx_en,rx_data);
  //modport monitor
  modport monitor_modp(input rx_en,rx_data);
  
  
endinterface:pkt_dvdr_rx_intf