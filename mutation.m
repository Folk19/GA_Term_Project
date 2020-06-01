function one = mutation(one,row,col)

if(rand()>0.8)
	one(2) = unidrnd(255);
end
if(rand()>0.5)
	one(4) = unidrnd(col);
	one(5) = unidrnd(row);
end
if(rand()>0.8)
	leng = unidrnd(480)+20;
	if(leng<one(3))
		for i = 6:leng+5
			if(rand()>double(1/leng))
				one(i) = unidrnd(8);
			end
		end
		one(leng+6:end)=[];
		one(3)=leng;
	elseif(leng>=one(3))
		len=one(3);
		for i = 6:len+5
			if(rand()>double(1/len))
				one(i) = unidrnd(8);
			end
		end
		if(leng>one(3))
			one = [one,unidrnd(8,1,leng-one(3))];
			one(3)=leng;
		end
	end
else
	len=one(3);
	for i = 6:len+5
		if(rand()>double(1/len))
			one(i) = unidrnd(8);
		end
	end
end
