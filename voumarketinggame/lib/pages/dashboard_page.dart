import 'package:flutter/material.dart';
import 'package:voumarketinggame/pages/event_detail_page.dart';
import 'package:voumarketinggame/widgets/bottom_navigation_widget.dart';
import 'package:voumarketinggame/widgets/event_section_widget.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardScreen> {
  int _currentIndex = 0;
  String typeEvent1 = 'Sự kiện đang diễn ra';
  String typeEvent2 = 'Sự kiện sắp diễn ra';
  String typeEvent3 = 'Sự kiện nổi bật';
  String typeEvent4 = 'Sự kiện đã kết thúc';

  final List<Map<String, String>> ongoingEvents = [
  {
    'title': 'Giảm 50% cho mọi đơn',
    'image': 'assets/images/bg1.png',
    'avatar': 'assets/images/bg1.png',
    'store': 'Highlands Coffee',
    'detail': 'Ưu đãi giảm 50% cho mọi đơn hàng khi sử dụng ứng dụng.'
  },
  {
    'title': 'Ưu đãi đặc biệt cuối tuần',
    'image': 'assets/images/bg3.png',
    'avatar': 'assets/images/bg1.png',
    'store': 'TocoToco',
    'detail': 'Giảm giá đặc biệt vào cuối tuần khi mua từ 2 sản phẩm trở lên.'
  },
  {
    'title': 'Tặng 1 nước khi mua 2 ly',
    'image': 'assets/images/bg2.png',
    'avatar': 'assets/images/bg1.png',
    'store': 'Fashion',
    'detail': 'Mua 2 ly bất kỳ tặng thêm 1 ly miễn phí chỉ trong tuần này.'
  },
  {
    'title': 'Ưu đãi giờ vàng',
    'image': 'assets/images/bg3.png',
    'avatar': 'assets/images/bg1.png',
    'store': 'KATINAT',
    'detail': 'Giảm 30% cho tất cả đơn hàng trong khung giờ vàng 16:00 - 18:00.'
  },
  {
    'title': 'Khuyến mãi 1 tặng 1',
    'image': 'assets/images/bg4.png',
    'avatar': 'assets/images/bg1.png',
    'store': 'WARRIOR',
    'detail': 'Mua 1 tặng 1 khi sử dụng voucher tại cửa hàng WARRIOR.'
  },
  {
    'title': 'Đồng giá 20K',
    'image': 'assets/images/bg5.png',
    'avatar': 'assets/images/bg1.png',
    'store': 'Trà Sữa Đô Đô',
    'detail': 'Mọi sản phẩm đồng giá 20K khi thanh toán bằng ví điện tử.'
  },
];

final List<Map<String, String>> upcomingEvents = [
  {
    'title': 'Giảm 10% trên mọi hóa đơn',
    'image': 'assets/images/bg4.png',
    'avatar': 'assets/images/bg1.png',
    'store': 'Highlands Coffee',
    'detail': 'Ưu đãi giảm giá 10% cho mọi hóa đơn trên toàn quốc.'
  },
  {
    'title': 'Quà tặng sinh nhật',
    'image': 'assets/images/bg1.png',
    'avatar': 'assets/images/bg1.png',
    'store': 'TocoToco',
    'detail': 'Nhận quà tặng miễn phí nhân dịp sinh nhật của bạn.'
  },
  {
    'title': 'Miễn phí giao hàng',
    'image': 'assets/images/bg2.png',
    'avatar': 'assets/images/bg1.png',
    'store': 'Fashion',
    'detail': 'Miễn phí giao hàng cho các đơn hàng từ 150K trở lên.'
  },
  {
    'title': 'Giảm giá cuối tháng',
    'image': 'assets/images/bg5.png',
    'avatar': 'assets/images/bg1.png',
    'store': 'KATINAT',
    'detail': 'Giảm giá 25% cho tất cả sản phẩm trong dịp cuối tháng.'
  },
  {
    'title': 'Ưu đãi khách hàng mới',
    'image': 'assets/images/bg4.png',
    'avatar': 'assets/images/bg1.png',
    'store': 'WARRIOR',
    'detail': 'Ưu đãi đặc biệt dành cho khách hàng lần đầu mua sắm.'
  },
  {
    'title': 'Tặng thêm topping miễn phí',
    'image': 'assets/images/bg3.png',
    'avatar': 'assets/images/bg1.png',
    'store': 'Trà Sữa Đô Đô',
    'detail': 'Thêm topping miễn phí cho tất cả đơn hàng từ 50K.'
  },
];

final List<Map<String, String>> outstandingEvent = [
  {
    'title': 'Ngày hội giảm giá',
    'image': 'assets/images/bg1.png',
    'avatar': 'assets/images/bg1.png',
    'store': 'Highlands Coffee',
    'detail': 'Ngày hội giảm giá cực lớn, lên đến 70% trên toàn quốc.'
  },
  {
    'title': 'Tặng voucher 50K',
    'image': 'assets/images/bg4.png',
    'avatar': 'assets/images/bg1.png',
    'store': 'TocoToco',
    'detail': 'Nhận ngay voucher 50K khi mua hàng trực tuyến.'
  },
  {
    'title': 'Ưu đãi hội viên VIP',
    'image': 'assets/images/bg2.png',
    'avatar': 'assets/images/bg1.png',
    'store': 'Fashion',
    'detail': 'Dành riêng cho khách hàng VIP với ưu đãi hấp dẫn.'
  },
  {
    'title': 'Khuyến mãi lễ hội mùa xuân',
    'image': 'assets/images/bg5.png',
    'avatar': 'assets/images/bg1.png',
    'store': 'KATINAT',
    'detail': 'Giảm 40% cho toàn bộ sản phẩm dịp lễ hội mùa xuân.'
  },
  {
    'title': 'Tích điểm đổi quà',
    'image': 'assets/images/bg3.png',
    'avatar': 'assets/images/bg1.png',
    'store': 'WARRIOR',
    'detail': 'Tích điểm ngay hôm nay để nhận quà tặng hấp dẫn.'
  },
  {
    'title': 'Ưu đãi độc quyền',
    'image': 'assets/images/bg4.png',
    'avatar': 'assets/images/bg1.png',
    'store': 'Trà Sữa Đô Đô',
    'detail': 'Ưu đãi độc quyền chỉ có tại cửa hàng Đô Đô.'
  },
];

final List<Map<String, String>> endEvent = [
  {
    'title': 'Giảm giá cuối tuần',
    'image': 'assets/images/bg4.png',
    'avatar': 'assets/images/bg1.png',
    'store': 'Highlands Coffee',
    'detail': 'Sự kiện giảm giá cực hot, kết thúc cuối tuần vừa qua.'
  },
  {
    'title': 'Ưu đãi Black Friday',
    'image': 'assets/images/bg3.png',
    'avatar': 'assets/images/bg1.png',
    'store': 'TocoToco',
    'detail': 'Khuyến mãi Black Friday đã kết thúc, hẹn gặp lại năm sau.'
  },
  {
    'title': 'Ưu đãi đồng giá',
    'image': 'assets/images/bg5.png',
    'avatar': 'assets/images/bg1.png',
    'store': 'Fashion',
    'detail': 'Sự kiện đồng giá 50K đã kết thúc vào hôm qua.'
  },
  {
    'title': 'Giảm giá tháng 12',
    'image': 'assets/images/bg2.png',
    'avatar': 'assets/images/bg1.png',
    'store': 'KATINAT',
    'detail': 'Ưu đãi giảm giá toàn bộ sản phẩm dịp tháng 12 đã kết thúc.'
  },
  {
    'title': 'Quà tặng khách hàng thân thiết',
    'image': 'assets/images/bg3.png',
    'avatar': 'assets/images/bg1.png',
    'store': 'WARRIOR',
    'detail': 'Chương trình quà tặng khách hàng thân thiết đã kết thúc.'
  },
  {
    'title': 'Ưu đãi mùa lễ hội',
    'image': 'assets/images/bg1.png',
    'avatar': 'assets/images/bg1.png',
    'store': 'Trà Sữa Đô Đô',
    'detail': 'Ưu đãi mùa lễ hội kết thúc vào tuần trước.'
  },
];


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade100,
        appBar: AppBar(
        
        backgroundColor: Colors.pink,
        elevation: 0,
        shape: const Border(
          bottom: BorderSide(
            color: Colors.black26, 
            width: 2.5, 
          ),
        ),
        title: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.pink.withOpacity(0.5),
                  blurRadius: 5,
                  spreadRadius: 2, 
                  offset: const Offset(0, 3), 
                    ),
                  ],
                ),
                  child: Image.asset(
                    'assets/images/logo.png',
                    height: 40,
                    width: 40,
                  ),
              ),
              const SizedBox(width: 10),
              const Text(
                'VOU',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ],
          ),
        ),
      
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20,),
              EventSection(
                
                time: typeEvent1,
                items: ongoingEvents,
                onViewAll: () {
               
                },
                onItemTap: (event) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => EventDetailScreen(event: event, eventType: typeEvent1,),
                    ),
                  );
                },
              ),
              
              EventSection(
                time: typeEvent2,
                items: upcomingEvents,
                onViewAll: () {
                  
                },
                onItemTap: (event) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => EventDetailScreen(event: event, eventType: typeEvent2,),
                    ),
                  );
                },
              ),
              EventSection(
                time: typeEvent3,
                items: outstandingEvent,
                onViewAll: () {
                  
                },
                onItemTap: (event) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => EventDetailScreen(event: event, eventType: typeEvent3,),
                    ),
                  );
                },
              ),
              EventSection(
                time: typeEvent4,
                items: endEvent,
                onViewAll: () {
                 
                },
                onItemTap: (event) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => EventDetailScreen(event: event, eventType: typeEvent4,),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}
