#pragma once
#include <mysql.h>
#include <string>
#include <vector>
#include "RuleOneResp.h"
#include "RuleTwoResp.h"

using namespace std;

class MySQLConnector
{
private:
	MYSQL* dbConnect;

public:
	MySQLConnector(const string host, const string user,
		const string password, const string database);

	~MySQLConnector();

	vector<RuleOneResp> filterByRuleOne();

	vector<RuleTwoResp> filterByRuleTwo();

	void message(string, const char* = "");
};


