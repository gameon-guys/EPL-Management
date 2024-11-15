using BAL.Services;
using DAL.Entities;
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
using System.Windows.Shapes;

namespace CRUDApp
{
    /// <summary>
    /// Interaction logic for DetailWindow.xaml
    /// </summary>
    public partial class DetailWindow : Window
    {
        public Player EditedOne { get; set; }
        private PlayerService _service = new();
        private TeamService _sup = new();
        public DetailWindow()
        {
            InitializeComponent();
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            TeamNameComboBox.ItemsSource = _sup.GetAllNCC();
            TeamNameComboBox.DisplayMemberPath = "TeamName";
            TeamNameComboBox.SelectedValuePath = "FootballTeamId";

            if (EditedOne == null)
            {
                DetailWindowModeLabel.Content = "Create Player";
                PlayerIdTextBox.IsEnabled = false;
                return;
            }

            DetailWindowModeLabel.Content = "Update";
            PlayerIdTextBox.IsEnabled = false;
            PlayerNameTextBox.Text = EditedOne.PlayerId.ToString();
            PlayerNameTextBox.Text = EditedOne.FullName;
            PositionTextBox.Text = EditedOne.Position;
            NumberTextBox.Text = EditedOne.JerseyNumber.ToString();
            DateOfBirthDatePicker.Text = EditedOne.DateOfBirth.ToString();
            NationalityTextBox.Text = EditedOne.Nationality.ToString();

            TeamNameComboBox.SelectedValue = EditedOne.FootballTeamId;
        }

        private void SaveButton_Click(object sender, RoutedEventArgs e)
        {

            Player obj;
            if (EditedOne == null)
            {
                // This is a create operation
                obj = new Player();
            }
            else
            {
                // This is an update operation
                obj = EditedOne; // Assign existing selection to update it directly
            }

            // obj.PlayerId = int.Parse(PlayerNameTextBox.Text);
            obj.FullName = PlayerNameTextBox.Text;
            obj.Position = PositionTextBox.Text;
            obj.JerseyNumber = int.Parse(NumberTextBox.Text);
            obj.DateOfBirth = DateOfBirthDatePicker.DisplayDate;
            obj.Nationality = NationalityTextBox.Text;
            obj.FootballTeamId = int.Parse(TeamNameComboBox.SelectedValue.ToString());

            if (EditedOne == null)
                _service.CreatePlayer(obj);
            else
                _service.UpdatePlayer(obj);


            this.Close();
        }

        private void CloseButton_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }
    }
}


