# не самое лучшее решение по производительности
# лучше решать методом двух указателей

def hasCycle(head)
    visited = []
    return false if head == nil
    while head.next
        visited << head
        head = head.next
        break if head.nil?
        if visited.include?(head)
            return true
        end
    end
    return false
end