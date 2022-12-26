#include "RuleOneResp.h"

using namespace std;

ostream& operator<<(ostream& os, const RuleOneResp& obj) {
	return os << obj.name << "  "
		<< obj.accountNumber << "  "
		<< obj.transactionNumber << "  "
		<< obj.merchant << "  "
		<< obj.transactionAmount << endl;
}