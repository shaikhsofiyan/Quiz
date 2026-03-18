import '../models/question.dart';

final Map<String, List<Question>> languageQuestions = {
  'Java': [
    Question(questionText: "What is the size of int variable?", options: ["8 bit", "16 bit", "32 bit", "64 bit"], correctAnswerIndex: 2),
    Question(questionText: "What is the default value of a boolean variable?", options: ["true", "false", "null", "undefined"], correctAnswerIndex: 1),
    Question(questionText: "Which of these cannot be used for a variable name in Java?", options: ["Identifier", "Keyword", "Letter", "Number"], correctAnswerIndex: 1),
    Question(questionText: "What is the extension of java code files?", options: [".js", ".txt", ".class", ".java"], correctAnswerIndex: 3),
    Question(questionText: "Which environment variable is used to set the java path?", options: ["MAVEN_PATH", "JavaPATH", "JAVA", "JAVA_HOME"], correctAnswerIndex: 3),
    Question(questionText: "Which concept of Java is a way of converting real world objects in terms of class?", options: ["Polymorphism", "Encapsulation", "Abstraction", "Object Oriented Programming"], correctAnswerIndex: 3),
    Question(questionText: "What is not the use of 'this' keyword in Java?", options: ["Referring to the instance variable when a local variable has the same name", "Passing itself to the method of the same class", "Passing itself to another method", "Calling another constructor in constructor chaining"], correctAnswerIndex: 1),
    Question(questionText: "Which of the following is a type of polymorphism in Java?", options: ["Multiple polymorphism", "Compile time polymorphism", "Multilevel polymorphism", "Execution time polymorphism"], correctAnswerIndex: 1),
    Question(questionText: "What is the return type of the hashCode() method in the Object class?", options: ["Object", "int", "long", "void"], correctAnswerIndex: 1),
    Question(questionText: "Which package contains the Random class?", options: ["java.util.Random", "java.lang", "java.util", "java.awt"], correctAnswerIndex: 2),
  ],

  'HTML': [
    Question(questionText: "What does HTML stand for?", options: ["Home Tool Markup Language", "Hyperlinks and Text Markup Language", "Hyper Text Markup Language", "Hyper Tool Markup Language"], correctAnswerIndex: 2),
    Question(questionText: "Who is making the Web standards?", options: ["The World Wide Web Consortium", "Google", "Microsoft", "Mozilla"], correctAnswerIndex: 0),
    Question(questionText: "Choose the correct HTML element for the largest heading:", options: ["<heading>", "<h1>", "<head>", "<h6>"], correctAnswerIndex: 1),
    Question(questionText: "What is the correct HTML element for inserting a line break?", options: ["<br>", "<lb>", "<break>", "<tr>"], correctAnswerIndex: 0),
    Question(questionText: "What is the correct HTML for adding a background color?", options: ["<background>yellow</background>", "<body bg=\"yellow\">", "<body style=\"background-color:yellow;\">", "<body style=\"bg-color:yellow;\">"], correctAnswerIndex: 2),
    Question(questionText: "Choose the correct HTML element to define important text", options: ["<strong>", "<b>", "<important>", "<i>"], correctAnswerIndex: 0),
    Question(questionText: "Choose the correct HTML element to define emphasized text", options: ["<italic>", "<i>", "<em>", "<strong>"], correctAnswerIndex: 2),
    Question(questionText: "Which character is used to indicate an end tag?", options: ["*", "^", "<", "/"], correctAnswerIndex: 3),
    Question(questionText: "How can you open a link in a new tab/browser window?", options: ["<a href=\"url\" new>", "<a href=\"url\" target=\"_blank\">", "<a href=\"url\" target=\"new\">", "<a href=\"url\" window=\"new\">"], correctAnswerIndex: 1),
    Question(questionText: "Which of these elements are all <table> elements?", options: ["<table><tr><td>", "<table><head><tfoot>", "<table><tr><tt>", "<thead><body><tr>"], correctAnswerIndex: 0),
  ],

  'Python': [
    Question(questionText: "What is the maximum possible length of an identifier?", options: ["16 characters", "32 characters", "64 characters", "None of the above"], correctAnswerIndex: 3),
    Question(questionText: "Who developed the Python language?", options: ["Zim Den", "Guido van Rossum", "Niene Stom", "Wick van Rossum"], correctAnswerIndex: 1),
    Question(questionText: "In which year was the Python language developed?", options: ["1989", "1991", "1995", "1981"], correctAnswerIndex: 1),
    Question(questionText: "In which language is Python written?", options: ["English", "PHP", "C", "Java"], correctAnswerIndex: 2),
    Question(questionText: "What is the extension of Python file?", options: [".python", ".pl", ".p", ".py"], correctAnswerIndex: 3),
    Question(questionText: "What do we use to define a block of code in Python language?", options: ["Key", "Brackets", "Indentation", "None of these"], correctAnswerIndex: 2),
    Question(questionText: "Which of the following statements is used to create an empty set in Python?", options: ["()", "[]", "{}", "set()"], correctAnswerIndex: 3),
    Question(questionText: "Which keyword is used to create a function in Python?", options: ["Function", "def", "create", "define"], correctAnswerIndex: 1),
    Question(questionText: "To open a file c:\\\\scores.txt for reading, we use:", options: ["infile = open(\"c:\\\\scores.txt\", \"r\")", "infile = open(\"c:\\scores.txt\", \"r\")", "infile = open(file=\"c:\\scores.txt\", \"r\")", "infile = open(\"file:c:\\scores.txt\", \"r\")"], correctAnswerIndex: 0),
    Question(questionText: "What does the len() function do?", options: ["Gets the memory size of an object", "Returns the length of an object", "Returns the type of an object", "None of the above"], correctAnswerIndex: 1),
  ],

  'C++': [
    Question(questionText: "Who invented C++?", options: ["Dennis Ritchie", "Ken Thompson", "Brian Kernighan", "Bjarne Stroustrup"], correctAnswerIndex: 3),
    Question(questionText: "What is C++?", options: ["C++ is an object oriented programming language", "C++ is a procedural programming language", "C++ is a functional programming language", "None of the above"], correctAnswerIndex: 0),
    Question(questionText: "Which of the following is used for comments in C++?", options: ["/* comment */", "// comment */", "// comment", "both // comment or /* comment */"], correctAnswerIndex: 3),
    Question(questionText: "Which of the following user-defined header file extension used in c++?", options: ["hg", "cpp", "h", "hf"], correctAnswerIndex: 2),

    // ✅ FIXED HERE
    Question(
        questionText: "Which of the following is a correct identifier in C++?",
        options: ["VAR_1234", "\$var_name", "7VARNAME", "7var_name"],
        correctAnswerIndex: 0
    ),

    Question(questionText: "Which of the following is not a type of Constructor in C++?", options: ["Default constructor", "Parameterized constructor", "Copy constructor", "Friend constructor"], correctAnswerIndex: 3),
    Question(questionText: "Which of the following approach is used by C++?", options: ["Left-right", "Right-left", "Bottom-up", "Top-down"], correctAnswerIndex: 2),
    Question(questionText: "What is virtual inheritance in C++?", options: ["C++ technique to enhance multiple inheritance", "C++ technique to ensure that a private member of the base class can be accessed somehow", "C++ technique to avoid multiple copies of the base class into children/derived class", "C++ technique to avoid multiple inheritances of classes"], correctAnswerIndex: 2),
    Question(questionText: "What is the size of int data type in C++?", options: ["2 bytes", "4 bytes", "8 bytes", "Depends on compiler"], correctAnswerIndex: 3),
    Question(questionText: "By default, all the files in C++ are opened in _________ mode.", options: ["Binary", "VTC", "Text", "ISCII"], correctAnswerIndex: 2),
  ],
};