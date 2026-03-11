using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Konyvtarapp.Models
{
    public partial class Categories
    {
        public Categories()
        {
            Books = new HashSet<Books>();
        }

        public int CategoryId { get; set; }
        public string CategoryName { get; set; }

        public virtual ICollection<Books> Books { get; set; }
    }
}