# -*- encoding: UTF-8 -*-
#########################################################################
# File Name: reture_status.rb
# Author: zhouhuan
# mail: towonzhou@gmail.com
# Created Time: 2013年09月05日 星期四 00时27分47秒
#########################################################################

module Message
    PROC_SUCCESS = proc{|msg| {:res_code => 0,:res_msg => msg || "success" } }
    PROC_PARAMS_ERR = proc{|msg| {:res_code => 1000,:res_msg => msg } }
    PROC_UNDEFINE = proc{|msg| {:res_code => -1,:res_msg => msg } }
end
