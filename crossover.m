function [one,two] = crossover(one,two)
lenone = one(3);
lentwo = two(3);
min = lenone;
if(lentwo<min)
	min=lentwo;
end
cut = unidrnd(min-1);
temp = one(cut+5:lenone+5);
one(cut+5:lenone+5) = [];
one = [one, two(cut+5:lentwo+5)];
two(cut+5:lentwo+5) = [];
two = [two, temp];
two(3) = lenone;
one(3) = lentwo;
if(rand()>0.8)
	temp = one(5);
	one(5) = two(5);
	two(5) = temp;
end