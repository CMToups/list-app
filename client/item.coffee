Template.item.events
	'submit': (e, tmp) ->
		e.preventDefault()
		form = 
			name: tmp.find('.name input').value
			brand: tmp.find('.brand input').value
			price: tmp.find('.price input').value
			upc: tmp.find('.upc input').value
			notes: tmp.find('.notes textarea').value
		Items.insert(form)

Template.item.name = -> 
	if Session.get('currentItem') then Session.get('currentItem').name

Template.item.brand = -> 
	if Session.get('currentItem') then Session.get('currentItem').brand

Template.item.price = -> 
	if Session.get('currentItem') then Session.get('currentItem').price

Template.item.upc = -> 
	if Session.get('currentItem') then Session.get('currentItem').upc

Template.item.notes = -> 
	if Session.get('currentItem') then Session.get('currentItem').notes


Template.item.readonly = -> unless Session.get 'editItem' then readonly="readonly"
