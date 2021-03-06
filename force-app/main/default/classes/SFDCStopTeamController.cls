/*
*	Author:- Rahul Malhotra
*	Description:- This is the controller class for SFDC Stop Team Component
*	Created:- 21-06-2020
*	Last Updated:- 21-06-2020
*   Change Log:-
*   SNo.        Name        Date        Description
*/
public class SFDCStopTeamController {

    public class Contributor {
        //comment
        public String name;
        public String picURL;
        public Date contributionDate;
        public String trailheadURL;

        public Contributor(String name, String picURL, Date contributionDate, String trailheadURL) {
            this.name = name;
            this.picURL = picURL;
            this.contributionDate = contributionDate;
            this.trailheadURL = trailheadURL;
        }
    }

    /*
    *	Author:- Rahul Malhotra
    *	Description:- This method is used to return contributors data
    */
    @AuraEnabled(cacheable=true)
    public static String getContributors() {
        List<Contributor> sfdcstopContributors = new List<Contributor>();
        sfdcstopContributors.add(
            new Contributor(
                'Rahul Malhotra',
                'https://pbs.twimg.com/profile_images/1208356452160589824/qLtb5g9P_400x400.jpg',
                Date.newInstance(2020, 06, 21),
                'https://trailblazer.me/id/rahulmalhotra'
            )
        );
        sfdcstopContributors.add(
            new Contributor(
                'Trilok Sharma',
                'https://avatars.githubusercontent.com/u/92006951?v=4',
                 Date.newInstance(2021, 10, 07),
                'https://trailblazer.me/id/trilok007'
            )
        );

       
        sfdcstopContributors.add(
            new Contributor(
                'annapurna Mishra',
                'https://avatars3.githubusercontent.com/u/66051548?s=400&v=4',
                Date.newInstance(2021, 09, 07),
                'https://trailblazer.me/id/vardhans'
            )
        );

        sfdcstopContributors.add(
            new Contributor(
                'salesforce 32 146',
                'https://avatars3.githubusercontent.com/u/66051548?s=400&v=4',
                Date.newInstance(2021, 09, 30),
                'https://www.p.force.com'
            )
        );


        return JSON.serialize(sfdcstopContributors);
    }
}
