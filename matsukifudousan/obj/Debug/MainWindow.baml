   M S B A M L   `   `   `  ����J  Fmatsukifudousan, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:matsukifudousanmatsukifudousan  5   	   M+clr-namespace:matsukifudousan.UserControlNLmatsukifudousan.UserControlNL  5   	        matsukifudousan.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   /localclr-namespace:matsukifudousan     5   	   :uc+clr-namespace:matsukifudousan.UserControlNL     5   	   b ^MaterialDesignThemes.Wpf, Version=4.1.0.2556, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	     � Title$  マツキ不動産��5
   	   $	��550��6   $
��1000��6%      MaterialDesignBody#���   5   	   $��Regular"�5   	   $��13(�5   	   &   System.Windows.Media.TextOptions   TextFormattingMode$ Ideal=�5   	      TextRenderingMode$
 Auto=�5   	     MaterialDesignPaper#���  5   	     MaterialDesignFont#���  5   	    
 MainVM � DataContext# [ 5   	    � WindowStartupLocation$ CenterScreen=�5   	    � 
ResizeMode$ NoResize=�5   	    � WindowStyle$
 None=�5   	    � 	Resources 5       �� 
TargetType 
 cursor	 �� Triggers
 P� Property P� Value �� Property �� Value  	CloseMenu �� TargetProperty �� 
TargetName9  3System.Windows.Media.Animation.EasingDoubleKeyFrame O� KeyTime O� Value  OpenMenu��%�  &	       &	 �     &	 4    �� 5    
   " ��6   	 5!      P� 5"      
 �@J�IsMouseOver . . �5#      ��  �@�Cursor$
 Hand��6+   5$      5&      �� 5(   
   .��5)      U� $U O(UIElement.RenderTransform).(TransformGroup.Children)[3].(TranslateTransform.X)�6,   $ GridMenu��6�   .\�5*        $ 0��6'   $	 250Q�63     5+      $ 0:0:0.5��6'   $ 0Q�69   5,      U� 5-      $ (UIElement.Opacity)�6,   $ GridBackground��6\   .\�5.        $ 0��6'   $ 1Q�63     5/      $ 0:0:0.5��6'   $ 0Q�69   50      51      �� 52   
   .��53      U� $U O(UIElement.RenderTransform).(TransformGroup.Children)[3].(TranslateTransform.X)�6,   $ GridMenu��6�   .\�54        $ 0��6'   $ 0Q�63     55      $ 0:0:0.5��6'   $	 250Q�69   56      U� 57      $ (UIElement.Opacity)�6,   $ GridBackground��6\   .\�58        $ 0��6'   $ 0Q�63     59      $ 0:0:0.5��6'   $ 1Q�69   5:      5;      5<       � Triggers 5>      :� 5?   
    :� RoutedEvent$ ButtonBase.Click��6    :� 
SourceName$ ButtonClose��66   .[�5@      �� -   5         ��Name$ CloseMenu_BeginStoryboard��5@      #��[ 6A   5A      :� 5C   
   $ ButtonBase.Click��6   $ 
ButtonOpen��66   .[�5D      �� #��[ 6   5E      :� 5G   
   $ Grid.MouseLeave��6   $ GridMenu��65   .[�5H      �� #��[ 6   5I      .��5L      � -   5         �Name$ GridMain��5L      .+�5N   
   � -   5        $ GridBackground��5N      ���	#55313131 J� Opacity$ 0Q�6>   �� 5O   
   -   5         ��Name$ 
ButtonOpen��5O      $
��Left=�6%   $	��Top=�6@   $
��10 0q�6X   $��30��6�   $��40��6�   $��0q�6�    K� ZIndex$ 1��6�   ��6f   Z� ��6|   Z� .��5P      '  !MaterialDesignThemes.Wpf.PackIcon     Kind$
 Menu=�6&   ���	#FF313131$��30��6I   $��30��6U   5Q      � 5T   
   -   5        $ GridMenu��5T      $	��250��6!   $
��Left=�6-   $��
-255 0 0 0q�6H   
������� J� RenderTransformOrigin$ 0.5,0.5&�6o   $ 2��6�   z�5U      V� 5V      .~�5W      �� �� 5X      �� 5Y      T� 5Z      5[      .+�5]      �� .+�5^      �� $	��140��6   $��images/menu-image.png��6%   $
��Fill=�6D   �� 5_      -   5         ��Name$ ListViewMenu��5_      ���	#FF313131$��Champagne & Limousines)�6H   $��18(�6p   .@�5`      �� -   5         ��Name$ RentalManagement��5`   #   $��45��6=   $��0q�6I   #��[ 6U   .��5a      ��  �� Orientation$ 
Horizontal=�6%   $
��10 0q�6>   .+�5c      �� $��0��6$   $��images/document.png��64   $��30��6Q   5d      �� 5e      $��賃貸管理��6(   $��10q�64   5f      5g      �� 5h      -   5        $ DetachedHouse��5h   #   $��45��6:   $��0q�6F   #��[ 6R   .��5i      �� $ 
Horizontal=�6%   $
��10 0q�6>   .+�5k      �� $��0��6$   $��images/document.png��64   $��30��6Q   5l      �� 5m      $��戸建管理��6(   $��10q�64   5n      5o      �� 5p      $��45��6#   $��0q�6/   #��[ 6;   .��5q      �� $ 
Horizontal=�6%   $
��10 0q�6>   .+�5s      �� $��0��6$   $��images/document.png��64   $��30��6Q   5t      �� 5u      $��マンション管理��6(   $��10q�67   5v      5w      �� 5x      $��45��6#   $��0q�6/   #��[ 6;   .��5y      �� $ 
Horizontal=�6%   $
��10 0q�6>   .+�5{      �� $��0��6$   $��images/document.png��64   $��30��6Q   5|      �� 5}      $��土地管理��6(   $��10q�64   5~      5      �� 5�      $��45��6#   $��0q�6/   #��[ 6;   .��5�      �� $ 
Horizontal=�6%   $
��10 0q�6>   .+�5�      �� $��0��6$   $��images/computer.png��64   $��30��6Q   5�      �� 5�      $��顧客管理��6(   $��10q�64   5�      5�      �� 5�      $��45��6#   $��0q�6/   #��[ 6;   .��5�      �� $ 
Horizontal=�6%   $
��10 0q�6>   .+�5�      �� $��0��6$   $��images/lookup.png��64   $��25��6O   5�      �� 5�      $��物件検索��6(   $��10q�64   5�      5�      �� 5�      $��45��6#   $��0q�6/   #��[ 6;   .��5�      �� $ 
Horizontal=�6%   $
��10 0q�6>   .+�5�      �� $��0��6$   $��images/computer.png��64   $��30��6Q   5�      �� 5�      $��会社情報��6(   $��10q�64   5�      5�      5�      5�      �� 5�      -	   5        $ ButtonClose��5�      $��Right=�6*   $	��Top=�6F   $��30��6�   $��30��6�   $��0q�6�   
���   ���6^   Z� ��6t   Z� .��5�        $ 	ArrowLeft=�6*   $��25��6;   $��25��6G   5�      5�      5�      5�      