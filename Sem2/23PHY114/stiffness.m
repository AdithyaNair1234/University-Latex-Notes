function kl = localstiffnessCreator(E,A,l,theta)
	k = E*A/l;
	R = [cos(theta) -sin(theta);sin(theta) cos(theta)];
	R4 = [R zeros(2,2);zeros(2,2) R];
	kl = [k 0 -k 0;0 0 0 0; -k 0 k 0; 0 0 0 0];
	ke = R4*kl*R4';

	
