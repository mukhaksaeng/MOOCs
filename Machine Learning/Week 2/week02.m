##########################################################
# 1: Basic Operations
##########################################################

% Arithmetic operations
5 + 6
3 - 2
5 * 8
1 / 2
2 ^ 6

% Logical operations
1 == 2   % equals
1 ~= 2   % not equal to
1 && 0   % and
1 || 0   % or
xor(1, 0) 

% Assignment, Printing
a = 3
a = 3;   % semicolon suppresses the print output
b = 'hi';
b
c = (3 >= 1);
c

a = pi;
disp(a);
disp(sprintf('2 decimals: %0.2f', a))
disp(sprintf('2 decimals: %0.6f', a))

format long   % more decimal places
format short  % less decimal places

% Matrices and vectors
A = [1, 2, 3; 4, 5, 6]    % The ; denotes we are going back to a new row.

v = [1, 2, 3]    % row vector
v = [1; 2; 3]    % column vector 

v = 1:6        % row vector from 1 to 6
v = 1:0.1:2    % row vector from 1 to 2 in increments of 0.1

c = ones(2, 3)       % 2 x 3 matrix of all 1's
c = 2 * ones(2, 3)   % 2 x 3 matrix of all 2's

w = zeros(1, 3)    % 1 x 3 matrix of all 0's
w = rand(3, 3)     % 3 x 3 matrix of random numbers drawn from a uniform distribution between 0 and 1
w = randn(1, 3)    % 1 x 3 vector of random numbers drawn from a standard Gaussian

w = -6 + sqrt(10)*(randn(1, 10000));
hist(w)           % histogram
hist(w, 50)       % histogram with 50 bins

eye(4)    % 4 x 4 identity matrix

% Help command
help eye

##########################################################
# 2: Moving Data Around
##########################################################

% Matrices and vectors, cont'd.
size(A)     % dimensions of A
size(A, 1)  % number of rows of A
size(A, 2)  % number of columns of A
length(v)   % length of vector, bigger dimension of matrix

% Working directory
pwd                                             % working directory
cd 'C:\Users\JM\Google Drive\Machine Learning'  % change working directory
ls                                              % list of files in directory

% Make sure featuresX.dat and priceY.dat are in working directory
% Loading data
load featuresX.dat          % load file
load('featuresX.dat')
load priceY.dat
featuresX
size(featuresX)
priceY
size(priceY)

% Octave workspace, Saving data
who                         % variables in workspace
whos                        % detailed view of variables in workspace
clear featuresX             % remove featuresX
who
v = priceY(1:10)            % select first 10 elements of priceY
save hello.mat v;           % save v to file called hello.mat
save hello.txt v -ascii;    % save as ASCII-formatted text
clear                       % clear workspace
load hello.mat

% Matrices and vectors, cont'd.
A(3, 2)           % element in 3rd row, 2nd column of A
A(3, :)           % 3rd row of A
A(:, 2)           % 2nd column of A
A([1, 3], :)       % 1st and 3rd row of A

A(:, 2) = [10; 11; 12]      % change second column
A = [A; [100, 101]]         % append another row vector at the bottom
A = [A, [100; 101; 102]]    % append another column vector to the right
A(:)                        % put all elements of A into a single column vector

A = [1, 2; 3, 4; 5, 6]
B = [11, 12; 13, 14; 15, 16]
C = [A, B]                 % concatenate matrices
C = [A; B]                 % concatenate matrices (on top of each other)

##########################################################
# 3: Computing on Data
##########################################################

% Matrix and vector operations
A = [1, 2; 3, 4; 5, 6]
B = [11, 12; 13, 14; 15, 16]
C = [1, 1; 2, 2]
A * C     % matrix multiplication
A .* B    % element-wise multiplication
A .^ 2    % element-wise squaring

v = [1, 2, 3]
1 ./ v    % element-wise division
log(v)    % element-wise log
exp(v)    % element-wise exponential
abs(v)    % element-wise absolute value
-v          

v + ones(length(v), 1)   % increment all elements by 1
v + 1

A'        % transpose of A
(A')'

a = [1, 15, 2, 0.5]
max(a)              % maximum of a
[val, ind], max(a)  % returns value and index of max(a)
a < 3               % element-wise comparison
find(a < 3)         % find all elements < 3

A = magic(3)          % 3 x 3 magic square
[r, c] = find(A >= 7) % return all row and column pairs for which element >= 7
A(2, 3)

sum(a)        % sum of all elements of a 
prod(a)       % product of all elements of a 
floor(a)      % floor of all elements of a 
ceil(a)       % ceiling of all elements of a 

max(rand(3), rand(3))   % element-wise maximum of 2 random 3 x 3 matrices

max(A)              % column-wise maximum
max(A, [], 1)
max(A, [], 2)       % row-wise maximum
max(A[:])           % overall maximum
max(max(A))

A = magic(9)
sum(A, 1)                       % column-wise sum
sum(A, 2)                       % row-wise sum
sum(sum(A .* eye(9)))           % diagonal sum
sum(sum(A .* flipud(eye(9))))   % sum of other diagonal

A = magic(3)
pinv(A)          % pseudoinverse of A

##########################################################
# 4: Plotting Data
##########################################################

t = [0:0.01:0.98];
y1 = sin(2 * pi * 4 * t);
plot(t, y1);
y2 = cos(2 * pi * 4 * t);
plot(t, y2);

plot(t, y1);
hold on;        % superimpose multiple plots on top of each other
plot(t, y2, 'r');
xlabel('time');
ylabel('value');
legend('sin', 'cos');
title('my plot');

cd 'C:\Users\JM\Desktop\Google Drive\Machine Learning' print -dpng 'myPlot.png'   % output plot
close           % close plot

figure(1); plot(t, y1);
figure(2); plot(t, y2);
subplot(1, 2, 1);         % Subdivide plot into a 1 x 2 grid and accesses the 1st element
plot(t, y1);
subplot(1, 2, 2); plot(t, y2);
axis([0.5, 1, -1, 1])     % Set x-range from 0.5 to 1 and y-range from -1 to 1 for latest figure
clf;                      % Clear figure

A = magic(5)
imagesc(A), colorbar, colormap gray;

a = 1, b = 2, c = 3
a = 1; b = 2; c = 3;

##########################################################
# 5: Control Statements
##########################################################

% for loop
v = zeros(10, 1);
for i = 1:10,
  v(i) = 2 ^ i;
end;
v

indices = 1:10;
for i = indices,
  v(i) = 2 ^ i;
end;

% while loop
i = 1;
while i <= 5,
  v(i) = 100;
  i = i + 1;
end;
v

% break statement
i = 1;
while true,
  v(i) = 999;
  i = i + 1;
  if i == 6,
    break;
  end;
end;
v

% if-else
v(1) = 2;
if v(1) == 1,
  disp('The value is one.');
elseif v(1) == 2,
  disp('The value is two.');
else,
  disp('The value is not one or two.');
end;

% functions
function y = squareThisNumber(x)
  y = x ^ 2;
end;

squareThisNumber(5)

function [y1, y2] = squareAndCubeThisNumber(x)
  y1 = x ^ 2;
  y2 = x ^ 3;
end;

[a, b] = squareAndCubeThisNumber(5)

X = [1, 1; 1, 2; 1, 3];     % design matrix
y = [1; 2; 3];              % vector of class labels
theta = [0; 1];             % theta vector

function J = costFunctionJ(X, y, theta)
  
  % X is the "design matrix", containing our training examples
  % y is the class labels

  m = size(X, 1);                     % number of training examples
  predictions = X * theta;            % predictions of hypothesis on all m examples
  sqrErrors = (predictions - y) .^ 2  % squared errors
  
  J = 1 / (2 * m) * sum(sqrErrors);
end;

j = costFunctionJ(X, y, theta)
theta = [0; 0];
j = costFunctionJ(X, y, theta)
  
% Octave search path
addpath('C:\Users\JM\Desktop')

##########################################################
# 6: Vectorial Implementation
##########################################################

% unvectorized implementation
prediction = 0.0;
for j = 1 : n + 1,
  prediction = prediction + theta(j) * x(j);
end;

% vectorized implementation
prediction = theta' * x;

##########################################################
# QUIZ
##########################################################
###### 1
A = [1 2; 3 4; 5 6];
B = [1 2 3; 4 5 6];

C = A' + B
C = B * A
%C = A + B   % error: noncorformant arguments
%C = B' * A  % error: noncorformant arguments

###### 2
A = [16, 2, 3, 13; 5, 11, 10, 8; 9, 7, 6, 12; 4, 14, 15, 1]
B = A(:, 1:2)
B = A(1:4, 1:2)

###### 3
A = magic(10)
x = A(:, 5)

% unvectorized
v = zeros(10, 1);
for i = 1:10
  for j = 1:10
    v(i) = v(i) + A(i, j) * x(j);
  end
end
v

% vectorized
v = A * x;
v

###### 4
v = rand(7, 1), w = rand(7, 1);

% unvectorized
z = 0;
for i = 1:7
  z = z + v(i) * w(i);
end
z

% vectorized
z = v' * w;
z
z = sum(v' * w);
z

###### 5
X = magic(7)
for i = 1:7
  for j = 1:7
    A(i, j) = log(X(i, j));
    B(i, j) = X(i, j) ^ 2;
    C(i, j) = X(i, j) + 1;
    D(i, j) = X(i, j) / 4;
  end
end
A
B
C
D

A = log(X)
B = X .^ 2
C = X + 1
D = X / 4