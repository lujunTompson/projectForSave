#include "Util.h"
#include <iostream>
#include <iomanip>      // std::setw

using namespace std;

void Util::printResultsForRuleOne(vector<RuleOneResp> results)
{
	cout << left 
		<< setw(21) << setfill('-') << '+'
		<< setw(21) << setfill('-') << '+'
		<< setw(21) << setfill('-') << '+' 
		<< setw(51) << setfill('-') << '+' 
		<< setw(31) << setfill('-') << '+'
		<< '+' << endl;

	cout << left
		<< '|' << setfill(' ') << setw(20) << "Name"
		<< '|' << setfill(' ') << setw(20) << "Account Number"
		<< '|' << setfill(' ') << setw(20) << "Transaction Number"
		<< '|' << setfill(' ') << setw(50) << "Merchant"
		<< '|' << setfill(' ') << setw(30) << "Transaction Amount"
		<< '|' << endl;

	cout << left
		<< setw(21) << setfill('-') << '+'
		<< setw(21) << setfill('-') << '+'
		<< setw(21) << setfill('-') << '+'
		<< setw(51) << setfill('-') << '+'
		<< setw(31) << setfill('-') << '+'
		<< '+' << endl;

	for (auto & result : results) {
		cout << result;
	}


	cout << left
		<< setw(21) << setfill('-') << '+'
		<< setw(21) << setfill('-') << '+'
		<< setw(11) << setfill('-') << '+'
		<< setw(51) << setfill('-') << '+'
		<< setw(31) << setfill('-') << '+'
		<< '+' << endl;

}

void Util::printResultsForRuleTwo(vector<RuleTwoResp> results)
{
	cout << left
		<< setw(21) << setfill('-') << '+'
		<< setw(21) << setfill('-') << '+'
		<< setw(21) << setfill('-') << '+'
		<< setw(31) << setfill('-') << '+'
		<< setw(31) << setfill('-') << '+'
		<< '+' << endl;

	cout << left
		<< '|' << setfill(' ') << setw(20) << "Name"
		<< '|' << setfill(' ') << setw(20) << "Account Number"
		<< '|' << setfill(' ') << setw(20) << "Transaction Number"
		<< '|' << setfill(' ') << setw(30) << "Expected Transaction Location"
		<< '|' << setfill(' ') << setw(30) << "Actual Transaction Location"
		<< '|' << endl;

	cout << left
		<< setw(21) << setfill('-') << '+'
		<< setw(21) << setfill('-') << '+'
		<< setw(21) << setfill('-') << '+'
		<< setw(31) << setfill('-') << '+'
		<< setw(31) << setfill('-') << '+'
		<< '+' << endl;

	for (auto & result : results) {
		cout << result;
	}


	cout << left
		<< setw(21) << setfill('-') << '+'
		<< setw(21) << setfill('-') << '+'
		<< setw(21) << setfill('-') << '+'
		<< setw(31) << setfill('-') << '+'
		<< setw(31) << setfill('-') << '+'
		<< '+' << endl;
}
