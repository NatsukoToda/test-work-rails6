# CSVファイルを扱うために必要
require 'csv'

namespace :import_csv do
  # タスクの説明
  desc "CSVデータをインポートするタスク"
  # タスク名 => import_csv
  task import_csv: :environment do
   CSV.foreach('db/csv/import_test.csv') do |row|
      import_data = Nursery.find_or_initialize_by(no:row[0])
      
      if import_data.new_record?
        Nursery.create!(
        :no => row[0],    
        :name => row[1],
        :name_witout_space => row[2],
        :large_category_no => row[3],
        :middle_category_no => row[4],
        :small_category_no => row[5],
        :area_no => row[6],
        :prefecture_no => row[7],
        :zone_no => row[8],
        :city_no => row[9],
        :street => row[10],
        :station_no => row[11],
        :walking_time => row[12],
        :latitude => row[13],
        :longitude => row[14],
        :tel => row[15],
        :keyword => row[16],
        :zero_yo_capacity => row[17],
        :one_yo_capacity => row[18],
        :two_yo_capacity => row[19],
        :three_yo_capacity => row[20],
        :four_yo_capacity => row[21],
        :five_yo_capacity => row[22],
        :capacity => row[23],
        :capacity_remark => row[24],
        :start_time => row[25],
        :end_time => row[26],
        :start_extendet_time => row[27],
        :end_extendet_time => row[28],
        :time_remark => row[29],
        :open_date => row[30],
        :close_date => row[31],
        :open_remark => row[32],
        :temporary_childcare => row[33],
        :temporary_remark => row[34],
        :hp => row[35],
        :third_party_review => row[36]
        )
      elsif
        data_exist = Nursery.where(no: row[0])
        data_exist.update(
        name:  row[1], 
        name_witout_space:  row[2],
        large_category_no:  row[3],
        middle_category_no:  row[4],
        small_category_no:  row[5],
        area_no:  row[6],
        prefecture_no:  row[7],
        zone_no:  row[8],
        city_no:  row[9],
        street:  row[10],
        station_no:  row[11],
        walking_time:  row[12],
        latitude:  row[13],
        longitude:  row[14],
        tel:  row[15],
        keyword:  row[16],
        zero_yo_capacity:  row[17],
        one_yo_capacity:  row[18],
        two_yo_capacity:  row[19],
        three_yo_capacity:  row[20],
        four_yo_capacity:  row[21],
        five_yo_capacity:  row[22],
        capacity:  row[23],
        capacity_remark:  row[24],
        start_time:  row[25],
        end_time:  row[26],
        start_extendet_time:  row[27],
        end_extendet_time:  row[28],
        time_remark:  row[29],
        open_date:  row[30],
        close_date:  row[31],
        open_remark:  row[32],
        temporary_childcare:  row[33],
        temporary_remark:  row[34],
        hp:  row[35],
        third_party_review:  row[36]
        )
      end
    end
  end
end