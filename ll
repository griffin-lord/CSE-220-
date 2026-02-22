void rotate(int k) {
    if (head == null || k == 0) return;
    DNode temp = head;
    int len = 1;
    while (temp.next != null) { temp = temp.next; len++; }
    k = k % len;
    if (k == 0) return;
    DNode newHead = head;
    for (int i = 0; i < k; i++) newHead = newHead.next;
    newHead.prev.next = null;
    newHead.prev = null;
    temp.next = head;
    head.prev = temp;
    head = newHead;
}
