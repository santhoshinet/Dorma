using Telerik.OpenAccess;

namespace DormaDL
{
    [Persistent]
    public  class Cabin
    {
        public Cabin()
        {
            Name = new CabinName();
            Type = new CabinType();
        }

        public CabinName Name {get; set;}

        public CabinType Type { get; set; }

        public string ImageUrl { get; set; }

        /*
        public string GetCabinName()
        {
            var scope = ObjectScopeProvider1.GetNewObjectScope();
            var cabinnames = (from c in scope.GetOqlQuery<CabinName>().ExecuteEnumerable()
                              where c.Name.Equals(Name)
                              select c.Name).ToList();
            if (cabinnames.Count > 0)
                return cabinnames[0];
            return string.Empty;
        }

        public string GetCabinType()
        {
            var scope = ObjectScopeProvider1.GetNewObjectScope();
            var cabintypes = (from c in scope.GetOqlQuery<CabinType>().ExecuteEnumerable()
                              where c.Name.Equals(Name)
                              select c.Name).ToList();
            if (cabintypes.Count > 0)
                return cabintypes[0];
            return string.Empty;
        } */
    }
}