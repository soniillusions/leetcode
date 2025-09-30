def hasCycle(head)
  return false if head == nil

  slow = head
  fast = head

  while fast && fast.next 
    slow = slow.next
    fast = fast.next.next
    break if fast.nil?
    return true if slow.next == fast.next
  end
  return false
end