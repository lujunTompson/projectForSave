#pragma once
#include <mysql.h>
#include <string>

using namespace std;

class MySQLConnector
{
private:
	MYSQL* dbConnect;

public:
	MySQLConnector(const string host, const string user,
		const string password, const string port);
	~MySQLConnector();

	vector<
};


