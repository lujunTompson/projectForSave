#include "RuleTwoResp.h"
#include <iomanip>      // std::setw


using namespace std;

ostream& operator<<(ostream& os, const RuleTwoResp& obj) {
	/*return os << obj.name << "  "
		<< obj.accountNumber << "  "
		<< obj.transactionNumber << "  "
		<< obj.expLocation << "  "
		<< obj.actLocation << endl;
		*/
	return os << left
		<< '|' << setfill(' ') << setw(20) << obj.name
		<< '|' << setfill(' ') << setw(20) << obj.accountNumber
		<< '|' << setfill(' ') << setw(20) << obj.transactionNumber
		<< '|' << setfill(' ') << setw(30) << obj.expLocation
		<< '|' << setfill(' ') << setw(30) << obj.actLocation
		<< '|' << endl;

}
