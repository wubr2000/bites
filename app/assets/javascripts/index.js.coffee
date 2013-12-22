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
    review = $('#new_review').val()
    time = Date()
    id = $(@).data('id')

    if (title=="") 
      console.log("title is empty");
    else
      $.ajax '/api/users/9/reviews.json', #FIX THIS PART!!!!
        type: 'POST',
        dataType: 'text',
        data: { "review": { 
          "restaurant": title, 
          "body": review,
          "published_on": time }},
        success: (data) ->
          showPage '/api/reviews', bites.reviewsTemplate

#REVIEW DELETE FUNCTION

  $(".page-content").on "click", "#delete_button", (e) ->
    e.preventDefault()
    id = $(@).data('id')
    console.log(id)

    $.ajax '/api/reviews/'+id, 
      type: 'DELETE',
      dataType: 'text',
      success: (data) ->
        showPage '/api/reviews', bites.reviewsTemplate

#REVIEW FOLLOW FUNCTION
  $(".page-content").on "click", "#follow_button", (e) ->
    e.preventDefault()
    id = $(@).data('id')
    console.log(id)

    $.ajax '/api/relationships/', 
      type: 'POST',
      dataType: 'text',
      data: { "relationships": { 
          "follower_id": 8, #FIX THIS PART!!!
          "followed_id": id }},
      success: (data) ->
        showPage "/api/users/#{id}", bites.userTemplate


  # $.ajax '/api/users', 
  #   type: 'GET',
  #   dataType: 'json',
  #   success: (data) ->
  #     source = $('#users-template').html()
  #     template = Handlebars.compile(source)
  #     output = template(data)
  #     $('#content').html(output)
