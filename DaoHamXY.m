function d = DaoHamXY(xi, yi, x, pp, ss)
    h = xi(2) - xi(1);
    a = (x - xi(1)) / h + 1;
    a = cast(a, 'uint16');
    disp(a);
    if pp == "Center"
            d = (yi(a + 1) - yi(a - 1)) / (2 * h);
    elseif pp == "Forward"
        if ss == "O(h^2)"
            d = (4 * yi(a + 1) - yi(a + 2) - 3 * yi(a)) / (2 * h);
        elseif ss == "O(h)"
            d = (yi(a + 1) - yi(a))/h;
        end
    else
        if ss == "O(h^2)"
            d = (-4 * yi(a - 1) + yi(a - 2) + 3 * yi(a)) / (2 * h);
        elseif ss == "O(h)"
            d = (yi(a) - yi(a - 1))/h;
        end
    end
end