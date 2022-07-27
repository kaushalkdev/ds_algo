abstract class Sorting {
  List<int> swap(List<int> list) {
    list[0] = list[0] + list[1];
    list[1] = list[0] - list[1];
    list[0] = list[0] - list[1];
    return [list[0], list[1]];
  }

  List<int> sort(List<int> list);
}
