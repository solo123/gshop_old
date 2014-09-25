require 'test_helper'

class BizCostReportTest < ActiveSupport::TestCase
  test "Find Cost Report" do
    report = Biz::CostReport.new

    assert_equal 0, report.find_report(2014, 10)
    report.new_report(2014, 9)
    assert report.find_report(2014, 9) > 0
  end

  test "Gen Cost Report" do
    report = Biz::CostReport.new
    report.new_report(2014, 9)
    report.new_row
    assert_equal 1, report.instance_values['current_row_index']
    report.set_val(1, 'c1')
    report.set_val(6, 'c6')
    assert_equal 'c1', report.get_val(1)
    assert_equal 'c6', report.get_val(6)
    assert_nil report.get_val(8)
  end


end

