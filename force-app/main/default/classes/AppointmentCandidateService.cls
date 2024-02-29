public class AppointmentCandidateService {
   //Instance members for parsing
   public String startTime;
   public String endTime;
   public List<String> resources; 
   public String territoryId;
   public static List<AppointmentCandidateService> getAppointmentCandidates(){
      //Build input for GetAppointmentCandidates API
      //changes
      lxscheduler.GetAppointmentCandidatesInput input = new lxscheduler.GetAppointmentCandidatesInputBuilder()
         .setWorkTypeGroupId('0VSRM0000000AGT4A2')
         .setTerritoryIds(new List<String>{'0HhRM0000000G8W0AU'})
         .setStartTime(System.now().format('yyyy-MM-dd\'T\'HH:mm:ssZ','America/Los_Angeles'))
         .setEndTime(System.now().addDays(2).format('yyyy-MM-dd\'T\'HH:mm:ssZ','America/Los_Angeles'))
         .setSchedulingPolicyId('0VrRM00000000D0')
         .setApiVersion(Double.valueOf('50.0'))
         .build();
      List<AppointmentCandidateService> vList = parse(lxscheduler.SchedulerResources.getAppointmentCandidates(input));
      return vList;
   }
   private static List<AppointmentCandidateService> parse(String json) {
      return (List<AppointmentCandidateService>) System.JSON.deserialize(json, List<AppointmentCandidateService>.class);
   }
}