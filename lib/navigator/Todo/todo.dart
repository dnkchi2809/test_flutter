class Todo {
  final String title;
  final String description;

  const Todo(this.title, this.description);
}

final todos = List.generate(
  20,
  (i) => Todo(
    'Todo $i',
    'A description of what needs to be done for Todo $i',
  ),
);
