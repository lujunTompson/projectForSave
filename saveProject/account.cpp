#include "account.h"
#include <string>
#include "AccountBuilder.h"

using namespace std;

AccountBuilder Account::create(string accountNum) {
	return AccountBuilder{ accountNum };
}
