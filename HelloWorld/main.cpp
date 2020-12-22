#include <stdio.h>
#include <iostream>
#include <string>
#include "Log.h"
#include "math.h"
#include <Level4.h> // worst way to include .cpp file (through header file)
#include "Static.h"

//#include <Pointer_&_Reference.cpp>



//use class if the struct have many methods within
class Player{ //	its accessible in default is private
	int x, y;
public:
	void Move(int xa, int ya){
		x += xa;
		y += ya;
		std::cout << "position x: " << x << "\n" << "position y: " << y << std::endl;
	}
};
// class template
class debugLog{ 
	int m_LogLevel = LogLevelInfo;
public:
	const int LogLevelError = 0;
	const int LogLevelWarning = 1;
	const int LogLevelInfo = 2;
	void SetLevel(int level){
		m_LogLevel = level;
	}
	
	void Warn(const char* message){
		if(m_LogLevel >= LogLevelWarning){
			std::cout << "[Warning]" << message << std::endl;
		}
		
	}
	
	void Error(const char* message){
		if(m_LogLevel >= LogLevelError){
			std::cout << "[Error]" << message << std::endl;
		}
	}
	
	void Info(const char* message){
		if(m_LogLevel >= LogLevelInfo){
			std::cout << "[Info]" << message << std::endl;
		}
	}
};

//create interface in C++
class Interface_Shape{
public:
	virtual int getArea() = 0; //	this is pure virtual function. Define this is abstract class
	void setWidth(int w) {
         width = w;
      }
   
      void setHeight(int h) {
         height = h;
      }
   
   protected:
      int width;
      int height;
};

//Implement in other class
//class Cal_Rectangle::public Interface_Shape{
//public:
//	//	implement the method
//      int getArea() { 
//         return (width * height); 
//      }
//}





//use struct if only contains the data
struct Library{ //	its accessible in default is public
	float Chapter;
	std::string name;
	std::string author;
};

int main()
{
	
	//	Level 1: printing message
	
	printf("hello world\n");					// print by stdio.h 
	std::cout << "Hello World" << std::endl; 	// print by iostream library
	Log("H3llo by Log Header file");			// print by self-make header file
	
	add(10, 44);
	
	
	//	Level 2: Basic math function
	
	std::string name = "Jack";		// string data is in the std library --> have to call it out to use it
	int age = 21;
	double saving = 15.000;
	float something = 35;
	int long long weirdShit = 123456789999999;
	bool yesYesYes = false;
//	int numbers[] = [1,2,3,4,5,6,7,8,9]
	int woww(12);	//direct but could be overwrite it
	woww = 15;
	int wowww{11};
	wowww = woww;
//	double what{12.5};
	std::string userInput{};	// using std library to use string
	string message = "Hello";	// using include <string> to use string
	
	std::cout << name << "\n" << age << "\n" << saving << "\n" << something << "\n" << weirdShit << std::endl;
	std::cout << wowww << std::endl;
	std::cin >> userInput;
	std::cout << "Input of the user: " << userInput << std::endl;
	
	//	Level 3: Loop and condition arguments
	do{
		printf("ora ora ora ora ora ora ora ora\n");
	} while (yesYesYes == true);
	
	for(int i = 0; i < 5; i++ ){
		printf("kcaJ\n");
	}
	
	//	Bonus level: Static functions
	int s_var = 10;
	

	//	Level 4: Pointers & References
	int a = 15;
	int b = 2;
	
	int* ref = &a;
	ref = &b;
//	int& ref = a;
	Increment(a);
//	ref = 2;
	std::cout << *ref <<"\n";
	
	
	//	Level 5: OOP things
	//	5.1: Classes
	Player player;
	player.Move(5, -8);
	
	debugLog debuglog;
	debuglog.SetLevel(debuglog.LogLevelError);
	debuglog.Warn("hello");
	debuglog.Error("hello");
	
	//	5.2: Interface
	
	
	return 0;
}
