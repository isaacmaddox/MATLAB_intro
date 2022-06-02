%% Print all even numbers from 1 to 10
for a = 1:10
    if (rem(a, 2) == 0)
        disp(a);
    end
end

%% Add all numbers in an array
nums = [2, 4, 5];
result = 0;
for b = 1:length(nums)
    result = result + nums(b);
end
disp(result);

%% Length Conversion
conv(15840, 5280, "to"); % conv({this num}, {desired measurement per num}, {to or from})

%% Reverse Array
orig = [1, 2, 3, 4, 5];
disp(reverse(orig));

%% Sort Array
arr = [2, 7, 4, 1];
arr = sort(arr);
disp(arr);

%% Filter out negative numbers
neg_nums = [2, -3, -6, 3, 9, -4];
disp(filterNeg(neg_nums));

%% Return number of vowels in a string
str = 'Allow';
disp(vowels(str));

%% Return the remainder of two numbers
disp(remain(5, 3));

%% Testing numerous return values in MATLAB
[varOne, varTwo] = sendBack(5, 2);
disp(varOne);
disp(varTwo);

%% Return a boolean if either number or their sum is 10.
disp(isTen(3, 7));

%% Compare string lengths
disp(strLen("Hello", "Isaac"));

%% Take first and last name as strings and return one string with the full name
disp(flname("Isaac", "Maddox"));

%% Find number of digits in an int
disp("10000: " + numOfnums(10000));
disp("439: " + numOfnums(439));

%% Functions
function conv(unit, rate, ft)
    if (ft == "from")
        disp(unit * rate);
    end
    if (ft == "to")
        disp(unit / rate);
    end
end

function rev = reverse(arr)
    rev = [];
    for c = 1:length(arr)
        newInd = length(arr) - c + 1;
        rev(newInd) = arr(c);
    end
end

function filtered = filterNeg(arr)
    filtered = [];
    for index = 1:length(arr)
        if (arr(index) >= 0)
            filtered = [filtered, arr(index)];
        end
    end
end

function vowelCount = vowels(str)
    vow = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"];
    vowelCount = 0;
    for j = 1:length(str)
        if (ismember(str(j), vow) > 0)
            vowelCount = vowelCount + 1;
        end
    end
end

function remainder = remain(a, b)
    remainder = rem(a, b);
end

function [one, two] = sendBack(a, b)
    one = a * 2;
    two = b * 2;
end

function boo = isTen(a, b) 
    if (a == 10)
        boo = true;
    end
    if (b == 10)
        boo = true;
    end
    if (a + b == 10)
        boo = true;
    end
end

function bool = strLen(str1, str2)
    if (strlength(str1) == strlength(str2))
        bool = true;
    else
        bool = false;
    end
end

function fullName = flname(first, last)
    fullName = first + " " + last;
end

function value = numOfnums(number)
    number = num2str(number);
    value = strlength(number);
end
