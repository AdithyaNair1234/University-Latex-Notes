import java.util.*;
public class linkedList{
	Node head;
	class Node {
		int data;
		Node next;
		Node(int data){
			this.data = data;
		}
	}
	void insert(int data){
		Node newNode = new Node(data);
		if(this.head == null){
			head = new Node(data);
		}
		else {
			Node currentNode = this.head;
			while(currentNode != null){
				currentNode = currentNode.next;
			}

			currentNode = new Node(data);
		}
	}
	// Counting at a given position starting from 0
	void delete(int position) {
		Node currentNode = this.head;
		int counter = 0;
		while(counter != position){
			currentNode = currentNode.next;
			counter++;
		}
		//Node deletedNode = currentNode.next;
		// currentNode.next = currentNode.next.next;
		// return deletedNode;
	}
	void printList(){
		Node currentNode = this.head;
		while (currentNode!= null) {
			System.out.println(currentNode.data);
			currentNode = currentNode.next;
		}
	}
	public static void main(String[] args) {
		linkedList list = new linkedList();
		list.insert(5);
		list.insert(8);
		list.insert(4);
		list.printList();
	}
	
}
