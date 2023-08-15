import 'package:flutter/material.dart';
import 'package:flutter_theme_sample/components/text.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        /// Scaffoldの背景色（厳密にはbackgroundColorと異なる）
        canvasColor: Colors.white,

        /// 基本の色設定
        colorScheme: const ColorScheme.light(
          primary: Color.fromARGB(255, 36, 50, 255),
          secondary: Color.fromARGB(255, 42, 255, 64),
          onPrimary: Colors.white,
          onSecondary: Colors.white,
        ),

        /// フォントファミリーの設定
        fontFamily: 'NotoSansJP',

        /// テキストのスタイル設定
        textTheme: const TextTheme(
          bodySmall: TextStyle(
            fontSize: 12,
            color: Colors.black,
          ),
          bodyMedium: TextStyle(
            fontSize: 14,
            color: Colors.black,
          ),
          bodyLarge: TextStyle(
            fontSize: 16,
            color: Colors.black,
          ),
          titleSmall: TextStyle(
            fontSize: 16,
            color: Colors.black,
            fontWeight: FontWeight.w600,
          ),
          titleMedium: TextStyle(
            fontSize: 18,
            color: Colors.black,
            fontWeight: FontWeight.w600,
          ),
          titleLarge: TextStyle(
            fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.w600,
          ),
        ),

        /// ElevatedButtonのデザイン
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
              const Color.fromARGB(255, 36, 50, 255),
            ),
            foregroundColor: MaterialStateProperty.all(
              Colors.white,
            ),
            shape: MaterialStateProperty.all(
              const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(8),
                ),
              ),
            ),
          ),
        ),

        /// OutlinedButtonのデザイン
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all(
              const Color.fromARGB(255, 36, 50, 255),
            ),
            shape: MaterialStateProperty.all(
              const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(8),
                ),
              ),
            ),
          ),
        ),

        /// TextButtonのデザイン
        textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all(
              const Color.fromARGB(255, 36, 50, 255),
            ),
            shape: MaterialStateProperty.all(
              const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(8),
                ),
              ),
            ),
          ),
        ),

        /// IconButtonのデザイン
        iconButtonTheme: IconButtonThemeData(
          style: ButtonStyle(
            shape: MaterialStateProperty.all(
              const CircleBorder(),
            ),
          ),
        ),

        /// マテリアル3を有効にする
        useMaterial3: true,

        /// platformの指定
        // platform: TargetPlatform.iOS,
      ),

      /// ダークテーマの設定
      darkTheme: ThemeData(
          // lightThemeと同じ設定ができる
          ),

      /// ロケールの設定
      supportedLocales: const [
        Locale('ja', 'JP'),
      ],

      /// ホーム画面の設定
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: SizedBox(
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
        // titleMediumのスタイルを適用
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('HomePage', style: Theme.of(context).textTheme.titleMedium),
            const TextSmall('Small Text'),
            const TextMedium('Medium Text'),
            const TextLarge('Large Text'),
          ],
        ),
      ),
    );
  }
}
