   M S B A M L   `   `   `  ����B  >CRUDApp, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:CRUDAppCRUDApp  5   	       CRUDApp.MainWindow   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   'localclr-namespace:CRUDApp     5   	   c _MahApps.Metro.IconPacks.Core, Version=5.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137ag cMahApps.Metro.IconPacks.Material, Version=5.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137a:Icon-http://metro.mahapps.com/winfx/xaml/iconpacks   5   	   -   5          � Title$  
MainWindow��5	   	   $	��720��6   $
��1080��6)    � WindowStartupLocation$ CenterScreen=�5
   	    � WindowStyle$
 None=�5   	   
������  � AllowsTransparency$
 True��5   	   .��5      �� -   5        ���#eff2f7 �� CornerRadius$ 30��5      ._�5   
   �  � ColumnDefinitions 5      �� 5      $	��200 �6#   �� 5      $��* �6#   .+�5      �  � RowDefinitions 5      �� 5      $
��auto �6$   �� 5      $��* �6$   .+�5!      �� $
��Left=�6   $��
20 28 0 35q�64      	topButton#��[  6H   �� 5#      $��1��6   ���#623ed0$ 	0 50 0 30��6;   ._�5$      ]� .+�5&      �� $��80��6!   $��80��6,    �� Padding$ 3q�68   
�������$	 100��6Y   $	��Top=�6l   $
��Left=�6�   $��
20 -30 0 0q�6�   ._�5'      A� ��5(   "   �� 5)   &    �� ImageSource$ /Images/lg.jpg��61   5+      5,      �� 5/      $��Premier League��6$   
�������$��22(�6M   $��SemiBold"�6[   $	��Top=�6q   	 �� TextAlignment$	 Center=�6�   $��	5 25 0 10q�6�   �� 50      -   5        
 ��Name$
 HelloMsgLabel��50       $��Staff��67   ���#d0bfff$��14(�6\   $��SemiBold"�6j   $	��Top=�6�   $��Center=�6�   �� 53      $��25q�6$   $	��Top=�60   $	��0.8��6E   ���#7e5fdc6R   �� 56      $	��Top=�6%   .+�57      �� -   5          
menuButton#��[ 57   %   $��53��6I   .��58   "   ��  �� Orientation$ 
Horizontal=�6-   .+�59   &   .  (MahApps.Metro.IconPacks.PackIconMaterial     Kind$ Logout=�6<     menuButtonIcon#��[ 6J   5:   #   5;      5<      5=      5C      5F      � 5I      $��1��6   $��30,34,28,20q�6#    5J      �� 5K      $
��auto �6$   �� 5L      $
��auto �6$   �� 5M      $
��auto �6$   �� 5N      $
��auto �6$   �� 5O      $
��auto �6$   �� 5P      $��* �6$   �� 5Q      $
��auto �6$   .+�5S      �� $
��Left=�6   $��
637,77,0,0q�65   $��5��6I    �� TextWrapping$
 Wrap=�6V   $��TextBox��6j   $	��Top=�6y   $	��120��6�   �� 5T      -   5         ��Name$ 	ButtonAdd��5T      $��0q�5U      $��
Add Player��5V      
�������$��12(�5X       � Cursor$
 Hand��5Y      $��668,15,-8,581q�5Z   -   ��5[      �� 5\       �� 
TargetType" ��6    .�5]      ��  �� Property � �� �� Value �#623ed06;    �� Triggers 5^      P� 5_   "    P� Property �@J�IsMouseOver P� Value$
 True��6A   . �5`   &   ��  � �� �#28AEED6C   5a   #   5c      ��5e      �� 5f       �� 
TargetType" ��6*   .R�5g      �� $	��100��6%   $��40��61   $ 20��5h   !   #��z��5i   !   ._�5j   "   �� $��Center=�63   $��Center=�5k   %   5l      5m      5o      �� 5p      -   5        $ ButtonUpdate��5p      $��0q�5q      $��Update Player��5r      
�������$��12(�5t      $��
Montserrat)�5u      $
 Hand��5v      $��556,15,104,581q�5w   0   ��5x      �� 5y      " ��6    .�5z      ��  � �� �#623ed06;    5{      P� 5|   "    �@J�IsMouseOver$
 True��6A   . �5}   &   ��  � �� �#28AEED6C   5~   #   5�      ��5�      �� 5�      " ��6*   .R�5�      �� $	��100��6%   $��40��61   $ 20��5�   !   #��z��5�   !   ._�5�   "   �� $��Center=�63   $��Center=�5�   %   5�      5�      5�      �� 5�      -   5        $ ButtonDelete��5�      $��0q�5�      $��Delete Player��5�      
�������$��12(�5�      $
 Hand��5�      $��443,15,217,581q�5�   0   ��5�      �� 5�      " ��6    .�5�      ��  � �� �#623ed06;    5�      P� 5�   "    �@J�IsMouseOver$
 True��6A   . �5�   &   ��  � �� �#28AEED6C   5�   #   5�      ��5�      �� 5�      " ��6*   .R�5�      �� $	��100��6%   $��40��61   $ 20��5�   !   #��z��5�   !   ._�5�   "   �� $��Center=�63   $��Center=�5�   %   5�      5�      5�      �� 5�      -   5        $ ButtonTactic��5�      $��0q�5�      $��Tactic Edit��5�      
�������$��12(�5�      $
 Hand��5�      $��321,15,339,581q�5�   0   ��5�      �� 5�      " ��6    .�5�      ��  � �� �#623ed06;    5�      P� 5�   "    �@J�IsMouseOver$
 True��6A   . �5�   &   ��  � �� �#28AEED6C   5�   #   5�      ��5�      �� 5�      " ��6*   .R�5�      �� $	��100��6%   $��40��61   $ 20��5�   !   #��z��5�   !   ._�5�   "   �� $��Center=�63   $��Center=�5�   %   5�      5�      5�      5�      �� 5�      -	   5        $
 HelloMsgClub��5�      $
��Name��6*   
���   �$��30(�6L   $��SemiBold"�6Z   $
��Left=�6q   $��46,79,0,567q�6�   $��1��6�   $	��365��6�   �� 5�      -
   5        $ ButtonClose��5�      $��0q�5�      $��X��5�      
�������$��12(�5�      $��
Montserrat)�5�      $
 Hand��5�      $��1��5�      $��838,0,17,690q�5�   +   ��5�      �� 5�      " ��6   .�5�      ��  � �� �#DA34AE67    5�      P� 5�       �@J�IsMouseOver$
 True��6=   . �5�   "   ��  � �� �#C62DAE6?   5�      5�      ��5�      �� 5�      " ��6&   .R�5�      �� $��18��6!   $��18��6,   $ 9��5�      #��z��5�      ._�5�      �� $��Center=�6/   $��Center=�5�   !   5�      5�      5�      �� 5�      -   5        $ ButtonMinimize��5�      $��0q�5�      $��-��5�      
�������$��16(�5�      $��
Montserrat)�5�      $
 Hand��5�      $��1��5�      $��810,0,45,690q�5�   .   ��5�      �� 5�      " ��6   .�5�      ��  � �� �#28AEED67    5�      P� 5�       �@J�IsMouseOver$
 True��6=   . �5�   "   ��  � �� �#278BEF6?   5�      5�      ��5�      �� 5�      " ��6&   .R�5�      �� $��18��6!   $��18��6,   $ 9��5�      #��z��5�      ._�5      �� $��Center=�6/   $��Center=�5  !   5     5     5     �� 5     $��1��6   $	��218��5     $��31��5     
����������#E5E5E5$��1q�5     $ 15��5     $��632,134,30,554q�6'   ._�5     � .+�5     �� ���#808080$��0q�5     $��Center=�5     $��	15,0,30,0q�5     $��5,0,4,0q�5     .��5     ��5     �� 5     " ��6$   .�5  "   ��  � �� �#8080806?    5  "   P� 5  &    �@J�	IsFocused$
 True��6C   . �5  *   ��  � ��$  ��6A   �� 5  *    � ��
 �   �6G   5  '   P� 5  &    �@J�	IsFocused$ False��6C   . �5   *   ��  � ��$ Search here ...��6A   �� 5!  *    � �� �#8080806G   5"  '   5$     .��5%  )   5&     5'     5(     &   System.Windows.Controls.DataGrid  5*     -   5          Name$ PlayersDataGrid��5*     $��1��5+        ColumnWidth5  /System.Windows.Controls.DataGridLengthConverter$ * 5,     $��5��5-     $��39,180,30,35q�5.     
�������  DataGridRowStyle1   RowStyle# �  50       DataGridColumnHeaderStyle1   ColumnHeaderStyle# �  51       DataGridCellStyle1   	CellStyle# �  52       DataGridStyle1#���  53        Columns 55     0  *System.Windows.Controls.DataGridTextColumn  56     ,  &System.Windows.Controls.DataGridColumn   Header$ ID��6)      
IsReadOnly$
 True��58        Width$ 80 59     1  +System.Windows.Controls.DataGridBoundColumn    Binding  57     �� *
PlayerId+59       5;     $ Player Name��6)   $	 190 5=       5<     �� *
FullName+5=       5?     $ Position��6)   $ 80 5A       5@     �� *
Position+5A       5C     $ Number��6)   $	 100 5E       5D     �� *JerseyNumber+5E       5G     $ Date Of Birth��6)   $	 120 5I       5H     �� *DateOfBirth+5I       5K     $ Nationality��6)   $	 120 5M       5L     �� *Nationality+5M       5O     $ Stadium��6)   $	 120 5Q       5P     �� *FootballTeam.Stadium+5Q       5S     $
 City��6)   $	 120 5U       5T  !   �� *FootballTeam.City+5U     5W     5k     5l     5n     