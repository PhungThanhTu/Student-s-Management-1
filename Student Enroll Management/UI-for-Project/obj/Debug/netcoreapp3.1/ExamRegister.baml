   M S B A M L   `   `   `  ����G  CMain_Program, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:UI_for_ProjectUI_for_Project  5   	   !    UI_for_Project.ExamRegister   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   .localclr-namespace:UI_for_Project     5   	   -   5          � Title$  ExamRegister��5   	   $	��450��6   $	��800��6+    � 	Resources 5	       �� 
TargetType �� Property �� Value��%�   '��       �� 5
   
   " ��6   .�5      ��  � �� �#d628286+   �� 5       � �� �#eae2b76+   5      5      .��5      � .+�5   
   �� -   5         ��Name$ btnLoad��5      $	��100��6"   $��50��6.   $
��Left=�6:   $��0,254,0,130q�6U   $��10(�6j   .��6�   Load From Database6�   �� 5   
   -   5        $ btnSave��5      $	��100��6"   $��50��6.   $
��Left=�6:   .��6k   Save To Database6~   �� 5   
   $��Roboto)�6   $��30(�6(   $��	0,0,0,396q�66   REGISTERING INFORMATION6c   &   System.Windows.Controls.DataGrid  5   
   -   5          Name$ dataGrid��5         AutoGenerateColumns$ False��5      $	��600��5      $	��300��6   $��Center=�6,   $��Center=�6I      Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn	   Header$	 Số phiếu(*)��6C   
   Width5  /System.Windows.Controls.DataGridLengthConverter$
 80 6X      
IsReadOnly$
 True��6c   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6%   �� *
so_phieu+6c     5      $	 Khối thi(*)��6C   $
 80 6X   $
 True��6c    6%   �� *
khoi_thi+6c     5      $	 Họ và tên��6D   $	
 120 6W    6%   �� *	ho_va_ten+6W     5      $	 Khu vực(*)��6B   $	
 120 6V   $
 True��6b    6%   �� *	khu_vuc+6b     5      $	 Năm tốt nghiệp(*)��6I   $	
 120 6d   $
 True��6p    6%   �� *nam_tot_nghiep+6p     5      $	 Hệ đào tạo(*)��6E   $
 80 6\   $
 True��6g    6%   �� *
he_dao_tao+6g     5       $	 Mã đối tượng(*)��6G   $
 80 6`   $
 True��6k    6%   �� *ma_doi_tuong+6k     5!      $	 Đăng kí thi(*)��6F   $
 80 6^   $
 True��6i    6%   �� *dang_ky_thi+6i     5"      $	 Mã trường(*)��6D   $
 80 6Z   $
 True��6e    6%   �� *	ma_truong+6e     5#      $	 Mã ngành(*)��6C   $	
 100 6X   $
 True��6d    6%   �� *
ma_nganh+6d     5$      $	 Ngày sinh(*)��6D   $	
 100 6Z   $
 True��6f    6%   �� *	ngay_sinh+6f     5%      $	 	Nơi sinh��6C   $	
 120 6U    6%   �� *
noi_sinh+6U     5&      $	 Địa chỉ báo tin��6J   $	
 120 6c    6%   �� *dia_chi_bao_tin+6c   5)      �� 5+   
   -   5        $ 	btnRemove��5+      $	��100��5,      $��50��5-      $��100,374,600,10q�6   $��20(�5.      $��Roboto)�5/      .��6=   REMOVE6E   �� 50   
   -   5        $ btnAdd��50      $	��100��51      $��50��52      $��214,374,486,10q�6   $��20(�53      $��Roboto)�54      .��6:   ADD6?   �� 55   
   -   5        $ btnEdit��55      $	��100��56      $��50��57      $��330,374,370,10q�6   $��20(�58      $��Roboto)�59      .��6;   EDIT6A   �� 5;   
   -   5        $ btnFinishRegister��5;      $	��150��5<      $��50��5=      ���#1d3557���#f1faee$��550,372,100,12q�5?   &   .��6^   FINISH REGISTERING5A      5C      5D      