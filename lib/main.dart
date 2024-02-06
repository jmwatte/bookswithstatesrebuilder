import 'package:bookswithstatesrebuilder/homepagecontroller/utils.dart';
import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: _HomePageView(),
  ));
}

enum ViewPage {
  bib,
  bookcover,
  pages,
}

enum Choices { oneChoice, multipleChoice }

enum Shuffle { original, shuffled }
//enum bookstate { open, close }

class _HomePageView extends StatelessWidget {
  //bookstate bookstatus = bookstate.close;

  @override
  Widget build(BuildContext context) {
    false;
    return Injector(
        inject: [
          Inject<Bib>(() => Boekenfabriek().bibOrder),
          Inject<Book>(() => Boekenfabriek().bibOrder.pickedbook),
          Inject<ViewBookFront>(() => ViewBookFront()),
          Inject<PaginaFront>(() => PaginaFront()),
          Inject<Pagina>(() => Pagina()),
          Inject<Hide>(() => Hide()),
          Inject<ViewPage>(() => ViewPage.bib),
          Inject<Choices>(() => Choices.oneChoice),
          Inject<Shuffle>(() => Shuffle.original),
          Inject<Future>(() => Book().fastForward(), name: "fastforward"),
          Inject<Future>(() => Book().fastRewind(), name: "fastbackward")
        ],
        builder: (_) {
          return const MainPageSwitcher();
        });
    //return DisplayPageText(state: state);
  }
}

class MainPageSwitcher extends StatelessWidget {
  const MainPageSwitcher({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final viewPage = Injector.getAsReactive<ViewPage>();
    final frontpagina = Injector.getAsReactive<ViewBookFront>();
    return OnReactive(() => MaterialApp(
          home: (() {
            switch (viewPage.state) {
              case ViewPage.bib:
                return const ViewBib();
              case ViewPage.bookcover:
                return frontpagina.state;
              case ViewPage.pages:
                return ViewPages();
              default:
                return const ViewBib();
            }
          })(),
        ));
  }
}

class ViewBib extends StatelessWidget {
  const ViewBib({
    Key? key,
  }) : super(key: key);

  //final _HomePageController state;

  @override
  Widget build(BuildContext context) {
    final bib = Injector.getAsReactive<Bib>().state;
    final viewPage = Injector.getAsReactive<ViewPage>();
    final bookselected = Injector.getAsReactive<Book>();
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          actions: <Widget>[
            IconButton(
                icon: const Icon(Icons.launch),
                onPressed: () => bib.importbook()
                // viewPage.setState((state) => state = viewpage.bookcover)
                )
          ],
          title: Text(bib.title),
        ),
        body: ListView.builder(
          itemCount: bib.boeken.length,
          itemBuilder: (context, index) => Ink(
            color: index % 2 == 0 ? Colors.orange : Colors.lightGreen,
            child: ListTile(
              onTap: () {
                bookselected.state = bib.boeken[index];
                viewPage.state = ViewPage.bookcover;
              },
              title: Text(bib.boeken[index].paginafront.title),
              leading: Padding(
                padding: const EdgeInsets.all(8.0),
                child: FittedBox(
                    fit: BoxFit.fill,
                    child: Text(bib.boeken[index].book.length.toString())),
              ),
              subtitle: Text(
                bib.boeken[index].paginafront.inhoud,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ViewBookFront extends ReactiveStatelessWidget {
  const ViewBookFront({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final viewPage = Injector.getAsReactive<ViewPage>();
    //final book = Injector.getAsReactive<Book>().state;
    final setbook = Injector.getAsReactive<Book>();
    final setChoices = Injector.getAsReactive<Choices>();
    final frontpagina = Injector.getAsReactive<PaginaFront>();

    //final bookSelected = Injector.getAsReactive<Bib>(context: context).state.pickedbook;

    final hide = Injector.getAsReactive<Hide>();
    List<ElevatedButton> mcchoices() {
      var b = setbook.state.paginafront.inhoudExtraMC
          .map((e) => ElevatedButton(
              onPressed: null,
              child: FittedBox(
                  fit: BoxFit.fitWidth,
                  child: Text(splitLongString(e.kant?.inhoud)))))
          .toList();
      return b;
    }

    return MaterialApp(
      home: Scaffold(
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            FloatingActionButton(
                tooltip: "back to bib",
                onPressed: () => viewPage.setState((s) => ViewPage.bib),
                child: const Icon(Icons.arrow_back)),
            FloatingActionButton(
                child: const Icon(Icons.rotate_90_degrees_ccw),
                onPressed: () {
                  setbook.setState((state) => state.toggleSolution());
                  frontpagina.setState((s) =>
                      s.switchSolution = !frontpagina.state.switchSolution);
                }),
            FloatingActionButton(
                onPressed: () {
                  hide.setState((state) => state.answer = true);
                  setbook.setState((state) => state.correctanswer = false);
                  viewPage.setState((s) => ViewPage.pages);
                },
                child: const Icon(Icons.arrow_forward)),
          ],
        ),
        appBar: AppBar(
          actions: <Widget>[
            IconButton(
                tooltip: "multiple/simple choice",
                icon: setChoices.state == Choices.multipleChoice
                    ? const Icon(Icons.format_list_numbered_rtl)
                    : const Icon(Icons.question_answer),
                onPressed: setChoices.state == Choices.oneChoice
                    ? () {
                        setChoices.setState((s) => Choices.multipleChoice);
                      }
                    : () {
                        setChoices.setState((s) => Choices.oneChoice);
                      }),
            IconButton(
                tooltip: "shuffle",
                icon: setbook.state.paginafront.shuffleOrder == Shuffle.original
                    ? const Icon(Icons.straighten)
                    : const Icon(Icons.shuffle),
                onPressed: () {
                  if (setbook.state.paginafront.shuffleOrder ==
                      Shuffle.original) {
                    setbook.setState(
                        (s) => s.paginafront.shuffleOrder = Shuffle.shuffled);
                    setbook.setState((s) => s.shuffled = Shuffle.shuffled);
                  } else {
                    setbook.setState(
                        (s) => s.paginafront.shuffleOrder = Shuffle.original);
                    setbook.setState((s) => s.shuffled = Shuffle.original);
                  }
                }),
          ],
          title: Text("book: ${setbook.state.paginafront.title}"),
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Ink(
                  color: Colors.green,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: setChoices.state == Choices.oneChoice
                        ? FittedBox(
                            child: Column(
                              children: <Widget>[
                                FittedBox(
                                  fit: BoxFit.fitWidth,
                                  child: Text(
                                    splitLongString(
                                        setbook.state.paginafront.title),
                                    style: const TextStyle(color: Colors.black),
                                  ),
                                ),
                                const SizedBox(
                                  height: 16,
                                ),
                                FittedBox(
                                  fit: BoxFit.fitWidth,
                                  child: Text(
                                    splitLongString(
                                        setbook.state.paginafront.titleExtra),
                                    style: const TextStyle(color: Colors.black),
                                  ),
                                ),
                              ],
                            ),
                          )
                        : FittedBox(
                            child: Column(children: <Widget>[
                              Text(splitLongString(
                                  setbook.state.paginafront.title)),
                              const SizedBox(
                                height: 16,
                              ),
                              Text(splitLongString(setbook
                                  .state.paginafront.titleExtraMC
                                  .where((element) => element.correct == true)
                                  .first
                                  .kant
                                  ?.inhoud))
                            ]),
                          ),
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: InkWell(
                  onTap: () =>
                      setbook.setState((state) => state.toggleSolution()),
                  child: Container(
                    height: (MediaQuery.of(context).size.height / 2),
                    color: Colors.red,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: setChoices.state == Choices.oneChoice
                          ? FittedBox(
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    splitLongString(
                                        setbook.state.paginafront.inhoud),
                                    style: const TextStyle(color: Colors.black),
                                  ),
                                  const SizedBox(
                                    height: 16,
                                  ),
                                  Text(
                                    splitLongString(
                                        setbook.state.paginafront.inhoudExtra),
                                    style: const TextStyle(color: Colors.black),
                                  ),
                                ],
                              ),
                            )
                          : FittedBox(
                              fit: BoxFit.fill,
                              child: Column(children: mcchoices()),
                            ),
                    ),
                  ),
                ),
              ),
            ]),
      ),
    );
  }
}

class ViewPages extends StatelessWidget {
  const ViewPages({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final book = Injector.getAsReactive<Book>().state;
    final bookSelected = Injector.getAsReactive<Book>();
    final hide = Injector.getAsReactive<Hide>();
    final bibviewing = Injector.getAsReactive<ViewPage>();
    final setChoices = Injector.getAsReactive<Choices>();
    return MaterialApp(
      home: OnReactive(
        () => Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            centerTitle: true,
            title: Text("${1 + book.index}/${book.book.length}"),
          ),
          body: setChoices.state == Choices.oneChoice
              ? OneChoice(bookSelected: bookSelected, hide: hide)
              : MultipleChoice(bookSelected: bookSelected, hide: hide),

          ///the floating action row
          floatingActionButton: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FloatingActionButton(
                  child: const Icon(
                    Icons.skip_previous,
                  ),
                  onPressed: () {
                    hide.setState((state) => state.answer = true);
                    bookSelected.setState((s) => s.correctanswer = false);
                    bookSelected.setState((state) => state.index = 0);
                    bibviewing.setState((d) => ViewPage.bookcover);
                  }),
              FloatingActionButton(
                  onPressed: bookSelected.state.index == 0
                      ? null
                      : () {
                          bookSelected.state.paginaTerug;
                          bookSelected.setState((s) => s.correctanswer = false);
                          hide.setState((state) => state.answer = true);

                          //?   hide.state.answer == true;
                        },
                  child: GestureDetector(
                    onLongPressStart: (_) =>
                        bookSelected.setState((state) => state.fastRewind()),
                    onLongPressEnd: (_) => bookSelected
                        .setState((state) => state.fastwinding = false),
                    child: bookSelected.state.index == 0
                        ? const Icon(Icons.close)
                        : const Icon(Icons.arrow_left),
                  )),
              FloatingActionButton(
                  onPressed: book.index == book.book.length - 1
                      ? null
                      : () {
                          book.paginaVooruit;
                          bookSelected.setState((s) => s.correctanswer = false);
                          hide.setState((state) => state.answer = true);
                        },
                  child: GestureDetector(
                    onLongPressStart: (_) =>
                        bookSelected.setState((state) => state.fastForward()),
                    onLongPressEnd: (_) => bookSelected
                        .setState((state) => state.fastwinding = false),
                    child: bookSelected.state.index ==
                            bookSelected.state.book.length - 1
                        ? const Icon(Icons.close)
                        : const Icon(Icons.arrow_right),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

class OneChoice extends StatelessWidget {
  const OneChoice({
    Key? key,
    required this.bookSelected,
    required this.hide,
  }) : super(key: key);

  final ReactiveModel<Book> bookSelected;
  final ReactiveModel<Hide> hide;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
                height: (MediaQuery.of(context).size.height / 2.5),
                color: Colors.green,
                child: FittedBox(
                  fit: BoxFit.contain,
                  child: Text(splitLongString(
                      bookSelected.state.paginaSelectie.kantVoor.inhoud)),
                )),
            InkWell(
              onTap: () => hide.setState((h) => h.answer = !hide.state.answer),
              child: Container(
                height: (MediaQuery.of(context).size.height / 2.5),
                color: Colors.red,
                child: FittedBox(
                  fit: BoxFit.contain,
                  child: Text(
                    splitLongString(
                        bookSelected.state.paginaSelectie.kantAchter.inhoud),
                    style: TextStyle(
                        color: hide.state.answer ? Colors.red : Colors.black),
                  ),
                ),
              ),
            ),
          ]),
    );
  }
}

class MultipleChoice extends StatelessWidget {
  const MultipleChoice({
    Key? key,
    required this.bookSelected,
    required this.hide,
  }) : super(key: key);

  final ReactiveModel<Book> bookSelected;
  final ReactiveModel<Hide> hide;

  List<Widget> mcchoices() {
    return bookSelected
        .state.paginaSelectie.kantAchterMultipleChoiceAlternatives
        .map((e) => ElevatedButton(
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.resolveWith<Color>(
                (Set<MaterialState> states) {
                  MaterialColor kl;
                  if (bookSelected.state.correctanswer && e.correct == true) {
                    kl = Colors.green;
                  } else {
                    kl = Colors.red;
                  }
                  return kl;
                },
              ),
            ),
            onPressed: () {
              if (e.correct == true) {
                if (bookSelected.state.index !=
                    bookSelected.state.book.length - 1) {
                  bookSelected.state.paginaVooruit;
                  bookSelected.setState((s) => s.correctanswer = false);
                  hide.setState((state) => state.answer = true);
                }
              }
            },
            child:
                FittedBox(fit: BoxFit.fitWidth, child: Text(e.kant?.inhoud))))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
              height: (MediaQuery.of(context).size.height / 3.5),
              color: Colors.green,
              child: FittedBox(
                fit: BoxFit.contain,
                child: Text(bookSelected.state.paginaSelectie.kantVoor.inhoud),
              )),
          InkWell(
            onTap: () => hide.setState((h) => h.answer = !hide.state.answer),
            child: Container(
                height: (MediaQuery.of(context).size.height / 1.9),
                color: Colors.red,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 32.0),
                  child: Container(
                    color: Colors.red,
                    child: FittedBox(
                      fit: BoxFit.contain,
                      child: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Column(children: mcchoices()),
                      ),
                    ),
                  ),
                )),
          ),
        ],
      ),
    );
  }
}

// class MultipleChoicesListView extends StatelessWidget {
//   const MultipleChoicesListView({
//     Key key,
//     @required this.bookSelected,
//   }) : super(key: key);

//   final ReactiveModel<Book> bookSelected;

//   List<FlatButton> mcchoices() {
//     var b = bookSelected
//         .state.paginaSelectie.kantAchterMultipleChoiceAlternatives
//         .map((e) => FlatButton(
//             color: bookSelected.state.correctanswer && e.correct == true
//                 ? Colors.green
//                 : Colors.red,
//             onPressed: () {
//               if (e.correct == true)
//                 bookSelected.setState((state) => state.correctanswer = true);
//             },
//             child: FittedBox(fit: BoxFit.fitWidth, child: Text(e.kant.inhoud))))
//         .toList();
//     return b;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return ListView(children: mcchoices());
//   }
// }
