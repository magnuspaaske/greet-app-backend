define([
  'backbone'
], (Backbone) ->

  app = {
    # app.session = new SessionModel({})
    regions: {
      navbar:       '#navbar'
      maincontent:  '#maincontent'
      footer:       '#footer'
    }
  }

  # app.addRegions({
  #   navbar: '#navbar',
  #   maincontent: '#maincontent'
  # })

  # app.showNavBar = () ->
  #   if (app.navbarItemView == undefined)
  #     app.navbarItemView = new NavbarItemView()
  #     app.navbar.show(app.navbarItemView)

  # app.showLoginPage = () ->
  #   app.loginPageItemView = new LoginPageItemView()
  #   app.maincontent.show(app.loginPageItemView)

  # app.showAboutPage = () ->
  #   app.aboutPageItemView = new AboutItemView()
  #   app.maincontent.show(app.aboutPageItemView)

  # app.showMainContent = () ->
  #   if (app.session.get('logged_in') == true)
  #     app.todosLayoutView = new TodosLayoutView()
  #     app.maincontent.show(app.todosLayoutView)
  #     if (Backbone.history.fragment == '' or Backbone.history.fragment == 'login')
  #       Backbone.history.navigate '#/todos', {
  #         trigger: true
  #       }
  #   else
  #     app.showLoginPage()
  #     Backbone.history.navigate('#/login')

  # app.on('start', () ->
  #   app.showNavBar()
  #   app.showMainContent()
  # )

  # app.listenTo(app.session, 'change:logged_in', () ->
  #   app.showNavBar()
  #   app.navbarItemView.onLoginStatusChange()
  #   app.showMainContent()
  # )

  # app.vent.on('login:show', app.showLoginPage)

  # app.vent.on('about:show', app.showAboutPage)

  # app.vent.on('todos:filter', (filter) ->
  #   app.showMainContent()
  #   if (app.todosLayoutView)
  #     app.todosLayoutView.updateFilter(filter)
  # )

  return window.app = app
)
