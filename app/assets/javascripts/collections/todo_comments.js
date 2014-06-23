window.Todo.Collections.TodoComments = Backbone.Collection.extend({
  model: Todo.Models.Comment,
  url: function() {
    return this.todo.url() + "/comments";
  },
  initialize: function(models, options) {
    this.todo = options.todo;
  }

})