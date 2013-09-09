# -*- encoding: UTF-8 -*-
##############################################################
# File Name: config/initializers/a.rb
# Author: zhouhuan
# mail: towonzhou@gmail.com
# Created Time: 2013年09月09日 星期一 12时01分53秒
##############################################################

=begin
Model的to_json方法调用的是ActiveSupport::JSON.encode(self, options)
encode调用的是as_json方法.
设置ActiveSupport::JSON::Encoding.use_standard_json_time_format = false
后改变as_json的返回值即可改变时间的TimeWithZone的形式了
=end
module ActiveSupport
  class TimeWithZone
    def as_json(options = nil)
      if ActiveSupport::JSON::Encoding.use_standard_json_time_format
        xmlschema
      else
        #%(#{time.strftime("%Y/%m/%d %H:%M:%S")} #{formatted_offset(false)})
        %(#{time.strftime("%Y-%m-%d %H:%M:%S")})
      end
    end
  end
end
