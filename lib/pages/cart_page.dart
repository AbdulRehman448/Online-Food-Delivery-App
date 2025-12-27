import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CartScreen extends StatelessWidget {
  final Map<String, int> cart;
  final Map<String, int> prices;

  const CartScreen({super.key, required this.cart, required this.prices});

  @override
  Widget build(BuildContext context) {
    // 1. Calculate total
    int total = 0;
    cart.forEach((key, value) {
      total += prices[key]! * value;
    });

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Order Summary',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        foregroundColor: Colors.orange,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: cart.entries.map((e) {
                return ListTile(
                  title: Text('${e.key}  (x${e.value})'),
                  trailing: Text('Rs ${prices[e.key]! * e.value}',style: TextStyle(fontSize: 15),),
                );
              }).toList(),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Colors.grey[100],
              border: Border(top: BorderSide(color: Colors.grey[300]!)),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Total Amount:', style: TextStyle(fontSize: 18)),
                    Text(
                      'Rs $total',
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.orange,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton.icon(
                    onPressed: () => _launchWhatsApp(context, total),
                    icon: const Icon(Icons.send),

                    label: const Text('Confirm Order via WhatsApp'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(vertical: 12),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _launchWhatsApp(BuildContext context, int total) async {
    // 2. Format the message clearly
    String orderList = cart.entries
        .map((e) => "- ${e.key} (x${e.value})")
        .join("\n");

    String message =
        "Assalam-o-Alaikum! I would like to place an order:\n\n"
        "$orderList\n\n"
        "Total: Rs $total";

    // 3. Construct the URI correctly
    // Note: Use the international format without '+' or spaces for the number
    final String phoneNumber = "923001234567";
    final Uri whatsappUrl = Uri.parse(
      "https://wa.me/$phoneNumber?text=${Uri.encodeComponent(message)}",
    );

    // 4. Launch the URL with error handling
    try {
      if (!await launchUrl(whatsappUrl, mode: LaunchMode.externalApplication)) {
        throw 'Could not launch WhatsApp';
      }
    } catch (e) {
      // Show error to user if WhatsApp is not installed or fails
      if (context.mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text('Could not open WhatsApp: $e')));
      }
    }
  }
}
