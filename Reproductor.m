function r = Reproductor(vector)
if(norm(vector) == 0)
    bc(0)
end

vector1=[vector(1) vector(2)];
vector2=[vector(3) vector(4)];
vector3=[vector(5) vector(6)];
vector4=[vector(7) vector(8)];

if(norm(vector1) ~= 0)
    if (vector1(1)==1 && vector1(2)==0)
        bc(1000)
    else
        if(vector1(1)==1 && vector1(2)==1)
            bl(1000)
        end
    end
end

if(norm(vector2) ~= 0)
    if (vector2(1)==1 && vector2(2)==0)
        bc(1000)
    else
        if(vector2(1)==1 && vector2(2)==1)
            bl(1000)
        end
    end
end

if(norm(vector3) ~= 0)
    if (vector3(1)==1 && vector3(2)==0)
        bc(1000)
    else
        if(vector3(1)==1 && vector3(2)==1)
            bl(1000)
        end
    end
end

if(norm(vector3) ~= 0)
    if (vector3(1)==1 && vector3(2)==0)
        bc(1000)
    else
        if(vector3(1)==1 && vector3(2)==1)
            bl(1000)
        end
    end
end

if(norm(vector4) ~= 0)
    if (vector4(1)==1 && vector4(2)==0)
        bc(1000)
    else
        if(vector4(1)==1 && vector4(2)==1)
            bl(1000)
        end
    end
end
r=vector;