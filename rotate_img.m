function [ img_output ] = rotate_img( n, theta )

    % Lectura de la imagen
    im = imread( strcat('images/rc', num2str(n), '.jpeg') );

    % Asignamos un color azul al resorte
    for i=1:size(im, 1)
        for j=1:size(im, 2)
            if( im(i, j) <= 220 )
                im(i, j, 1) = 0;
                im(i, j, 2) = 0;
                im(i, j, 3) = 150;
            end
        end
    end

    % Rotacion de la imagen
    nim = imrotate(im, theta-90, 'bilinear', 'crop');

    % Segmentamos el resorte y asignamos un fondo blanco
    for i=1:size(nim, 1)
        for j=1:size(nim, 2)
            if( nim(i, j, 1) == 0 && nim(i, j, 2) == 0 && nim(i, j, 3) >= 140 )
                nim(i, j, 1) = 0;
                nim(i, j, 2) = 0;
                nim(i, j, 3) = 150;
            else
                nim(i, j, 1) = 255;
                nim(i, j, 2) = 255;
                nim(i, j, 3) = 255;
            end
        end
    end

    img_output = nim;

end

