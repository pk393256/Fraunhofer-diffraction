%fraunhofer diffraction by 225 isoceles right angle triangular apperture
n=2^5;
x=-n:n;
y=n:-1:-n;
[X,Y]=meshgrid(x,y);%creating coordinate grid
a=(0<=X&0<=Y&X+Y<=15);%creating isoceles right angle triangular apperture
A=repmat(a,15,15);%creating 225 triangle apperture in space
diff=fftshift(abs(fft2(A)));%getting diffraction pattern
imagesc(diff)%plotting pattern
