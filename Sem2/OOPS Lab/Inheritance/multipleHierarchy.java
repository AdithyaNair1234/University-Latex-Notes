class Vehicle {
	void printMove(){
		System.out.println("Move");
	}
	public static void main(String[] args) {
		Car Swift = new Car();
		Swift.driverLicense();
		Swift.printMove();

	}

}
class Car extends Vehicle {
	void driverLicense(){
		System.out.println("I have a car's driving licence");
	}
	}
