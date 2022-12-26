#pragma once
#include <string>

using namespace std;

class AccountBuilder;

class Account
{
private:
	string lastName, firstName, streetAddress, unit, city, state, zip, dob;
	string ssn, emailAddress, mobileNumber, accountNumber;

	Account(string accoutNumber) : accountNumber(accountNumber) {}


public:
	friend class AccountBuilder;
	friend ostream& operator<<(ostream& os, const Account& obj);
	static AccountBuilder create(string accountNumber);
};

