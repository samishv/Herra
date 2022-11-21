for num=10:99
  b=mod(num,10);  
  a=fix(num/10);

  if(mod(num,8)==0 & mod(num,5)~=0)
      num2=b*1e1+a;
      if(mod(num2,5)==0 & mod(num2,8)~=0)
          fprintf('El numero %5d cumple la condicion \n', num)
      end
  end
end