# utility
<!-- <img width="852" height="475" alt="image" src="https://github.com/user-attachments/assets/081c39b3-c57f-4b73-a913-1fb0ea890e6e" /> -->

# Asynchronous Reset with Synchronous Release

![Asynchronous Reset with Synchronous Release](async_reset.jpg)

```verilog
reg [1:0] rst_s;
wire rst_sync_n;

always @(posedge clk or negedge rst_async_n) begin
  if (~rst_async_n) rst_s[1:0] <= 2'b00;
  else rst_s[1:0] <= {rst_s[0], 1'b1};
end

assign rst_sync_n = rst_s[1];
```
