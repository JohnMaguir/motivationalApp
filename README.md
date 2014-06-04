#Written by John Maguire
#john@xap.ie
#OnePageCRM
#04-Jun-14

A small example of how anyone can integrate their application with OnePageCRM using webhooks.

This app is used to receive webhooks sent from OnePageCRM,
When a deal is set as won in OnePageCRM this app will increment your number of won deals
A motivational message will also be updated depending on the amount of deals you have won.

How-to:
clone this repository
Have a look at the 'beauty of ultrahooks' post in our developer blog to set up the webhooks
http://developer.onepagecrm.com/blog/
In the terminal navigate to the rails app and run the server with teh command 'rails s'
In the browser navigate to:
http://localhost:3000/articles/2
to see the amount of won deals you have completed as well as your motivational message to help you win even more.

For any further queries on integrating your application with OnePageCRM please do not hesitate to contact us.
