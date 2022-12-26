#pragma once
#include <string>

using namespace std;


class RuleOneResp
{
private:
	string name, accountNumber, merchant,transactionNumber,transactionAmount;

public:
	RuleOneResp(string name, string accountNum, 
		string transNum, string merchant, string transAmount): 
		name(name), accountNumber(accountNum), transactionNumber(transNum),
		merchant(merchant), transactionAmount(transAmount) {}

	friend ostream& operator<<(ostream& os, const RuleOneResp& obj);

};

