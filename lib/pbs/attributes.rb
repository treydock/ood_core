# Maintains a constant Hash of defined PBS attribute types 
# 
#   Includes:
#     Attribute names used by user commands
#     Additional job and general attribute names
#     Additional queue attribute names
#     Additional server attribute names
#     Additional node attribute names
module PBS
  ATTR = {
    # Attribute names used by user commands
    a:                 :Execution_Time,
    c:                 :Checkpoint,
    e:                 :Error_Path,
    f:                 :fault_tolerant,
    g:                 :group_list,
    h:                 :Hold_Types,
    j:                 :Join_Path,
    k:                 :Keep_Files,
    l:                 :Resource_List,
    m:                 :Mail_Points,
    o:                 :Output_Path,
    p:                 :Priority,
    q:                 :destination,
    r:                 :Rerunable,
    t:                 :job_array_request,
    array_id:          :job_array_id,
    u:                 :User_List,
    v:                 :Variable_List,
    A:                 :Account_Name,
    args:              :job_arguments,
    reservation_id:    :reservation_id,
    login_node_id:     :login_node_id,
    login_prop:        :login_property,
    external_nodes:    :external_nodes,
    multi_req_alps:    :multi_req_alps,
    M:                 :Mail_Users,
    N:                 :Job_Name,
    S:                 :Shell_Path_List,
    depend:            :depend,
    inter:             :interactive,
    stagein:           :stagein,
    stageout:          :stageout,
    jobtype:           :jobtype,
    submit_host:       :submit_host,
    init_work_dir:     :init_work_dir,

    # Additional job and general attribute names
    ctime:             :ctime,
    exechost:          :exec_host,
    execport:          :exec_port,
    mtime:             :mtime,
    qtime:             :qtime,
    session:           :session_id,
    euser:             :euser,
    egroup:            :egroup,
    hashname:          :hashname,
    hopcount:          :hop_count,
    security:          :security,
    sched_hint:        :sched_hint,
    substate:          :substate,
    name:              :Job_Name,
    owner:             :Job_Owner,
    used:              :resources_used,
    state:             :job_state,
    queue:             :queue,
    server:            :server,
    maxrun:            :max_running,
    maxreport:         :max_report,
    total:             :total_jobs,
    comment:           :comment,
    cookie:            :cookie,
    qrank:             :queue_rank,
    altid:             :alt_id,
    etime:             :etime,
    exitstat:          :exit_status,
    forwardx11:        :forward_x11,
    submit_args:       :submit_args,
    tokens:            :tokens,
    netcounter:        :net_counter,
    umask:             :umask,
    start_time:        :start_time,
    start_count:       :start_count,
    checkpoint_dir:    :checkpoint_dir,
    checkpoint_name:   :checkpoint_name,
    checkpoint_time:   :checkpoint_time,
    checkpoint_restart_status:  :checkpoint_restart_status,
    restart_name:      :restart_name,
    comp_time:         :comp_time,
    reported:          :reported,
    intcmd:            :inter_cmd,
    job_radix:         :job_radix,
    sister_list:       :sister_list,
    total_runtime:     :total_runtime,
    P:                 :proxy_user,
    node_exclusive:    :node_exclusive,
    exec_gpus:         :exec_gpus,
    exec_mics:         :exec_mics,
    J:                 :job_id,
    pagg:              :pagg_id,
    system_start_time: :system_start_time,
    gpu_flags:         :gpu_flags,

    # Additional queue attribute names

    # Additional server attribute names

    # Additional node attribute names
  }
end
