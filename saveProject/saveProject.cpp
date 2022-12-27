// saveProject.cpp : This file contains the "main" function. Program execution will start and end here.
//

#include <iostream>
#include <mysql.h>
#include <vector>

#include "MySQLConnector.h"
#include "RuleOneResp.h"
#include "RuleTwoResp.h"
#include "Util.h"

using namespace std;


int main()
{

	MySQLConnector* mysql = new MySQLConnector("localhost", "root", "zgsx1997", "save");

	//get results by rule1
	cout << "get results by rule1:" << endl;
	vector<RuleOneResp> resultOne = mysql->filterByRuleOne();
	Util::printResultsForRuleOne(resultOne);
	Util::saveRuleOneResultsInFile(resultOne, "rule_one_result.txt");
	cout << "finish saving results in file: rule_one_result.txt" << endl;

	//get results by rule2
	cout << endl << "get results by rule2: " << endl;
	vector<RuleTwoResp> resultTwo = mysql->filterByRuleTwo();
	Util::printResultsForRuleTwo(resultTwo);
	Util::saveRuleTwoResultsInFile(resultTwo, "rule_two_result.txt");
	cout << "finish saving results in file: rule_two_result.txt" << endl;


	system("pause");

}
