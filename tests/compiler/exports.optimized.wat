(module
 (type $iii (func (param i32 i32) (result i32)))
 (type $i (func (result i32)))
 (type $ii (func (param i32) (result i32)))
 (type $iiv (func (param i32 i32)))
 (type $iv (func (param i32)))
 (type $v (func))
 (memory $0 0)
 (table $0 1 anyfunc)
 (elem (i32.const 0) $null)
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (global $exports/Animal.CAT i32 (i32.const 0))
 (global $exports/Animal.DOG i32 (i32.const 1))
 (global $exports/animals.Animal.CAT i32 (i32.const 0))
 (global $exports/animals.Animal.DOG i32 (i32.const 1))
 (global $exports/Car.TIRES i32 (i32.const 4))
 (global $exports/vehicles.Car.TIRES i32 (i32.const 4))
 (global $exports/outer.inner.a i32 (i32.const 42))
 (global $~argc (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (export "add" (func $exports/add))
 (export "_setargc" (func $~setargc))
 (export "subOpt" (func $exports/subOpt|trampoline))
 (export "math.sub" (func $exports/subOpt))
 (export "Animal.CAT" (global $exports/Animal.CAT))
 (export "Animal.DOG" (global $exports/Animal.DOG))
 (export "animals.Animal.CAT" (global $exports/animals.Animal.CAT))
 (export "animals.Animal.DOG" (global $exports/animals.Animal.DOG))
 (export "Car.TIRES" (global $exports/Car.TIRES))
 (export "Car.getNumTires" (func $exports/Car.getNumTires))
 (export "Car#constructor" (func $exports/Car#constructor|trampoline))
 (export "Car#get:doors" (func $exports/Car#get:numDoors))
 (export "Car#set:doors" (func $exports/Car#set:numDoors))
 (export "Car#get:numDoors" (func $exports/Car#get:numDoors))
 (export "Car#set:numDoors" (func $exports/Car#set:numDoors))
 (export "Car#openDoors" (func $exports/Car#openDoors))
 (export "vehicles.Car.TIRES" (global $exports/vehicles.Car.TIRES))
 (export "vehicles.Car.getNumTires" (func $exports/Car.getNumTires))
 (export "vehicles.Car#constructor" (func $exports/Car#constructor|trampoline))
 (export "vehicles.Car#get:doors" (func $exports/Car#get:numDoors))
 (export "vehicles.Car#set:doors" (func $exports/Car#set:numDoors))
 (export "vehicles.Car#get:numDoors" (func $exports/Car#get:numDoors))
 (export "vehicles.Car#set:numDoors" (func $exports/Car#set:numDoors))
 (export "vehicles.Car#openDoors" (func $exports/Car#openDoors))
 (export "outer.inner.a" (global $exports/outer.inner.a))
 (start $start)
 (func $exports/add (; 0 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  get_local $0
  get_local $1
  i32.add
 )
 (func $exports/subOpt (; 1 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  get_local $0
  get_local $1
  i32.sub
 )
 (func $exports/Car.getNumTires (; 2 ;) (type $i) (result i32)
  i32.const 4
 )
 (func $~lib/allocator/arena/__memory_allocate (; 3 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  get_local $0
  i32.const 1073741824
  i32.gt_u
  if
   unreachable
  end
  get_global $~lib/allocator/arena/offset
  tee_local $1
  get_local $0
  i32.const 1
  get_local $0
  i32.const 1
  i32.gt_u
  select
  i32.add
  i32.const 7
  i32.add
  i32.const -8
  i32.and
  tee_local $2
  current_memory
  tee_local $3
  i32.const 16
  i32.shl
  i32.gt_u
  if
   get_local $3
   get_local $2
   get_local $1
   i32.sub
   i32.const 65535
   i32.add
   i32.const -65536
   i32.and
   i32.const 16
   i32.shr_u
   tee_local $0
   get_local $3
   get_local $0
   i32.gt_s
   select
   grow_memory
   i32.const 0
   i32.lt_s
   if
    get_local $0
    grow_memory
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
  end
  get_local $2
  set_global $~lib/allocator/arena/offset
  get_local $1
 )
 (func $exports/Car#get:numDoors (; 4 ;) (type $ii) (param $0 i32) (result i32)
  get_local $0
  i32.load
 )
 (func $exports/Car#set:numDoors (; 5 ;) (type $iiv) (param $0 i32) (param $1 i32)
  get_local $0
  get_local $1
  i32.store
 )
 (func $exports/Car#openDoors (; 6 ;) (type $iv) (param $0 i32)
  nop
 )
 (func $start (; 7 ;) (type $v)
  i32.const 8
  set_global $~lib/allocator/arena/startOffset
  get_global $~lib/allocator/arena/startOffset
  set_global $~lib/allocator/arena/offset
 )
 (func $null (; 8 ;) (type $v)
  nop
 )
 (func $exports/subOpt|trampoline (; 9 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  block $1of1
   block $0of1
    block $outOfRange
     get_global $~argc
     i32.const 1
     i32.sub
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   i32.const 0
   set_local $1
  end
  get_local $0
  get_local $1
  i32.sub
 )
 (func $~setargc (; 10 ;) (type $iv) (param $0 i32)
  get_local $0
  set_global $~argc
 )
 (func $exports/Car#constructor|trampoline (; 11 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  block $1of1
   block $0of1
    block $outOfRange
     get_global $~argc
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   i32.const 2
   set_local $1
  end
  get_local $0
  i32.eqz
  if
   i32.const 4
   call $~lib/allocator/arena/__memory_allocate
   tee_local $0
   get_local $1
   i32.store
  end
  get_local $0
  get_local $1
  i32.store
  get_local $0
 )
)
