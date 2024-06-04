function localstiffnessCreator(E,A,l,θ)
	k = E*A/l;
	R = [cos(θ) -sin(θ); sin(θ) cos(θ)];
	R4 = [R zeros(2,2);zeros(2,2) R];
	kl = [k 0 -k 0;0 0 0 0;-k 0 k 0;0 0 0 0];
	kg = R4*kl*R4';
	kg = 
end

