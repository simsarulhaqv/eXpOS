integer main()
{
	integer counter;
	integer pid;
	integer count;
	integer flag;
	integer status;
	counter = 1;
	count = 10;
	flag = 0;
	pid = Fork();
	status = Wait(1);


	


	if (pid != -2) then
		status = Wait(-2);
		while(counter <= 50) do
			print(counter);
			counter = counter + 2;
			if(counter == count) then
				flag = flag + 1;
				status = Signal();
			endif;
			if (flag == 2) then
				flag = 0;
				count = count + 10;
			endif;
		endwhile;
	endif;



	counter = 2;
	if (pid == -2) then
		while(counter <= 50) do
			print(counter);
			counter = counter + 2;
			if(counter == count) then
				flag = flag + 1;
				status = Signal();
			endif;
			if (flag == 2) then
				flag = 0;
				count = count + 10;
			endif;	
		endwhile;
	endif;



	return 0;
}
