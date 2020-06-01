function proimage = draw(proimage,one)
[row,col] = size(proimage);
x = one(4);
y = one(5);
color = one(2);
length = one(3);
proimage(y,x) = color;
b=0;
for i = 6:length+5
	switch one(i)
		case 1
			if(x-1>=1&&y-1>=1)
				x = x - 1;
				y = y - 1;
				proimage(y,x) = color;
			else
				b=1;
				break;
			end
		case 2
			if(y-1>=1)
				y = y - 1;
				proimage(y,x) = color;
			else
				b=1;
				break;
			end
		case 3
			if(x+1<=col&&y-1>=1)
				x = x + 1;
				y = y - 1;
				proimage(y,x) = color;
			else
				b=1;
				break;
			end
		case 4
			if(x-1>=1)
				x = x - 1;
				proimage(y,x) = color;
			else
				b=1;
				break;
			end
		case 5
			if(x+1<=col)
				x = x + 1;
				proimage(y,x) = color;
			else
				b=1;
				break;
			end
		case 6
			if(x-1>=1&&y+1<=row)
				x = x - 1;
				y = y + 1;
				proimage(y,x) = color;
			else
				b=1;
				break;
			end
		case 7
			if(y+1<=row)
				y = y + 1;
				proimage(y,x) = color;
			else
				b=1;
				break;
			end
		case 8
			if(x+1<=col&&y+1<=row)
				x = x + 1;
				y = y + 1;
				proimage(y,x) = color;
			else
				b=1;
				break;
			end
	end
	if(b==1)
		break;
	end
end