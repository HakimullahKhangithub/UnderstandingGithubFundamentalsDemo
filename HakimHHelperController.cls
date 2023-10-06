public class HakimHelperController {
    
    @InvocableMethod(label='Calculate Hakim Hotel Rating')
      
    public static List<outputvariables> calculateOverallHotelRatingAndReview(List<inputvariables> inputvariables)
    {
        //Input
        List<Id> accIds = inputvariables.get(0).hotelIds;  
        system.debug('accIds from Flow ::' + accIds); // Debug statement
        
        //Core logic start
        List<AggregateResult> agrResults= [SELECT  Account__c, Avg(Kustomer_Rating__c) HotelAvgRating, count(Id) Reviewscount FROM Hotel_Review__c where Account__c IN:accIds Group by Account__c];
                  
        List<Decimal> hakimhotelRating =new List<Decimal>();
        List<Integer> hakimhotelReviewCount =new List<Integer>();
                
          for(AggregateResult agr:agrResults)
        {
            hakimhotelRating.add(Decimal.valueOf( String.valueOf(agr.get('HotelAvgRating')))); 
            hakimhotelReviewCount.add(Integer.valueOf( String.valueOf(agr.get('Reviewscount'))));
        }
        //Core logic end
        
        // Create a Output list and return
        List<outputvariables> outputvariables = new List<outputvariables>();
        outputvariables objoutput = new outputvariables();
        objoutput.lsthakimhotelRating= hakimhotelRating;
        objoutput.lsthakimhotelReviewCount= hakimhotelReviewCount;
        outputvariables.add(objoutput);
        
        return outputvariables;

    } 
  
      public class inputvariables
      {
         @InvocableVariable
          public List<Id> hotelIds;
      }
        
         public class outputvariables
      {
          @InvocableVariable
          public List<Decimal> lsthakimhotelRating;
          @InvocableVariable
          public List<Decimal> lsthakimhotelReviewCount;
      }
    
}
