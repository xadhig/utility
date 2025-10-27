reg [1:0] rstn_s;
wire rstn_sync;

always @(posedge clk or negedge rstn_async) begin
  if (~rstn_async) rstn_sync[1:0] <= 2'b00;
  else rstn_s[1:0] <= {rstn_s[0], 1'b1};
end

assign rstn_sync = rstn_s[1];
