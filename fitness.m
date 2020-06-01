function fuck = fitness(one,proimage,im)
[row,col] = size(im);
x = one(4);
y = one(5);

color = double(one(2));
length = one(3);
fuckorg = abs(double(proimage(y,x))-double(im(y,x)));
fuck = abs(color - double(im(y,x)));
b=0;
for i = 6:length+5
	switch one(i)
		case 1
			if(x-1>=1&&y-1>=1)
				x = x - 1;
				y = y - 1;
				fuckorg = fuckorg + abs(double(proimage(y,x))-double(im(y,x)));
				fuck = fuck + abs(color - double(im(y,x)));
			else
				b=1;
				break;
			end
		case 2
			if(y-1>=1)
				y = y - 1;
				fuckorg = fuckorg + abs(double(proimage(y,x))-double(im(y,x)));
				fuck = fuck + abs(color - double(im(y,x)));
			else
				b=1;
				break;
			end
		case 3
			if(x+1<=col&&y-1>=1)
				x = x + 1;
				y = y - 1;
				fuckorg = fuckorg + abs(double(proimage(y,x))-double(im(y,x)));
				fuck = fuck + abs(color - double(im(y,x)));
			else
				b=1;
				break;
			end
		case 4
			if(x-1>=1)
				x = x - 1;
				fuckorg = fuckorg + abs(double(proimage(y,x))-double(im(y,x)));
				fuck = fuck + abs(color - double(im(y,x)));
			else
				b=1;
				break;
			end
		case 5
			if(x+1<=col)
				x = x + 1;
				fuckorg = fuckorg + abs(double(proimage(y,x))-double(im(y,x)));
				fuck = fuck + abs(color - double(im(y,x)));
			else
				b=1;
				break;
			end
		case 6
			if(x-1>=1&&y+1<=row)
				x = x - 1;
				y = y + 1;
				fuckorg = fuckorg + abs(double(proimage(y,x))-double(im(y,x)));
				fuck = fuck + abs(color - double(im(y,x)));
			else
				b=1;
				break;
			end
		case 7
			if(y+1<=row)
				y = y + 1;
				fuckorg = fuckorg + abs(double(proimage(y,x))-double(im(y,x)));
				fuck = fuck + abs(color - double(im(y,x)));
			else
				b=1;
				break;
			end
		case 8
			if(x+1<=col&&y+1<=row)
				x = x + 1;
				y = y + 1;
				fuckorg = fuckorg + abs(double(proimage(y,x))-double(im(y,x)));
				fuck = fuck + abs(color - double(im(y,x)));
			else
				b=1;
				break;
			end
	end
	if(b==1)
		break;
	end
end
if(fuckorg<=fuck)
	fuck = -1;
else
	fuck = fuck/length;
end