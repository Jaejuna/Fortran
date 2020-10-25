program PrimePalindrome
print *,"The prime palindrome less than 10,000 are : "
do i=11,10000
factor =0
    do n=2,i-1
        if(mod(i,n).eq.0) then 
            factor = factor +1
        end if
    end do
    if(factor.eq.0) then
          num=i
          rev=0
          do while(num>0)
            rev=rev*10+(mod(num,10))
            num=num/10
          end do
          if(i .eq. rev) then
            print *,i
          end if
    end if     
end do
end