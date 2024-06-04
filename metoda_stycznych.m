function root = metoda_stycznych(n, epsilon)
    x0 = 1;
    max_iter = 1000;

    for i = 1:max_iter
        f_x0 = log(x0) - n;
        df_x0 = 1 / x0;

        x1 = x0 - (f_x0 / df_x0);

        if abs(x1 - x0) < epsilon
            root = x1;
            disp(['Znaleziono pierwiastek: x = ' , num2str(root)]);
            return;
        end

        x0 = x1;
    end

    disp('Nie udało się znaleźć pierwiastka w danej dokładności.');
    root = NaN;

    n = 0.6;
    epsilon = 10^-5;

    metoda_stycznych(n, epsilon);

end