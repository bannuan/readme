function y=circonvt(x1,x2,N)
if(length(x1)>N | length(x2)>N)
    error('N必须大于等于x的长度');
end
x1=[x1 zeros(1,N-length(x1))];
x2=[x2,zeros(1,N-length(x2))];
X1=fft(x1,N);
X2=fft(x2,N);
X=X1.*X2;
y=ifft(X,N);
y=real(y);