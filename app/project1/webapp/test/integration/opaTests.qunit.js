sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'project1/test/integration/FirstJourney',
		'project1/test/integration/pages/EntityAList',
		'project1/test/integration/pages/EntityAObjectPage',
		'project1/test/integration/pages/EntityA1ObjectPage'
    ],
    function(JourneyRunner, opaJourney, EntityAList, EntityAObjectPage, EntityA1ObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('project1') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheEntityAList: EntityAList,
					onTheEntityAObjectPage: EntityAObjectPage,
					onTheEntityA1ObjectPage: EntityA1ObjectPage
                }
            },
            opaJourney.run
        );
    }
);