function person = init(row,col)

for i=1:100
	color = unidrnd(255);
	length = unidrnd(480)+20;
	x = unidrnd(col);
	y = unidrnd(row);
	direction = unidrnd(8,1,length);
	temp = [0,color,length,x,y,direction];
	person{i,1}=temp;
end