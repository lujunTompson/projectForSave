#pragma once
#include <string>

using namespace std;


class RuleOneResp
{
private:
	string name, accountNumber, merchant;
	int transactionNumber;
	double transactionAmount;

public:
	RuleOneResp(string name, string accountNum, 
		int transNum, string merchant, double transAmount): 
		name(name), accountNumber(accountNum), transactionNumber(transNum),
		merchant(merchant), transactionAmount(transAmount) {}

	friend ostream& operator<<(ostream& os, const RuleOneResp& obj);

};

