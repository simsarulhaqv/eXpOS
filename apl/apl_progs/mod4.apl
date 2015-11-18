integer main()
{
	integer counter;
	integer pid;
	integer status;
	integer flag;
	flag = 0;
	pid = Fork();
	// print(pid);
	// while(1<2) do

		if (pid != -2) then
			counter = 1;
			status = Wait(-2);
			while(counter <= 50) do
				
				print(counter);
				counter = counter + 2;
				if (counter % 10 == 1) then
					status = Signal();
					status = Wait(-2);
				endif;
			endwhile;
		endif;

		if (pid == -2) then
			counter = 2;
			if (flag == 1) then
				status = Wait(1);
			endif;
			flag = 1;
			while(counter <= 50) do
				print(counter);
				counter = counter + 2;
				if (counter % 10 == 0) then
					status = Signal();
					status = Wait(1);
				endif;
			endwhile;
		endif;

		

	// endwhile;
	return 0;
}
