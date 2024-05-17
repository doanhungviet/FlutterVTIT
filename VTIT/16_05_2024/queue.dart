import 'dart:collection';

void main() {
  // Khởi tạo một hàng đợi
  Queue<int> queue = Queue();

  // Thêm các phần tử vào hàng đợi
  queue.addAll([1, 2, 3, 4, 5]);

  // In ra các phần tử trong hàng đợi
  print('Các phần tử trong hàng đợi:');
  queue.forEach((element) {
    print(element);
  });

  // Xóa phần tử đầu tiên khỏi hàng đợi
  int removedElement = queue.removeFirst();
  print('\nPhần tử đầu tiên đã bị xóa khỏi hàng đợi: $removedElement');

  // In ra các phần tử sau khi xóa
  print('\nCác phần tử trong hàng đợi sau khi xóa:');
  queue.forEach((element) {
    print(element);
  });
}                                                                                                                                                                                                             