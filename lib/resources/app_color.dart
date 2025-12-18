
import 'package:flutter/material.dart';

class AppColors {

  AppColors._(); // Private constructor to prevent instantiation

  static final AppColors _instance = AppColors._();

  static AppColors get instance => _instance;

  // app_
  Color app_main = const Color(0xFFC22328); //1C8FCE
  Color main_light = const Color(0xFF2B5FB5);

  // black_
  Color black_normal = const Color(0xFF000000);

  // transparent_
  Color transparent_black = const Color(0x00FFFFFF);
  Color transparent_white = const Color(0x00000000);

  // white_
  Color white_normal = const Color(0xFFFFFFFF);

  // tab_
  Color tab_indicator_select = const Color(0xFF1C8FCE);
  Color tab_label_select = const Color(0xFF1C8FCE); //1C8FCE
  Color tab_label_unselect = const Color(0xFF171819);
  Color tab_select = const Color(0xFFC22328); //1C8FCE
  Color tab_unselect = const Color(0xFF7A868D);

  // icon_
  Color icon_light = const Color(0xFF9FA2A5);
  Color icon_normal = const Color(0xFFCACACA);
  Color icon_select = const Color(0xFF1C8FCE);

  // bg_
  Color bg_black_list = const Color(0xFFFDEAEA);
  Color bg_common = const Color(0xFFFAFAFA);
  Color bg_dialog = const Color(0xFFFFFFFF);
  Color bg_icon_gray = const Color(0xFFDEDEDE);
  Color bg_input = const Color(0xFFF9FAFB);
  Color bg_item_box = const Color(0xFFF9FAFB);
  Color bg_item_box_main_light = const Color(0xFFEEF7FC);
  Color bg_item_content = const Color(0xFFFFFFFF);
  Color bg_item_dna_register = const Color(0xFF00B42A);
  Color bg_item_progress_line = const Color(0xFF979797);
  Color bg_list_item_place = const Color(0xFFE7EEFB);
  Color bg_list_item_place_border = const Color(0xFFEFEFEF);
  Color bg_loading_color = const Color(0xFF7F7F7F);
  Color bg_page_content = const Color(0xFFF9FAFB);
  Color bg_page_content_deep = const Color(0xFF171819);
  Color bg_page_content_input = const Color(0xFFFFFFFF);
  Color bg_search = const Color(0xFFF9FAFB);

  // border_
  Color border_input = const Color(0xFFEDF2F6);

  // cursor_
  Color cursor_input = const Color(0xFF1C8FCE);

  // line_
  Color line_color_cell_line = const Color(0xFFF4F3F6);
  Color line_dash = const Color(0xFF1C8FCE);
  Color line_divider = const Color(0xFFDEDEDE);
  Color line_divider_light = const Color(0xFFF5F7FA);
  Color line_link = const Color(0xFF1C8FCE);
  Color line_shadow = const Color(0xFFDEDEDE);

  // box_
  Color box_border = const Color(0xFFEDF2F6);
  Color box_border_main_light = const Color(0xFFD9EDF7);
  Color box_shadow = const Color(0xFFEDF2F6);
  Color box_shadow1 = const Color(0x0D000000);

  // text_title_
  Color text_title_black = const Color(0xFF171819);
  Color text_title_white = const Color(0xFFFFFFFF);

  // btn_
  Color btn_bg_gray = const Color(0xFFEDF2F6);
  Color btn_bg_main = const Color(0xFF022A59);  //1C8FCE
  Color btn_bg_transfer = const Color(0xFF2B5FB5);
  Color btn_bg_white = const Color(0xFFFFFFFF);
  Color btn_border_danger = const Color(0xFFEF1F1F);
  Color btn_border_main = const Color(0xFFC22328);  //1C8FCE
  Color btn_text_border = const Color(0xFFC22328); //1C8FCE
  Color btn_text_normal = const Color(0xFFFFFFFF);
  Color btn_text_text = const Color(0xFFC22328);  //1C8FCE

  // text_label_
  Color text_label_desc = const Color(0xFFEDF2F6);
  Color text_label_dna_register = const Color(0xFF12A334);
  Color text_label_disable = const Color(0xFF7A868D);
  Color text_label_hint = const Color(0xFFC5CBCE);
  Color text_label_key = const Color(0xFF7A868D);
  Color text_label_page = const Color(0xFF171819);
  Color text_label_show_content = const Color(0xFF666666);
  Color text_label_splash = const Color(0xFF333333);
  Color text_label_sub = const Color(0xFFB2B2B2);
  Color text_label_sub_bottom = const Color(0xFFC0E7FC);
  Color text_label_warn = const Color(0xFFEF1F1F);

  // text_tab_
  Color text_tab_unselect = const Color(0xFF666666);

  // text_content_
  Color text_content = const Color(0xFF3F494E);
  Color text_content_deep = const Color(0xFF171819);
  Color text_content_deeper = const Color(0xFF333333);
  Color text_content_dialog = const Color(0xFF3F494E);
  Color text_content_hint = const Color(0xFFCED7DB);
  Color text_content_input = const Color(0xFF3F494E);
  Color text_content_item = const Color(0xFF98A3A9);
  Color text_content_lighter = const Color(0xFF999999);
  Color text_content_light = const Color(0xFF7A868D);
  Color text_content_normal = const Color(0xFF3B454A);

  // text_tip_
  Color text_tip_error_normal = const Color(0xFF7A868D);

  // text_asset_
  Color text_asset_network = const Color(0xFFFFC27C);

  // text_receive_
  Color text_receive_line = const Color(0xFFE3E3E3);

  // text_status_ (success/failure/pending/number)
  Color text_failure = const Color(0xFFEF1F1F);
  Color text_number_bg = const Color(0xFF84CDE9);
  Color text_pending = const Color(0xFFFFC27C);
  Color text_success = const Color(0xFF25D490);

  // text_transfer_
  Color text_transfer_from = const Color(0xFFF4F9FD);

}