%% Uppg 1
A = [11 4 3 7; 2 6 8 5; 9 12 1 10]
b = [3;1;5]
c = [4 2 8 0 6]

s1 = size(b)
s2 = size(c)

M = max(max(A))
m = min(min(A))

%% Uppg 2

s = sum(prod([1:5;1:5]))

%% Uppg 3

A = [1 5 9; 2 6 10; 3 7 11; 4 8 12]
B = [4 5 6; 3 2 1; 1 1 1]
x = [1;1;1]
a = [-1 0 1]

A*x
B*x
A*B
a*x
x*a
a*B

%[4x3] [3x1] = [4x1]

yee = pro(A, x)

%% Uppg 4

A = [1 0 0; 0 1 0; 1 0 1]
B = [1 0 0;-2 1 0; 0 0 1]
C = [2 1 1; 4 1 0; -2 2 1]

A*(B*C) - (A*B)*C
A*(B+C) - ((A*B)+(A*C))
(B+C)*A - ((B*A)+(C*A))

A*C - C*A
B*C - C*B
A*B - B*A

%% func
function y = pro(x1 ,x2)
[m n] = size(x1);
[n p] = size(x2);
y=zeros(m,p);
for i=1:m 
    for j=1:p
        Pij=0; 
        for k=1:n 
            Pij=Pij+x1(i,k)*x2(k,j); 
        end
        y(i,j)=Pij;
    end 
end
end