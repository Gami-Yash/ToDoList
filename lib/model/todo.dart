class ToDo{
  String? id;
  String? todoText;
  bool isDone;

  ToDo({
    required this.id,
    required this.todoText,
    this.isDone = false,
  });

  static List<ToDo> todoList(){
    return [
      ToDo (id:'01', todoText: 'Complete App', isDone: true),
      ToDo (id:'02', todoText: 'Find fire base projects', isDone: true),
      ToDo (id:"03", todoText: 'write TWSS assignment', isDone: false), 
      ToDo (id:'04', todoText: 'Complete the os questions', isDone: false),
      ToDo (id:'05', todoText: 'Check mails', isDone: false),
      ToDo (id:'06', todoText: 'Uncheck mails', isDone: false),
    ];
  }
}