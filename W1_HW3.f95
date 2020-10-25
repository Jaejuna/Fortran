double precision sum, x, a
integer k
  
 write(*,*) "give sin(x): "
 read *, x
  
 sum = 0.0d0   
 k = 0
 a = 1.0d0 
  do 
   sum = sum + a  
   k = k+1
   a = a * (-x*x) / (2*k*(2*k-1))
   if (sum + a == sum) exit
  enddo
  
 write(*,*)"sin",x
 write(*,100) x,sum
  100 format(f9.7)
  
end

