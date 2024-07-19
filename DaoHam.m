function fx = DaoHam(fx, x, Oh, pp, ss)
    fx = str2func(['@(x)', fx]);
    if pp == "Forward"
        if ss == "O(h)"
            fx = (fx(x + Oh) - fx(x)) / Oh;
        elseif ss == "O(h^2)"
            fx = (4 * fx(x + Oh) - 3 * fx(x) - fx(x + 2 * Oh)) / (2 * Oh);
        end
    elseif pp == "Center"
        fx = (fx(x + Oh) - fx(x - Oh)) / (2 * Oh);
    elseif pp == "Backward"
        if ss == "O(h)"
            fx = (fx(x) - fx(x - Oh)) / Oh;
        elseif ss == "O(h^2)"
            fx = (3 * fx(x) - 4 * fx(x - Oh) + fx(x - 2 * Oh)) / (2 * Oh);
        end
    end
end