   M S B A M L   `   `   `  ����A  =Engine, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullE/clr-namespace:Engine.ViewModels;assembly=EngineEngine.ViewModels  5   	    	SimpleRPG   SimpleRPG.TradeScreen   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   F
viewModels/clr-namespace:Engine.ViewModels;assembly=Engine     5   	     � WindowStartupLocation$  CenterOwner=�5	   	   $
��11pt(�5
   	    � Title$ Trade Screen��5   	   $	��480��6   $	��640��6+   .��5      � $��10q�6    � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $��* �6   �� 5      $
��Auto �6    � ColumnDefinitions 5   
   �� 5      $��* �6   �� 5      $��* �6   .+�5   
   �� $��0��6   $��0��6   $��2��5      $��Center=�5      ��5      �� *CurrentTrader.Name+�� 5   
   $��1��6   $��0��6   $��Center=�5       $��Your Inventory��5!      �� 5"   
   $��1��6   $��1��6   $��Center=�5#      $��Trader's Inventory��5$      &   System.Windows.Controls.DataGrid  5&   
   $��2��6   $��0��6    $��10q�5'         AutoGenerateColumns .     HeadersVisibility$ Column=�5*         CanUserAddRows .     CanUserDeleteRows .  "   VerticalScrollBarVisibility$
 Auto=�5-      ��5(      �� * CurrentPlayer.GroupedInventory+	   Columns	 5/      0  *System.Windows.Controls.DataGridTextColumn  50      ,  &System.Windows.Controls.DataGridColumn
   Header$
 Description��6%      
IsReadOnly .    Width5  /System.Windows.Controls.DataGridLengthConverter$ * 52   %   1  +System.Windows.Controls.DataGridBoundColumn   Binding 53   %   �� *	Item.Name+  54      $	
 Qty��6%    . $
 Auto 56   %    57   %   �� *
Quantity+  58      $
 Price��6%    . $
 Auto 5:   %    5;   %   �� *
Item.Price+4  .System.Windows.Controls.DataGridTemplateColumn  5<         MinWidth$ 75Q�6)      CellTemplate 5=      �� 5>      .R�5?      �� -   5        $��55��5@   %   $��Sell 1��5A   %   5B      5D      5G        5I   
   $��2��6   $��1��6    $��10q�5J       .  $ Column=�5M       .   .  $
 Auto=�5P      ��5K      �� * CurrentTrader.GroupedInventory+	 5R        5S      $
 Description��6%    . $ * 5U   %    5V   %   �� *	Item.Name+  5W      $	
 Qty��6%    . $
 Auto 5Y   %    5Z   %   �� *
Quantity+  5[      $
 Price��6%    . $
 Auto 5]   %    5^   %   �� *
Item.Price+  5_      $ 75Q�6)    5`      �� 5a      .R�5b      �� -   5        $��55��5c   %   $��Buy 1��5d   %   5e      5g      5j      �� 5l   
   -   5        $��3��5l      $��1��6   $��Right=�5m      $��75��5n      $��Close��5o      5p      5q      5r      