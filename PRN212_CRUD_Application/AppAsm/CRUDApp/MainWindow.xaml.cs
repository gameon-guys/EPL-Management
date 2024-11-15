using BAL.Services;
using DAL.Entities;
using Microsoft.Identity.Client.NativeInterop;
using System.Collections.ObjectModel;
using System.Windows;
using System.Windows.Input;
using System.Windows.Media;


namespace CRUDApp
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        private PlayerService _service = new();

        public User AuthenticateUser { get; set; }




        public MainWindow()
        {
            InitializeComponent();
        }

        private void Border_MouseDown(object sender, MouseButtonEventArgs e)
        {
            if (e.ChangedButton == MouseButton.Left)
            {
                this.DragMove();
            }
        }
        private bool IsMaximized = false;
        private void Border_MouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {
            if (e.ClickCount == 2)
            {
                if (IsMaximized)
                {
                    this.WindowState = WindowState.Normal;
                    this.Width = 1080;
                    this.Height = 720;

                    IsMaximized = false;
                }
                else
                {
                    this.WindowState = WindowState.Maximized;
                    IsMaximized = true;
                }
            }
        }

        private void ButtonTactic_Click(object sender, RoutedEventArgs e)
        {
            Tactic tactic = new Tactic(_service, AuthenticateUser);

            tactic.Show();
            this.Close();
        }

        private void ButtonUpdate_Click(object sender, RoutedEventArgs e)
        {
            int userId = AuthenticateUser.UserId;
            Player? selected = PlayersDataGrid.SelectedItem as Player;


            if (selected == null)
            {
                MessageBox.Show("Please select before editing", "Select one", MessageBoxButton.OK, MessageBoxImage.Stop);

                return;
            }
            DetailWindow detail = new();
            detail.EditedOne = selected;
            detail.ShowDialog();
            FillDataGrid(_service.GetAllPlayers(userId));


        }

        private void ButtonAdd_Click(object sender, RoutedEventArgs e)
        {
            int userId = AuthenticateUser.UserId;
            DetailWindow detail = new();

            detail.ShowDialog();
            FillDataGrid(_service.GetAllPlayers(userId));
        }

        private void ButtonMinimize_Click(object sender, RoutedEventArgs e)
        {
            WindowState = WindowState.Minimized;
        }

        private void ButtonClose_Click(object sender, RoutedEventArgs e)
        {
            Application.Current.Shutdown();
        }

        private void ButtonLogOut_Click(object sender, RoutedEventArgs e)
        {
            var loginWindow = new LoginWindow();

            // Hiển thị cửa sổ Login
            loginWindow.Show();

            // Đóng cửa sổ hiện tại
            this.Close();
        }

        private void ButtonSearch_Click(object sender, RoutedEventArgs e)
        {

        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            string teamName = _service.GetTeamNameByUserId(AuthenticateUser.UserId);
            int userId = AuthenticateUser.UserId; // Giả sử `AuthenticateUser` chứa thông tin người dùng đăng nhập.
            FillDataGrid(_service.GetAllPlayers(userId));

            if (AuthenticateUser.Role == 2) // Kiểm tra quyền của người dùng
            {
                ButtonAdd.IsEnabled = false;
                ButtonDelete.IsEnabled = false;
                ButtonUpdate.IsEnabled = false;
            }

            HelloMsgClub.Content = teamName;
            HelloMsgLabel.Content = AuthenticateUser.FullName;

        }

        private void FillDataGrid(List<Player> arr)
        {

            PlayersDataGrid.ItemsSource = arr;
        }

        private void ButtonDelete_Click(object sender, RoutedEventArgs e)
        {
            int userId = AuthenticateUser.UserId;
            Player? selected = PlayersDataGrid.SelectedItem as Player;

            if (selected == null)
            {
                MessageBox.Show("Please select before deleting", "Select one", MessageBoxButton.OK, MessageBoxImage.Stop);
                return;
            }
            MessageBoxResult answer = MessageBox.Show("Do you really want to delete ?", "Confirm?", MessageBoxButton.YesNo, MessageBoxImage.Question);
            if (answer == MessageBoxResult.No)
                return;


            _service.DeletePlayer(selected);
            FillDataGrid(_service.GetAllPlayers(userId));
        }
    }
}
