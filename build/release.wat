(module
 (type $none_=>_none (func))
 (type $i32_=>_none (func (param i32)))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $i32_i32_i32_=>_none (func (param i32 i32 i32)))
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $none_=>_i32 (func (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (global $assembly/index/Int32Array_ID i32 (i32.const 3))
 (global $assembly/index/Float64Array_ID i32 (i32.const 4))
 (global $assembly/index/Uint16Array_ID i32 (i32.const 5))
 (global $~lib/rt/itcms/total (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/threshold (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/state (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/visitCount (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/pinSpace (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/iter (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/toSpace (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/white (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/fromSpace (mut i32) (i32.const 0))
 (global $~lib/rt/tlsf/ROOT (mut i32) (i32.const 0))
 (global $~lib/rt/__rtti_base i32 (i32.const 1872))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 18332))
 (memory $0 1)
 (data (i32.const 1036) ",")
 (data (i32.const 1048) "\01\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h")
 (data (i32.const 1084) "<")
 (data (i32.const 1096) "\01\00\00\00&\00\00\00~\00l\00i\00b\00/\00s\00t\00a\00t\00i\00c\00a\00r\00r\00a\00y\00.\00t\00s")
 (data (i32.const 1148) "<")
 (data (i32.const 1160) "\01\00\00\00(\00\00\00A\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e")
 (data (i32.const 1212) "<")
 (data (i32.const 1224) "\01\00\00\00 \00\00\00~\00l\00i\00b\00/\00r\00t\00/\00i\00t\00c\00m\00s\00.\00t\00s")
 (data (i32.const 1340) "<")
 (data (i32.const 1352) "\01\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e")
 (data (i32.const 1404) ",")
 (data (i32.const 1416) "\01\00\00\00\14\00\00\00~\00l\00i\00b\00/\00r\00t\00.\00t\00s")
 (data (i32.const 1484) "<")
 (data (i32.const 1496) "\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s")
 (data (i32.const 1548) "|")
 (data (i32.const 1560) "\01\00\00\00^\00\00\00E\00l\00e\00m\00e\00n\00t\00 \00t\00y\00p\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00n\00u\00l\00l\00a\00b\00l\00e\00 \00i\00f\00 \00a\00r\00r\00a\00y\00 \00i\00s\00 \00h\00o\00l\00e\00y")
 (data (i32.const 1676) "<")
 (data (i32.const 1688) "\01\00\00\00&\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s")
 (data (i32.const 1740) "<")
 (data (i32.const 1752) "\01\00\00\00*\00\00\00O\00b\00j\00e\00c\00t\00 \00a\00l\00r\00e\00a\00d\00y\00 \00p\00i\00n\00n\00e\00d")
 (data (i32.const 1804) "<")
 (data (i32.const 1816) "\01\00\00\00(\00\00\00O\00b\00j\00e\00c\00t\00 \00i\00s\00 \00n\00o\00t\00 \00p\00i\00n\00n\00e\00d")
 (data (i32.const 1872) "\t\00\00\00 \00\00\00\00\00\00\00 ")
 (data (i32.const 1900) "\01\t\00\00\02\00\00\00\01\1a\00\00\02\00\00\00\81\00\00\00\02\00\00\00$\1a\00\00\00\00\00\00\04A")
 (export "Int32Array_ID" (global $assembly/index/Int32Array_ID))
 (export "Float64Array_ID" (global $assembly/index/Float64Array_ID))
 (export "Uint16Array_ID" (global $assembly/index/Uint16Array_ID))
 (export "__new" (func $~lib/rt/itcms/__new))
 (export "__pin" (func $~lib/rt/itcms/__pin))
 (export "__unpin" (func $~lib/rt/itcms/__unpin))
 (export "__collect" (func $~lib/rt/itcms/__collect))
 (export "__rtti_base" (global $~lib/rt/__rtti_base))
 (export "memory" (memory $0))
 (export "wasmLeastSquares" (func $export:assembly/index/wasmLeastSquares))
 (start $~start)
 (func $~lib/rt/itcms/visitRoots
  (local $0 i32)
  (local $1 i32)
  i32.const 1360
  call $byn-split-outlined-A$~lib/rt/itcms/__visit
  i32.const 1056
  call $byn-split-outlined-A$~lib/rt/itcms/__visit
  i32.const 1568
  call $byn-split-outlined-A$~lib/rt/itcms/__visit
  i32.const 1168
  call $byn-split-outlined-A$~lib/rt/itcms/__visit
  i32.const 1760
  call $byn-split-outlined-A$~lib/rt/itcms/__visit
  i32.const 1824
  call $byn-split-outlined-A$~lib/rt/itcms/__visit
  global.get $~lib/rt/itcms/pinSpace
  local.tee $1
  i32.load offset=4
  i32.const -4
  i32.and
  local.set $0
  loop $while-continue|0
   local.get $0
   local.get $1
   i32.ne
   if
    local.get $0
    i32.load offset=4
    drop
    local.get $0
    i32.const 20
    i32.add
    call $~lib/rt/__visit_members
    local.get $0
    i32.load offset=4
    i32.const -4
    i32.and
    local.set $0
    br $while-continue|0
   end
  end
 )
 (func $~lib/rt/itcms/Object#makeGray (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/rt/itcms/iter
  local.get $0
  i32.eq
  if
   local.get $0
   i32.load offset=8
   global.set $~lib/rt/itcms/iter
  end
  block $__inlined_func$~lib/rt/itcms/Object#unlink
   local.get $0
   i32.load offset=4
   i32.const -4
   i32.and
   local.tee $1
   i32.eqz
   if
    local.get $0
    i32.load offset=8
    drop
    br $__inlined_func$~lib/rt/itcms/Object#unlink
   end
   local.get $1
   local.get $0
   i32.load offset=8
   local.tee $2
   i32.store offset=8
   local.get $2
   local.get $2
   i32.load offset=4
   i32.const 3
   i32.and
   local.get $1
   i32.or
   i32.store offset=4
  end
  global.get $~lib/rt/itcms/toSpace
  local.set $2
  local.get $0
  i32.load offset=12
  local.tee $1
  i32.const 1
  i32.le_u
  if (result i32)
   i32.const 1
  else
   i32.const 1872
   i32.load
   local.get $1
   i32.lt_u
   if
    i32.const 1360
    i32.const 1424
    i32.const 22
    i32.const 28
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   i32.const 3
   i32.shl
   i32.const 1876
   i32.add
   i32.load
   i32.const 32
   i32.and
  end
  local.set $3
  local.get $2
  i32.load offset=8
  local.set $1
  local.get $0
  local.get $2
  global.get $~lib/rt/itcms/white
  i32.eqz
  i32.const 2
  local.get $3
  select
  i32.or
  i32.store offset=4
  local.get $0
  local.get $1
  i32.store offset=8
  local.get $1
  local.get $1
  i32.load offset=4
  i32.const 3
  i32.and
  local.get $0
  i32.or
  i32.store offset=4
  local.get $2
  local.get $0
  i32.store offset=8
 )
 (func $~lib/rt/tlsf/removeBlock (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  i32.load
  i32.const -4
  i32.and
  local.tee $3
  i32.const 256
  i32.lt_u
  if (result i32)
   local.get $3
   i32.const 4
   i32.shr_u
  else
   i32.const 31
   local.get $3
   i32.const 1073741820
   local.get $3
   i32.const 1073741820
   i32.lt_u
   select
   local.tee $3
   i32.clz
   i32.sub
   local.tee $4
   i32.const 7
   i32.sub
   local.set $2
   local.get $3
   local.get $4
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
  end
  local.set $3
  local.get $1
  i32.load offset=8
  local.set $4
  local.get $1
  i32.load offset=4
  local.tee $5
  if
   local.get $5
   local.get $4
   i32.store offset=8
  end
  local.get $4
  if
   local.get $4
   local.get $5
   i32.store offset=4
  end
  local.get $3
  local.get $2
  i32.const 4
  i32.shl
  i32.add
  i32.const 2
  i32.shl
  local.get $0
  i32.add
  i32.load offset=96
  local.get $1
  i32.eq
  if
   local.get $3
   local.get $2
   i32.const 4
   i32.shl
   i32.add
   i32.const 2
   i32.shl
   local.get $0
   i32.add
   local.get $4
   i32.store offset=96
   local.get $4
   i32.eqz
   if
    local.get $2
    i32.const 2
    i32.shl
    local.get $0
    i32.add
    local.tee $1
    i32.load offset=4
    i32.const -2
    local.get $3
    i32.rotl
    i32.and
    local.set $3
    local.get $1
    local.get $3
    i32.store offset=4
    local.get $3
    i32.eqz
    if
     local.get $0
     local.get $0
     i32.load
     i32.const -2
     local.get $2
     i32.rotl
     i32.and
     i32.store
    end
   end
  end
 )
 (func $~lib/rt/tlsf/insertBlock (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  i32.const 4
  i32.add
  local.get $1
  i32.load
  local.tee $3
  i32.const -4
  i32.and
  i32.add
  local.tee $4
  i32.load
  local.tee $2
  i32.const 1
  i32.and
  if
   local.get $0
   local.get $4
   call $~lib/rt/tlsf/removeBlock
   local.get $1
   local.get $3
   i32.const 4
   i32.add
   local.get $2
   i32.const -4
   i32.and
   i32.add
   local.tee $3
   i32.store
   local.get $1
   i32.const 4
   i32.add
   local.get $1
   i32.load
   i32.const -4
   i32.and
   i32.add
   local.tee $4
   i32.load
   local.set $2
  end
  local.get $3
  i32.const 2
  i32.and
  if
   local.get $1
   i32.const 4
   i32.sub
   i32.load
   local.tee $1
   i32.load
   local.set $6
   local.get $0
   local.get $1
   call $~lib/rt/tlsf/removeBlock
   local.get $1
   local.get $6
   i32.const 4
   i32.add
   local.get $3
   i32.const -4
   i32.and
   i32.add
   local.tee $3
   i32.store
  end
  local.get $4
  local.get $2
  i32.const 2
  i32.or
  i32.store
  local.get $4
  i32.const 4
  i32.sub
  local.get $1
  i32.store
  local.get $3
  i32.const -4
  i32.and
  local.tee $2
  i32.const 256
  i32.lt_u
  if (result i32)
   local.get $2
   i32.const 4
   i32.shr_u
  else
   i32.const 31
   local.get $2
   i32.const 1073741820
   local.get $2
   i32.const 1073741820
   i32.lt_u
   select
   local.tee $2
   i32.clz
   i32.sub
   local.tee $3
   i32.const 7
   i32.sub
   local.set $5
   local.get $2
   local.get $3
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
  end
  local.tee $2
  local.get $5
  i32.const 4
  i32.shl
  i32.add
  i32.const 2
  i32.shl
  local.get $0
  i32.add
  i32.load offset=96
  local.set $3
  local.get $1
  i32.const 0
  i32.store offset=4
  local.get $1
  local.get $3
  i32.store offset=8
  local.get $3
  if
   local.get $3
   local.get $1
   i32.store offset=4
  end
  local.get $2
  local.get $5
  i32.const 4
  i32.shl
  i32.add
  i32.const 2
  i32.shl
  local.get $0
  i32.add
  local.get $1
  i32.store offset=96
  local.get $0
  local.get $0
  i32.load
  i32.const 1
  local.get $5
  i32.shl
  i32.or
  i32.store
  local.get $5
  i32.const 2
  i32.shl
  local.get $0
  i32.add
  local.tee $0
  local.get $0
  i32.load offset=4
  i32.const 1
  local.get $2
  i32.shl
  i32.or
  i32.store offset=4
 )
 (func $~lib/rt/tlsf/addMemory (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $2
  i32.const -16
  i32.and
  local.get $0
  i32.load offset=1568
  local.tee $2
  i32.const 0
  local.get $2
  local.get $1
  i32.const 19
  i32.add
  i32.const -16
  i32.and
  i32.const 4
  i32.sub
  local.tee $1
  i32.const 16
  i32.sub
  i32.eq
  select
  if
   local.get $2
   i32.load
   local.set $3
   local.get $1
   i32.const 16
   i32.sub
   local.set $1
  end
  local.get $1
  i32.sub
  local.tee $2
  i32.const 20
  i32.lt_u
  if
   return
  end
  local.get $1
  local.get $3
  i32.const 2
  i32.and
  local.get $2
  i32.const 8
  i32.sub
  local.tee $2
  i32.const 1
  i32.or
  i32.or
  i32.store
  local.get $1
  i32.const 0
  i32.store offset=4
  local.get $1
  i32.const 0
  i32.store offset=8
  local.get $2
  local.get $1
  i32.const 4
  i32.add
  i32.add
  local.tee $2
  i32.const 2
  i32.store
  local.get $0
  local.get $2
  i32.store offset=1568
  local.get $0
  local.get $1
  call $~lib/rt/tlsf/insertBlock
 )
 (func $~lib/rt/tlsf/initialize
  (local $0 i32)
  (local $1 i32)
  memory.size
  local.tee $1
  i32.const 0
  i32.le_s
  if (result i32)
   i32.const 1
   local.get $1
   i32.sub
   memory.grow
   i32.const 0
   i32.lt_s
  else
   i32.const 0
  end
  if
   unreachable
  end
  i32.const 18336
  i32.const 0
  i32.store
  i32.const 19904
  i32.const 0
  i32.store
  loop $for-loop|0
   local.get $0
   i32.const 23
   i32.lt_u
   if
    local.get $0
    i32.const 2
    i32.shl
    i32.const 18336
    i32.add
    i32.const 0
    i32.store offset=4
    i32.const 0
    local.set $1
    loop $for-loop|1
     local.get $1
     i32.const 16
     i32.lt_u
     if
      local.get $1
      local.get $0
      i32.const 4
      i32.shl
      i32.add
      i32.const 2
      i32.shl
      i32.const 18336
      i32.add
      i32.const 0
      i32.store offset=96
      local.get $1
      i32.const 1
      i32.add
      local.set $1
      br $for-loop|1
     end
    end
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
   end
  end
  i32.const 18336
  i32.const 19908
  memory.size
  i32.const 16
  i32.shl
  call $~lib/rt/tlsf/addMemory
  i32.const 18336
  global.set $~lib/rt/tlsf/ROOT
 )
 (func $~lib/rt/itcms/step (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  block $break|0
   block $case2|0
    block $case1|0
     block $case0|0
      global.get $~lib/rt/itcms/state
      br_table $case0|0 $case1|0 $case2|0 $break|0
     end
     i32.const 1
     global.set $~lib/rt/itcms/state
     i32.const 0
     global.set $~lib/rt/itcms/visitCount
     call $~lib/rt/itcms/visitRoots
     global.get $~lib/rt/itcms/toSpace
     global.set $~lib/rt/itcms/iter
     global.get $~lib/rt/itcms/visitCount
     return
    end
    global.get $~lib/rt/itcms/white
    i32.eqz
    local.set $2
    global.get $~lib/rt/itcms/iter
    i32.load offset=4
    i32.const -4
    i32.and
    local.set $0
    loop $while-continue|1
     global.get $~lib/rt/itcms/toSpace
     local.get $0
     i32.ne
     if
      local.get $0
      global.set $~lib/rt/itcms/iter
      local.get $0
      i32.load offset=4
      i32.const 3
      i32.and
      local.get $2
      i32.ne
      if
       local.get $0
       local.get $2
       local.get $0
       i32.load offset=4
       i32.const -4
       i32.and
       i32.or
       i32.store offset=4
       i32.const 0
       global.set $~lib/rt/itcms/visitCount
       local.get $0
       i32.const 20
       i32.add
       call $~lib/rt/__visit_members
       global.get $~lib/rt/itcms/visitCount
       return
      end
      local.get $0
      i32.load offset=4
      i32.const -4
      i32.and
      local.set $0
      br $while-continue|1
     end
    end
    i32.const 0
    global.set $~lib/rt/itcms/visitCount
    call $~lib/rt/itcms/visitRoots
    global.get $~lib/rt/itcms/toSpace
    global.get $~lib/rt/itcms/iter
    i32.load offset=4
    i32.const -4
    i32.and
    i32.eq
    if
     global.get $~lib/memory/__stack_pointer
     local.set $0
     loop $while-continue|0
      local.get $0
      i32.const 18332
      i32.lt_u
      if
       local.get $0
       i32.load
       local.tee $1
       if
        local.get $1
        call $byn-split-outlined-A$~lib/rt/itcms/__visit
       end
       local.get $0
       i32.const 4
       i32.add
       local.set $0
       br $while-continue|0
      end
     end
     global.get $~lib/rt/itcms/iter
     i32.load offset=4
     i32.const -4
     i32.and
     local.set $0
     loop $while-continue|2
      global.get $~lib/rt/itcms/toSpace
      local.get $0
      i32.ne
      if
       local.get $0
       i32.load offset=4
       i32.const 3
       i32.and
       local.get $2
       i32.ne
       if
        local.get $0
        local.get $2
        local.get $0
        i32.load offset=4
        i32.const -4
        i32.and
        i32.or
        i32.store offset=4
        local.get $0
        i32.const 20
        i32.add
        call $~lib/rt/__visit_members
       end
       local.get $0
       i32.load offset=4
       i32.const -4
       i32.and
       local.set $0
       br $while-continue|2
      end
     end
     global.get $~lib/rt/itcms/fromSpace
     local.set $0
     global.get $~lib/rt/itcms/toSpace
     global.set $~lib/rt/itcms/fromSpace
     local.get $0
     global.set $~lib/rt/itcms/toSpace
     local.get $2
     global.set $~lib/rt/itcms/white
     local.get $0
     i32.load offset=4
     i32.const -4
     i32.and
     global.set $~lib/rt/itcms/iter
     i32.const 2
     global.set $~lib/rt/itcms/state
    end
    global.get $~lib/rt/itcms/visitCount
    return
   end
   global.get $~lib/rt/itcms/iter
   local.tee $0
   global.get $~lib/rt/itcms/toSpace
   i32.ne
   if
    local.get $0
    i32.load offset=4
    i32.const -4
    i32.and
    global.set $~lib/rt/itcms/iter
    local.get $0
    i32.const 18332
    i32.lt_u
    if
     local.get $0
     i32.const 0
     i32.store offset=4
     local.get $0
     i32.const 0
     i32.store offset=8
    else
     global.get $~lib/rt/itcms/total
     local.get $0
     i32.load
     i32.const -4
     i32.and
     i32.const 4
     i32.add
     i32.sub
     global.set $~lib/rt/itcms/total
     local.get $0
     i32.const 4
     i32.add
     local.tee $0
     i32.const 18332
     i32.ge_u
     if
      global.get $~lib/rt/tlsf/ROOT
      i32.eqz
      if
       call $~lib/rt/tlsf/initialize
      end
      local.get $0
      i32.const 4
      i32.sub
      local.set $1
      local.get $0
      i32.const 15
      i32.and
      i32.const 1
      local.get $0
      select
      if (result i32)
       i32.const 1
      else
       local.get $1
       i32.load
       i32.const 1
       i32.and
      end
      drop
      local.get $1
      local.get $1
      i32.load
      i32.const 1
      i32.or
      i32.store
      global.get $~lib/rt/tlsf/ROOT
      local.get $1
      call $~lib/rt/tlsf/insertBlock
     end
    end
    i32.const 10
    return
   end
   global.get $~lib/rt/itcms/toSpace
   local.tee $0
   local.get $0
   i32.store offset=4
   local.get $0
   local.get $0
   i32.store offset=8
   i32.const 0
   global.set $~lib/rt/itcms/state
  end
  i32.const 0
 )
 (func $~lib/rt/tlsf/searchBlock (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  i32.const 256
  i32.lt_u
  if (result i32)
   local.get $1
   i32.const 4
   i32.shr_u
  else
   i32.const 31
   i32.const 1
   i32.const 27
   local.get $1
   i32.clz
   i32.sub
   i32.shl
   local.get $1
   i32.add
   i32.const 1
   i32.sub
   local.get $1
   local.get $1
   i32.const 536870910
   i32.lt_u
   select
   local.tee $1
   i32.clz
   i32.sub
   local.tee $3
   i32.const 7
   i32.sub
   local.set $2
   local.get $1
   local.get $3
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
  end
  local.set $1
  local.get $2
  i32.const 2
  i32.shl
  local.get $0
  i32.add
  i32.load offset=4
  i32.const -1
  local.get $1
  i32.shl
  i32.and
  local.tee $1
  if (result i32)
   local.get $1
   i32.ctz
   local.get $2
   i32.const 4
   i32.shl
   i32.add
   i32.const 2
   i32.shl
   local.get $0
   i32.add
   i32.load offset=96
  else
   local.get $0
   i32.load
   i32.const -1
   local.get $2
   i32.const 1
   i32.add
   i32.shl
   i32.and
   local.tee $1
   if (result i32)
    local.get $0
    local.get $0
    local.get $1
    i32.ctz
    local.tee $0
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=4
    i32.ctz
    local.get $0
    i32.const 4
    i32.shl
    i32.add
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=96
   else
    i32.const 0
   end
  end
 )
 (func $~lib/rt/itcms/__new (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.const 1073741804
  i32.ge_u
  if
   i32.const 1168
   i32.const 1232
   i32.const 260
   i32.const 31
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/itcms/total
  global.get $~lib/rt/itcms/threshold
  i32.ge_u
  if
   block $__inlined_func$~lib/rt/itcms/interrupt
    i32.const 2048
    local.set $2
    loop $do-loop|0
     local.get $2
     call $~lib/rt/itcms/step
     i32.sub
     local.set $2
     global.get $~lib/rt/itcms/state
     i32.eqz
     if
      global.get $~lib/rt/itcms/total
      i64.extend_i32_u
      i64.const 200
      i64.mul
      i64.const 100
      i64.div_u
      i32.wrap_i64
      i32.const 1024
      i32.add
      global.set $~lib/rt/itcms/threshold
      br $__inlined_func$~lib/rt/itcms/interrupt
     end
     local.get $2
     i32.const 0
     i32.gt_s
     br_if $do-loop|0
    end
    global.get $~lib/rt/itcms/total
    local.tee $2
    global.get $~lib/rt/itcms/threshold
    i32.sub
    i32.const 1024
    i32.lt_u
    i32.const 10
    i32.shl
    local.get $2
    i32.add
    global.set $~lib/rt/itcms/threshold
   end
  end
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/rt/tlsf/initialize
  end
  global.get $~lib/rt/tlsf/ROOT
  local.set $4
  local.get $0
  i32.const 16
  i32.add
  local.tee $2
  i32.const 1073741820
  i32.gt_u
  if
   i32.const 1168
   i32.const 1504
   i32.const 458
   i32.const 29
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  i32.const 12
  local.get $2
  i32.const 19
  i32.add
  i32.const -16
  i32.and
  i32.const 4
  i32.sub
  local.get $2
  i32.const 12
  i32.le_u
  select
  local.tee $5
  call $~lib/rt/tlsf/searchBlock
  local.tee $2
  i32.eqz
  if
   memory.size
   local.tee $2
   i32.const 4
   local.get $4
   i32.load offset=1568
   local.get $2
   i32.const 16
   i32.shl
   i32.const 4
   i32.sub
   i32.ne
   i32.shl
   i32.const 1
   i32.const 27
   local.get $5
   i32.clz
   i32.sub
   i32.shl
   i32.const 1
   i32.sub
   local.get $5
   i32.add
   local.get $5
   local.get $5
   i32.const 536870910
   i32.lt_u
   select
   i32.add
   i32.const 65535
   i32.add
   i32.const -65536
   i32.and
   i32.const 16
   i32.shr_u
   local.tee $3
   local.get $2
   local.get $3
   i32.gt_s
   select
   memory.grow
   i32.const 0
   i32.lt_s
   if
    local.get $3
    memory.grow
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
   local.get $4
   local.get $2
   i32.const 16
   i32.shl
   memory.size
   i32.const 16
   i32.shl
   call $~lib/rt/tlsf/addMemory
   local.get $4
   local.get $5
   call $~lib/rt/tlsf/searchBlock
   local.set $2
  end
  local.get $2
  i32.load
  drop
  local.get $4
  local.get $2
  call $~lib/rt/tlsf/removeBlock
  local.get $2
  i32.load
  local.tee $3
  i32.const -4
  i32.and
  local.get $5
  i32.sub
  local.tee $6
  i32.const 16
  i32.ge_u
  if
   local.get $2
   local.get $3
   i32.const 2
   i32.and
   local.get $5
   i32.or
   i32.store
   local.get $5
   local.get $2
   i32.const 4
   i32.add
   i32.add
   local.tee $3
   local.get $6
   i32.const 4
   i32.sub
   i32.const 1
   i32.or
   i32.store
   local.get $4
   local.get $3
   call $~lib/rt/tlsf/insertBlock
  else
   local.get $2
   local.get $3
   i32.const -2
   i32.and
   i32.store
   local.get $2
   i32.const 4
   i32.add
   local.get $2
   i32.load
   i32.const -4
   i32.and
   i32.add
   local.tee $3
   local.get $3
   i32.load
   i32.const -3
   i32.and
   i32.store
  end
  local.get $2
  local.get $1
  i32.store offset=12
  local.get $2
  local.get $0
  i32.store offset=16
  global.get $~lib/rt/itcms/fromSpace
  local.tee $1
  i32.load offset=8
  local.set $3
  local.get $2
  global.get $~lib/rt/itcms/white
  local.get $1
  i32.or
  i32.store offset=4
  local.get $2
  local.get $3
  i32.store offset=8
  local.get $3
  local.get $3
  i32.load offset=4
  i32.const 3
  i32.and
  local.get $2
  i32.or
  i32.store offset=4
  local.get $1
  local.get $2
  i32.store offset=8
  global.get $~lib/rt/itcms/total
  local.get $2
  i32.load
  i32.const -4
  i32.and
  i32.const 4
  i32.add
  i32.add
  global.set $~lib/rt/itcms/total
  local.get $2
  i32.const 20
  i32.add
  local.tee $1
  i32.const 0
  local.get $0
  memory.fill
  local.get $1
 )
 (func $~lib/rt/itcms/__pin (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  if
   local.get $0
   i32.const 20
   i32.sub
   local.tee $1
   i32.load offset=4
   i32.const 3
   i32.and
   i32.const 3
   i32.eq
   if
    i32.const 1760
    i32.const 1232
    i32.const 337
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   block $__inlined_func$~lib/rt/itcms/Object#unlink
    local.get $1
    i32.load offset=4
    i32.const -4
    i32.and
    local.tee $2
    i32.eqz
    if
     local.get $1
     i32.load offset=8
     drop
     br $__inlined_func$~lib/rt/itcms/Object#unlink
    end
    local.get $2
    local.get $1
    i32.load offset=8
    local.tee $3
    i32.store offset=8
    local.get $3
    local.get $3
    i32.load offset=4
    i32.const 3
    i32.and
    local.get $2
    i32.or
    i32.store offset=4
   end
   global.get $~lib/rt/itcms/pinSpace
   local.tee $2
   i32.load offset=8
   local.set $3
   local.get $1
   local.get $2
   i32.const 3
   i32.or
   i32.store offset=4
   local.get $1
   local.get $3
   i32.store offset=8
   local.get $3
   local.get $3
   i32.load offset=4
   i32.const 3
   i32.and
   local.get $1
   i32.or
   i32.store offset=4
   local.get $2
   local.get $1
   i32.store offset=8
  end
  local.get $0
 )
 (func $~lib/rt/itcms/__unpin (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.eqz
  if
   return
  end
  local.get $0
  i32.const 20
  i32.sub
  local.tee $0
  i32.load offset=4
  i32.const 3
  i32.and
  i32.const 3
  i32.ne
  if
   i32.const 1824
   i32.const 1232
   i32.const 351
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/itcms/state
  i32.const 1
  i32.eq
  if
   local.get $0
   call $~lib/rt/itcms/Object#makeGray
  else
   block $__inlined_func$~lib/rt/itcms/Object#unlink
    local.get $0
    i32.load offset=4
    i32.const -4
    i32.and
    local.tee $1
    i32.eqz
    if
     local.get $0
     i32.load offset=8
     drop
     br $__inlined_func$~lib/rt/itcms/Object#unlink
    end
    local.get $1
    local.get $0
    i32.load offset=8
    local.tee $2
    i32.store offset=8
    local.get $2
    local.get $2
    i32.load offset=4
    i32.const 3
    i32.and
    local.get $1
    i32.or
    i32.store offset=4
   end
   global.get $~lib/rt/itcms/fromSpace
   local.tee $1
   i32.load offset=8
   local.set $2
   local.get $0
   global.get $~lib/rt/itcms/white
   local.get $1
   i32.or
   i32.store offset=4
   local.get $0
   local.get $2
   i32.store offset=8
   local.get $2
   local.get $2
   i32.load offset=4
   i32.const 3
   i32.and
   local.get $0
   i32.or
   i32.store offset=4
   local.get $1
   local.get $0
   i32.store offset=8
  end
 )
 (func $~lib/rt/itcms/__collect
  global.get $~lib/rt/itcms/state
  i32.const 0
  i32.gt_s
  if
   loop $while-continue|0
    global.get $~lib/rt/itcms/state
    if
     call $~lib/rt/itcms/step
     drop
     br $while-continue|0
    end
   end
  end
  call $~lib/rt/itcms/step
  drop
  loop $while-continue|1
   global.get $~lib/rt/itcms/state
   if
    call $~lib/rt/itcms/step
    drop
    br $while-continue|1
   end
  end
  global.get $~lib/rt/itcms/total
  i64.extend_i32_u
  i64.const 200
  i64.mul
  i64.const 100
  i64.div_u
  i32.wrap_i64
  i32.const 1024
  i32.add
  global.set $~lib/rt/itcms/threshold
 )
 (func $~lib/rt/__visit_members (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  block $folding-inner0
   block $invalid
    block $assembly/index/QrResult
     block $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<f64>>
      block $~lib/staticarray/StaticArray<f64>
       block $~lib/arraybuffer/ArrayBufferView
        block $~lib/string/String
         block $~lib/arraybuffer/ArrayBuffer
          local.get $0
          i32.const 8
          i32.sub
          i32.load
          br_table $~lib/arraybuffer/ArrayBuffer $~lib/string/String $~lib/arraybuffer/ArrayBufferView $folding-inner0 $folding-inner0 $folding-inner0 $~lib/staticarray/StaticArray<f64> $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<f64>> $assembly/index/QrResult $invalid
         end
         return
        end
        return
       end
       local.get $0
       i32.load
       local.tee $0
       if
        local.get $0
        call $byn-split-outlined-A$~lib/rt/itcms/__visit
       end
       return
      end
      return
     end
     local.get $0
     i32.const 20
     i32.sub
     i32.load offset=16
     local.get $0
     i32.add
     local.set $1
     loop $while-continue|0
      local.get $0
      local.get $1
      i32.lt_u
      if
       local.get $0
       i32.load
       local.tee $2
       if
        local.get $2
        call $byn-split-outlined-A$~lib/rt/itcms/__visit
       end
       local.get $0
       i32.const 4
       i32.add
       local.set $0
       br $while-continue|0
      end
     end
     return
    end
    local.get $0
    i32.load
    local.tee $1
    if
     local.get $1
     call $byn-split-outlined-A$~lib/rt/itcms/__visit
    end
    local.get $0
    i32.load offset=4
    local.tee $0
    if
     local.get $0
     call $byn-split-outlined-A$~lib/rt/itcms/__visit
    end
    return
   end
   unreachable
  end
  local.get $0
  i32.load
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
 )
 (func $~start
  memory.size
  i32.const 16
  i32.shl
  i32.const 18332
  i32.sub
  i32.const 1
  i32.shr_u
  global.set $~lib/rt/itcms/threshold
  i32.const 1284
  i32.const 1280
  i32.store
  i32.const 1288
  i32.const 1280
  i32.store
  i32.const 1280
  global.set $~lib/rt/itcms/pinSpace
  i32.const 1316
  i32.const 1312
  i32.store
  i32.const 1320
  i32.const 1312
  i32.store
  i32.const 1312
  global.set $~lib/rt/itcms/toSpace
  i32.const 1460
  i32.const 1456
  i32.store
  i32.const 1464
  i32.const 1456
  i32.store
  i32.const 1456
  global.set $~lib/rt/itcms/fromSpace
 )
 (func $assembly/index/declareMatrix (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 1948
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $4
   i64.const 0
   i64.store
   local.get $4
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 1948
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
   local.get $0
   i32.const 268435455
   i32.gt_u
   if
    i32.const 1056
    i32.const 1104
    i32.const 91
    i32.const 60
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.const 2
   i32.shl
   i32.const 7
   call $~lib/rt/itcms/__new
   local.tee $2
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $4
   local.get $2
   i32.store
   loop $for-loop|0
    local.get $0
    local.get $3
    i32.gt_s
    if
     local.get $1
     call $~lib/staticarray/StaticArray<f64>#constructor
     local.set $4
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.store offset=4
     local.get $3
     i32.const 2
     i32.shl
     local.get $2
     i32.add
     local.get $4
     i32.store
     local.get $4
     if
      local.get $2
      local.get $4
      i32.const 1
      call $byn-split-outlined-A$~lib/rt/itcms/__link
     end
     local.get $3
     i32.const 1
     i32.add
     local.set $3
     br $for-loop|0
    end
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $2
   return
  end
  i32.const 18352
  i32.const 18400
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $assembly/index/cloneMatrix (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1948
  i32.lt_s
  if
   i32.const 18352
   i32.const 18400
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  i64.const 0
  i64.store
  local.get $1
  i32.const 0
  i32.store offset=8
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 2
  i32.shr_u
  local.set $3
  local.get $1
  local.get $0
  i32.load
  local.tee $4
  i32.store
  local.get $1
  local.get $3
  local.get $4
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 3
  i32.shr_u
  local.tee $6
  call $assembly/index/declareMatrix
  local.tee $5
  i32.store offset=4
  loop $for-loop|0
   local.get $2
   local.get $3
   i32.lt_s
   if
    i32.const 0
    local.set $1
    loop $for-loop|1
     local.get $1
     local.get $6
     i32.lt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.tee $7
      local.get $5
      local.get $2
      i32.const 2
      i32.shl
      local.tee $8
      i32.add
      i32.load
      local.tee $4
      i32.store
      local.get $7
      local.get $0
      local.get $8
      i32.add
      i32.load
      local.tee $7
      i32.store offset=8
      local.get $4
      local.get $1
      i32.const 3
      i32.shl
      local.tee $8
      i32.add
      local.get $7
      local.get $8
      i32.add
      f64.load
      f64.store
      local.get $1
      i32.const 1
      i32.add
      local.set $1
      br $for-loop|1
     end
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $5
 )
 (func $assembly/index/qrDecomposition (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 f64)
  (local $4 f64)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 f64)
  (local $11 i32)
  (local $12 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 1948
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   i32.const 0
   i32.const 20
   memory.fill
   local.get $2
   local.get $0
   call $assembly/index/cloneMatrix
   local.tee $9
   i32.store
   local.get $0
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const 2
   i32.shr_u
   local.set $5
   global.get $~lib/memory/__stack_pointer
   i32.const 3
   call $~lib/staticarray/StaticArray<f64>#constructor
   local.tee $6
   i32.store offset=4
   loop $for-loop|0
    local.get $1
    i32.const 3
    i32.lt_s
    if
     f64.const 0
     local.set $3
     local.get $1
     local.set $0
     loop $for-loop|1
      local.get $0
      local.get $5
      i32.lt_s
      if
       block $__inlined_func$assembly/index/hypotenuse (result f64)
        global.get $~lib/memory/__stack_pointer
        local.get $0
        i32.const 2
        i32.shl
        local.get $9
        i32.add
        i32.load
        local.tee $2
        i32.store offset=8
        local.get $3
        f64.abs
        local.get $1
        i32.const 3
        i32.shl
        local.get $2
        i32.add
        f64.load
        local.tee $4
        f64.abs
        f64.gt
        if
         local.get $3
         f64.abs
         local.get $4
         local.get $3
         f64.div
         local.tee $3
         local.get $3
         f64.mul
         f64.const 1
         f64.add
         f64.sqrt
         f64.mul
         br $__inlined_func$assembly/index/hypotenuse
        end
        local.get $4
        f64.const 0
        f64.ne
        if
         local.get $4
         f64.abs
         local.get $3
         local.get $4
         f64.div
         local.tee $3
         local.get $3
         f64.mul
         f64.const 1
         f64.add
         f64.sqrt
         f64.mul
         br $__inlined_func$assembly/index/hypotenuse
        end
        f64.const 0
       end
       local.set $3
       local.get $0
       i32.const 1
       i32.add
       local.set $0
       br $for-loop|1
      end
     end
     local.get $3
     f64.const 0
     f64.ne
     if
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.const 2
      i32.shl
      local.get $9
      i32.add
      i32.load
      local.tee $0
      i32.store offset=8
      local.get $3
      f64.neg
      local.get $3
      local.get $1
      i32.const 3
      i32.shl
      local.get $0
      i32.add
      f64.load
      f64.const 0
      f64.lt
      select
      local.set $3
      local.get $1
      local.set $0
      loop $for-loop|2
       local.get $0
       local.get $5
       i32.lt_s
       if
        global.get $~lib/memory/__stack_pointer
        local.tee $2
        local.get $0
        i32.const 2
        i32.shl
        local.get $9
        i32.add
        i32.load
        local.tee $7
        i32.store offset=8
        local.get $2
        local.get $0
        i32.const 2
        i32.shl
        local.get $9
        i32.add
        i32.load
        local.tee $2
        i32.store offset=12
        local.get $7
        local.get $1
        i32.const 3
        i32.shl
        local.tee $8
        i32.add
        local.get $2
        local.get $8
        i32.add
        f64.load
        local.get $3
        f64.div
        f64.store
        local.get $0
        i32.const 1
        i32.add
        local.set $0
        br $for-loop|2
       end
      end
      global.get $~lib/memory/__stack_pointer
      local.tee $0
      local.get $1
      i32.const 2
      i32.shl
      local.get $9
      i32.add
      i32.load
      local.tee $2
      i32.store offset=8
      local.get $0
      local.get $1
      i32.const 2
      i32.shl
      local.get $9
      i32.add
      i32.load
      local.tee $0
      i32.store offset=12
      local.get $2
      local.get $1
      i32.const 3
      i32.shl
      local.tee $7
      i32.add
      local.get $0
      local.get $7
      i32.add
      f64.load
      f64.const 1
      f64.add
      f64.store
      local.get $1
      i32.const 1
      i32.add
      local.set $2
      loop $for-loop|3
       local.get $2
       i32.const 3
       i32.lt_s
       if
        f64.const 0
        local.set $4
        local.get $1
        local.set $0
        loop $for-loop|4
         local.get $0
         local.get $5
         i32.lt_s
         if
          global.get $~lib/memory/__stack_pointer
          local.tee $7
          local.get $0
          i32.const 2
          i32.shl
          local.get $9
          i32.add
          i32.load
          local.tee $8
          i32.store offset=8
          local.get $1
          i32.const 3
          i32.shl
          local.get $8
          i32.add
          f64.load
          local.set $10
          local.get $7
          local.get $0
          i32.const 2
          i32.shl
          local.get $9
          i32.add
          i32.load
          local.tee $7
          i32.store offset=8
          local.get $4
          local.get $10
          local.get $2
          i32.const 3
          i32.shl
          local.get $7
          i32.add
          f64.load
          f64.mul
          f64.add
          local.set $4
          local.get $0
          i32.const 1
          i32.add
          local.set $0
          br $for-loop|4
         end
        end
        global.get $~lib/memory/__stack_pointer
        local.get $1
        i32.const 2
        i32.shl
        local.get $9
        i32.add
        i32.load
        local.tee $0
        i32.store offset=8
        local.get $4
        f64.neg
        local.get $1
        i32.const 3
        i32.shl
        local.get $0
        i32.add
        f64.load
        f64.div
        local.set $4
        local.get $1
        local.set $0
        loop $for-loop|5
         local.get $0
         local.get $5
         i32.lt_s
         if
          global.get $~lib/memory/__stack_pointer
          local.tee $11
          local.get $0
          i32.const 2
          i32.shl
          local.get $9
          i32.add
          i32.load
          local.tee $7
          i32.store offset=8
          local.get $11
          local.get $0
          i32.const 2
          i32.shl
          local.get $9
          i32.add
          i32.load
          local.tee $8
          i32.store offset=12
          local.get $8
          local.get $2
          i32.const 3
          i32.shl
          local.tee $12
          i32.add
          f64.load
          local.set $10
          local.get $11
          local.get $0
          i32.const 2
          i32.shl
          local.get $9
          i32.add
          i32.load
          local.tee $8
          i32.store offset=12
          local.get $7
          local.get $12
          i32.add
          local.get $10
          local.get $4
          local.get $1
          i32.const 3
          i32.shl
          local.get $8
          i32.add
          f64.load
          f64.mul
          f64.add
          f64.store
          local.get $0
          i32.const 1
          i32.add
          local.set $0
          br $for-loop|5
         end
        end
        local.get $2
        i32.const 1
        i32.add
        local.set $2
        br $for-loop|3
       end
      end
     end
     local.get $1
     i32.const 3
     i32.shl
     local.get $6
     i32.add
     local.get $3
     f64.neg
     f64.store
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     br $for-loop|0
    end
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 1948
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i32.const 0
   i32.store
   local.get $1
   i32.const 8
   i32.const 8
   call $~lib/rt/itcms/__new
   local.tee $1
   i32.store
   local.get $1
   i32.const 0
   i32.store
   local.get $1
   i32.const 0
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   local.get $1
   i32.store offset=16
   local.get $1
   local.get $9
   i32.store
   local.get $9
   if
    local.get $1
    local.get $9
    i32.const 0
    call $byn-split-outlined-A$~lib/rt/itcms/__link
   end
   local.get $1
   local.get $6
   i32.store offset=4
   local.get $6
   if
    local.get $1
    local.get $6
    i32.const 0
    call $byn-split-outlined-A$~lib/rt/itcms/__link
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 20
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $1
   return
  end
  i32.const 18352
  i32.const 18400
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $assembly/index/wasmLeastSquares (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 f64)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 f64)
  (local $14 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 36
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner2
   global.get $~lib/memory/__stack_pointer
   i32.const 1948
   i32.lt_s
   br_if $folding-inner2
   global.get $~lib/memory/__stack_pointer
   local.tee $7
   i32.const 0
   i32.const 36
   memory.fill
   local.get $7
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 1948
   i32.lt_s
   br_if $folding-inner2
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   i64.const 0
   i64.store
   local.get $3
   local.get $1
   local.get $2
   i32.mul
   local.tee $8
   i32.const 1
   call $assembly/index/declareMatrix
   local.tee $9
   i32.store
   loop $for-loop|0
    local.get $5
    local.get $8
    i32.lt_s
    if
     i32.const 0
     local.set $3
     loop $for-loop|1
      local.get $3
      i32.const 0
      i32.le_s
      if
       global.get $~lib/memory/__stack_pointer
       local.get $5
       i32.const 2
       i32.shl
       local.get $9
       i32.add
       i32.load
       local.tee $10
       i32.store offset=4
       local.get $3
       i32.const 3
       i32.shl
       local.get $10
       i32.add
       local.get $0
       i32.load offset=4
       local.get $4
       i32.const 1
       i32.shl
       i32.add
       i32.load16_u
       f64.convert_i32_u
       f64.store
       local.get $4
       i32.const 1
       i32.add
       local.set $4
       local.get $3
       i32.const 1
       i32.add
       local.set $3
       br $for-loop|1
      end
     end
     local.get $5
     i32.const 1
     i32.add
     local.set $5
     br $for-loop|0
    end
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $7
   local.get $9
   i32.store
   global.get $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 1948
   i32.lt_s
   br_if $folding-inner2
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i64.const 0
   i64.store
   local.get $0
   local.get $1
   local.get $2
   i32.mul
   local.tee $2
   i32.const 3
   call $assembly/index/declareMatrix
   local.tee $7
   i32.store
   i32.const 0
   local.set $3
   i32.const 0
   local.set $4
   i32.const 0
   local.set $0
   loop $for-loop|03
    local.get $0
    local.get $2
    i32.lt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.tee $8
     local.get $0
     i32.const 2
     i32.shl
     local.get $7
     i32.add
     i32.load
     local.tee $10
     i32.store offset=4
     local.get $10
     f64.const 1
     f64.store
     local.get $8
     local.get $0
     i32.const 2
     i32.shl
     local.get $7
     i32.add
     i32.load
     local.tee $10
     i32.store offset=4
     local.get $10
     local.get $3
     f64.convert_i32_s
     f64.store offset=8
     local.get $8
     local.get $0
     i32.const 2
     i32.shl
     local.get $7
     i32.add
     i32.load
     local.tee $8
     i32.store offset=4
     local.get $8
     local.get $4
     f64.convert_i32_s
     f64.store offset=16
     local.get $1
     local.get $3
     i32.const 1
     i32.add
     local.tee $3
     i32.le_s
     if
      i32.const 0
      local.set $3
     end
     local.get $4
     local.get $4
     i32.const 1
     i32.add
     local.get $0
     i32.const 1
     i32.add
     local.tee $0
     local.get $1
     i32.rem_s
     select
     local.set $4
     br $for-loop|03
    end
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $7
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $7
   call $assembly/index/qrDecomposition
   local.tee $0
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load
   local.tee $2
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=4
   local.tee $3
   i32.store offset=16
   global.get $~lib/memory/__stack_pointer
   local.get $9
   i32.load
   local.tee $0
   i32.store offset=20
   local.get $0
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const 3
   i32.shr_u
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $9
   call $assembly/index/cloneMatrix
   local.tee $7
   i32.store offset=24
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.load
   local.tee $0
   i32.store offset=20
   local.get $0
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const 3
   i32.shr_u
   local.set $8
   local.get $2
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const 2
   i32.shr_u
   local.set $9
   i32.const 0
   local.set $0
   block $folding-inner1
    loop $for-loop|010
     local.get $0
     local.get $8
     i32.lt_s
     if
      i32.const 0
      local.set $4
      loop $for-loop|113
       local.get $4
       local.get $5
       i32.lt_s
       if
        f64.const 0
        local.set $6
        local.get $0
        local.set $1
        loop $for-loop|2
         local.get $1
         local.get $9
         i32.lt_s
         if
          global.get $~lib/memory/__stack_pointer
          local.tee $10
          local.get $2
          local.get $1
          i32.const 2
          i32.shl
          local.tee $11
          i32.add
          i32.load
          local.tee $12
          i32.store offset=20
          local.get $0
          i32.const 3
          i32.shl
          local.get $12
          i32.add
          f64.load
          local.set $13
          local.get $10
          local.get $7
          local.get $11
          i32.add
          i32.load
          local.tee $10
          i32.store offset=20
          local.get $6
          local.get $13
          local.get $4
          i32.const 3
          i32.shl
          local.get $10
          i32.add
          f64.load
          f64.mul
          f64.add
          local.set $6
          local.get $1
          i32.const 1
          i32.add
          local.set $1
          br $for-loop|2
         end
        end
        global.get $~lib/memory/__stack_pointer
        i32.const 4
        i32.sub
        global.set $~lib/memory/__stack_pointer
        global.get $~lib/memory/__stack_pointer
        i32.const 1948
        i32.lt_s
        br_if $folding-inner2
        global.get $~lib/memory/__stack_pointer
        i32.const 0
        i32.store
        local.get $2
        i32.const 20
        i32.sub
        i32.load offset=16
        i32.const 2
        i32.shr_u
        local.get $0
        i32.le_u
        br_if $folding-inner1
        global.get $~lib/memory/__stack_pointer
        local.get $0
        i32.const 2
        i32.shl
        local.get $2
        i32.add
        i32.load
        local.tee $1
        i32.store
        local.get $1
        i32.eqz
        if
         i32.const 1568
         i32.const 1104
         i32.const 122
         i32.const 40
         call $~lib/builtins/abort
         unreachable
        end
        global.get $~lib/memory/__stack_pointer
        i32.const 4
        i32.add
        global.set $~lib/memory/__stack_pointer
        global.get $~lib/memory/__stack_pointer
        local.get $1
        i32.store offset=20
        local.get $1
        i32.const 20
        i32.sub
        i32.load offset=16
        i32.const 3
        i32.shr_u
        local.get $0
        i32.le_u
        br_if $folding-inner1
        local.get $6
        f64.neg
        local.get $0
        i32.const 3
        i32.shl
        local.get $1
        i32.add
        f64.load
        f64.div
        local.set $6
        local.get $0
        local.set $1
        loop $for-loop|3
         local.get $1
         local.get $9
         i32.lt_s
         if
          global.get $~lib/memory/__stack_pointer
          local.tee $10
          local.get $7
          local.get $1
          i32.const 2
          i32.shl
          local.tee $11
          i32.add
          i32.load
          local.tee $12
          i32.store offset=20
          local.get $10
          local.get $7
          local.get $11
          i32.add
          i32.load
          local.tee $14
          i32.store offset=28
          local.get $14
          local.get $4
          i32.const 3
          i32.shl
          local.tee $14
          i32.add
          f64.load
          local.set $13
          local.get $10
          local.get $2
          local.get $11
          i32.add
          i32.load
          local.tee $10
          i32.store offset=28
          local.get $12
          local.get $14
          i32.add
          local.get $13
          local.get $6
          local.get $0
          i32.const 3
          i32.shl
          local.get $10
          i32.add
          f64.load
          f64.mul
          f64.add
          f64.store
          local.get $1
          i32.const 1
          i32.add
          local.set $1
          br $for-loop|3
         end
        end
        local.get $4
        i32.const 1
        i32.add
        local.set $4
        br $for-loop|113
       end
      end
      local.get $0
      i32.const 1
      i32.add
      local.set $0
      br $for-loop|010
     end
    end
    local.get $8
    i32.const 1
    i32.sub
    local.set $0
    loop $for-loop|4
     local.get $0
     i32.const 0
     i32.ge_s
     if
      i32.const 0
      local.set $4
      loop $for-loop|5
       local.get $4
       local.get $5
       i32.lt_s
       if
        global.get $~lib/memory/__stack_pointer
        local.tee $1
        local.get $0
        i32.const 2
        i32.shl
        local.get $7
        i32.add
        i32.load
        local.tee $9
        i32.store offset=20
        local.get $1
        local.get $0
        i32.const 2
        i32.shl
        local.get $7
        i32.add
        i32.load
        local.tee $1
        i32.store offset=28
        local.get $9
        local.get $4
        i32.const 3
        i32.shl
        local.tee $9
        i32.add
        local.get $1
        local.get $9
        i32.add
        f64.load
        local.get $0
        i32.const 3
        i32.shl
        local.get $3
        i32.add
        f64.load
        f64.div
        f64.store
        local.get $4
        i32.const 1
        i32.add
        local.set $4
        br $for-loop|5
       end
      end
      i32.const 0
      local.set $1
      loop $for-loop|6
       local.get $0
       local.get $1
       i32.gt_s
       if
        i32.const 0
        local.set $4
        loop $for-loop|7
         local.get $4
         local.get $5
         i32.lt_s
         if
          global.get $~lib/memory/__stack_pointer
          local.tee $9
          local.get $7
          local.get $1
          i32.const 2
          i32.shl
          local.tee $10
          i32.add
          i32.load
          local.tee $11
          i32.store offset=20
          local.get $9
          local.get $7
          local.get $10
          i32.add
          i32.load
          local.tee $12
          i32.store offset=28
          local.get $12
          local.get $4
          i32.const 3
          i32.shl
          local.tee $12
          i32.add
          f64.load
          local.set $6
          local.get $9
          local.get $0
          i32.const 2
          i32.shl
          local.get $7
          i32.add
          i32.load
          local.tee $14
          i32.store offset=28
          local.get $12
          local.get $14
          i32.add
          f64.load
          local.set $13
          local.get $9
          local.get $2
          local.get $10
          i32.add
          i32.load
          local.tee $9
          i32.store offset=28
          local.get $11
          local.get $12
          i32.add
          local.get $6
          local.get $13
          local.get $0
          i32.const 3
          i32.shl
          local.get $9
          i32.add
          f64.load
          f64.mul
          f64.sub
          f64.store
          local.get $4
          i32.const 1
          i32.add
          local.set $4
          br $for-loop|7
         end
        end
        local.get $1
        i32.const 1
        i32.add
        local.set $1
        br $for-loop|6
       end
      end
      local.get $0
      i32.const 1
      i32.sub
      local.set $0
      br $for-loop|4
     end
    end
    global.get $~lib/memory/__stack_pointer
    local.tee $2
    i32.const 12
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 1948
    i32.lt_s
    br_if $folding-inner2
    global.get $~lib/memory/__stack_pointer
    local.tee $0
    i64.const 0
    i64.store
    local.get $0
    i32.const 0
    i32.store offset=8
    local.get $0
    local.get $8
    i32.const 1
    i32.sub
    local.tee $3
    i32.const 1
    i32.add
    local.get $5
    i32.const 1
    i32.sub
    local.tee $4
    i32.const 1
    i32.add
    call $assembly/index/declareMatrix
    local.tee $5
    i32.store
    i32.const 0
    local.set $0
    loop $for-loop|023
     local.get $0
     local.get $3
     i32.le_s
     if
      i32.const 0
      local.set $1
      loop $for-loop|126
       local.get $1
       local.get $4
       i32.le_s
       if
        global.get $~lib/memory/__stack_pointer
        local.tee $8
        local.get $5
        local.get $0
        i32.const 2
        i32.shl
        local.tee $9
        i32.add
        i32.load
        local.tee $10
        i32.store offset=4
        local.get $8
        local.get $7
        local.get $9
        i32.add
        i32.load
        local.tee $8
        i32.store offset=8
        local.get $10
        local.get $1
        i32.const 3
        i32.shl
        local.tee $9
        i32.add
        local.get $8
        local.get $9
        i32.add
        f64.load
        f64.store
        local.get $1
        i32.const 1
        i32.add
        local.set $1
        br $for-loop|126
       end
      end
      local.get $0
      i32.const 1
      i32.add
      local.set $0
      br $for-loop|023
     end
    end
    global.get $~lib/memory/__stack_pointer
    i32.const 12
    i32.add
    global.set $~lib/memory/__stack_pointer
    local.get $2
    local.get $5
    i32.store offset=32
    i32.const 0
    local.set $3
    global.get $~lib/memory/__stack_pointer
    i32.const 8
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 1948
    i32.lt_s
    br_if $folding-inner2
    global.get $~lib/memory/__stack_pointer
    local.tee $0
    i64.const 0
    i64.store
    local.get $5
    i32.const 20
    i32.sub
    i32.load offset=16
    i32.const 2
    i32.shr_u
    local.set $2
    local.get $0
    local.get $5
    i32.load
    local.tee $1
    i32.store
    local.get $1
    i32.const 20
    i32.sub
    i32.load offset=16
    i32.const 3
    i32.shr_u
    local.set $7
    local.get $0
    i32.const 4
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 1948
    i32.lt_s
    br_if $folding-inner2
    global.get $~lib/memory/__stack_pointer
    local.tee $1
    i32.const 0
    i32.store
    local.get $1
    i32.const 12
    i32.const 4
    call $~lib/rt/itcms/__new
    local.tee $1
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.tee $4
    i32.const 8
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 1948
    i32.lt_s
    br_if $folding-inner2
    global.get $~lib/memory/__stack_pointer
    i64.const 0
    i64.store
    local.get $1
    i32.eqz
    if
     global.get $~lib/memory/__stack_pointer
     i32.const 12
     i32.const 2
     call $~lib/rt/itcms/__new
     local.tee $1
     i32.store
    end
    local.get $1
    i32.const 0
    i32.store
    local.get $1
    i32.const 0
    i32.store offset=4
    local.get $1
    i32.const 0
    i32.store offset=8
    local.get $2
    local.get $7
    i32.mul
    local.tee $8
    i32.const 134217727
    i32.gt_u
    if
     i32.const 1056
     i32.const 1696
     i32.const 19
     i32.const 57
     call $~lib/builtins/abort
     unreachable
    end
    global.get $~lib/memory/__stack_pointer
    local.get $8
    i32.const 3
    i32.shl
    local.tee $8
    i32.const 0
    call $~lib/rt/itcms/__new
    local.tee $9
    i32.store offset=4
    local.get $1
    local.get $9
    i32.store
    local.get $9
    if
     local.get $1
     local.get $9
     i32.const 0
     call $byn-split-outlined-A$~lib/rt/itcms/__link
    end
    local.get $1
    local.get $9
    i32.store offset=4
    local.get $1
    local.get $8
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    i32.const 8
    i32.add
    global.set $~lib/memory/__stack_pointer
    local.get $4
    local.get $1
    i32.store
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.add
    global.set $~lib/memory/__stack_pointer
    local.get $0
    local.get $1
    local.tee $0
    i32.store offset=4
    i32.const 0
    local.set $1
    loop $for-loop|01
     local.get $1
     local.get $2
     i32.lt_s
     if
      i32.const 0
      local.set $4
      loop $for-loop|12
       local.get $4
       local.get $7
       i32.lt_s
       if
        global.get $~lib/memory/__stack_pointer
        local.get $1
        i32.const 2
        i32.shl
        local.get $5
        i32.add
        i32.load
        local.tee $8
        i32.store
        local.get $0
        i32.load offset=4
        local.get $3
        i32.const 3
        i32.shl
        i32.add
        local.get $4
        i32.const 3
        i32.shl
        local.get $8
        i32.add
        f64.load
        f64.store
        local.get $3
        i32.const 1
        i32.add
        local.set $3
        local.get $4
        i32.const 1
        i32.add
        local.set $4
        br $for-loop|12
       end
      end
      local.get $1
      i32.const 1
      i32.add
      local.set $1
      br $for-loop|01
     end
    end
    global.get $~lib/memory/__stack_pointer
    i32.const 8
    i32.add
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 36
    i32.add
    global.set $~lib/memory/__stack_pointer
    local.get $0
    return
   end
   i32.const 1360
   i32.const 1104
   i32.const 118
   i32.const 41
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 18352
  i32.const 18400
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/staticarray/StaticArray<f64>#constructor (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1948
  i32.lt_s
  if
   i32.const 18352
   i32.const 18400
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.const 134217727
  i32.gt_u
  if
   i32.const 1056
   i32.const 1104
   i32.const 91
   i32.const 60
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.const 3
  i32.shl
  i32.const 6
  call $~lib/rt/itcms/__new
  local.tee $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $export:assembly/index/wasmLeastSquares (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1948
  i32.lt_s
  if
   i32.const 18352
   i32.const 18400
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  local.get $2
  call $assembly/index/wasmLeastSquares
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $byn-split-outlined-A$~lib/rt/itcms/__visit (param $0 i32)
  global.get $~lib/rt/itcms/white
  local.get $0
  i32.const 20
  i32.sub
  local.tee $0
  i32.load offset=4
  i32.const 3
  i32.and
  i32.eq
  if
   local.get $0
   call $~lib/rt/itcms/Object#makeGray
   global.get $~lib/rt/itcms/visitCount
   i32.const 1
   i32.add
   global.set $~lib/rt/itcms/visitCount
  end
 )
 (func $byn-split-outlined-A$~lib/rt/itcms/__link (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  global.get $~lib/rt/itcms/white
  local.get $1
  i32.const 20
  i32.sub
  local.tee $1
  i32.load offset=4
  i32.const 3
  i32.and
  i32.eq
  if
   local.get $0
   i32.const 20
   i32.sub
   local.tee $0
   i32.load offset=4
   i32.const 3
   i32.and
   local.tee $3
   global.get $~lib/rt/itcms/white
   i32.eqz
   i32.eq
   if
    local.get $0
    local.get $1
    local.get $2
    select
    call $~lib/rt/itcms/Object#makeGray
   else
    global.get $~lib/rt/itcms/state
    i32.const 1
    i32.eq
    local.get $3
    i32.const 3
    i32.eq
    i32.and
    if
     local.get $1
     call $~lib/rt/itcms/Object#makeGray
    end
   end
  end
 )
)
