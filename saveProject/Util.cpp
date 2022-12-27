#include "Util.h"
#include <iostream>
#include <iomanip>      // std::setw
#include <fstream>


using namespace std;

void Util::osRuleOneResult(vector<RuleOneResp> results, ostream& os)
{
	os << left
		<< setw(21) << setfill('-') << '+'
		<< setw(21) << setfill('-') << '+'
		<< setw(21) << setfill('-') << '+'
		<< setw(51) << setfill('-') << '+'
		<< setw(31) << setfill('-') << '+'
		<< '+' << endl;

	os << left
		<< '|' << setfill(' ') << setw(20) << "Name"
		<< '|' << setfill(' ') << setw(20) << "Account Number"
		<< '|' << setfill(' ') << setw(20) << "Transaction Number"
		<< '|' << setfill(' ') << setw(50) << "Merchant"
		<< '|' << setfill(' ') << setw(30) << "Transaction Amount"
		<< '|' << endl;

	os << left
		<< setw(21) << setfill('-') << '+'
		<< setw(21) << setfill('-') << '+'
		<< setw(21) << setfill('-') << '+'
		<< setw(51) << setfill('-') << '+'
		<< setw(31) << setfill('-') << '+'
		<< '+' << endl;

	for (auto & result : results) {
		os << result;
	}


	os << left
		<< setw(21) << setfill('-') << '+'
		<< setw(21) << setfill('-') << '+'
		<< setw(11) << setfill('-') << '+'
		<< setw(51) << setfill('-') << '+'
		<< setw(31) << setfill('-') << '+'
		<< '+' << endl;
}

void Util::osRuleTwoResult(vector<RuleTwoResp> results, ostream & os)
{
	os << left
		<< setw(21) << setfill('-') << '+'
		<< setw(21) << setfill('-') << '+'
		<< setw(21) << setfill('-') << '+'
		<< setw(31) << setfill('-') << '+'
		<< setw(31) << setfill('-') << '+'
		<< '+' << endl;

	os << left
		<< '|' << setfill(' ') << setw(20) << "Name"
		<< '|' << setfill(' ') << setw(20) << "Account Number"
		<< '|' << setfill(' ') << setw(20) << "Transaction Number"
		<< '|' << setfill(' ') << setw(30) << "Expected Transaction Location"
		<< '|' << setfill(' ') << setw(30) << "Actual Transaction Location"
		<< '|' << endl;

	os << left
		<< setw(21) << setfill('-') << '+'
		<< setw(21) << setfill('-') << '+'
		<< setw(21) << setfill('-') << '+'
		<< setw(31) << setfill('-') << '+'
		<< setw(31) << setfill('-') << '+'
		<< '+' << endl;

	for (auto & result : results) {
		os << result;
	}


	os << left
		<< setw(21) << setfill('-') << '+'
		<< setw(21) << setfill('-') << '+'
		<< setw(21) << setfill('-') << '+'
		<< setw(31) << setfill('-') << '+'
		<< setw(31) << setfill('-') << '+'
		<< '+' << endl;

}

void Util::printResultsForRuleOne(vector<RuleOneResp> results)
{
	osRuleOneResult(results, cout);
}

void Util::printResultsForRuleTwo(vector<RuleTwoResp> results)
{
	osRuleTwoResult(results, cout);
}

void Util::saveRuleOneResultsInFile(vector<RuleOneResp> results, string fileName)
{
	fstream file;
	file.open(fileName, ios_base::out);

	osRuleOneResult(results, file);

	file.close();
}

void Util::saveRuleTwoResultsInFile(vector<RuleTwoResp> results, string fileName)
{
	fstream file;
	file.open(fileName, ios_base::out);

	osRuleTwoResult(results, file);

	file.close();
}


