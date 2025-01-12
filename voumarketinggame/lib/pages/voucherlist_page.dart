import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:voumarketinggame/pages/voucher_detail_page.dart';
import 'package:voumarketinggame/providers/event_provider.dart';
import 'package:voumarketinggame/providers/voucher_provider.dart';
import 'package:voumarketinggame/widgets/filter_button_widget.dart';
import 'package:voumarketinggame/widgets/voucher_list_widget.dart';

class VoucherlistScreen extends StatelessWidget {
  const VoucherlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final wishlistEvent = Provider.of<EventProvider>(context);
    final voucherList = Provider.of<VoucherProvider>(context);

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          // Filter Buttons
          SingleChildScrollView(
          child: Container(
          padding: const EdgeInsets.all(8), 
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: Colors.grey.shade400,
              width: 1, 
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Search Bar
              Container(
                width: 255, 
                height: 40, 
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(20), 
                  border: Border.all(color: Colors.grey.shade400),
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: 'Tìm kiếm voucher',
                    hintStyle: TextStyle(color: Colors.grey), 
                    prefixIcon: Icon(Icons.search, color: Colors.grey),
                    border: InputBorder.none, 
                    contentPadding: EdgeInsets.symmetric(vertical: 8),
                  ),
                ),
              ),
          
              FilterButton(
                label: 'Bộ lọc',
                icon: Icons.filter_alt,
                onPressed: () {
                  showFilterModal(context);
                },
              ),
            ],
            ),
          ) 
        ),

        const SizedBox(height: 5),

        if (wishlistEvent.wishlist.isEmpty)
          Expanded(
            child: Center(
              child: Text(
                'Danh sách voucher trống!',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey.shade700,
                ),
              ),
            ),
          )
        else
          Expanded(
            child: ListView.builder(
              itemCount: voucherList.voucherList.length,
              itemBuilder: (context, index) {
                final voucher = voucherList.voucherList[index];
                return VoucherItem(
                  voucher: voucher,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => VoucherDetailScreen(
                          voucher: voucher,
                          type: 'Chi tiết Voucher',
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  } 
}
