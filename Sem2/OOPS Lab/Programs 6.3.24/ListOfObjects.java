import java.util.*; 
public class Courses {
	String courseName;
	String courseID;
	int credits;
	String type;
	public void passDetails(String cN, String cI, int cre, String t){
		courseName = cN;
		courseID = cI;
		credits = cre;
		type = t;
	}
	public void displayCourseDetails() {
		System.out.println("Course Name: " + courseName);
		System.out.println("Course ID: " + courseID);
		System.out.println("Credits: " + credits);
		System.out.println("Type: " + type);
	}
	public static void main(String[] args) {
		Courses[] courseList = new Courses[10];
		courseList[0].passDetails("Mathematics For Intelligent Systems 1", "23MAT112", 4, "core");
		courseList[1].passDetails("Elements Of Computing Systems 1", "23AID102", 3, "core");
		courseList[2].passDetails("Introduction To Electronics Engineering", "23ECE102", 3, "core");
		courseList[3].passDetails("Introduction To Biological Data", "23BIO112", 3, "core");
		courseList[4].passDetails("Technical Communication", "23ENG111", 3, "core");
		courseList[5].passDetails("Foundations Of Indian Heritage", "23AVP102", 3, "core");
		courseList[6].passDetails("Introduction To Materials Informatics", "23CHY115", 3, "core");
		courseList[7].passDetails("Glimpses Of Glorious India", "23AVP112", 3, "core");
		courseList[8].passDetails("Data Structures And Algorithms", "23CSE114", 3, "core");
		courseList[9].passDetails("Object-Oriented Programming", "23AID111", 3, "core");
		for (int i = 0; i < 10; i++) {
			courseList[i].displayCourseDetails();
		}
	}

}
