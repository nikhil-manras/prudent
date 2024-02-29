public class EscalationManagement {
    public static void esacalateToManager(){
        list<OperatingHours> oh = [SELECT id from OperatingHours];
        set<id> ohId = new set<id>();
        for(OperatingHours stm:oh){
            ohId.add(stm.id);
        }
        system.debug(oh);
        list<ServiceTerritoryMember> sr = [SELECT id,serviceresource.relatedrecordid,OperatingHoursId from ServiceTerritoryMember where operatingHoursid in: ohid];
        system.debug(sr);
        set<id> stmId = new set<id>();
        for(ServiceTerritoryMember stm:sr){
            stmId.add(stm.id);
        }
        List<Authsession> auth = [Select Id, UsersId, Users.Name, UserType, SourceIp, SessionType, SessionSecurityLevel, ParentId, LoginType, LastModifiedDate, CreatedDate From AuthSession where usersId in: stmId];
        system.debug(auth);
    }
}