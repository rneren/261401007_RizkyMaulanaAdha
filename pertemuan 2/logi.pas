program banding;
uses crt;

var
x, y : boolean;

begin
    clrscr;
    x := true;
    y := false;

    writeln ('x AND y: ', x and y);
    writeln ('x OR y: ', x or y);
    writeln ('NOT x: ',  not x);
    writeln ('x XOR y: ', x xor y);
   
end.

