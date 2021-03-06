//#include <stdio.h>
#include <iostream>

// Singleton Template (Traditional way)
class Random{
public:
	static Random& Get(){ // Get function
		static Random s_Instance; //instantiated the instance
		return s_Instance;
	}
	
	static float Float() {
		return Get().IFloat();
		}
	
private:
	float IFloat() {
		return m_RandomGenerator;
		}
	Random(){} //constructor
	float m_RandomGenerator = 0.5f;
	static Random s_Instance;
	
};




int main()
{
	printf("This is the Design patterns side\n");
	
	//	Most 5 popular design patterns
	//	Creational patterns:
	//	1. Singleton:
	std::cout << "Singleton pattern" << "\n";
	float number = Random::Float();
	std::cout << number << "\n";
	
	
	
	return 0;
}
