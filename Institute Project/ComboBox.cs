using System.Data;

namespace Institute_Project
{
    public class ComboBox
    {
        public DataTable DataSourse { get; internal set; }
        public object DataTextField { get; internal set; }
        public string DataValueField { get; internal set; }
    }
}