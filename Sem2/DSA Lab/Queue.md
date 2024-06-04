# Enqueue Function
```java
int enqueue(){
if(r==maxsize - 1)
	System.out.println("Overflow");
else if (r == -1 & f == -1) {
f,r = 0;
a[r] = x;
}
}
```
# Dequeue Function
```java
int dequeue(int x){ // Removes element from front.
if (f == -1){ 
	System.out.println("Underflow");
}
else if (f == r) {
	int x = a[f];
	f,r = -1;
	return x;
}
else {
	int x = a[f];
	f++;
	return x;
}
}

```
# Display Function
```java
void display() {
for(i = f;i<r; i++){
	System.out.println(a[i]);
}
}
```