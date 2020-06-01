clc; clear all; close all;
im = rgb2gray(imread(['./123.jpg']));
[row,col] = size(im);
proimage = zeros([row,col],'uint8')+255;
person = init(row,col);
fitness_value = [];
for i = 1:100
	person{i,1}(1) = fitness(person{i,1},proimage,im);
end
for i = 1:240000
	disp(i);
	len=length(person);
	for j = 1:2:10
		randpick1 = unidrnd(len);
		randpick2 = unidrnd(len);
		while(randpick2==randpick1)
			randpick2 = unidrnd(len);
		end
		[person{len+j,1},person{len+j+1,1}] = crossover(person{randpick1,1},person{randpick2,1});
		person{len+j,1} = mutation(person{len+j,1},row,col);
		person{len+j+1,1} = mutation(person{len+j+1,1},row,col);
		person{len+j,1}(1) = fitness(person{len+j,1},proimage,im);
		person{len+j+1,1}(1) = fitness(person{len+j+1,1},proimage,im);
	end
	firstElement = cellfun(@(x)x(1),person);
	[~,sortIdx] = sort(firstElement);
	person = person(sortIdx);
	index = 0;
	for j = 1:length(person)
		temp = person{j,1}(1);
		if(temp~=-1&&temp<100)
			index = j;
			break;
		end
	end
	if(index~=0)
		proimage = draw(proimage,person{index,1});
	end
	if(index>10)
		person(1:10) = [];
	else
		person(1:index) = [];
		len=length(person);
		l=9-index;
		person(len-l:len)=[];
	end
	if(mod(i,120000)==0)
		figure(1);
		imshow(proimage);
		k = waitforbuttonpress;
		%fitness_value = [fitness_value,(25526763-double(sum(sum(abs(im-proimage)))))/568320];
		%imwrite(proimage, ['./horse/h1 (' num2str(i) ').jpg']); 
	end
end