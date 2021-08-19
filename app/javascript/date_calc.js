function limit_date_calc (limit){
  let dead_line = document.getElementById("goal-limit")
  let now = new Date();
  let limit_int = (limit-now)
  const limit_day = Math.floor(limit_int / ( 1000 * 24 * 60 * 60 ));
  limit_int = limit_int % ( 1000 * 60 * 60 * 24 );
  const limit_hour  = Math.floor(limit_int / ( 1000 * 60 * 60 ));
  limit_int = limit_int % ( 1000 * 60 * 60 );
  const limit_min = Math.floor(limit_int / ( 1000 * 60 ));  
  limit_int = limit_int % ( 1000 * 60 );
  const limit_sec  = Math.floor(limit_int / 1000 );
  const limit_time = limit_day+"日"+limit_hour+"時間"+limit_min+"分"+limit_sec+"秒"
  dead_line.innerHTML = limit_time
  }

function set_time(){
  let dead_line = document.getElementById("goal-limit")
  let dead_line_time = new Date(dead_line.innerHTML)
  limit_date_calc(dead_line_time)
  setInterval(limit_date_calc,1000,dead_line_time)
}

window.addEventListener('load',set_time);