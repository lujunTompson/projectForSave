#include "RuleTwoResp.h"

using namespace std;

ostream& operator<<(ostream& os, const RuleTwoResp& obj) {
	return os << obj.name << "  "
		<< obj.accountNumber << "  "
		<< obj.transactionNumber << "  "
		<< obj.expLocation << "  "
		<< obj.actLocation << endl;
}
