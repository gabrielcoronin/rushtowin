import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:rushtowin/components/centered_message.dart';
import 'package:rushtowin/components/progress.dart';
import 'package:rushtowin/http/webclients/transaction_webclient.dart';
import 'package:rushtowin/models/transaction.dart';
import 'package:rushtowin/models/wallet.dart';

class Transactions extends StatelessWidget {
  final Wallet wallet;

  Transactions({Key? key, required this.wallet}) : super(key: key);
  final TransactionWebClient _webClient = TransactionWebClient();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Transactions'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: FutureBuilder<List<Transaction>>(
        future: _webClient.list(wallet.id),
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.none:
              break;
            case ConnectionState.waiting:
              return Progress();
              break;
            case ConnectionState.active:
              break;
            case ConnectionState.done:
              if(snapshot.hasData){
                final List<Transaction>? transactions = snapshot.data;
                if (transactions!.isNotEmpty) {
                  return ListView.builder(
                    itemBuilder: (context, index) {
                      final Transaction transaction = transactions[index];
                      return Card(
                        child: ListTile(
                          leading: const Icon(Icons.monetization_on),
                          title: Text(
                            transaction.value.toString(),
                            style: const TextStyle(
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: Text(
                            DateFormat().format(transaction.createdAt).toString(),
                            style: const TextStyle(
                              fontSize: 16.0,
                            ),
                          ),
                        ),
                      );
                    },
                    itemCount: transactions.length,
                  );
                }
              }
              return CenteredMessage(
                'No transactions found',
                icon: Icons.warning,
              );
              break;
          }

          return CenteredMessage('Unknown error', icon: Icons.warning,);
        },
      ),
    );
  }
}
