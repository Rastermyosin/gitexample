%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   Title:      The Really Big Awesome Important Project    
%   Desc:           -Will Revolutionize Mankind
%   Author:     Kevin O'Neill
%   Version:    2.5
%   Date:       5/14/2012
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function main()
% main function that will control the loop.

% Creates an empty variable. Will become a structure.
struct = [];

% Main loop of the program: initialize -> get input -> do magic
struct = init(struct);
struct = userInput(struct);
struct = magicFoo(struct);

% Ends program
return

end


function struct = init(struct)
% Initializes the variables, workspace, objects, and scans machine hardware
%   as needed

% Initializes the variables needed.
struct.inputStr = '';
struct.inputNum = 0;
struct.flagTmp = false;     % Creates a boolean flag for exiting the while loop in userInput().

end

function struct = userInput(struct)
% Requests an input from the user as a number. Converts that sring to a
%   number.

% Loops until the user breaks or inputs a correct number when asked.
while ~struct.flagTmp
    % Captures keyboard input from user.
    struct.inputStr = input('Chose a starting positive integer: ', 's');
    
    % Attempts to convert the string to a double.
    struct.inputStr = str2double(struct.inputStr);    
    [sizeRow sizeCol] = size(struct.inputStr);
    
    % Check if struct.inputStr is empty or is an array
    if isempty(struct.inputStr) || sizeRow > 1 || sizeCol > 1 
        fprintf('You need to input a positive integer!\n');
    elseif ~(struct.inputStr < 0)% Check if struct.inputStr is a positive integer
        struct.flagTmp = true;
        struct.inputNum = uint16(struct.inputStr);   
    else % All other cases  
        fprintf('You need to input a positive integer!\n');
    end
end

end

function struct = magicFoo(struct)
fprintf('Double your number.\n');
fprintf('%d',struct.inputNum * 2);
input('');

fprintf('Add 20 to your origional number.\n');
fprintf('%d',struct.inputNum * 2 + 20);
input('');

fprintf('Divide by 2.\n');
fprintf('%d',(struct.inputNum * 2 + 20) / 2);
input('');

fprintf('Then subtract your origional number.\n');
fprintf('%d',(struct.inputNum * 2 + 20) / 2 - struct.inputNum);
input('');

input('Did you get 10 as a result?');
input('Its like magic!');

end