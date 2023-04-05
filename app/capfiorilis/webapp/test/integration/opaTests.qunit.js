sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'capfiorilis/test/integration/FirstJourney',
		'capfiorilis/test/integration/pages/BooksList',
		'capfiorilis/test/integration/pages/BooksObjectPage'
    ],
    function(JourneyRunner, opaJourney, BooksList, BooksObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('capfiorilis') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheBooksList: BooksList,
					onTheBooksObjectPage: BooksObjectPage
                }
            },
            opaJourney.run
        );
    }
);