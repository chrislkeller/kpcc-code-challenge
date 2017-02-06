KPCC Code Challenge
===================

About This
----------

The task was to:

* Create a web application that allows a user to search for KPCC articles. For each article found, display its title and any associated audio files. Note that some articles have related audio content and others do not.
* The search page for this web app should look like the screenshot attached – implement it using HTML and your own SASS/SCSS/CSS. Do not use Bootstrap or any other third party style libraries. The results page does not need to match that in design, so use your own discretion.
* The application must be implemented in Ruby. JavaScript is not required, but may be used. 3rd party dependencies are allowed, except for the style part of the objective.

How I Approached
-----------------

My Ruby experience is limited to a Rails project. But that framework seemed to be much larger than the task at hand. So I got up to speed quickly on the Sinatra framework which just might be my new favorite single-page app/quick REST API framework.

The guts of the project is pretty simple and shows the few basics I was able to pick up while working on the challenge. [app.rb](app.rb) consists of two defined routes. I use three templates to handle the dislplay.

I added one third-party JavaScript library to handle the audio. [audio.js](https://kolber.github.io/audiojs/) seemed lightweight and easy to implement quickly.

What's Missing?
---------------

Proper tests are missing, though even in lieu of proper tests I couldn't find a resource I could digest quickly to develop a couple catches to likely exceptions and dislay those to the user:

* [If the form is submitted with a searchterm of null or not resembling a word](app.rb#L16)
* [If the response to the API is anything other than a 200 or 301 status](https://github.com/chrislkeller/kpcc-code-challenge/blob/master/app.rb#L21)

Also missing is any additional styling on the results page, and limiting playback to only one audio player at a time.
