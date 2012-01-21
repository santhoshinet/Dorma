using System.Collections.Generic;
using Telerik.OpenAccess;

namespace DormaDL
{
    [Persistent]
    public class CabinName
    {
        public CabinName()
        {
            Cabintypes = new List<CabinType>();
        }

        public string Name { get; set; }

        public IList<CabinType> Cabintypes { get; set; }
    }
}