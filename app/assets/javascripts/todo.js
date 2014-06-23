window.Todo = {
  Models: {},
  Collections: {},
  Views: {},
  Routers: {},

  initialize: function() {
    //sets up routes
    new Todo.Routers.AppRouter();
    // start listening to changes to the location
    Backbone.history.start();
  },


};

$(Todo.initialize);