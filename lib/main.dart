import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(MyApp());
}

List<String> course = [
  "Java",
  "Kotlin",
  "Swift",
  "C",
  "C++",
  "PHP",
  "SQL",
  "C#",
  "Ruby"
];
List<String> image=[
  "images/java.png",
  "images/kotlin.png",
  "images/swift.png",
  "images/C.png",
  "images/c++.png",
  "images/php.png",
  "images/sql.png",
  "images/c#.png",
  "images/ruby.jpeg"  
];
List<String> info=[
  "https://en.wikipedia.org/wiki/Java_(programming_language)",
  "https://en.wikipedia.org/wiki/Kotlin_(programming_language)",
  "https://en.wikipedia.org/wiki/Swift_(programming_language)",
  "https://en.wikipedia.org/wiki/The_C_Programming_Language",
  "https://en.wikipedia.org/wiki/The_C%2B%2B_Programming_Language",
  "https://en.wikipedia.org/wiki/PHP",
  "https://en.wikipedia.org/wiki/SQL",
  "https://en.wikipedia.org/wiki/C_Sharp_(programming_language)",
  "https://en.wikipedia.org/wiki/Ruby_(programming_language)"
];
// List<String> infoBody=[
// 'Java is a class-based, object-oriented programming language that is designed to have as few implementation dependencies as possible. It is a general-purpose programming language intended to let application developers write once, run anywhere (WORA),[16] meaning that compiled Java code can run on all platforms that support Java without the need for recompilation.[17] Java applications are typically compiled to bytecode that can run on any Java virtual machine (JVM) regardless of the underlying computer architecture. The syntax of Java is similar to C and C++, but has fewer low-level facilities than either of them. The Java runtime provides dynamic capabilities (such as reflection and runtime code modification) that are typically not available in traditional compiled languages. As of 2019, Java was one of the most popular programming languages in use according to GitHub,[18][19] particularly for client-server web applications, with a reported 9 million developers.',
// 'Kotlin (/ˈkɒtlɪn/)[4] is a cross-platform, statically typed, general-purpose programming language with type inference. Kotlin is designed to interoperate fully with Java, and the JVM version of Kotlin\'s standard library depends on the Java Class Library,[5] but type inference allows its syntax to be more concise. Kotlin mainly targets the JVM, but also compiles to JavaScript (e.g., for frontend web applications using React[6]) or native code (via LLVM); e.g., for native iOS apps sharing business logic with Android apps.[7] Language development costs are borne by JetBrains, while the Kotlin Foundation protects the Kotlin trademark',
// 'Swift is a general-purpose, multi-paradigm, compiled programming language developed by Apple Inc. and the open-source community, first released in 2014. Swift was developed as a replacement for Apple\'s earlier programming language Objective-C, as Objective-C had been largely unchanged since the early 1980s and lacked modern language features. Swift works with Apple\'s Cocoa and Cocoa Touch frameworks, and a key aspect of Swift\'s design was the ability to interoperate with the huge body of existing Objective-C code developed for Apple products over the previous decades. It is built with the open source LLVM compiler framework and has been included in Xcode since version 6, released in 2014. On Apple platforms,[11] it uses the Objective-C runtime library which allows C, Objective-C, C++ and Swift code to run within one program',
// 'The C Programming Language (sometimes termed K&R, after its authors\' initials) is a computer programming book written by Brian Kernighan and Dennis Ritchie, the latter of whom originally designed and implemented the language, as well as co-designed the Unix operating system with which development of the language was closely intertwined. The book was central to the development and popularization of the C programming language and is still widely read and used today. Because the book was co-authored by the original language designer, and because the first edition of the book served for many years as the de facto standard for the language, the book was regarded by many to be the authoritative reference on C',
// 'The C++ Programming Language is a computer programming book first published in October 1985. It was the first book to describe the C++ programming language, written by the language\'s creator, Bjarne Stroustrup. In the absence of an official standard, the book served for several years as the de facto documentation for the evolving C++ language, until the release of the ISO/IEC 14882:1998: Programming Language C++ standard on 1 September 1998. As the standard further evolved with the standardization of language and library extensions and with the publication of technical corrigenda, later editions of the book were updated to incorporate the new changes',
// 'PHP is a general-purpose scripting language especially suited to web development.[5] It was originally created by Danish-Canadian programmer Rasmus Lerdorf in 1994.[6] The PHP reference implementation is now produced by The PHP Group.[7] PHP originally stood for Personal Home Page,[6] but it now stands for the recursive initialism PHP: Hypertext Preprocessor.',
// 'SQL (/ˌɛsˌkjuːˈɛl/ (About this soundlisten) S-Q-L,[4] /ˈsiːkwəl/ "sequel"; Structured Query Language)[5] is a domain-specific language used in programming and designed for managing data held in a relational database management system (RDBMS), or for stream processing in a relational data stream management system (RDSMS). It is particularly useful in handling structured data, i.e. data incorporating relations among entities and variables',
// 'C# (pronounced see sharp, like the musical note C♯, but written with the number sign)[b] is a general-purpose, multi-paradigm programming language encompassing static typing, strong typing, lexically scoped, imperative, declarative, functional, generic, object-oriented (class-based), and component-oriented programming disciplines',
// 'Ruby is an interpreted, high-level, general-purpose programming language. It was designed and developed in the mid-1990s by Yukihiro "Matz" Matsumoto in Japan.\nRuby is dynamically typed and uses garbage collection. It supports multiple programming paradigms, including procedural, object-oriented, and functional programming. According to the creator, Ruby was influenced by Perl, Smalltalk, Eiffel, Ada, BASIC, and Lisp'];

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child:Text("Courses")
        )
        ),
        body: Container(
            color: Colors.white10,
            padding: EdgeInsets.all(16.0),
            child: HomePage(course),
        )
      ),
    );
  }
}

class HomePage extends StatelessWidget 
{
  final List<String> course;

  HomePage(this.course);

  @override
  Widget build(BuildContext context) 
  {
    return ListView.builder
    (
      itemCount: course.length,
      itemBuilder: (context, pos) 
      {
        return Padding(padding:EdgeInsets.only(bottom:25),child:(OutlinedButton
            (
                style: OutlinedButton.styleFrom(
                side: BorderSide(width: 1.5),
                ),
                onPressed: () 
                {
                Navigator.push(context,MaterialPageRoute(builder: (context) => InfoPage(pos)),);
                },
                child:Padding
                (
                padding: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
                child: Row(children:[
                  ImageIcon(AssetImage(image[pos]),size:50,color: Colors.red,),
                  Padding(
                    padding:EdgeInsets.only(left:25),
                    child:
                    Center
                    ( 
                      child: Text
                      (
                        course[pos],
                        style: TextStyle
                          (
                          fontSize: 18.0,
                          height: 1.6,
                          color: Colors.black
                          ),
                      ),
                    ),
                  )
                ]
                ),
            )
          )
          )
        );
        }// itemBuilder
    );
  }
}
class InfoPage extends StatelessWidget{
  final int pos;
  InfoPage(this.pos);
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Row(children:
          [ElevatedButton(onPressed: ()
          {Navigator.push(context,MaterialPageRoute(builder: (context) => MyApp()),);},
          child: Icon(Icons.arrow_left_rounded,size: 50,)),//Text("Go Back",style: TextStyle(color: Colors.white))),
          Padding(padding:EdgeInsets.only(left:15),child:Center(
            child:Text("Course Information")
        ))
        ])
        ),
        body: Column(
        children: [Expanded(
            child: WebView(
              javascriptMode: JavascriptMode.unrestricted,
              initialUrl: info[pos],
            ),
          ),
          
        ],
      ),
      )
    );
  }
}




// ListView(children:[Padding(padding:EdgeInsets.only(top:20),child:Column(
//             //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//             Center(child:Image.asset(image[pos],height:200,fit: BoxFit.fitWidth)),
//             Padding(padding:EdgeInsets.all(20),child:
//             Column(children:[Text(info[pos],style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold)),
//             Text(info[pos],style: TextStyle(fontSize: 18))
//             ]
//             )
//             )
//             ]
//             )
//             )])