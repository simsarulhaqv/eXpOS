decl
	integer pid,i,s;
enddecl
integer main()
{
	print ("Before Fork");

	i=0;
	while(i<24) do
		pid = Fork();
		print("This is important");
		print(i);
		print("done");
		// print("After Fork");
		if(pid == -2) then
			print(";;;;;;;;;");
			print(i);
			s=Exec("ex10.xsm");
			break;
		endif;
		i=i+1;
	endwhile;

	s=Wait(pid);
	return 0;
}
