function m_Euler_mj(f,x,y,h,lim)

f = str2func(f);
xn(1)= x;
yn(1)=y;

i=1;
while(x<=lim)
    y=y+h*(((2*x*y)+2*(x+h)*(y+h*2*x*y))/2);
    
    fprintf('Y%d=%.4f \n\n', i,y);
    
    x=x+h;
    i=i+1;
    xn(i)=x;
    yn(i)=y;
    
end

xn
yn

end 