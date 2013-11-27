$ ->
  showPage = (url, templateFunc) ->
    $.ajax url,
      type: 'GET',
      dataType: 'json',
      success: (data) ->
        $('#content').html(templateFunc(data))

#MAIN REVIEWS PAGE
  showPage '/api/reviews', bites.reviewsTemplate

#CLICK TO GO TO AN INDIVIDUAL USER PAGE
  $('section').on 'click', 'ul span', (e) ->
    e.preventDefault()
    id = $(@).data('id')
    showPage "/api/users/#{id}", bites.userTemplate
  
#TOGGLE FOLLOWERS AND FOLLOWING BOXES
  $(".page-content").on "click", "#followers", (e) ->
    e.preventDefault()
    $("#followers-box").toggle "show"

  $(".page-content").on "click", "#followed_users", (e) ->
    e.preventDefault()
    $("#followed-users-box").toggle "show"

#HOME LINK
  # $('a[href*="HOME"]').on 'click', (e) ->
  #   console.log("home button")
  #   showPage '/api/reviews', bites.reviewsTemplate

#NEW REVIEW SUBMIT FUNCTION
  $('#new_review_submit').on 'click', (e) ->
    e.preventDefault()
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
