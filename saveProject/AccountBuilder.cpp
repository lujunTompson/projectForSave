#include "AccountBuilder.h"

AccountBuilder& AccountBuilder::city(string city) {
	account.city = city;
	return *this;
}

AccountBuilder& AccountBuilder::dob(string dob) {
	account.dob = dob;
	return *this;
}

AccountBuilder& AccountBuilder::ssn(string ssn) {
	account.ssn = ssn;
	return *this;
}

AccountBuilder& AccountBuilder::emailAddress(string emailAddress) {
	account.emailAddress = emailAddress;
	return *this;
}

AccountBuilder& AccountBuilder::firstName(string firstName) {
	account.firstName = firstName;
	return *this;
}

AccountBuilder& AccountBuilder::lastName(string lastName) {
	account.lastName = lastName;
	return *this;
}

AccountBuilder& AccountBuilder::streetAddress(string streetAddress) {
	account.streetAddress = streetAddress;
	return *this;
}

AccountBuilder& AccountBuilder::unit(string unit) {
	account.unit = unit;
	return *this;
}

AccountBuilder& AccountBuilder::state(string state) {
	account.state = state;
	return *this;
}

AccountBuilder& AccountBuilder::zip(string zip) {
	account.zip = zip;
	return *this;
}

AccountBuilder& AccountBuilder::mobileNumber(string mobileNumber) {
	account.mobileNumber = mobileNumber;
	return *this;
}