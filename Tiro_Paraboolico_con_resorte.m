clear all, close all, clc

t = linspace(0, 10, 500);
o = 60;
g = 9.8;            

% Nuevas variables
F = 30;
m = 20;
x = 20;
k = F/x;

% Obtenemos la velonb( 1:end, cols1:end )cidad inicial
% vi = cos( (sqrt(k)/sqrt(m))*x ) - (sqrt(m)/sqrt(k))*sin( (sqrt(k)/sqrt(m))*x )
vi = round( sqrt( k/m )*x, 2 );
vi2 = round( (vi*3600)/1000, 2 );

% Maximun high calculated and showed
y_max = ( (vi^2)*( (sind(o))^2 ) )/(2*g);
y_max = round(y_max, 2);

% Maximun distance calculated and showed
x_max = ( ((vi)^2)*sind(2*o) )/g;
x_max = round(x_max, 2)

% Total projectil path time calculated and showed
time_total = ( vi*(sind(o)) )/g

r_fx = round( (vi*cosd(o).*t), 2 );
r_fy = round( (vi*sind(o).*t - (0.5)*g*(t).^2), 2 );

R = rand; G = rand; B = rand;
Graph = animatedline('Color', [R G B], 'LineWidth', 2.5);
axis([ -2 x_max+5 0 y_max+5 ])

for i=1:size(t, 2)
    
    if( r_fy(i) >= 0 )
        addpoints(Graph, r_fx(i), r_fy(i));
        drawnow
    else
        break;
    end    
end

n = linspace(1, size(r_fx, 2), size(r_fx, 2) );
r = [n', r_fx', r_fy']


