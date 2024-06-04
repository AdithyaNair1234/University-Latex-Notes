public class Room {
	int RoomNo;
	String roomType;
	boolean ACAvailable;
	float roomArea;
	public float calculateRoomRent() {
		float rent;
		float basePrice = 0;
		if(roomType == "Deluxe")
			basePrice = 2400;
		if(roomType == "Royale")
			basePrice = 4000;	
		rent = basePrice*roomArea;
		return rent;
	}
	void display(){
		System.out.println("Room Number: "+this.RoomNo);
		System.out.println("Room Type: "+this.roomType);
		System.out.println("Room Area: "+this.roomArea);
		System.out.println("AC Available: "+this.ACAvailable);
	}
}
