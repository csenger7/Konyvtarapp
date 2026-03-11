using Konyvtarapp.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace Konyvtarapp
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {

        BookContext db = new BookContext();

        public MainWindow()
        {
            InitializeComponent();
            LoadBooks(null, null);
        }

        private void LoadBooks(object sender, RoutedEventArgs e)
        {
            bookGrid.ItemsSource = db.books.ToList();
        }

        private void AddBook(object sender, RoutedEventArgs e)
        {
            Books b = new Books();

            b.Title = titleBox.Text;
            b.AuthorId = int.Parse(authorBox.Text);
            b.Year = int.Parse(yearBox.Text);
            b.Price = int.Parse(priceBox.Text);

            db.books.Add(b);
            db.SaveChanges();

            LoadBooks(null, null);
        }

        private void DeleteBook(object sender, RoutedEventArgs e)
        {
            Books selected = (Books)bookGrid.SelectedItem;

            if (selected != null)
            {
                db.books.Remove(selected);
                db.SaveChanges();
                LoadBooks(null, null);
            }
        }

        private void SearchBook(object sender, RoutedEventArgs e)
        {
            string text = searchBox.Text;

            bookGrid.ItemsSource = db.books
                .Where(b => b.title.Contains(text))
                .ToList();
        }
    }
}
