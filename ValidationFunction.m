function [ vc, n, F, o ] = ValidationFunction( handles )

    vc = 1;
    n = str2num( get(handles.txtDistanceDiana, 'String') );
    F = get(handles.txtFuerza,'String');
    o = get(handles.txtAngle, 'String');
    m = 20;
    x = 20;

    if( size(strsplit(F, ','), 2) > 1 || size( str2num(F), 2 ) > 1 || size( str2num(F), 2 ) == 0 )
        uiwait(msgbox('Escriba unicamente valores numericos en cada recuadro de textox. Por favor, corriga los datos. ','¡Cuidado!','modal'));
        vc = 0;
    elseif( size(strsplit(o, ','), 2) > 1 || size( str2num(o), 2 ) > 1 || size( str2num(o), 2 ) == 0 )
        uiwait(msgbox('Escriba unicamente valores numericos en cada variable de entrada. Por favor, corriga los datos. ','¡Cuidado!','modal'));
        vc = 0;
    else
        F = str2num(F);
        o = str2num(o);
        vc = 1;
    end

%     if( size(strsplit(m, ','), 2) > 1 || size( str2num(m), 2 ) > 1 )
%         uiwait(msgbox('Escriba unicamente valores numericos en cada variable de entrada. Por favor, corriga los datos. ','¡Cuidado!','modal'));
%         vc = 0;
%     else
%         m = str2num(m);
%         vc = 1;
%     end

%     if( size(strsplit(x, ','), 2) > 1 || size( str2num(x), 2 ) > 1 )
%         uiwait(msgbox('Escriba unicamente valores numericos en cada variable de entrada. Por favor, corriga los datos. ','¡Cuidado!','modal'));
%         vc = 0;
%     else
%         x = str2num(x);
%         vc = 1;
%     end

    
    if( vc == 1 )
        if( F == 0 )
            uiwait(msgbox('Si la fuerza es cero, el resorte no se podra comprimir y por lo tanto no podra impulsar el proyectil. Su velocidad inicial sera 0. La fuerza no puede ser cero.','¡Cuidado!','modal'));
            set(handles.txtFuerza, 'String', num2str(30) );
            vc = 0;
        elseif( F < 0 )
            uiwait(msgbox('Si la fuerza negativa, fisicamente estirarias el resorte lo que conlleva a que el proyectil salga disparado en sentido contrario de los esperado. La fuerza no puede ser negativa','¡Cuidado!','modal'));
            set(handles.txtFuerza, 'String', num2str(30) );
            vc = 0;
        end

        if( o == 0 )
            uiwait(msgbox('Si el angulo es 0 o 90°, el proyectil sera impulsado unicamente en la direccion de los ejee x o y respectivamente, y no podra realizar una trayectoria parabolica para visualizar.','¡Cuidado!','modal'));
            set(handles.txtAngle, 'String', num2str(45) );
            vc = 0;
        elseif( o < 0 )
            uiwait(msgbox('El angulo no puede ser negativo; de acuerdo a nuestro sistema de referencia solo puede tomar valor entre 0 < \theta < 90 para poder visualizar la trayectoria del proyectil.','¡Cuidado!','modal'));
            set(handles.txtAngle, 'String', num2str(45) );
            vc = 0;
        elseif( o == 90 )
            uiwait(msgbox('EL proyectil puede caerte en la cabeza cuando su angulo sea de 90°.','¡Cuidado!','modal'));
            vc = 0;
        elseif( o > 90 )
            uiwait(msgbox('El angulo no puede ser mayor a 90 grados. ','¡Cuidado!','modal'));
            vc = 0;
        end

%         if( m == 0 || m < 0 )
%             uiwait(msgbox('La masa no puede ser negativa; Fisicamente no existe un cuerpo que tenga una masa negativa. Si la masa es cero, la velocidad inicial sera infinita, y fisicamente no tiene sentido.','¡Cuidado!','modal'));
%             set(handles.txtMasa, 'String', num2str(20) );
%             vc = 0;
%         end
% 
%         if( x < 0 )
%             uiwait(msgbox('La distancia de compresion del resorte no puede ser negativa, ya que se estaria estirando el resorte y el proyectil seria disparado en sentido contrario. ','¡Cuidado!','modal'));
%             set(handles.txtDResorte, 'String', num2str(20) );
%             vc = 0;
%         elseif( x == 0 )
%             uiwait(msgbox('Si la compresion del resorte es igual a 0, no habra impulso para que el proyectil se dispare.','¡Cuidado!','modal'));
%             set(handles.txtDResorte, 'String', num2str(20) );
%             vc = 0;
%         end
    end


end

