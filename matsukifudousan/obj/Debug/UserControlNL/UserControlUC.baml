   M S B A M L   `   `   `  ����J  Fmatsukifudousan, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullM+clr-namespace:matsukifudousan.UserControlNLmatsukifudousan.UserControlNL  5      1    +matsukifudousan.UserControlNL.UserControlUC   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      =local+clr-namespace:matsukifudousan.UserControlNL     5      b ^MaterialDesignThemes.Wpf, Version=4.1.0.2556, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      c _System.Windows.Interactivity, Version=4.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  5      -   5        $��ucControlBar��5      .  (System.Windows.Interactivity.Interaction    Triggers  5      /  )System.Windows.Interactivity.EventTrigger  5   
      	EventName$ MouseLeftButtonDown��6   .  (System.Windows.Interactivity.TriggerBase   Actions. 5      6  0System.Windows.Interactivity.InvokeCommandAction     Command 6$   �� *MouseMoveWindowCommand+   CommandParameter 6O   ��  �� ElementName$ ucControlBar��5      .��5      � .+�5   
   (  "MaterialDesignThemes.Wpf.ColorZone     Mode$ PrimaryLight=�6#   .��5      ]� .+�5      �� $��Right=�6   
������  �� Orientation$ 
Horizontal=�6M   $��Right=�6f    � 	Resources 5      	 �� 
TargetType
 �� Property �� Value �� Triggers P� Property P� Value��%  '��       �� 5      "	 ��6    .�5      �� 
 � ��$ 2 4 2 4q�67   6I   �� 5      
 � ��$ 60��66   6C   �� 5      
 � ��$ 30��67   6D    5       P� 5!   "    �@J�IsMouseOver . . �5"   &   �� 
 �@�Cursor$
 Hand��6?   5#   #   5%      5&      .+�5(      ��  � ToolTip$
 Mini��5+       c� OverflowMode$ AsNeeded=�6-   
���"�"���5)      �� *MinimizeWindowCommand+��5*      �� $ ucControlBar��.��5,      '  !MaterialDesignThemes.Wpf.PackIcon     Kind$ WindowMinimize=�62   5-      �� 54      $ Close��57      $ AsNeeded=�6-   
���  ����55      �� *CloseWindowCommand+��56      �� $ ucControlBar��.��58        $ Power=�66   59      5;      �� 5=      $
��Left=�6   $ 
Horizontal=�63   .+�5?      �� $��Center=�6$   $��56 0 0 0q�6?   $��25(�6Q   ��6_   �� *Tag+$ ucControlBar��5@      5A      5C      5D      5F      5G      