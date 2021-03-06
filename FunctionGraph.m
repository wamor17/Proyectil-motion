function [ output_args ] = FunctionGraph(t, n, F, o, m, x, g, handles)
    k = F/x;

    % Asignamos valor a la constante k
    set(handles.lblK, 'String', [' K: ', num2str(round(k, 4))] );

    % Obtenemos la velocidad inicial
    vi = round( sqrt( k/m )*x, 1 );
    vi2 = round( (vi*3600)/1000, 1 );
    set( handles.lblVi, 'String', [' Vi: ', num2str(vi), ' ', 'm/s', ', ', num2str(vi2), ' km/h'] );

    % Maximun high calculated
    y_max = ( (vi^2)*( (sind(o))^2 ) )/(2*g);
    y_max = round(y_max, 2);

    % Maximun distance calculated
    x_max = ( ((vi)^2)*sind(2*o) )/g;
    x_max = round(x_max, 2);

    % Total projectil path time calculated
    time_total = round( 2*(( vi*(sind(o)) )/g), 2);

    r_fx = vi*cosd(o).*t;
    r_fy = vi*sind(o).*t - (0.5)*g*(t).^2;

    axes(handles.graph1)
    R = rand; G = rand; B = rand;
    Graph = animatedline('Color', [R G B], 'LineWidth', 3.5);
    axis([ 0 10 0 5 ])

    for i=1:size(t, 2)
        if( r_fy(i) >= 0 )
            vx = [' x: ', num2str( round(r_fx(i), 2) ), ' m'];
            vy = [' y: ', num2str( round(r_fy(i), 2) ), ' m'];
            ts = [' t: ', num2str( round(t(i), 2) ), ' s'];
            set(handles.lblX, 'String', vx );
            set(handles.lblY, 'String', vy );
            set(handles.lblT, 'String', ts );
            
            addpoints(Graph, r_fx(i), r_fy(i));
            drawnow
        else
            break;
        end
    end

    % Distancia maxima
    set( handles.lblXmax, 'String', [' x_max: ', num2str(x_max), ' ', 'm'] );
    
    % Altura maxima
    set( handles.lblYmax, 'String', [' y_max: ', num2str(y_max), ' ', 'm'] );
    
    % Tiempo total
    set( handles.lblTtotal, 'String', [' t_total: ', num2str(time_total), ' ', 's'] );
        
    n_lower = n - 0.1;
    n_higher = n + 0.1;

    if( x_max >= n_lower && x_max <= n_higher )
        uiwait(msgbox('Diste en el blanco','¡Felicidades!','modal'));
    end
    
    

end

