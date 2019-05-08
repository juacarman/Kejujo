clear all;
clc;


P = load('data.txt');               % Carga los datos en 'P'
n = 9;                             % Grado del polinomio de ajuste

A = ajpol_mincuad(P,n);
A = A(n+1:-1:1);                    % Invierte el orden de los coeficientes

xval = min(P(:,1)):0.1:max(P(:,1));
yval = polyval(A,xval);
plot(xval,yval,'-r');               % Plot del polinomio de ajuste
hold on;
plot(P(:,1),P(:,2),'ob');           % Plot de los datos


function A = ajpol_mincuad(P,n)
    N = length(P);    % 'P' es el conjunto de N puntos
    S = zeros(n+1);   % 'S' es la matriz cuadrada de la forma SUM(x^(j+k))
    Q = zeros(n+1,1); % 'Q' es el vector columna de la forma SUM(q*x^k)
    x = P(:,1);       % Vector de componentes 'x' de los datos
    q = P(:,2);       % Vector de componentes 'q' de los datos
    for k = 0:n
        for j = k:n
            S(k+1,j+1) = sum(x.^(j+k));
            S(j+1,k+1) = S(k+1,j+1);    % 'S' es simetrica
        end
        Q(k+1) = sum(q.*x.^k);
    end
    A = inv(S)*Q;
end