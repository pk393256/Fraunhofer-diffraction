% for 20 circular apperture distributed in rectangular plane
n=2^7;
x=-n:n;
y=n:-1:-n;
[X,Y]=meshgrid(x,y);%creating coordinate grid
a=(X.^2+Y.^2<=100);%creating circular apperture
A=repmat(a,4,5);%creating 4 by 5 circular apperture matrix in plane
diff=fftshift(abs(fft2(A)));%getting diffraction pattern
imagesc(diff)%plotting the pattern

