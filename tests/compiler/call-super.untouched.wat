(module
 (type $v (func))
 (type $ii (func (param i32) (result i32)))
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\0d\00\00\00c\00a\00l\00l\00-\00s\00u\00p\00e\00r\00.\00t\00s\00")
 (table $0 1 anyfunc)
 (elem (i32.const 0) $null)
 (global $~lib/internal/allocator/AL_BITS i32 (i32.const 3))
 (global $~lib/internal/allocator/AL_SIZE i32 (i32.const 8))
 (global $~lib/internal/allocator/AL_MASK i32 (i32.const 7))
 (global $~lib/internal/allocator/MAX_SIZE_32 i32 (i32.const 1073741824))
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (global $HEAP_BASE i32 (i32.const 40))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func $~lib/allocator/arena/__memory_allocate (; 1 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  get_local $0
  get_global $~lib/internal/allocator/MAX_SIZE_32
  i32.gt_u
  if
   unreachable
  end
  get_global $~lib/allocator/arena/offset
  set_local $1
  get_local $1
  get_local $0
  tee_local $2
  i32.const 1
  tee_local $3
  get_local $2
  get_local $3
  i32.gt_u
  select
  i32.add
  get_global $~lib/internal/allocator/AL_MASK
  i32.add
  get_global $~lib/internal/allocator/AL_MASK
  i32.const -1
  i32.xor
  i32.and
  set_local $4
  current_memory
  set_local $5
  get_local $4
  get_local $5
  i32.const 16
  i32.shl
  i32.gt_u
  if
   get_local $4
   get_local $1
   i32.sub
   i32.const 65535
   i32.add
   i32.const 65535
   i32.const -1
   i32.xor
   i32.and
   i32.const 16
   i32.shr_u
   set_local $2
   get_local $5
   tee_local $3
   get_local $2
   tee_local $6
   get_local $3
   get_local $6
   i32.gt_s
   select
   set_local $3
   get_local $3
   grow_memory
   i32.const 0
   i32.lt_s
   if
    get_local $2
    grow_memory
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
  end
  get_local $4
  set_global $~lib/allocator/arena/offset
  get_local $1
 )
 (func $~lib/memory/memory.allocate (; 2 ;) (type $ii) (param $0 i32) (result i32)
  get_local $0
  call $~lib/allocator/arena/__memory_allocate
  return
 )
 (func $call-super/A#constructor (; 3 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  get_local $0
  if (result i32)
   get_local $0
  else   
   block (result i32)
    i32.const 4
    call $~lib/memory/memory.allocate
    set_local $1
    get_local $1
    i32.const 1
    i32.store
    get_local $1
   end
   tee_local $0
  end
  tee_local $0
  i32.load
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 6
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  get_local $0
 )
 (func $call-super/B#constructor (; 4 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  block (result i32)
   i32.const 8
   call $~lib/memory/memory.allocate
   set_local $1
   get_local $1
   i32.const 1
   i32.store
   get_local $1
   i32.const 2
   i32.store offset=4
   get_local $1
  end
  call $call-super/A#constructor
  set_local $0
  get_local $0
  i32.load
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 15
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  i32.load offset=4
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 16
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  get_local $0
 )
 (func $call-super/test1 (; 5 ;) (type $v)
  (local $0 i32)
  i32.const 0
  call $call-super/B#constructor
  set_local $0
  get_local $0
  i32.load
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 22
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  i32.load offset=4
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 23
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $call-super/D#constructor (; 6 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  block (result i32)
   i32.const 8
   call $~lib/memory/memory.allocate
   set_local $1
   get_local $1
   i32.const 1
   i32.store
   get_local $1
   i32.const 2
   i32.store offset=4
   get_local $1
  end
  set_local $0
  get_local $0
  i32.load
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 36
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  i32.load offset=4
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 37
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  get_local $0
 )
 (func $call-super/test2 (; 7 ;) (type $v)
  (local $0 i32)
  i32.const 0
  call $call-super/D#constructor
  set_local $0
  get_local $0
  i32.load
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 43
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  i32.load offset=4
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 44
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $call-super/E#constructor (; 8 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  get_local $0
  if (result i32)
   get_local $0
  else   
   block (result i32)
    i32.const 4
    call $~lib/memory/memory.allocate
    set_local $1
    get_local $1
    i32.const 1
    i32.store
    get_local $1
   end
   tee_local $0
  end
  tee_local $0
  i32.load
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 52
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  get_local $0
 )
 (func $call-super/test3 (; 9 ;) (type $v)
  (local $0 i32)
  i32.const 0
  call $call-super/E#constructor
  set_local $0
  get_local $0
  i32.load
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 62
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $start (; 10 ;) (type $v)
  get_global $HEAP_BASE
  get_global $~lib/internal/allocator/AL_MASK
  i32.add
  get_global $~lib/internal/allocator/AL_MASK
  i32.const -1
  i32.xor
  i32.and
  set_global $~lib/allocator/arena/startOffset
  get_global $~lib/allocator/arena/startOffset
  set_global $~lib/allocator/arena/offset
  call $call-super/test1
  call $call-super/test2
  call $call-super/test3
 )
 (func $null (; 11 ;) (type $v)
 )
)
