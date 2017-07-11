# MVVM_Demo

Model–view–viewmodel (MVVM) is a software architectural pattern.

MVVM facilitates a separation of development of the graphical user interface – be it via a markup language or GUI code – from development of the business logic or back-end logic (the data model). The view model of MVVM is a value converter,[1] meaning the view model is responsible for exposing (converting) the data objects from the model in such a way that objects are easily managed and presented. In this respect, the view model is more model than view, and handles most if not all of the view's display logic. The view model may implement a mediator pattern, organizing access to the back-end logic around the set of use cases supported by the view.

MVVM is a variation of Martin Fowler's Presentation Model design pattern. MVVM abstracts a view's state and behavior in the same way, but a Presentation Model abstracts a view (creates a view model) in a manner not dependent on a specific user-interface platform.
MVVM and Presentation Model both derive from the model–view–controller pattern (MVC).

MVVM was developed by Microsoft architects Ken Cooper and Ted Peters specifically to simplify event-driven programming of user interfaces—by exploiting features of Windows Presentation Foundation (WPF) (Microsoft's .NET graphics system) and Silverlight (WPF's Internet application derivative). John Gossman, one of Microsoft's WPF and Silverlight architects, announced MVVM on his blog in 2005.

Model–view–viewmodel is also referred to as model–view–binder, especially in implementations not involving the .NET platform. ZK (a web application framework written in Java) and KnockoutJS (a JavaScript library) use model–view–binder.

Components of MVVM pattern

Model
    Model refers either to a domain model, which represents real state content (an object-oriented approach), or to the data access layer, which represents content (a data-centric approach).

View
    As in the MVC and MVP patterns, the view is the structure, layout, and appearance of what a user sees on the screen.  (UI).[further explanation needed]

View model
    The view model is an abstraction of the view exposing public properties and commands. Instead of the controller of the MVC pattern, or the presenter of the MVP pattern, MVVM has a binder. In the view model, the binder mediates communication between the view and the data binder.[clarification needed] The view model has been described as a state of the data in the model.[7]

Binder
    Declarative data and command-binding are implicit in the MVVM pattern. In the Microsoft solution stack, the binder is a markup language called XAML The binder frees the developer from being obliged to write boiler-plate logic to synchronize the view model and view. When implemented outside of the Microsoft stack the presence of a declarative databinding technology is a key enabler of the pattern
    
    
 more to go  --> https://en.wikipedia.org/wiki/Model%E2%80%93view%E2%80%93viewmodel   
    
