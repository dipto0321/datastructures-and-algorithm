# from typing import int
# Definition for singly-linked list.


class ListNode:
    def __init__(self, x):
        self.val = x
        self.next = None


class Solution:
    def removeNthFromEnd(self, head: ListNode, n: int) -> ListNode:
        dummy = ListNode(None)
        dummy.next = fast = head
        head = dummy
        while n > 0:
            fast = fast.next
            n -= 1
        while fast.next is not None:
            fast = fast.next
            dummy = dummy.next
        dummy.next = dummy.next.next
        return head.next


head = ListNode(1)
head.next = ListNode(2)
head.next.next = ListNode(3)
head.next.next.next = ListNode(4)
head.next.next.next.next = ListNode(5)

sol = Solution()
# sol.removeNthFromEnd(head, 2)


def printList(head):
    while head:
        print(head.val, end="->")
        head = head.next


printList(sol.removeNthFromEnd(head, 2))
