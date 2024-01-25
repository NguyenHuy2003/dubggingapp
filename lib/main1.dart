import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class MyObject {
  int _value;

  // Các tham số trong flutter
  // Tham số không có tên
  // Tham số bắt buộc có tên
  // Tham số tùy chọn
  MyObject(
    this._value,
  );
  // Phương thức tăng giá trị
  void increment() {
    _value++;
  }

  // Phương thức giảm giá trị
  void decrement() {
    _value--;
  }

  // Phương thức trả về giá trị hiện tại
  int get value => _value;

  set value(int newValue) {
    _value = newValue;
  }
}

class _MyAppState extends State<MyApp> {
  MyObject? _myObject;
  String? title;

  @override
  void initState() {
    super.initState();
    _myObject = MyObject(0);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.class_),
          title: Text(title ?? 'Debugging App'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Giá trị: ${_myObject?._value ?? 0}',
                style: const TextStyle(fontSize: 20),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  OutlinedButton(
                    onPressed: () {
                      _myObject?.decrement();
                      setState(() {});
                    },
                    child: const Icon(Icons.exposure_minus_1),
                  ),
                  const SizedBox(width: 10), // Thêm khoảng cách giữa các nút
                  OutlinedButton(
                    onPressed: () {
                      _myObject?.increment();
                      setState(() {});
                    },
                    child: const Icon(Icons.exposure_plus_1),
                  ),
                  const SizedBox(width: 10), // Thêm khoảng cách giữa các nút
                  OutlinedButton(
                    onPressed: () {
                      _myObject?.value = 0; // Gọi phương thức set _value
                      setState(() {});
                    },
                    child: const Icon(Icons.restart_alt),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
