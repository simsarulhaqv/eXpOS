integer main()
{
	integer counter1;
	integer counter2;
	integer temp1;
	integer temp2;
	integer pid;
	integer status;
	integer flag;
	integer count;
	flag = 0;

	pid = Fork();

	count = 1;
	counter1 = 1;
	counter2 = 2;
	while (count <= 50 && counter2 <= 50 && counter1 < 50) do 
		if(pid == -2) then
			if (flag == 1) then
				status = Wait(1);
			endif;
			flag = 1;
			temp2 = counter2;
			while(counter2 < temp2 + 10) do
				print(counter2);
				count = count + 1;
				counter2 = counter2 + 2;
			endwhile;
			status = Signal();
		endif;

		if(pid == 1) then
			status = Wait(-2);
			temp1 = counter1;
			while(counter1 < temp1 + 10) do
				print(counter1);
				count = count + 1;
				counter1 = counter1 + 2;
			endwhile;
			status = Signal();
		endif;		
	endwhile;	
	return 0;
}
