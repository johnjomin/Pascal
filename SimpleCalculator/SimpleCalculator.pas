program SimpleCalculator;
var
  num1, num2: Real;
  operation: Char;
  result: Real;
begin
  Write('Enter first number: ');
  ReadLn(num1);
  Write('Enter an operation (+, -, *, /): ');
  ReadLn(operation);
  Write('Enter second number: ');
  ReadLn(num2);
  
  case operation of
    '+': result := num1 + num2;
    '-': result := num1 - num2;
    '*': result := num1 * num2;
    '/': if num2 <> 0 then
           result := num1 / num2
         else
         begin
           WriteLn('Error: Division by zero.');
           Exit;
         end;
  else
    begin
      WriteLn('Error: Invalid operation.');
      Exit;
    end;
  end;
  
  WriteLn('Result: ', result:0:2);
end.
