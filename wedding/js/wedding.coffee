---
---
# Navbar
$(->
	$('.navbar .navbar-item a').click((event) ->
		el = $(this)
		$('.navbar .navbar-item a.active').removeClass('active')
		el.addClass('active')

		pageName = el.attr('href').replace(/#/, '')
		$(".wedding-content.active").removeClass('active')
		$(".wedding-content.#{pageName}").addClass('active')
		window.location = pageName
	)
)