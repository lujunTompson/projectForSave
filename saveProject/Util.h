#pragma once

#include <vector>
#include <string>
#include "RuleOneResp.h"
#include "RuleTwoResp.h"

using namespace std;

class Util
{
private:
	static void osRuleOneResult(vector<RuleOneResp>, ostream& os);
	static void osRuleTwoResult(vector<RuleTwoResp>, ostream& os);
public:
	static void printResultsForRuleOne(vector<RuleOneResp>);
	static void printResultsForRuleTwo(vector<RuleTwoResp>);
	static void saveRuleOneResultsInFile(vector<RuleOneResp>, string fileName);
	static void saveRuleTwoResultsInFile(vector<RuleTwoResp>, string fileName);
};

