---
---

$(->
	# Navbar
	$('.navbar .navbar-item a').click((event) ->
		el = $(this)
		$('.navbar .navbar-item a.active').removeClass('active')
		el.addClass('active')

		pageName = el.attr('href').replace(/#/, '')
		$(".wedding-content.active").removeClass('active')
		$(".wedding-content.#{pageName}").addClass('active')
		window.location = pageName
	)

	# RSVP Form
	$('.rsvp-form input[type=radio][name=attending]').change((event) ->
		el = $(this)
		hideIfNotAttendingEls = $('.hide-if-not-attending')
		if el.val() == 'yes'
			hideIfNotAttendingEls.show()
		else
			hideIfNotAttendingEls.hide()
	)
)
