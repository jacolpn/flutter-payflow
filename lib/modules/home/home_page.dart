import 'package:flutter/material.dart';
import 'package:pageflow/modules/home/home_controller.dart';
import 'package:pageflow/shared/themes/app_colors.dart';
import 'package:pageflow/shared/themes/app_text_styles.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = HomeController();
  final pages = [Container(color: Colors.red), Container(color: Colors.green)];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(152),
          child: Container(
              height: 152,
              color: AppColors.primary,
              child: Center(
                child: ListTile(
                  title: Text.rich(TextSpan(
                      text: "Olá, ",
                      style: AppTextStyles.titleRegular,
                      children: [
                        TextSpan(
                            text: "Jackson", style: AppTextStyles.titleRegular)
                      ])),
                  subtitle: Text("Matenha suas contas em dia.",
                      style: AppTextStyles.captionShape),
                  trailing: Container(
                    height: 55,
                    width: 55,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(5)),
                  ),
                ),
              ))),
      body: pages[controller.currentPage],
      // ignore: sized_box_for_whitespace
      bottomNavigationBar: Container(
        height: 90,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
                onPressed: () {
                  controller.setPage(0);
                  setState(() {});
                },
                icon: const Icon(Icons.home, color: AppColors.primary)),
            GestureDetector(
                onTap: () {
                  // ignore: avoid_print
                  print("Clicou");
                },
                child: Container(
                    width: 56,
                    height: 56,
                    decoration: BoxDecoration(
                        color: AppColors.primary,
                        borderRadius: BorderRadius.circular(5)),
                    child: const Icon(Icons.add_box_outlined,
                        color: AppColors.background))),
            IconButton(
              onPressed: () {
                controller.setPage(1);
                setState(() {});
              },
              icon:
                  const Icon(Icons.description_outlined, color: AppColors.body),
            )
          ],
        ),
      ),
    );
  }
}
