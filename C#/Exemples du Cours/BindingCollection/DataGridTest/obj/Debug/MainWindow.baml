   M S B A M L   `   `   `  ����G  CDataGridTest, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:DataGridTestDataGridTest  5   	       DataGridTest.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   ,localclr-namespace:DataGridTest     5   	     � Title$  
MainWindow��5   	   $	��300��6   $	��205��6)   .��5	      � $��10q�6   .+�5
   
   &   System.Windows.Controls.DataGrid  -   5        $��dgPersonnes��5
         AutoGenerateColumns .  $
��Left=�6i   $	��165��6�   $	��210��6�   $	��Top=�6�   ��6B   �� *ListePersonnes+   Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$	 Nom��6%      Width5  /System.Windows.Controls.DataGridLengthConverter$ 2* 62   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6=   �� *Nom+  5      $	 Age��6%   $ * 62    6<   �� *Age+5      �� 5   
   -   5        $��Verif��5      $
��Left=�6!   $��	0,220,0,0q�6<   $	��Top=�6O   $��75��6g   6r   �� 5   
   -   5        $��	Supprimer��5      $
��Left=�6%   $��20��6@   $��
90,220,0,0q�6L   $	��Top=�6`   $��75��6x   6�   5      5      