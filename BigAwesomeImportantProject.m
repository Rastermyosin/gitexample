%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   Title:      The Really Big Awesome Important Project    
%   Desc:           -Will Revolutionize Mankind
%   Author:     Kevin O'Neill
%   Version:    1.0
%   Date:       5/14/2012
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function main()
% main function that will control the loop.

struct = [];

struct = init(struct);
struct = userInput(struct);

return

end


function struct = init(struct)
% Initializes the variables, workspace, objects, and scans machine hardware
%   as needed

struct.inputNum = 0;
struct.strOut = '';

end

function struct = userInput(struct)
% Requests an input from the user as a number. Converts that sring to a
%   number.

struct.inputStr = input('Chose a starting positive integer: ', 's');
    
struct.inputNum = str2double(struct.inputStr);    


end