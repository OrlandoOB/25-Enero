%% Ejercicio 1
%Comprobar que el Limite de la Función que tiende a Infinito es e 
clear
clc

n=[1 10 100 500 1000 2000 4000 8000];

f=zeros(1,8);

for i=1:8
    f(i)=(1+(1/n(i))).^n(i);
end
%Muestra los valores arrojados 
disp(f)
%Muestra el valor real de e
e=exp(1)


%% Ejercicio 2
%Combinación de Matrices en una Matriz Diagonal de ellas mismas
clear
clc

%Definir Matrices a Combinar
A=[2 6;
   3 9]
B=[1 2;
   3 4]
C=[-5 5;
    5 3]

%Función especial que acomoda en diagonal las matrices ingresadas
v=blkdiag(A,B,C)


%% Ejercicio 3
%Problema 1 Serie de Fibonaci
clear
clc

%a)Almacenar en un vector los primeros 50 numeros de la serie
s=50;
v=zeros(1,s);

a=0;
b=1;
v(1)=1;
for n=2:s
    c=a+b;
    v(n)=c;
    a=b;
    b=c;
end
%Mostrar Serie de Fibonaci
disp('Serie de Fibonacci')
disp(v)

%b)Almacenar en un vector los primeros 50 numeros de la serie de manera que
%cada termino de la suceción sea dividida por el anterior
R=zeros(1,s-1);
R(1)=1;
for m=2:s-1
    R(m)=v(m+1)/v(m);
end
%Mostrar Razón Áurea
disp('Razón Aurea')
disp(R)


%% Ejecrcicio 4
%Ejercicio de Funciones
clear
clc

syms x1 x2 x3
fx1=2+sin(x1);
i=-10:0.1:-5;

fx2=exp(x2);
j=-5:0.1:2;

fx3=log(x3.^2+1);
k=2:0.1:10;

hold on
grid

Conversion1=subs(fx1,x1,i);
plot(i,Conversion1,'+r')

Conversion2=subs(fx2,x2,j);
plot(j,Conversion2,'^g')

Conversion3=subs(fx3,x3,k);
plot(k,Conversion3,'pc')

legend('f(x)=2+sin(x)','f(x)=exp(x)','f(x)=log(x^2+1)');
title('Función de X');
xlabel('EJE X');
ylabel('EJE Y');


%% Ejercicio 5
%Script para resolver un sistema de ecuaciones
%5x +2ry    +rz      = 2
%3x +6y     +(2r-1)z = 3
%2x +(r-1)y +3rz     = 5

%donde x, y, z son variables y r es un valor arbitrario 
%r=10

clc
clear
%Solución del Sistema por Matriz Inversa
%A*x=B --> x=A^-1*B

r=10;

%Arreglo matricial del sistema de Ecuaciones

%Declaramos A y B
%  x  y  z
A=[5 2*r r;
   3 6   2*r-1;
   2 r-1 3*r]
%  Term. Indep.
B=[2;
   3;
   5]
%Inverso de A
IA=inv(A)

%Solución (Método 1)
Sol=IA*B

%Función Directa (Método 2)
SolDir=mldivide(A,B)

%Función Directa (Método 3)
SolDir2=A\B
