import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const IAmRichApp());
}

class IAmRichApp extends StatelessWidget {
  const IAmRichApp({super.key});

  static const Color _orange = Color(0xFFFF7A00);
  static const Color _background = Color(0xFFFFF8FF);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'I Am Rich',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: _orange,
          brightness: Brightness.light,
        ),
        scaffoldBackgroundColor: _background,
        appBarTheme: const AppBarTheme(
          backgroundColor: _orange,
          foregroundColor: Colors.white,
          centerTitle: true,
          elevation: 2,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 21,
            fontWeight: FontWeight.w600,
            letterSpacing: 0.3,
          ),
        ),
      ),
      home: const IAmRichPage(),
    );
  }
}

class IAmRichPage extends StatelessWidget {
  const IAmRichPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('I Am Rich'),
        leading: const Icon(CupertinoIcons.sparkles),
      ),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Semantics(
                  label: 'A brilliant blue diamond',
                  image: true,
                  child: Image.asset(
                    'images/diamond.png',
                    key: const Key('diamond-image'),
                    width: 300,
                    height: 300,
                    fit: BoxFit.contain,
                  ),
                ),
                const SizedBox(height: 12),
                Text(
                  'I Am Rich',
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    color: const Color(0xFF075BAA),
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.2,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  'Shine bright like a diamond',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: const Color(0xFF53606F),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
