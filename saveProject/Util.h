#pragma once

#include <vector>
#include <string>
#include "RuleOneResp.h"
#include "RuleTwoResp.h"

using namespace std;

class Util
{
public:
	static void printResultsForRuleOne(vector<RuleOneResp>);
	static void printResultsForRuleTwo(vector<RuleTwoResp>);
	static void saveRuleOneInFile(string fileName);
	static void saveRuleTwoInFile(string fileName);
};

