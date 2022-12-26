#include "account.h"
#include <string>
#include "AccountBuilder.h"

using namespace std;

AccountBuilder Account::create(string accountNum) {
	return AccountBuilder{ accountNum };
}

ostream& operator<<(ostream& os, const Account& obj) {
	return os << obj.lastName << " "
		<< obj.firstName << " "
		<< obj.streetAddress << " "
		<< obj.unit << " "
		<< obj.city << " "
		<< obj.state << " "
		<< obj.zip << " "
		<< obj.dob << " "
		<< obj.ssn << " "
		<< obj.emailAddress << " "
		<< obj.mobileNumber << " "
		<< obj.accountNumber << endl;
}
