-- 最简单的线性变化,即匀速运动
function Linear(t, b, c, d)
    return c * t / d + b;
end

--==========================================
-- 二次方缓动
Quad = {}
function Quad.easeIn(t, b, c, d)
    t = t / d;
    return c * (t) * t + b;
end

function Quad.easeOut(t, b, c, d)
    t = t / d;
    return -c * (t) * (t - 2) + b;
end

function Quad.easeInOut(t, b, c, d)
    t = t / (d * 0.5)
    if ((t) < 1) then
        return c / 2 * t * t + b;
    end
    t = t - 1;
    return -c / 2 * ((t) * (t - 2) - 1) + b;
end

--==========================================
-- 三次方缓动
Cubic = {}
function Cubic.easeIn(t, b, c, d)
    t = t / d
    return c * (t) * t * t + b;
end

function Cubic.easeOut(t, b, c, d)
    t = t / d - 1
    return c * ((t) * t * t + 1) + b;
end

function Cubic.easeInOut(t, b, c, d)
    t = t / (d * 0.5)
    if ((t) < 1) then
        return c / 2 * t * t * t + b;
    end
    t = t - 2;
    return c / 2 * ((t) * t * t + 2) + b;
end

--==========================================
-- 四次方缓动
Quart = {}
function Quart.easeIn(t, b, c, d)
    t = t / d
    return c * (t) * t * t * t + b;
end

function Quart.easeOut(t, b, c, d)
    t = t / d - 1
    return -c * ((t) * t * t * t - 1) + b;
end

function Quart.easeInOut(t, b, c, d)
    t = t / d * 0.5
    if ((t) < 1) then
        return c / 2 * t * t * t * t + b;
    end
    t = t - 2
    return -c / 2 * ((t) * t * t * t - 2) + b;
end

--==========================================
-- 五次方缓动
Quint = {};
function Quint.easeIn(t, b, c, d)
    t = t / d
    return c * (t) * t * t * t * t + b;
end

function Quint.easeOut(t, b, c, d)
    t = t / d - 1
    return c * ((t) * t * t * t * t + 1) + b;
end

function Quint.easeInOut(t, b, c, d)
    t = t / d * 0.5
    if ((t) < 1) then
        return c / 2 * t * t * t * t * t + b;
    end
    t = t - 2
    return c / 2 * ((t) * t * t * t * t + 2) + b;
end

--==========================================
-- 正弦曲线缓动
Sine = {};
function Sine.easeIn(t, b, c, d)
    return -c * math.cos(t / d * (math.pi / 2)) + c + b;
end

function Sine.easeOut(t, b, c, d)
    return c * math.sin(t / d * (math.pi / 2)) + b;
end

function Sine.easeInOut(t, b, c, d)
    return -c / 2 * (math.cos(math.pi * t / d) - 1) + b;
end

--==========================================
-- 指数曲线缓动
Expo = {}
function Expo.easeIn(t, b, c, d)
    if (t == 0) then
        return b;
    else
        return c * math.pow(2, 10 * (t / d - 1)) + b;
    end
    --return (t==0) ? b : c * math.pow(2, 10 * (t/d - 1)) + b;
end

function Expo.easeOut(t, b, c, d)
    if (t == d) then
        return b + c;
    else
        return c * (-math.pow(2, -10 * t / d) + 1) + b;
    end
    --return (t==d) ? b+c : c * (-math.pow(2, -10 * t/d) + 1) + b;
end

function Expo.easeInOut(t, b, c, d)
    if (t == 0) then
        return b;
    end
    if (t == d) then
        return b + c;
    end
    t = t / d * 0.5;
    if ((t) < 1) then
        return c / 2 * math.pow(2, 10 * (t - 1)) + b;
    end
    t = t - 1
    return c / 2 * (-math.pow(2, -10 * t) + 2) + b;
end

--==========================================
-- 圆形曲线缓动
Circ = {}
function Circ.easeIn(t, b, c, d)
    t = t / d
    return -c * (math.sqrt(1 - (t) * t) - 1) + b;
end

function Circ.easeOut(t, b, c, d)
    t = t / d - 1
    return c * math.sqrt(1 - (t) * t) + b;
end

function Circ.easeInOut(t, b, c, d)
    t = t / d * 0.5
    if ((t) < 1) then
        return -c / 2 * (math.sqrt(1 - t * t) - 1) + b;
    end
    t = t - 2
    return c / 2 * (math.sqrt(1 - (t) * t) + 1) + b;
end

--==========================================
-- 指数衰减的正弦曲线缓动
Elastic = {}
function Elastic.easeIn(t, b, c, d, a, p)
    if (t == 0) then
        return b;
    end
    t = t / d
    if ((t) == 1) then
        return b + c;
    end
    if (not p) then
        p = d * .3;
    end
    if (not a or a < math.abs(c)) then
        a = c;
        local s = p / 4;
    else
        local s = p / (2 * math.pi) * math.asin(c / a);
    end
    t = t - 1
    return -(a * math.pow(2, 10 * (t)) * math.sin((t * d - s) * (2 * math.pi) / p)) + b;
end

function Elastic.easeOut(t, b, c, d, a, p)
    if (t == 0) then
        return b;
    end
    t = t / d;
    if ((t) == 1) then
        return b + c;
    else
        if (not p) then
            p = d * 0.3;
        end
    end
    if (not a or a < math.abs(c)) then
        a = c;
        local s = p / 4;
    else
        local s = p / (2 * math.pi) * math.asin(c / a);
    end
    return (a * math.pow(2, -10 * t) * math.sin((t * d - s) * (2 * math.pi) / p) + c + b);
end

function Elastic.easeInOut(t, b, c, d, a, p)
    if (t == 0) then
        return b;
    end
    t = t / d * 0.5
    if (t == 2) then
        return b + c;
    end
    if (not p) then
        p = d * (.3 * 1.5);
    end
    if (not a or a < math.abs(c)) then
        a = c;
        local s = p / 4;
    else
        local s = p / (2 * math.pi) * math.asin(c / a);
    end
    if (t < 1) then
        t = t - 1
        return -.5 * (a * math.pow(2, 10 * (t)) * math.sin((t * d - s) * (2 * math.pi) / p)) + b;
    end
    t = t - 1;
    return a * math.pow(2, -10 * (t)) * math.sin((t * d - s) * (2 * math.pi) / p) * .5 + c + b;
end

--==========================================
-- 返回
Back = {}
function Back.easeIn(t, b, c, d, s)
    if (s == nil) then
        s = 1.70158;
    end
    t = t / d
    return c * (t) * t * ((s + 1) * t - s) + b;
end

function Back.easeOut(t, b, c, d, s)
    if (s == nil) then
        s = 1.70158;
    end
    t = t / d - 1
    return c * ((t) * t * ((s + 1) * t + s) + 1) + b;
end

function Back.easeInOut(t, b, c, d, s)
    if (s == nil) then
        s = 1.70158;
    end
    t = t / d * 0.5
    if ((t) < 1) then
        s = s * 1.525
        return c / 2 * (t * t * (((s) + 1) * t - s)) + b;
    end
    t = t - 2
    s = s * 1.525
    return c / 2 * ((t) * t * (((s) + 1) * t + s) + 2) + b;
end

--==========================================
-- 弹跳
Bounce = {}
function Bounce.easeIn(t, b, c, d)
    return c - Bounce.easeOut(d - t, 0, c, d) + b;
end

function Bounce.easeOut(t, b, c, d)
    t = t / d
    if (t < (1 / 2.75)) then
        return c * (7.5625 * t * t) + b;
    elseif (t < (2 / 2.75)) then
        t = t - 1.5 / 2.75
        return c * (7.5625 * (t) * t + 0.75) + b;
    elseif (t < (2.5 / 2.75)) then
        t = t - 2.25 / 2.75
        return c * (7.5625 * (t) * t + 0.9375) + b;
    else
        t = t - 2.625 / 2.75
        return c * (7.5625 * (t) * t + 0.984375) + b;
    end
end

function Bounce.easeInOut(t, b, c, d)
    if (t < d / 2) then
        return Bounce.easeIn(t * 2, 0, c, d) * 0.5 + b;
    else
        return Bounce.easeOut(t * 2 - d, 0, c, d) * 0.5 + c * 0.5 + b;
    end
end
