#pragma once
#include "account.h"

class AccountBuilder
{
	Account account;

public:
	AccountBuilder(string accountNum) : account(accountNum) {}

	//conversion functions
	operator Account() const { return move(account); }


	AccountBuilder& lastName(string);
	AccountBuilder& firstName(string);
	AccountBuilder& streetAddress(string);
	AccountBuilder& unit(string);
	AccountBuilder& city(string);
	AccountBuilder& state(string);
	AccountBuilder& zip(string);
	AccountBuilder& dob(string);
	AccountBuilder& ssn(string);
	AccountBuilder& emailAddress(string);
	AccountBuilder& mobileNumber(string);

};

