# Definition for singly-linked list.
class ListNode
    attr_accessor :val, :next
    def initialize(val)
        @val = val
        @next = nil
    end
end

# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def add_two_numbers(l1, l2)
    dummy_head = ListNode.new(0)
    p, q, curr = l1, l2, dummy_head
    carry = 0
    while p || q
        x = p.nil? ? 0 : p.val
        y = q.nil? ? 0 : q.val
        sum = carry + x + y
        carry = sum / 10
        curr.next = ListNode.new(sum % 10)
        curr = curr.next
        p = p.next if !p.nil?
        q = q.next if !q.nil?
    end
    if carry > 0
        curr.next = ListNode.new(carry)
    end
    dummy_head.next
end
