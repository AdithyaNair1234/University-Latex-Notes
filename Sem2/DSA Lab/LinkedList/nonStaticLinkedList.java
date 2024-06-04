import java.util.*;
public class LinkedList {
	Node head;
		class Node {
			int data;
			Node next;
		// Constructor
		Node(int d)
		{
		data = d;
		next = null;
		}
	}
	LinkedList insert(int data)
	{
		Node new_node = new Node(data);
		new_node.next = null;
		if (this.head == null) {
			this.head = new_node;
		}
		else {
			Node last = this.head;
			while (last.next != null) {
				last = last.next;
			}
		last.next = new_node;
		}
		return this;
	}
	public void printList()
	{
		Node currNode = this.head;
		System.out.print("\nLinkedList: ");
		while (currNode != null) {
			System.out.print(currNode.data + " ");
			currNode = currNode.next;
		}
	System.out.println("\n");
	}
	public LinkedList deleteByKey(int key){
		Node currNode = this.head, prev = null;
		if (currNode != null && currNode.data == key) {
			this.head = currNode.next; 
			System.out.println(key + " found and deleted");
			return this;
		}
		while (currNode != null && currNode.data != key) {
			prev = currNode;
			currNode = currNode.next;
		}
		if (currNode != null) {
			prev.next = currNode.next;
			System.out.println(key + " found and deleted");
		}
		if (currNode == null) {
			System.out.println(key + " not found");
		}
		return this;
	}
	LinkedList deleteAtPosition(int index) {
		Node currNode = this.head, prev = null;
		if (index == 0 && currNode != null) {
			this.head = currNode.next; 
			System.out.println(index + " position element deleted");
			return this;
		}

		int counter = 0;
		while (currNode != null) {
				if (counter == index) {
					prev.next = currNode.next;
					System.out.println(index + " position element deleted");
					break;
				}
			else {
				prev = currNode;
				currNode = currNode.next;
				counter++;
			}
		}
		if (currNode == null) {
			System.out.println(index + " position element not found");
		}
		return this;
	}
	public static void main(String[] args){
		LinkedList list = new LinkedList();
		Scanner input = new Scanner(System.in);
		System.out.println("0. Quit");
		System.out.println("1. Insert Element");
		System.out.println("2. Delete Element By Position");
		System.out.println("3. Print out the List");
		System.out.println("Enter your choice: ");

		int value;
		do {
			switch (choice) {
				case 1:
					System.out.println("Enter the value to be inserted: ");
					value = input.nextInt();
					list.insert(value);
					break;
				case 2:
					System.out.println("Enter position to be deleted");
					list.deleteByKey(value);
					break;
				case 3:
					list.printList();
					break;
				case 4:
				default:
					break;
			}
			break;
			
		} while (choice !=0);
	}
}
