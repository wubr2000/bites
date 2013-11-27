@bites =
  
  reviewsTemplate: Handlebars.compile "
    <ul>
      
      {{#each reviews}}

        <div class=\"row reviewer-box\">
          <span data-id=\"{{user.id}}\" class=\"avatar-small\"><img class=\"avatar-small\" src=\"{{user.avatar_href}}\"></span>
          <span data-id=\"{{user.id}}\">
            {{user.name}}&nbsp;|&nbsp;
            {{user.credential}}&nbsp;&nbsp;
            <small>on&nbsp;&nbsp;{{published_on}}</small>
          </span>
        </div>
        <p></p>

        <div class=\"row\">
          <div class=\"bubble\">  
              <br>Restaurant: 
              <a data-id=\"{{id}}\" class=\"content-font\">{{restaurant}}</a>
              <br>Bites:
              <a data-id=\"{{id}}\" class=\"content-font\">{{body}}</a>
              <p>
          </div>
        </div>
        <p>

        <script>
        </script>

      {{/each}}

    </ul>
  "

  userTemplate: Handlebars.compile "
    {{#each users}}
        <div class=\"row well\">
          <p data-id=\"{{id}}\" align=\"center\"><img class=\"avatar-regular\" src=\"{{avatar_href}}\"></p>
          <span data-id=\"{{id}}\" align=\"center\">
            <h3>{{name}}</h3>
            <h5>{{credential}}</h5>
          </span>

          <span data-id=\"{{id}}\" align=\"center\">
            <h5><a id=\"followers\" href=\"#\"><i class=\"fa fa-users\"></i></a>
              Followers: {{followers_count}}
            </h5>
            <h5><a id=\"followed_users\" href=\"#\"><i class=\"fa fa-heart\"></i></a>
              Following: {{followed_users_count}}
            </h5>
          </span>

          <div id='followers-box'>
            {{#each followers}}
              <div class=\"row reviewer-box\">
                <span data-id=\"{{id}}\" class=\"avatar-small\"><img class=\"avatar-small\" src=\"{{avatar_href}}\"></span>
                <span data-id=\"{{id}}\">
                {{name}}&nbsp;|&nbsp;
                {{credential}}&nbsp;&nbsp;
                </span>
              </div>
              <p></p>
            {{/each}}
          </div>

          <div id='followed-users-box'>
            {{#each followed_users}}
              <div class=\"row reviewer-box\">
                <span data-id=\"{{id}}\" class=\"avatar-small\"><img class=\"avatar-small\" src=\"{{avatar_href}}\"></span>
                <span data-id=\"{{id}}\">
                {{name}}&nbsp;|&nbsp;
                {{credential}}&nbsp;&nbsp;
                </span>
              </div>
              <p></p>
            {{/each}}
          </div>


        </div>
        <p></p>

        {{#each reviews}}
          <div class=\"row reviewer-box\">
            <div class=\"bubble\">  
                <br>Restaurant: 
                <a data-id=\"{{id}}\" class=\"content-font\">{{restaurant}}</a>
                <br>Bites:
                <a data-id=\"{{id}}\" class=\"content-font\">{{body}}</a>
                <p>
            </div>
          </div>
          <p>
        {{/each}}

    {{/each}}
  "

  usersTemplate: Handlebars.compile "
    <ul>
      {{#each users}}
        
        <li data-id=\"{{id}}\">{{name}}</li>
        <p>
        
        <p>Followers:</p>
        {{#each followers}}
          <a data-id=\"{{id}}\">{{name}}, </a>
        {{/each}}
        <p>

        <p>Following:</p>
        {{#each followed_users}}
          <a data-id=\"{{id}}\">{{name}}, </a>
        {{/each}}
        <p>

      {{/each}}
    </ul>
  "
