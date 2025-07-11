class pkt_dvdr_rx_seq_item extends uvm_sequence_item;
  
//randomization fields
  rand bit [7:0] sop1;
  rand bit [7:0] sop2;
  rand bit [7:0] len;
  rand bit [7:0] rx_data;
  rand bit [7:0] pad;
  rand bit [7:0] parity;
  rand bit [7:0] eop1;
  rand bit [7:0] eop2;
  rand bit rx_en;
  
  constraint rx_en_const{soft rx_en == 1'b1;}
  constraint sop1_const{sop1 == 8'hbe;}
  constraint sop2_const{sop2 == 8'hef;}
  constraint eop1_const{eop1 == 8'hde;}
  constraint eop2_const{eop2 == 8'had;}
  
  
//default constructor or calling the function new
  function new(string name = "pkt_dvdr_rx_seq_item");
    super.new(name); 
  endfunction:new
  
  
  
  
  
  

// factory registration
  `uvm_object_utils_begin(pkt_dvdr_rx_seq_item)
  `uvm_field_int(rx_en,UVM_ALL_ON)
  `uvm_field_int(rx_data,UVM_ALL_ON)
  `uvm_field_int(sop1,UVM_ALL_ON)
  `uvm_field_int(sop2,UVM_ALL_ON)
  `uvm_field_int(len,UVM_ALL_ON)
  `uvm_field_int(pad,UVM_ALL_ON)
  `uvm_field_int(parity,UVM_ALL_ON)
  `uvm_field_int(eop1,UVM_ALL_ON)
  `uvm_field_int(eop2,UVM_ALL_ON)
  `uvm_object_utils_end
  
  
endclass:pkt_dvdr_rx_seq_item