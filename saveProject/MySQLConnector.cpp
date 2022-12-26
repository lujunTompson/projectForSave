#include "MySQLConnector.h"
#include <iostream>

using namespace std;

MySQLConnector::MySQLConnector(const string host, const string user, const string password, const string database)
{
	dbConnect = mysql_init(0);
	dbConnect = mysql_real_connect(dbConnect, host.c_str(), user.c_str(), password.c_str(), database.c_str(), 3306, NULL, CLIENT_MULTI_STATEMENTS);
	if (!dbConnect) {
		message("MySQL connect failed! ", mysql_error(dbConnect));
	}
}

MySQLConnector::~MySQLConnector()
{
	mysql_close(dbConnect);
}

vector<RuleOneResp> MySQLConnector::filterByRuleOne()
{
	MYSQL_RES* res;
	MYSQL_ROW row;

	string sql = "with temp_table as ( \
		SELECT account_number,MIN(transaction_amount) Minimum,MAX(CASE WHEN Quartile = 1 THEN transaction_amount END) 1Quartile,\
		MAX(CASE WHEN Quartile = 2 THEN transaction_amount END) Median,\
		MAX(CASE WHEN Quartile = 3 THEN transaction_amount END) 3Quartile,\
		MAX(transaction_amount) Maximum,\
		COUNT(1) AS Count\
		FROM(\
			SELECT\
			account_number,\
			transaction_amount,\
			NTILE(4) over(\
				PARTITION by account_number\
				ORDER BY transaction_amount\
			) AS Quartile\
			from `transaction`\
		) Vals\
		GROUP BY\
		account_number\
		ORDER BY\
		account_number\
		),\
\
		table2 as(\
			select * from temp_table\
	where Minimum < 1Quartile - 15 * (3Quartile - 1Quartile)\
		)\
\
		select CONCAT(account_info.first_name, ' ', account_info.last_name) as Name, \
		`transaction`.account_number as 'Account Number', `transaction`.transaction_number as 'Transaction Number', \
		`transaction`.merchant_description as 'Merchant', `transaction`.transaction_amount as 'Transaction Amount'\
		from `transaction`\
		inner join table2  on `transaction`.account_number = table2.account_number\
		inner join account_info  on `transaction`.account_number = account_info.account_number\
		where `transaction`.transaction_amount < 1Quartile - 15 * (3Quartile - 1Quartile)\
		order by `transaction`.account_number";

	vector<RuleOneResp> resps;


	if (mysql_query(dbConnect, sql.c_str())) {
		message("MySQL connect failed! ", mysql_error(dbConnect));
		return resps;
	}

	res = mysql_use_result(dbConnect);

	if (res) {
		while ((row = mysql_fetch_row(res))) {
			string name(row[0]);
			string accountNum(row[1]);
			string transNum(row[2]);
			string merchant(row[3]);
			string transactionAmount(row[4]);
			RuleOneResp* curRes = new RuleOneResp(name, accountNum, transNum, merchant, transactionAmount);
			resps.push_back(*curRes);
			cout << *curRes;
		}
	}

	return resps;
}

vector<RuleTwoResp> MySQLConnector::filterByRuleTwo()
{
	MYSQL_RES* res;
	MYSQL_ROW row;

	string sql = "SELECT CONCAT(a.first_name, ' ',a.last_name) as Name, a.account_number as 'Account Number', t.transaction_number as 'Transaction Number', a.state as 'Expected Transaction Location', RIGHT(t.merchant_description, 2) as 'Actual Transaction Location' \
		from `transaction` t \
		inner JOIN `account_info` a \
		on t.account_number = a.account_number \
	where RIGHT(merchant_description, 2) != a.state \
	order by a.account_number";

	vector<RuleTwoResp> resps;


	if (mysql_query(dbConnect, sql.c_str())) {
		message("MySQL connect failed! ", mysql_error(dbConnect));
		return resps;
	}

	res= mysql_use_result(dbConnect);
	
	if (res) {
		while ((row = mysql_fetch_row(res))) {
			string name(row[0]);
			string accountNum(row[1]);
			string transNum(row[2]);
			string expLocation(row[3]);
			string actLocation(row[4]);
			RuleTwoResp* curResult = new RuleTwoResp(name, accountNum, transNum, expLocation, actLocation);
			resps.push_back(*curResult);
			cout << *curResult;
		}
	}

	return resps;
}

void MySQLConnector::message(string msg, const char* error)
{
	string errorStr(error);
	cout << msg << error << endl;
}
