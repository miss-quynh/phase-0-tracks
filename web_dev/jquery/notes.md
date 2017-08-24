jQUERY -- write less, do more
Helpful jQUERY API documentation: http://api.jquery.com


To incorporate the jquery file into the HTML, use the following code format:
    <script src="jquery.js"></script>
Similarly to the javascript file, this line of code should be added into the body tag of the HTML file, right above the </body> tag.

*** Note that in practice, it is usually better to place your code in a separate JS file and load it on the page with a <script> element's src attribute.

Underneath the <script src="jquery.js"></script>, you will write your own javascript code in the <script> </script> tag. The foundation to start the code is the following:

    <script>
     
        $( document ).ready(function() {
           
        });
     
    </script>

The $ sign is the value that is given to the jQUERY library when it loads up, so anytime you want to reference jQUERY you hit $.

NEED TO REMEMBER THIS:

    $( document ).ready(function() {
    });

Your jQUERY code always go inside the document ready function. The jQUERY action can have a selector # which works similarly to CSS. For instance, if the HTML file assigns an element to the id class inside the <div> tag:
    <div id="sample">
    </div>
then the jQUERY action can begin with:
    $('#sample') --> can be in single quotes or double quotes like $("#sample")
followed by . and then the method/action:
    $('#sample').hide(300) --> means that sample will be hidden over the course of 300 milliseconds. 

jQUERY is chainable, meaning that you can continue to stack methods as long as it is not the semicolon yet:
    $('#sample').slideUp(1000).delay(1000).slideDown(1000);

We can also use a CSS method:
    $('#sample').css({
        color: 'red',
        fontWeight: 'bold',
        opacity: '0.5'
    });
Note that every time you do a curly braces {} in javascript, it is making an object.

We can also use an HTML method:
    $('#sample').html('new text'); --> this will rewrite the previous HTML text. 
You can also add new tags within the HTML method: 
    $('#sample').html('new text <strong>some text</strong>');


Now, let's listen to what the user is doing and do methods when the user interacts with our page. For instance, if we want the '#sample' on the page to fade out when the user clicks on it, we can use the following code:
    $('#sample').on('click', function() {
        $('#sample').fadeOut(200);
    });
Basically, what this means is when the user click on 'sample' icon, it is going to run the function declared within the curly braces {}.
Another javascript event is mouseover:
    $('#sample').on('mouseover', function() {
        $('#sample').fadeToggle(200);
    });


When making jQUERY action work across multiple forms, we can make it more DRY (Don't Repeat Yourself) by first reassigning our HTML file with a class element instead of an id element inside the <div> tag:
*Note: We can have only one ID, but we can have multiple classes
    <div class="container">
        <button class="button" data-panelid="panel1">#btn1</button>
        <button class="button" data-panelid="panel2">#btn2</button>
        <button class="button" data-panelid="panel3">#btn3</button>
    </div>
then use the following code:
    $('.button').on('click', function() {
        var panelID = $(this).attr('data-panelid');
        $('#'+panelID).toggle();
    });