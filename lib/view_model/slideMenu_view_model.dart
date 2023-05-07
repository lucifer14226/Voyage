import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class NavDrawer extends StatelessWidget {
  const NavDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.blueGrey.shade700,
      child: ListView(
        padding: EdgeInsets.zero,
        children: const <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.greenAccent,
              image: DecorationImage(
                  image: NetworkImage(
                      'https://images.idgesg.net/images/article/2020/08/united_states_usa_currency_money_banknotes_coins_finance_budget_salary_salaries_funding_costs_expenses_profit_revenue_payment_by_andrei_barmashov_gettyimages-1253168184_2400x1600-100854937-large.jpg?auto=webp&quality=85,70'),
                  fit: BoxFit.fill),
            ),
            child: Text(
              'Slide Menu',
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
              ),
            ),
          ),
          ListTile(
            title: Text("Account"),
            leading: Icon(
              Icons.verified_user,
              color: Colors.black,
            ),
          ),
          ListTile(
            title: Text("Tracker"),
            leading: Icon(
              Icons.stacked_line_chart_rounded,
              color: Colors.black,
            ),
          ),
          ListTile(
            title: Text("Setting"),
            leading: Icon(
              Icons.settings,
              color: Colors.black,
            ),
          ),
          ListTile(
            title: Text("Logout"),
            leading: Icon(
              Icons.logout,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
