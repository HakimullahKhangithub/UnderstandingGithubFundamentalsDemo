public class FlowHelperController {
    
    @InvocableMethod(label='Calculate Hotel Rating')
    public static List<Decimal> calculateOverallHotelRating(List<Id> accIds)
    {
        List<AggregateResult> agrResults= [SELECT id, AVG(Customer_Rating__c) HotelAvgRating FROM Account where Id IN:accIds Group by Id];
        List<Decimal> hotelRating =new List<Decimal>();
        
        //Decimal hotelRating;
        for(AggregateResult agr:agrResults)
        {
            //hotelRating = arg.get('Customer_Rating__c');// arg.get() will give result in object format.Convet obj to dec.
            hotelRating.add(Decimal.valueOf( String.valueOf(agr.get('HotelAvgRating')))); 
        }
        
        return hotelRating;

    public static List<Decimal> calculateOverallHotelRating&Reviews(List<Id> accIds)
    {
        List<AggregateResult> agrResults= [SELECT id, AVG(Customer_Rating__c) HotelAvgRating FROM Account where Id IN:accIds Group by Id];
        List<Decimal> hotelRatingReview =new List<Decimal>();
        
        //Decimal hotelRating;
        for(AggregateResult agr:agrResults)
        {
            //hotelRating = arg.get('Customer_Rating__c');// arg.get() will give result in object format.Convet obj to dec.
            hotelRatingReview.add(Decimal.valueOf( String.valueOf(agr.get('HotelAvgRating')))); 
        }
        
        return hotelRating;


    } 
}
