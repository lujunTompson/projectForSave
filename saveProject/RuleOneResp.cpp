#include "RuleOneResp.h"
#include <iomanip>      // std::setw


using namespace std;

ostream& operator<<(ostream& os, const RuleOneResp& obj) {
	return os << left
		<< '|' << setfill(' ') << setw(20)  << obj.name
		<< '|' << setfill(' ') << setw(20) << obj.accountNumber
		<< '|' << setfill(' ') << setw(20) << obj.transactionNumber
		<< '|' << setfill(' ') << setw(50) << obj.merchant
		<< '|' << setfill(' ') << setw(30) << obj.transactionAmount
		<< '|' << endl;
		
}