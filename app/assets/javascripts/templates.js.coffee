@bites =
  
  reviewsTemplate: Handlebars.compile "
    <ul>
      
      {{#each reviews}}

        <div class=\"row reviewer-box\">
          <span class=\"avatar\"><img class=\"avatar\" src=\"{{user.avatar_href}}\"></span>
          <span data-id=\"{{id}}\">
            {{user.name}}&nbsp;|&nbsp;
            {{user.credential}}&nbsp;&nbsp;
            <small>on&nbsp;&nbsp;{{published_on}}</small>
          </span>
        </div>
        <p></p>

        <div class=\"row\">
          <div class=\"bubble\">  
              <br>Restaurant: 
              <a data-id=\"{{id}}\">{{restaurant}}</a>
              <br>Bites:
              <a data-id=\"{{id}}\">{{body}}</a>
              <p>
          </div>
        </div>
        <p>

      {{/each}}

    </ul>
  "

  userTemplate: Handlebars.compile "
    {{#each users}}
      <p class=\"user_name\">{{name}}</p>

        {{#each reviews}}
          <p>Restaurant:</p>
          <a data-id=\"{{id}}\">{{restaurant}}</a>
          <p>
          <p>Review:</p>
          <a data-id=\"{{id}}\">{{body}}</a>
          <p>
        {{/each}}


      <p><a id=\"back-to-users\" href=\"#\">Back to Users</a></p>
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
