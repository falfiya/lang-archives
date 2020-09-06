using System.Linq;
using System.Windows;
using System.Windows.Controls;

namespace TextUtils {
  public partial class MainWindow : Window {
    bool serious;
    public MainWindow() {
      InitializeComponent();
    }

    private void radSerious_Checked(object sender, RoutedEventArgs e) {
      this.serious = true;
      run();
    }

    private void radSarcasm_Checked(object sender, RoutedEventArgs e) {
      this.serious = false;
      run();
    }

    private void txtInput_TextChanged(object sender, TextChangedEventArgs e) {
      run();
    }

    private string fnSerious(string i) {
      return string.Join(" ", i.ToCharArray());
    }

    private string fnSarcasm(string i) {
      bool cap = false;
      return new string(i.Select(c => {
        if (cap) {
          cap = false;
          return c.ToString().ToUpper()[0];
        } else {
          cap = true;
          return c.ToString().ToLower()[0];
        }
      }).ToArray());
    }

    private void run() {
      if (txtInput != null && txtOutput != null) {
        txtOutput.Text = this.serious ? fnSerious(txtInput.Text) : fnSarcasm(txtInput.Text);
      }
    }
  }
}
