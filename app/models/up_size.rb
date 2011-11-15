# encoding:utf-8
class UpSize < ActiveRecord::Base

  belongs_to :model
  belongs_to :brand

  module Gender
    M = 1
    W = 2
  end

  M_TYPES = {
    "1" => "正装衬衫",
    "2" => "休闲衬衫",
    "3" => "T恤",
    "4" => "polo衫",
    "5" => "夹克",
    "6" => "运动服",
    "7" => "外套",
    "8" => "毛衫",
    "9" => "大衣",
    "10" => "西服上衣",
    "11" => "风衣",
    "12" => "羽绒服",
    "13" => "卫衣",
    "14" => "内衣",
    "15" => "保暖内衣",
    "16" => "针织衫",
    "17" => "家居服",
    "18" => "泳装",
    "19" => "皮衣",
    "20" => "皮草",
    "21" => "棉服",
    "22" => "马甲",
    "23" => "牛仔衣",
    "24" => "背心",
    "25" => "中山装",
    "26" => "立领",
    "27" => "唐装",
    "28" => "民族服装",
    "29" => "舞台服"
  }

  W_TYPES = {
    "101" => "正装衬衫",
    "102" => "休闲衬衫",
    "103" => "T恤",
    "104" => "polo衫",
    "105" => "夹克",
    "106" => "运动服",
    "107" => "外套",
    "108" => "毛衫",
    "109" => "大衣",
    "110" => "西服上衣",
    "111" => "风衣",
    "112" => "羽绒服",
    "113" => "卫衣",
    "114" => "内衣",
    "115" => "保暖内衣",
    "116" => "针织衫",
    "117" => "家居服",
    "118" => "泳装",
    "119" => "皮衣",
    "120" => "皮草",
    "121" => "棉服",
    "122" => "马甲",
    "123" => "牛仔衣",
    "124" => "背心",
    "125" => "中山装",
    "126" => "立领",
    "127" => "唐装",
    "128" => "民族服装",
    "129" => "舞台服",
    "130" => "孕妇装",
    "131" => "蕾丝衫/雪纺衫",
    "132" => "小背心",
    "133" => "小吊带",
    "134" => "婚纱",
    "135" => "旗袍",
    "136" => "礼服"
  }

  def human_gender
    if gender == Gender::W
      "男"
    else
      "女"
    end
  end

  def human_category
    M_TYPES.merge(W_TYPES)[category_id.to_s]
  end


end
