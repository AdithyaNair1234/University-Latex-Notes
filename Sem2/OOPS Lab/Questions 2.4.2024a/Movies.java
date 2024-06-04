import java.util.*;
public class Movies {
	float rating;
	String title;
	String language;
	float ticketCost;
	Movies(String t, float r, String l){
		title = t;
		language = l;
		rating = r;
	}
	Movies(String t, float r, String l, float tC){
		title = t;
		language = l;
		rating = r;
		ticketCost = tC;
	}

	Movies(String t, String l){
		title = t;
		rating = 0.0f;
		language = l;
	}
	void print(){
		System.out.println("The title of the movie is: "+this.title);
		System.out.println("The rating of the movie is: "+this.rating);
		System.out.println("The language of the movie is: "+this.language);
		System.out.println("The ticket cost of the movie is: "+this.ticketCost);
		System.out.println();

	}
	float totalTicketCost(int seats){
		return ticketCost*seats;	
	}
	public static void main(String[] args) {
		String[] title = {"Cars", "Cars 2", "Cars 3"};
		float[] rating = {4.5f, 5.0f, 4.0f};
		String[] language = {"English","English","English"};
		float[] ticketCost = {300f,240f,280f};
		Movies[] movieArray = new Movies[3];
		for (int i = 0; i < title.length; i++) {
			movieArray[i] = new Movies(title[i],rating[i],language[i],ticketCost[i]); 
		}
		for (int i = 0; i < title.length; i++) {
			movieArray[i].print();
		}
	}
}
