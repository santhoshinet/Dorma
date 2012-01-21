using Telerik.OpenAccess;

namespace DormaDL
{
    [Persistent]
    public class Door
    {
        public DoorMaterial Material { get; set; }

        public DoorOpeningOption OpeningsOption { get; set; }

        public DoorType Type { get; set; }

        public DoorPositionOption PositionOptions { get; set; }

        public DoorHardwareType HardwareType { get; set; }

        public DoorHardwareSubType HardwareSubType { get; set; }

        public string ImageUrl { get; set; }
    }
}