# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

p1 = Person.create(first_name: "George", last_name: "Clooney", image: "http://s3.amazonaws.com/codecademy-content/courses/learn-rails/img/george-clooney.jpg")
p2 = Person.create(first_name: "Matt", last_name: "Damon", image: "http://s3.amazonaws.com/codecademy-content/courses/learn-rails/img/matt-damon.jpg")
p3 = Person.create(first_name: "Brad", last_name: "Pitt", image: "http://s3.amazonaws.com/codecademy-content/courses/learn-rails/img/brad-pitt.jpg")

q1 = Question.create(title: "Restart a program on Windows every time it is finished", ques:"I have written an indexing program in Java that I need to run as often as possible on a Windows machine,When the program is finished, it should be restarted.When the program runs longer than one hour, it should be killed and restarted.I thought about writing a Java program that runs forever, but occasionally, the JVM crashes so that this approach does not seem to be reliable.I guess that I have to write a batch file or a Powershell script, but actually don't know where to start.")
q2 = Question.create(title: "How to change input value to max value if it reaches the {max} AngularJS", ques:"I have a form it includes input field which you can enter the amount of money. It has max attr. and if user entered amount of money greater than the max value I would like to set the ng-model parameter value to set max value which is the response of a RESTFull API.Directly assigned the JSON object value to max attribute. The max value is typed in string as a response of API.I used currency filters while assigning of the attribute values.How to set max attribute value to ngModel object's value? If user enters the greater value than max value? Is there a way to change it immidiately and update the input field at the same time?")
q3 = Question.create(title: "How to use other servlets service in another servlet?", ques:"I need to forward/craft request to another servlet from other servlet's service method manually. This servlet which calls another servlet, should extract the data from other servlet's response and send it's own response to client. How to achieve this kind of functionality?Client <-----> Servlet1 <-----> Servlet2I know it's bad design, but due the circumstances we have to introduce the functionality of Servlet2 to Servlet1")
q4 = Question.create(title: "Will the TCP connection be shut down after a HTTP request/response？", ques:"HTTP is conventionally considered a stateless protocol. The browser establishes connection with the server during a request,and after the browser gets the response, the HTTP connection will be closed. Also, HTTP is a application layer protocol. When the browser sends a request to the server or receives a response from the server, data is passed down to the next layer, then encapsulated into a transport layer protocol. Here is the question.Is the TCP connection between the browser and the server closed immediately after a request/response in HTTP? Or it will keep connection for a while?")
q5 = Question.create(title: "MessageBox call hangs for few seconds when calling from modeless dialog", ques:"My program has two windows, the main window displays some video and has a button that creates a modeless dialog window.The modeless dialog also has a button that displays a MessageBox to the user.All works fine but the MessageBox that hangs for few seconds each time I click the button.I removed my main window caption using SetWindowLong, When testing the same scenario without removing the window caption all seems to work well. Also, If I pause the video and then tries to click the button, my MessageBox works well too.Both windows belong to the same thread.")

a1 = Answer.create(ans: "Services have the option to be restarted automatically on failure. So that's what I'd do: Write a neverending program and wrap it in a service. Configre the latter to be autorestarted on error. If that is an option.")
a2 = Answer.create(ans: "The Windows way would be to implement a small service that starts, monitors and restarts you app. Here is a detailed article on how to to it: msdn.microsoft.com/en-us/magazine/mt703436.aspx - Sorry not to be able to write an anwser with that, but link only one are frowned upon, and the content is too large to fit in one single SO answer")
a3 = Answer.create(ans: "Yes you can achieve either by using Request Dispatcher's Forward or Include methods (available with request object) or Send Redirect method(available with response object). ServletContext is also one of the ways to acheive servlet collaboration because it is the one which provides the information of all the servlets.")
a4 = Answer.create(ans: "Where is this info kept (this connection is between computer A and server F)?A TCP connection is recognized by source IP and port and destination IP and port. Your OS, all intermediate routers and proxies and the server's OS will recognize the connection by this.HTTP works with request-response: client connects to server, performs a request and gets a response. Normally, the connection to an HTTP server is closed after each response. With HTTP keep-alive you keep the underlying TCP connection open until certain criteria are met.This allows for multiple request-response pairs over a single TCP connection, eliminating some of TCP's relatively slow connection startup.")

p1.question << [q1,q3]
p2.question << [q2,q5]
p3.question << [q4]
q1.answer << [a1,a2]
q3.answer << [a3]
q4.answer << [a4]
p1.answer << [a4]
p2.answer << [a1,a3]
p3.answer << [a2]

