using Telerik.OpenAccess;

namespace DormaDL
{
    [Persistent]
    public class CabinQuote
    {
        public CabinQuote()
        {
            Cabin = new Cabin();
        }

        public Cabin Cabin { get; set; }

        public double Length { get; set; }

        public double Width { get; set; }

        public double Height { get; set; }
    }
}