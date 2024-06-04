public class Device {
	void isTech(){
		System.out.println("this am a device.");
	}
}
class Phone extends Device{
	boolean isPortable(){
		return true;
	}
}
class PersonalComputer extends Device{
	boolean isPortable(){
		return false;
	}
}
