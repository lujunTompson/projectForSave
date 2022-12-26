#pragma once
#include <string>

using namespace std;

class RuleTwoResp
{
private:
	string name, accountNumber, expLocation, actLocation, transactionNumber;

public:
	RuleTwoResp(string name, string accountNum,
		string transNum, string exp, string act) :
		name(name), accountNumber(accountNum), transactionNumber(transNum),
		expLocation(exp), actLocation(act) {}

	friend ostream& operator<<(ostream& os, const RuleTwoResp& obj);


};

