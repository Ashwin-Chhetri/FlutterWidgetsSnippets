import 'package:flutter/material.dart';
import 'package:widgetssamples/utils/utils.dart';
import 'package:widgetssamples/widgets/widgets.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeConfig.darkTheme,
      home: const MyHomePage(title: 'Widgets'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;
  final List<Widget> widgetSections = const [
    FloatingActionBarAnimation(),
    GlassContainer(),
    SearchBarWidget(),
    CalenderWidget(),
    AboutDialogWidget(),
    AboutListTileWidget(),
    AbsorbPointerWidget(),
    AlertDialogWidget(),
    AnimatedAlignWidget(),
    AnimatedBuilderWidget(),
    AnimatedContainerWidget(),
    AnimatedCrossFadeWidget(),
    AnimatedIconWidget(),
    AnimatedListWidget(),
    AnimatedModalBarrierWidget(),
    AnimatedOpacityWidget(),
    AnimatedPaddingWidget(),
    AnimatedPhysicalModelWidget(),
    AnimatedPositionWidget(),
    AnimatedRotationWidget(),
    AnimatedSizeWidget(),
    AnimatedSwitcherWdiget(),
    AppBarWidget(),
    AspectRatioWidget(),
    AutoCompleteWidget(),
    BackdropFilterWidget(),
    BannerWidget(),
    BaselineWidget(),
    BottomNavigationBarWidget(),
    ModelBottomSheetWidget(),
    BuilderWidget(),
    CardWidget(),
    CheckBoxListTileWidget(),
    ChipWidget(),
    CupertinoContextMenuWidget(),
    CupertinoPickerWidget(),
    CustomPaintWidget(),
    CustomScrollViewWidget()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
          actions: [
            IconButton(
              onPressed: () {
                showSearch(
                    context: context,
                    delegate: CustomSearchDelegate(widgetSections));
              },
              icon: const Icon(Icons.search),
            )
          ],
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.only(top: 10),
          physics: const PageScrollPhysics(),
          scrollDirection: Axis.vertical,
          child: Column(children: [
            const CustomDivider(heading: "Widgets List"),
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              padding: const EdgeInsets.only(left: 10),
              shrinkWrap: true,
              itemCount: widgetSections.length,
              itemBuilder: ((context, index) {
                return ListTile(
                  dense: true,
                  contentPadding: const EdgeInsets.all(0),
                  leading: Text(
                    (index + 1).toString(),
                    style: const TextStyle(color: Colors.grey),
                  ),
                  title: Text(
                    widgetSections[index].toString(),
                    style: const TextStyle(fontSize: 15),
                  ),
                  trailing: IconButton(
                      onPressed: () {
                        Navigate.pushPage(context, widgetSections[index]);
                      },
                      icon: const Icon(
                        Icons.arrow_forward_ios,
                        size: 15,
                        color: Colors.grey,
                      )),
                );
              }),
            ),
          ]),
        ));
  }
}
