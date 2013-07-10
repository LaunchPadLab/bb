class Beer
  
  attr_accessor :color
  
  def initialize(color = 'white')
    @color = color
  end
  
  def self.styles_and_stats
    [
      { style: 'Lite American Lager', og: '1.028-40', fg: '0.998-1.008', abv: '2.8-4.2', ibu: '8-12', color: '2-3'},
      { style: 'Standard American Lager', og: '1.040-50', fg: '1.004-10', abv: '4.2-5.3', ibu: '8-15', color: '2-4'},
      { style: 'Premium American Lager', og: '1.046-56', fg: '1.008-12', abv: '4.6-6.0', ibu: '15-25', color: '2-6'},
      { style: 'Munich Helles', og: '1.045-51', fg: '1.008-12', abv: '4.7-5.4', ibu: '16-22', color: '3-5'},
      { style: 'Dortmunder Export', og: '1.048-56', fg: '1.010-15', abv: '4.8-6.0', ibu: '23-30', color: '4-6'},
      { style: 'German Pilsner (Pils)', og: '1.044-50', fg: '1.008-13', abv: '4.4-5.2', ibu: '25-45', color: '2-5'},
      { style: 'Bohemian Pilsener', og: '1.044-56', fg: '1.013-17', abv: '4.2-5.4', ibu: '35-45', color: '3.5-6'},
      { style: 'Classic American Pilsner', og: '1.044-60', fg: '1.010-15', abv: '4.5-6.0', ibu: '25-40', color: '3-6'},
      { style: 'Vienna Lager', og: '1.046-52', fg: '1.010-14', abv: '4.5-5.5', ibu: '18-30', color: '10-16'},
      { style: 'Oktoberfest/Marzen', og: '1.050-57', fg: '1.012-16', abv: '4.8-5.7', ibu: '20-28', color: '7-14'},
      { style: 'Dark American Lager', og: '1.044-56', fg: '1.008-12', abv: '4.2-6.0', ibu: '8-20', color: '14-22'},
      { style: 'Munich Dunkel', og: '1.048-56', fg: '1.010-16', abv: '4.5-5.6', ibu: '18-28', color: '14-28'},
      { style: 'Schwarzbier', og: '1.046-52', fg: '1.010-16', abv: '4.4-5.4', ibu: '22-32', color: '17-30'},
      { style: 'Maibock/Helles Bock', og: '1.064-72', fg: '1.011-18', abv: '6.3-7.4', ibu: '23-35', color: '6-11'},
      { style: 'Traditional Bock', og: '1.064-72', fg: '1.013-19', abv: '6.3-7.2', ibu: '20-27', color: '14-22'},
      { style: 'Doppelbock', og: '1.072-112', fg: '1.016-24', abv: '7.0-10.0', ibu: '16-26', color: '6-25'},
      { style: 'Eisbock', og: '1.078-120', fg: '1.020-35', abv: '9.0-14.0', ibu: '25-35', color: '18-30'},
      { style: 'Cream Ale', og: '1.042-55', fg: '1.006-12', abv: '4.2-5.6', ibu: '15-20', color: '2.5-5'},
      { style: 'Blonde Ale', og: '1.038-54', fg: '1.008-13', abv: '3.8-5.5', ibu: '15-28', color: '3-6'},
      { style: 'Kolsch', og: '1.044-50', fg: '1.007-11', abv: '4.4-5.2', ibu: '20-30', color: '3.5-5'},
      { style: 'American Wheat or Rye Beer', og: '1.040-55', fg: '1.008-13', abv: '4.0-5.5', ibu: '15-30', color: '3-6'},
      { style: 'North German Altbier', og: '1.046-54', fg: '1.010-15', abv: '4.5-5.2', ibu: '25-40', color: '13-19'},
      { style: 'California Common Beer', og: '1.048-54', fg: '1.011-14', abv: '4.5-5.5', ibu: '30-45', color: '10-14'},
      { style: 'Dusseldorf Altbier', og: '1.046-54', fg: '1.010-15', abv: '4.5-5.2', ibu: '35-50', color: '11-17'},
      { style: 'Standard/Ordinary Bitter', og: '1.032-40', fg: '1.007-11', abv: '3.2-3.8', ibu: '25-35', color: '4-14'},
      { style: 'Special/Best/Premium Bitter', og: '1.040-48', fg: '1.008-12', abv: '3.8-4.6', ibu: '25-40', color: '5-16'},
      { style: 'Extra Special/Strong Bitter (English Pale Ale)', og: '1.048-60', fg: '1.010-16', abv: '4.6-6.2', ibu: '30-50', color: '6-18'},
      { style: 'Scottish Light 60/-', og: '1.030-35', fg: '1.010-13', abv: '2.5-3.2', ibu: '10-20', color: '9-17'},
      { style: 'Scottish Heavy 70/-', og: '1.035-40', fg: '1.010-15', abv: '3.2-3.9', ibu: '10-25', color: '9-17'},
      { style: 'Scottish Export 80/-', og: '1.040-54', fg: '1.010-16', abv: '3.9-5.0', ibu: '15-30', color: '9-17'},
      { style: 'Irish Red Ale', og: '1.044-60', fg: '1.010-14', abv: '4.0-6.0', ibu: '17-28', color: '9-18'},
      { style: 'Strong Scotch Ale', og: '1.070-130', fg: '1.018-56', abv: '6.5-10.0', ibu: '17-35', color: '14-25'},
      { style: 'American Pale Ale', og: '1.045-60', fg: '1.010-15', abv: '4.5-6.0', ibu: '30-45', color: '5-14'},
      { style: 'American Amber Ale', og: '1.045-60', fg: '1.010-15', abv: '4.5-6.0', ibu: '25-40', color: '10-17'},
      { style: 'American Brown Ale', og: '1.045-60', fg: '1.010-16', abv: '4.3-6.2', ibu: '20-40', color: '18-35'},
      { style: 'Mild', og: '1.030-38', fg: '1.008-13', abv: '2.8-4.5', ibu: '10-25', color: '12-25'},
      { style: 'Southern English Brown Ale', og: '1.033-42', fg: '1.011-14', abv: '2.8-4.1', ibu: '12-20', color: '19-35'},
      { style: 'Northern English Brown Ale', og: '1.040-52', fg: '1.008-13', abv: '4.2-5.4', ibu: '20-30', color: '12-22'},
      { style: 'Brown Porter', og: '1.040-52', fg: '1.008-14', abv: '4.0-5.4', ibu: '18-35', color: '20-30'},
      { style: 'Robust Porter', og: '1.048-65', fg: '1.012-16', abv: '4.8-6.5', ibu: '25-50', color: '22-35'},
      { style: 'Baltic Porter', og: '1.060-90', fg: '1.016-24', abv: '5.5-9.5', ibu: '20-40', color: '17-30'},
      { style: 'Dry Stout', og: '1.036-50', fg: '1.007-11', abv: '4.0-5.0', ibu: '30-45', color: '25-40'},
      { style: 'Sweet Stout', og: '1.044-60', fg: '1.012-24', abv: '4.0-6.0', ibu: '20-40', color: '30-40'},
      { style: 'Oatmeal Stout', og: '1.048-65', fg: '1.010-18', abv: '4.2-5.9', ibu: '25-40', color: '22-40'},
      { style: 'Foreign Extra Stout', og: '1.056-75', fg: '1.010-18', abv: '5.5-8.0', ibu: '30-70', color: '30-40'},
      { style: 'American Stout', og: '1.050-75', fg: '1.010-22', abv: '5.0-7.0', ibu: '35-75', color: '30-40'},
      { style: 'Imperial Stout', og: '1.075-115', fg: '1.018-30', abv: '8.0-12.0', ibu: '50-90', color: '30-40'},
      { style: 'English IPA', og: '1.050-75', fg: '1.010-18', abv: '5.0-7.5', ibu: '40-60', color: '8-14'},
      { style: 'American IPA', og: '1.056-75', fg: '1.010-18', abv: '5.5-7.5', ibu: '40-70', color: '6-15'},
      { style: 'Imperial IPA', og: '1.075-90', fg: '1.010-20', abv: '7.5-10.0', ibu: '60-120', color: '8-15'},
      { style: 'Weizen/Weissbier', og: '1.044-52', fg: '1.010-14', abv: '4.3-5.6', ibu: '8-15', color: '2-8'},
      { style: 'Dunkelweizen', og: '1.044-56', fg: '1.010-14', abv: '4.3-5.6', ibu: '10-18', color: '14-23'},
      { style: 'Weizenbock', og: '1.064-90', fg: '1.015-22', abv: '6.5-8.0', ibu: '15-30', color: '12-25'},
      { style: 'Roggenbier (German Rye Beer)', og: '1.046-56', fg: '1.010-14', abv: '4.5-6.0', ibu: '10-20', color: '14-19'},
      { style: 'Witbier', og: '1.044-52', fg: '1.008-12', abv: '4.5-5.5', ibu: '10-20', color: '2-4'},
      { style: 'Belgian Pale Ale', og: '1.048-54', fg: '1.010-14', abv: '4.8-5.5', ibu: '20-30', color: '8-14'},
      { style: 'Saison', og: '1.048-65', fg: '1.002-12', abv: '5.0-7.0', ibu: '20-35', color: '5-14'},
      { style: 'Biere de Garde', og: '1.060-80', fg: '1.008-16', abv: '6.0-8.5', ibu: '18-28', color: '6-19'},
      { style: 'Belgian Specialty Ale', og: 'Variable', fg: 'Variable', abv: 'Variable', ibu: 'Variable', color: 'Variable'},
      { style: 'Berliner Weisse', og: '1.028-32', fg: '1.003-06', abv: '2.8-3.8', ibu: '3-8', color: '2-3'},
      { style: 'Flanders Red Ale', og: '1.048-57', fg: '1.002-12', abv: '4.6-6.5', ibu: '10-25', color: '10-16'},
      { style: 'Flanders Brown Ale/Oud Bruin', og: '1.040-74', fg: '1.008-12', abv: '4.0-8.0', ibu: '20-25', color: '15-22'},
      { style: 'Straight (Unblended) Lambic', og: '1.040-54', fg: '1.001-10', abv: '5.0-6.5', ibu: '0-10', color: '3-7'},
      { style: 'Gueuze', og: '1.040-60', fg: '1.000-06', abv: '5.0-8.0', ibu: '0-10', color: '3-7'},
      { style: 'Fruit Lambic', og: '1.040-60', fg: '1.000-10', abv: '5.0-7.0', ibu: '0-10', color: '3-7'},
      { style: 'Belgian Blond Ale', og: '1.062-75', fg: '1.008-18', abv: '6.0-7.5', ibu: '15-30', color: '4-7'},
      { style: 'Belgian Dubbel', og: '1.062-75', fg: '1.008-18', abv: '6.0-7.6', ibu: '15-25', color: '10-17'},
      { style: 'Belgian Tripel', og: '1.075-85', fg: '1.008-14', abv: '7.5-9.5', ibu: '20-40', color: '4.5-7'},
      { style: 'Belgian Golden Strong Ale', og: '1.070-95', fg: '1.005-16', abv: '7.5-10.5', ibu: '22-35', color: '3-6'},
      { style: 'Belgian Dark Strong Ale', og: '1.075-110', fg: '1.010-24', abv: '8.0-11.0', ibu: '20-35', color: '12-22'},
      { style: 'Old Ale', og: '1.060-90', fg: '1.015-22', abv: '6.0-9.0', ibu: '30-60', color: '10-22'},
      { style: 'English Barleywine', og: '1.080-120', fg: '1.018-30', abv: '8.0-12.0', ibu: '35-70', color: '8-22'},
      { style: 'American Barleywine', og: '1.080-120', fg: '1.016-30', abv: '8.0-12.0', ibu: '50-120', color: '10-19'},
      { style: 'Classic Rauchbier', og: '1.050-57', fg: '1.012-16', abv: '4.8-6.0', ibu: '20-30', color: '12-22'},
      { style: 'Other Smoked Beer', og: 'Varies', fg: 'with', abv: 'base', ibu: 'beer', color: 'style'},
      { style: 'Wood-Aged Beer', og: 'Varies', fg: 'with', abv: 'base', ibu: 'beer', color: 'style'},
      { style: 'Specialty', og: 'Varies', fg: 'with', abv: 'base', ibu: 'beer', color: 'style'}
    ]    
  end
  
  def color_to_hex
    if @color.nil?
      '#E8B55E'
    elsif @color.match(/\d/)
     color_map = Beer.color_map     
        color_map.each do |map|
          return map[:color] if map[:SRM].to_f >= @color.to_f
        end
    else
      color.gsub(' ', '')
    end
  end
  
  def self.color_map
    [
    { SRM: 1,  color: "#FFE699" },
    { SRM: 2,  color: "#FFD878" },
    { SRM: 3,  color: "#FFCA5A" },
    { SRM: 4,  color: "#FFBF42" },
    { SRM: 5 , color: "#FBB123" },
    { SRM: 6 , color: "#F8A600" },
    { SRM: 7 , color: "#F39C00" },
    { SRM: 8 , color: "#EA8F00" },
    { SRM: 9 , color: "#E58500" },
    { SRM: 10, color: "#DE7C00" },
    { SRM: 11,  color: "#D77200" },
    { SRM: 12,  color: "#CF6900" },
    { SRM: 13,  color: "#CB6200" },
    { SRM: 14,  color: "#C35900" },
    { SRM: 15,  color: "#BB5100" },
    { SRM: 16,  color: "#B54C00" },
    { SRM: 17, color: "#B04500" },
    { SRM: 18, color: "#A63E00" },
    { SRM: 19, color: "#A13700" },
    { SRM: 20, color: "#9B3200" },
    { SRM: 21, color: "#952D00" },
    { SRM: 22, color: "#8E2900" },
    { SRM: 23, color: "#882300" },
    { SRM: 24, color: "#821E00" },
    { SRM: 25, color: "#7B1A00" },
    { SRM: 26, color: "#771900" },
    { SRM: 27, color: "#701400" },
    { SRM: 28, color: "#6A0E00" },
    { SRM: 29, color: "#660D00" },
    { SRM: 30, color: "#5E0B00" },
    { SRM: 31, color: "#5A0A02" },
    { SRM: 32, color: "#600903" },
    { SRM: 33, color: "#520907" },
    { SRM: 34, color: "#4C0505" },
    { SRM: 35, color: "#470606" },
    { SRM: 36, color: "#440607" },
    { SRM: 37, color: "#3F0708" },
    { SRM: 38, color: "#3B0607" },
    { SRM: 39, color: "#3A070B" },
    { SRM: 40, color: "#36080A" }
    ]
  end
  

end