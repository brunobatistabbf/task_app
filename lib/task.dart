class Task {
  late String texto;
  bool done = false;

  Task(this.texto);

  void changeState() {
    this.done = !done;
  }
}
