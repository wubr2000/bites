$ ->
  showPage = (url, templateFunc) ->
    $.ajax url,
      type: 'GET',
      dataType: 'json',
      success: (data) ->
        $('#content').html(templateFunc(data))

#MAIN REVIEWS PAGE
  showPage '/api/reviews', bites.reviewsTemplate

#CLICK TO GO TO INDIVIDUAL USERS
  $('section').on 'click', 'ul li', (e) ->
    id = $(@).data('id')
    showPage "/api/users/#{id}", bites.userTemplate

#BACK TO USERS LINK
  $('section').on 'click', '#back-to-users', (e) ->
    showPage '/api/users', bites.usersTemplate

#NEW REVIEW SUBMIT FUNCTION
  $('#new_review_submit').on 'click', (e) ->
    title = $('#new_restaurant_name').val()
    id = $(@).data('id')

    if (title=="") 
      console.log("title is empty");
    else
      $.ajax '/api/users/1/reviews', 
        type: 'POST',
        contentType: 'application/json',
        data: JSON.stringify({ "review": { "restaurant": title, "body": "Give me some chili!" }}),
        success: (data) ->
          console.log(data) 

  # $.ajax '/api/users', 
  #   type: 'GET',
  #   dataType: 'json',
  #   success: (data) ->
  #     source = $('#users-template').html()
  #     template = Handlebars.compile(source)
  #     output = template(data)
  #     $('#content').html(output)
