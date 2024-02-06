import 'dart:convert';
import 'dart:io';
import 'dart:math';

import 'package:bookswithstatesrebuilder/main.dart';
import 'package:bookswithstatesrebuilder/raw_material.dart';
import 'package:csv/csv.dart';
import 'package:csv/csv_settings_autodetection.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../vscodesettings.dart';
// import '../settingsbook.dart';
// import '../vscodesettings.dart';
// import '../vscodesettings.json';
//import '../settingsbook.dart';

class Boekenfabriek {
  Boekenfabriek() {
    //var parsed = jsonDecode(vscodeSettings.toString());
    var parsed = jsonDecode(vscodesettins.toString().replaceAll(r'\', r'\\'));

    // print(parsed);

    var books = parsed.map<Book>((e) => Book.fromJson(e)).toList();
    _orderBib = Bib().._mybib.addAll(books);
    // var _newbook = Book.fromJson(parsedBook);
    //_orderBib = parsed.map((e) => Bib.fromJson(e));
    // _orderBib = Bib().._mybib.add(_newbook);
    // print(_orderBib);
    // openNewBib() {
    if (kDebugMode) {
      print('open new bib');
    }
  }

  // var parsed = json.decode(test.toString()).cast<Map<String, dynamic>>();

  //.cast<Map<String, String>>();
  // var p=parsed.map((key,value) => )
  //var _pages = parsed.map((json) => Pagina.fromJson(json)).toList();
  // _orderBib = books;//needs a bib

  var fromrawmaterial = rawmaterial;

  Bib _orderBib = Bib();
  final Book _orderBook = Book();

  Bib get bibOrder => _orderBib;

  Book get bookOrder => _orderBook;
}

class Bib {
  // var _bookPicked;
  List<Book> _mybib = [];
  Book _pickedbook = Book();
  int bibLength() => _mybib.length;

  get title => "${(bibLength())} books in your bib";
  get boeken => _mybib;
  get pickedbook => _pickedbook.book ?? _mybib[0];
  set pickedbookIndex(int index) => _pickedbook = _mybib[index];

  // get bookPicked => _bookPicked;

  // set bookPicked(bookpicked) {
  //   _bookPicked = bookpicked;
  //   notifyListeners();
  // }

  set boeken(books) {
    _mybib = books;
  }

  importbook() async {
    File file = await FilePicker.platform
        .pickFiles(type: FileType.any)
        .then((value) => File(value!.paths[0]!));

    List<Pagina> newbooks = [];
    var det = const FirstOccurrenceSettingsDetector(eols: ['\r\n', '\n']);
    // var converter = new CsvToListConverter(csvSettingsDetector: det);
    var cvs = const CsvToListConverter().convert(await file.readAsString(),
        shouldParseNumbers: false, csvSettingsDetector: det);

    for (var element in cvs) {
      newbooks.add(Pagina(
          kantVoor: Kant(inhoud: element[0]),
          kantAchter: Kant(inhoud: element[1])));
    }

    Book newbook = Book(paginas: newbooks);
    _mybib.insert(0, newbook);

    // await file.readAsLines().then((value) {
    //   value.forEach((element) {
    //     print(element);
    //     print(element.split(',')[0]);
    //     print(element.split(',')[1]);
    //     newbooks.add(Pagina(
    //         kantVoor: Kant(inhoud: element.split(',')[0]),
    //         kantAchter: Kant(inhoud: element.split(',')[1])));
    //   });

    //   Book newbook = Book(paginas: newbooks);
    //   _mybib.insert(0, newbook);
    // });
  }

  // Bib();
  // factory Bib.fromJson(e) {
  //   var bib = Bib();
  //   return bib.._mybib = e;
  // }
}

class PaginaFront {
  final List<MultipleChoice> _inhoudExtraMC = [];
  final List<MultipleChoice> _titleExtraMC = [];

  PaginaFront();

  factory PaginaFront.fromJson(json) {
    return PaginaFront()
      .._inhoud = json['description']
      .._title = json['title'];
  }

  get toggleSolution {
    _switchSolution = !switchSolution;
  }

  var _inhoud = "leeg";
  var _inhoudExtra = "leeg inhoudExtra";
  bool _switchSolution = false;
  Shuffle shuffleOrder = Shuffle.original;
  var _title = "leeg";
  var _titleExtra = "leeg titelExtra";

  get inhoudExtra => _switchSolution ? _titleExtra : _inhoudExtra;
  List<MultipleChoice> get inhoudExtraMC =>
      _switchSolution ? _titleExtraMC : _inhoudExtraMC;
  get title => _switchSolution ? _inhoud : _title;

  get titleExtra => _switchSolution ? _inhoudExtra : _titleExtra;
  List<MultipleChoice> get titleExtraMC =>
      _switchSolution ? _inhoudExtraMC : _titleExtraMC;
  get inhoud => _switchSolution ? _title : _inhoud;

  get switchSolution => _switchSolution;
  set switchSolution(value) {
    _switchSolution = value;
  }
  // set switchSolution(value) => _switchSolution = !_switchSolution;

  set inhoudExtra(value) {
    _inhoudExtra = value;
  }

  set titleExtra(value) => _titleExtra = value;

  set title(value) {
    _title = value;
  }

  set inhoud(value) {
    _inhoud = value;
  }
}

class Book {
  late List<Pagina> _book = [];
  Book({List<Pagina> paginas = const []}) {
    _book = paginas;
    multipleChoice();
    setExtraTextFields();
  }

  factory Book.fromJson(Map<String, dynamic> json) {
    PaginaFront pf = PaginaFront.fromJson(json['book']);
    List l = json['page'] as List;
    List<Pagina> ps = l.map((e) => Pagina.fromJson(e)).toList();

    return Book()
      .._book = ps
      ..paginafront = pf
      ..multipleChoice()
      ..setExtraTextFields();
  }

  int fastSpeed = 100;
  bool fastwinding = true;
  Random rnd = Random();
  Shuffle shuffled = Shuffle.original;
  // List<Pagina> shuffledbook = [];
  int index = 0;

  PaginaFront paginafront = PaginaFront();
  // get index => _index;

  get book {
    if (_book.isEmpty) return;
    if (shuffled == Shuffle.original) {
      return _book;
    } else {
      return _book.toList()..shuffle();
    }
  }

  // get shufflebook => shuffledbook = _book.toList()..shuffle();

  fastForward() async {
    final injBook = Injector.getAsReactive<Book>();

    fastwinding = true;
    while (fastwinding && index < book.length - 1) {
      await injBook.setState((_) async {
        await Future.delayed(Duration(milliseconds: fastSpeed));
        paginaVooruit;
        if (kDebugMode) {
          print(index);
        }
        return null;
      });
    }
  }

  fastRewind() async {
    final injBook = Injector.getAsReactive<Book>();

    fastwinding = true;
    while (fastwinding && index > 0) {
      await injBook.setState((_) async {
        await Future.delayed(Duration(milliseconds: fastSpeed));
        paginaTerug;
        if (kDebugMode) {
          print(index);
        }
        return null;
      });
    }
  }

  get rndbook => (1 + rnd.nextInt(_book.length - 1));
  void setExtraTextFields() {
    if (_book.isEmpty) return;

    paginafront.inhoudExtra = _book.elementAt(rndbook).kantAchter.inhoud;
    paginafront.titleExtra = _book.elementAt(rndbook).kantVoor.inhoud;

    paginafront._inhoudExtraMC
        .addAll(_book.elementAt(rndbook).kantAchterMultipleChoiceAlternatives);
    paginafront._titleExtraMC
        .addAll(_book.elementAt(rndbook).kantVoorMultipleChoiceAlternatives);
    //TODO this seems strange nothind to do for each
    for (var element in paginafront.inhoudExtraMC) {
      if (kDebugMode) {
        print(element);
      }
    }
  }

  bool correctanswer = false;
  get paginaVooruit => index < _book.indexOf(_book.last) ? index++ : index;

  get paginaTerug => index == 0 ? index : index--;

  get paginaEerste => index = 0;

  get paginaLaatste => index = _book.indexOf(book.last);

  Pagina get paginaSelectie => book[index];

  void toggleSolution() {
    book.forEach((element) => element.toggleSolution);
    paginafront.toggleSolution;
  }

  returnalternative(Pagina p) {
    var numberOfMultipleChoices = 2;
    var fakebook = book.toList();
    fakebook.remove(p);
    for (int x = 0; x < numberOfMultipleChoices; x++) {
      var option = fakebook[rnd.nextInt(fakebook.length)];
      p.kantVoorMultipleChoiceAlternatives.add(MultipleChoice()
        ..kant = option.kantVoor
        ..correct = false);
      p.kantAchterMultipleChoiceAlternatives.add(MultipleChoice()
        ..kant = option.kantAchter
        ..correct = false);
    }
  }

  twoAlternatives() {
    for (Pagina p in book) {
      p.kantVoorMultipleChoiceAlternatives.add(MultipleChoice()
        ..kant = p.kantVoor
        ..correct = true);

      p.kantAchterMultipleChoiceAlternatives.add(MultipleChoice()
        ..kant = p.kantAchter
        ..correct = true);
      returnalternative(p);
      p.kantVoorMultipleChoiceAlternatives.shuffle();
      p.kantAchterMultipleChoiceAlternatives.shuffle();
    }
  }

  multipleChoice() {
    if (_book.isEmpty) return;
    twoAlternatives();
  }
}

class MultipleChoice {
  bool? correct;
  Kant? kant;
  MultipleChoice({this.kant, this.correct});
}

class Pagina {
  Pagina({Kant? kantVoor, Kant? kantAchter})
      : kantVoor = kantVoor ?? Kant(inhoud: 'kantVoor is leeg'),
        kantAchter = kantAchter ?? Kant(inhoud: 'kantAchter is leeg');

  factory Pagina.fromJson(Map<String, dynamic> json) {
    return Pagina(
        kantVoor: Kant(inhoud: json["voorkant"] as String),
        kantAchter: Kant(inhoud: json["achterkant"] as String));
  }

  List<MultipleChoice> kantAchterMultipleChoiceAlternatives = [];
  List<MultipleChoice> kantVoorMultipleChoiceAlternatives = [];
  get toggleSolution {
    var temp = kantVoor;
    kantVoor = kantAchter;
    kantAchter = temp;

    var templ = kantVoorMultipleChoiceAlternatives;
    kantVoorMultipleChoiceAlternatives = kantAchterMultipleChoiceAlternatives;
    kantAchterMultipleChoiceAlternatives = templ;
  }

  Kant kantAchter;

  @override
  String toString() {
    return 'voor:$kantVoor;achter:$kantAchter';
  }

  Kant kantVoor;
}

class Kant {
  Kant({String? inhoud}) : _inhoud = inhoud ?? 'Kant is leeg';

  String _inhoud;

  @override
  String toString() {
    return inhoud;
  }

  get inhoud => _inhoud;

  set inhoud(value) {
    _inhoud = value;
  }
}

class Hide {
  Hide({bool? answer}) : _answer = answer ?? true;

  bool _answer;

  get answer => _answer;

  set answer(value) {
    _answer = value;
  }
}

String splitLongString(String input) {
  int middle = 15;
  int span = 0;
  String wordgroup = '';
  var words = input.split(" ");
  String subword = '';
  for (var word in words) {
    if (word.length > middle) {
      wordgroup += "$word\n";
      subword = '';
    } else {
      if (subword.length + word.length < middle - span) {
        subword += "$word ";
      } else {
        subword += '\n';
        wordgroup = "$wordgroup$subword";
        subword = '';
        subword += "$word ";
      }
    }
    // if (subword.length > middle - span) {
    //   // This line should append 'subword' to 'wordgroup' and add a newline.
    //   // However, 'subword' is being reset to an empty string every time it exceeds 'middle - span'.
    //   // Therefore, if 'subword' is not empty, it should be appended to 'wordgroup'.
    //   if (subword.isNotEmpty) {
    //     wordgroup = "$wordgroup$subword\n";
    //     subword = ''; // Reset 'subword' after adding it to 'wordgroup'.
    //   }
    //   // subword = '';
    // }
  }
  if (subword.isNotEmpty) {
    wordgroup = "$wordgroup$subword";
  }
  return wordgroup.trim();
  // int splitAt = 15;
  // int splitWidth = 9;
  // if (input.length <= splitAt) {
  //   return input;
  // } else {
  //   int gr = 1;
  //   for (int i = 1; i < input.length; i = i + splitAt) {
  //     var hit =
  //         input.indexOf(" ", min(input.length, gr * splitAt - splitWidth));
  //     if (hit == -1) break;
  //     gr++;
  //     input = input.replaceFirst(" ", "\n", hit - 2);
  //   }
}
// Split the string into substrings
//return input;

 