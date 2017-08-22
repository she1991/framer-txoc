# Import file "TxOC_Dashboard_TableView"
sketch = Framer.Importer.load("imported/TxOC_Dashboard_TableView@2x", scale: 1)

#Hide all unused layers
sketch.LoadingScreen.visible = false
sketch.Level2.visible = false
sketch.CardsPlayed.visible = false
sketch.CreateCodeDialog.visible = false
sketch.StatusDropdown.visible = false

#Adding refresh logic
sketch.RefreshButton.onClick ->
	sketch.LoadingScreen.visible = true
	delayLoadScreen = sketch.LoadingScreen.animate
		opacity: 1.1
		options:
			time: 0.5
	delayLoadScreen.on 'end', ->
		sketch.Level2.visible = true
		Utils.delay 1, ->
			sketch.LoadingScreen.visible = false;
			sketch.Level2.visible = false
			sketch.LoadingScreen.opacity = 1;
			
#Adding create school code
sketch.CreateCode.onClick ->
	sketch.CreateCodeDialog.visible = true
#Adding create school code dialog cancel
sketch.CodeDialogCancel.onClick ->
	sketch.CreateCodeDialog.visible = false
	
#Adding status dropdown
sketch.Status.onClick ->
	sketch.StatusDropdown.visible = true
sketch.HighFidelity_VizScreen_Single.onClick ->
	if sketch.StatusDropdown.visible = true
		sketch.StatusDropdown.visible = false
#Adding status drop down collapse
sketch.StatusDropdown.onClick ->
	sketch.StatusDropdown.visible = false

#Function to show cards played
showCardsPlayed = ->
	sketch.CardsPlayed.visible = true
#Close cards played on clicking ok
sketch.CardsPlayedOk.onClick ->
	sketch.CardsPlayed.visible = false

#Adding cards played dialog
sketch.ExpandPlayed.onClick ->
	showCardsPlayed()
sketch.ExpandPlayed1.onClick ->
	showCardsPlayed()
sketch.ExpandPlayed2.onClick ->
	showCardsPlayed()
sketch.ExpandPlayed3.onClick ->
	showCardsPlayed()
sketch.ExpandPlayed4.onClick ->
	showCardsPlayed()
sketch.ExpandPlayed5.onClick ->
	showCardsPlayed()
sketch.ExpandPlayed6.onClick ->
	showCardsPlayed()
sketch.ExpandPlayed7.onClick ->
	showCardsPlayed()
sketch.ExpandPlayed8.onClick ->
	showCardsPlayed()
sketch.ExpandPlayed9.onClick ->
	showCardsPlayed()