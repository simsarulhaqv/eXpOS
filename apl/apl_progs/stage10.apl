integer main()
{
	integer childpid, retval;
	childpid = Fork();
	if(childpid == -2) then
		retval = Exec("odd.xsm");
	else
		if(childpid != -1) then
			print("s");
			print(childpid);
			print("f");
		endif;
	endif;
	return 0;
}
