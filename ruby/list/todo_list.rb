class TodoList
  def initialize(array)
    @list = array
  end

  def get_items
    @list
  end

  def add_item(item_name)
    @list << item_name
  end

  def delete_item(item_name)
    @list.delete(item_name)
  end

  def get_item(index)
    @list[index]
  end
end

todolist = TodoList.new(["do the dishes", "mow the lawn"])