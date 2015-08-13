---
---
# Navbar
$(->
	$('.navbar .navbar-item a').click((event) ->
		$('.navbar .navbar-item a.active').removeClass('active')
		$(this).addClass('active')
	)
)