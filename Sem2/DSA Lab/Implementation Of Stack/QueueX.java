public class QueueX {
	int f;
	int r;
	int max;
	int q[];
	QueueX(int x){
		int max = x;
		f = r = -1;
		q = new long[max];
	}
	enqueue(int x){
		if(f == r && f == -1)
			f = r = 0;
		if(r==max-1){
		System.out.println("Queue is full.");
		}
		else {
		r++;
		q[r]=x; 
		}
	dequeue() {
		int x = q[f]
		f++;
		System.out.println("Deleted: "+x);
	}
	display() {
		for(int i = f;i<=r;i++){
			System.out.println(q[i]);
		}
	}
	isEmpty() {
		if(f==r==-1)
	}
