class WelcomeController < ApplicationController
    #this file was generated by running the command:
    # rails g controller welcome

    # method is called action in controller
    def index 
        #by default rails will render a template within views
        #under views/weclome (it will match the controller name)
        #this action will render out the file views/welcome/index.html.erb
    end

    def goodbye
    end

    def form_example
        
    end
end
