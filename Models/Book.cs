using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Konyvtarapp.Models
{
    public partial class Books
    {
        public int BookId { get; set; }
        public string Title { get; set; }
        public int? Year { get; set; }
        public int? Price { get; set; }
        public int? AuthorId { get; set; }
        public int? CategoryId { get; set; }

        public virtual Authors Author { get; set; }
        public virtual Categories Category { get; set; }
    }
}