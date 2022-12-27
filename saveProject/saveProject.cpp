// saveProject.cpp : 此文件包含 "main" 函数。程序执行将在此处开始并结束。
//

#include <iostream>
#include <mysql.h>
#include <vector>

#include "MySQLConnector.h"
#include "RuleOneResp.h"
#include "RuleTwoResp.h"
#include "Util.h"

using namespace std;

bool query(MYSQL* mysql, const char *sql) {
	int res = mysql_real_query(mysql, sql, strlen(sql));
	if (res != 0) {
		cerr << "mysql_real_query failed!" << mysql_error(mysql) << endl;
		return false;
	}
	else {
		return true;
	}
}

MYSQL_RES * storeResult(MYSQL* mysql) {
	MYSQL_RES *result = mysql_store_result(mysql);
	if (!result) {
		cerr << "mysql_store_result failed!" << mysql_error(mysql) << endl;
		return NULL;
	}
	else {
		return result;
	}
}

void freeResult(MYSQL_RES *result) {
	if (result) {
		mysql_free_result(result);
		result = NULL;
	}
}

void printResults() {

}

int main()
{
	/*
		MYSQL* connect;
	MYSQL_ROW row;
	MYSQL_RES *res;
	connect = mysql_init(0);
	connect = mysql_real_connect(connect, "localhost", "root", "zgsx1997", "save", 3306, NULL, CLIENT_MULTI_STATEMENTS);
	if (!connect) {
		cout << "MySQL connect failed!" << mysql_error(connect) << endl;
	}
	string sql = "";
	
	
	Account account = Account::create("dfdfd").city("city").dob("dib");
	*/

	MySQLConnector* mysql = new MySQLConnector("localhost", "root", "zgsx1997", "save");

	//get results by rule1
	vector<RuleOneResp> resultOne = mysql->filterByRuleOne();
	Util::printResultsForRuleOne(resultOne);

	//get results by rule2
	vector<RuleTwoResp> resultTwo = mysql->filterByRuleTwo();
	Util::printResultsForRuleTwo(resultTwo);

	

}

// 运行程序: Ctrl + F5 或调试 >“开始执行(不调试)”菜单
// 调试程序: F5 或调试 >“开始调试”菜单

// 入门使用技巧: 
//   1. 使用解决方案资源管理器窗口添加/管理文件
//   2. 使用团队资源管理器窗口连接到源代码管理
//   3. 使用输出窗口查看生成输出和其他消息
//   4. 使用错误列表窗口查看错误
//   5. 转到“项目”>“添加新项”以创建新的代码文件，或转到“项目”>“添加现有项”以将现有代码文件添加到项目
//   6. 将来，若要再次打开此项目，请转到“文件”>“打开”>“项目”并选择 .sln 文件
