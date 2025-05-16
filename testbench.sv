module test_ripple_carry_adder;
    reg [3:0] A, B;     
    reg Cin;          
    wire [3:0] Sum;     
    wire Cout;        
    ripple_carry_adder RCA ( .A(A), .B(B), .Cin(Cin), .Sum(Sum), .Cout(Cout));
    initial begin
        $dumpfile("ripple_carry_adder.vcd");  
        $dumpvars(1); 
        $monitor("A = %b, B = %b, Cin = %b, Sum = %b, Cout = %b", A, B, Cin, Sum, Cout);
        repeat (10) begin
            A = $random % 16;      
            B = $random % 16;     
            Cin = $random % 2;     
            #10; 
        end
        $stop;
    end
endmodule
