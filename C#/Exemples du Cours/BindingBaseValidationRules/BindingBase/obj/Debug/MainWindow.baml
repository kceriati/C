   M S B A M L   `   `   `  ����F  BBindingBase, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:BindingBaseBindingBase  5   	       BindingBase.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   +localclr-namespace:BindingBase     5   	     � Title$  BindingBase��5   	   $	��120��6   $	��400��6*    � 	Resources 5	         txtError �� Orientation ��Name ��Name �� ElementName �� Path��%O  &	        �� 5   
   .R�5      �� $ 
Horizontal=�6   .+�5      �� 
���  ��$��1q�6+   ._�5      �� $ element��60   5      �� 5      $ tbError��6   
���  ��$��5,0,0,0q�6>   $
��12pt(�6O   ��5      �� $ element��$8 2AdornedElement.(Validation.Errors)[0].ErrorContent�5      5      5      .��5      � .+�5   
   �� -   5        $��textBox1��5      $��15(�6"   $
��Left=�5   
   $��	50,21,0,0q�6%   $	��Top=�68   $��50��6P    =� ErrorTemplate# [  5   
   .��6?   ��5      �� 5      $	 Age�6    �� UpdateSourceTrigger$ PropertyChanged=�6%   	 �� ValidationRules	 5         BindingBase.AgeRangeRule  5      

   Min$
 0��6-   
   Max$	 130��65   5      .��5       5!      �� 5#   
   $��Age : ��6   $
��Left=�6!   $��	10,21,0,0q�6<   $	��Top=�6O   �� 5$   
   -   5         ��Name$ buttonVerif��5$      $��Verif��6&   $
��Left=�66   $��22��6Q   $��
329,53,0,0q�6]   $	��Top=�6q   $��45��6�   6�   5%      5&      