module Biz
  class CostReport < BizBase
    def find_report(year_txt, month_txt)
      y = year_txt.to_i
      m = month_txt.to_i
      sr = StaticReport.where('report_type=1 and status=8 and col=0 and row=0').first
      if sr
        @report_num = sr.id
      else
        0
      end
    end

    def new_report(year, month)
      @year = year
      @month = month
      st = StaticReport.new
      st.row = 0
      st.col = 0
      st.report_type = 1
      st.status = 8
      st.val = '%04i' % year << '%02i' % month
      st.save!
      @report_num = st.id
      @current_row_index = 0
    end

    def new_row
      @current_row_index += 1
    end

    def set_val(col, val)
      st = StaticReport.new
      st.report_number = @report_num
      st.row = @current_row_index
      st.col = col
      st.val = val
      st.report_type = 1
      st.status = 0
      st.save!
    end

    def recaculate
    end

  end
end
