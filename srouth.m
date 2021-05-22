function [] = srouth(n)
%length input vector
coeff=length(n);
%--------
a=coeff/2;
A=round(a);
m=0;
z=0;
%--------
%making the table
%The number of sentences is even
    table=zeros(coeff,A);
%First and second row
if mod(coeff,2)==0 
  for j=1:a
   table(1,j)=n(1,(2*m+1));
   table(2,j)=n(1,(2*m+2));
      m=m+1;
  end
  elseif mod(coeff,2)==1
    for q=1:A
    table(1,q)=n(1,(2*m+1));
    if q==A
        table(2,A)=0;
    elseif q~=A
    table(2,q)=n(1,(2*m+2));
    end
      m=m+1;
    end
end
%The third row is up to the last one
%considering special cases(putting eps)
%considering special cases(define auxiliary function)
for f=2:coeff-1
 if table(f,1)~=0
          o=table(f,1);
          for t=1:A-1
        table(f+1,t)=(table(f,1)*table(f-1,t+1)-table(f-1,1)*table(f,t+1))/o;
          end
    elseif table(f,:)==0
      z=coeff-f+1;
            for u=1:A-1   
          table(f,u)=table(f-1,u)*z;
          z=z-1;
            end
for k=f+1:coeff-1
      for l=1:A-1
          y=table(k-1,1);
        table(k,l)=(table(k-1,1)*table(k-2,l+1)-table(k-2,1)*table(k-1,l+1))/y;
      end
end

        elseif table(f,1)==0
      table(f,1)=0.01; 
for k=f+1:coeff-1
      for l=1:A-1
          y=table(k-1,1);
        table(k,l)=(table(k-1,1)*table(k-2,l+1)-table(k-2,1)*table(k-1,l+1))/y;
      end
end
     
 end
end
%the last row
table(coeff,1)=n(1,coeff);
%answer
%*************************
fprintf('\n Routh-Hurwitz Table:\n')
table 
%*************************
Right_poles=0;
for i=1:coeff-1
    if sign(table(i,1))*sign(table(i+1,1))==-1
        Right_poles=Right_poles+1;
    end
end
fprintf('\n Number Of Right Poles =%2.0f\n',Right_poles)

%------------------------------------------
fprintf('\n Given Polynomials Coefficents Roots :\n')
ROOTS=roots(n)



end
