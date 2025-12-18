
import 'package:riverpod_skeleton/core/utils/base_extensions.dart';

class AppDimens {
  AppDimens._(); // Private constructor to prevent instantiation

  static final AppDimens _instance = AppDimens._();

  static AppDimens get instance => _instance;

  double _statusHeight = 0;
  set statusHeight(height) => _statusHeight = height;
  get statusHeight => _statusHeight;
  // Text sizes
  // text_size_ 
  double text_size_big = 18.ts; // Text size
  double text_size_biger = 22.ts; // Text size
  double text_size_bigest = 24.ts; // Text size
  double text_size_large = 34.ts; // Text size
  double text_size_larger = 34.ts; // Text size
  double text_size_normal = 16.ts; // Text size
  double text_size_small = 14.ts; // Text size
  double text_size_smaller = 12.ts; // Text size
  double text_size_smallest = 10.ts; // Text size
  double text_size_subtitle = 18.ts; // Text size
  double text_size_title = 22.ts; // Text size

  // Spaces (margins, paddings and spacing-related values)
  double box_padding = 12.as; // Space
  // dialog_ 
  double dialog_horizontal_margin_out = 16.as; // Space
  double dialog_horizontal_padding = 16.as; // Space
  double dialog_input_horizontal_margin_out = 16.as; // Space
  double dialog_title_icon_margin_horizontal = 16.as; // Space
  double dialog_title_top_padding = 18.as; // Space
  // input_ 
  double input_padding_horizontal = 16.as; // Space
  double input_padding_vertical = 12.as; // Space
  // list_ 
  double list_content_margin = 16.as; // Space
  double list_item_margin = 14.as; // Space
  double list_item_padding_grid = 14.as; // Space
  double list_item_padding_horizontal = 12.as; // Space
  double list_item_padding_vertical = 16.as; // Space
  double margin_big = 20.as; // Space
  // margin_ 
  double margin_common = 16.as; // Space
  double margin_item = 6.as; // Space
  double margin_large = 18.as; // Space
  double margin_small = 12.as; // Space
  double margin_small_common = 10.as; // Space
  double margin_smaller = 8.as; // Space
  double margin_smallest = 4.as; // Space
  double margin_space_btn = 12.as; // Space
  double margin_space_icon_text = 4.as; // Space
  double margin_space_page_bottom = 30.as; // Space
  double margin_space_page_side = 16.as; // Space
  double margin_vertical_big = 20.as; // Space
  double margin_vertical_common = 16.as; // Space
  double margin_vertical_emptyicon = 24.as; // Space
  double margin_vertical_item = 12.as; // Space
  double margin_vertical_item_user_wallet = 1.as; // Space
  double margin_vertical_small = 4.as; // Space
  double tabbar_label_horizontal = 4.as; // Space
  // tabbar_ 
  double tabbar_label_vertical = 9.as; // Space
  double text_space_page_bound = 16.as; // Space

  // Other sizes (controls, icons, radii, heights, widths, etc.)
  double avatar_size = 44.as;
  // box_ 
  double box_border = 1.as;
  double box_border_thin = 0.5.as;
  double box_item_height = 50.as;
  double box_item_heighter = 55.as;
  double box_radius = 6.as;
  double box_radius_circle = 4.as;
  double box_round_radius = 14.as;
  double box_shadow_radius_blur = 10.as;
  double box_shadow_radius_spread = 3.as;
  // btn_ 
  double btn_border = 1.as;
  double btn_height = 50.as;
  double btn_height_small = 44.as;
  double btn_radius = 6.as;
  double btn_round_height = 28.as;
  double btn_round_radius = 14.as;
  double btn_round_width = 56.as;
  double btn_status_radius = 2.as;
  double btn_width_small = 167.as;
  // divider_ 
  double divider_width = 0.5.as;
  double divider_width_thickness = 0.5.as;
  // height_ 
  double height_asset_head_hide_trade = 227.as;
  double height_asset_head_show_trade = 274.as;
  double height_screen = double.infinity;
  // indicator_ 
  double indicator_height = 2.as;
  double indicator_padding = 2.as;
  double indicator_width = 24.as;
  double input_border = 1.as;
  double input_height = 72.as;
  double input_height_textarea = 169.as;
  double input_msg_height = 36.as;
  double logo_swap = 16.as;
  double mnemonic_item_height = 44.as;
  double mnemonic_item_radius = 6.as;
  double pic_radius = 6.as;
  // size_ 
  double size_dapp_banner_height = 150.as;
  double size_dapp_banner_width = 343.as;
  double size_dna_pic_big = 343.as;
  double size_dna_pic_small = 56.as;
  double size_icon_certificate = 40.as;
  double size_icon_certificate_small = 32.as;
  double size_elevation = 1.as;
  double size_loadicon = 40.as;
  double tabbar_height = 44.as;
  double tabbar_label_height = 22.as;
  double tabbar_top_padding = 16.as;
  double width_screen = double.infinity;
}