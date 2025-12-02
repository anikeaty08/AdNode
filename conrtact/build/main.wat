(module
 (type $0 (func (param i32) (result i32)))
 (type $1 (func (param i32 i32)))
 (type $2 (func (param i32 i32) (result i32)))
 (type $3 (func (param i32)))
 (type $4 (func (param i32 i64)))
 (type $5 (func (param i32 i32 i32) (result i32)))
 (type $6 (func (result i64)))
 (type $7 (func (result i32)))
 (type $8 (func (param i32 i32 i32)))
 (type $9 (func))
 (type $10 (func (param i32 i32 i32 i32) (result i32)))
 (type $11 (func (param i32 i32 i32 i32)))
 (type $12 (func (param i32 i32 i64)))
 (type $13 (func (param i64 i32) (result i32)))
 (type $14 (func (param i32 i64) (result i32)))
 (type $15 (func (param i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 i64 i64) (result i32)))
 (type $16 (func (param i64)))
 (type $17 (func (param i64) (result i32)))
 (type $18 (func (param i32 i32 i32) (result i64)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (import "massa" "assembly_script_has_data" (func $~lib/@massalabs/massa-as-sdk/assembly/env/env/env.has (param i32) (result i32)))
 (import "massa" "assembly_script_set_data" (func $~lib/@massalabs/massa-as-sdk/assembly/env/env/env.set (param i32 i32)))
 (import "massa" "assembly_script_get_call_stack" (func $~lib/@massalabs/massa-as-sdk/assembly/env/env/env.callStack (result i32)))
 (import "massa" "assembly_script_get_time" (func $~lib/@massalabs/massa-as-sdk/assembly/env/env/env.time (result i64)))
 (import "massa" "assembly_script_get_data" (func $~lib/@massalabs/massa-as-sdk/assembly/env/env/env.get (param i32) (result i32)))
 (import "massa" "assembly_script_generate_event" (func $~lib/@massalabs/massa-as-sdk/assembly/env/env/env.generateEvent (param i32)))
 (import "massa" "assembly_script_get_call_coins" (func $~lib/@massalabs/massa-as-sdk/assembly/env/env/env.callCoins (result i64)))
 (global $~lib/rt/itcms/white (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/iter (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/toSpace (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/state (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/total (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/threshold (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/visitCount (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/pinSpace (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/fromSpace (mut i32) (i32.const 0))
 (global $~lib/rt/tlsf/ROOT (mut i32) (i32.const 0))
 (global $~argumentsLength (mut i32) (i32.const 0))
 (global $~lib/@massalabs/as-types/assembly/argument/NoArg (mut i32) (i32.const 0))
 (global $assembly/contracts/main/campaigns (mut i32) (i32.const 0))
 (global $assembly/contracts/main/hosters (mut i32) (i32.const 0))
 (global $assembly/contracts/main/developers (mut i32) (i32.const 0))
 (global $~lib/rt/__rtti_base i32 (i32.const 9360))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 42260))
 (memory $0 1)
 (data $0 (i32.const 1036) "<")
 (data $0.1 (i32.const 1048) "\02\00\00\00 \00\00\00~\00l\00i\00b\00/\00r\00t\00/\00i\00t\00c\00m\00s\00.\00t\00s")
 (data $2 (i32.const 1132) "<")
 (data $2.1 (i32.const 1144) "\02\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e")
 (data $3 (i32.const 1196) ",")
 (data $3.1 (i32.const 1208) "\02\00\00\00\14\00\00\00~\00l\00i\00b\00/\00r\00t\00.\00t\00s")
 (data $4 (i32.const 1244) "<")
 (data $4.1 (i32.const 1256) "\02\00\00\00(\00\00\00A\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e")
 (data $7 (i32.const 1372) "<")
 (data $7.1 (i32.const 1384) "\02\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s")
 (data $8 (i32.const 1436) ",")
 (data $8.1 (i32.const 1448) "\02\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h")
 (data $9 (i32.const 1484) "<")
 (data $9.1 (i32.const 1496) "\02\00\00\00&\00\00\00~\00l\00i\00b\00/\00s\00t\00a\00t\00i\00c\00a\00r\00r\00a\00y\00.\00t\00s")
 (data $10 (i32.const 1548) "\1c")
 (data $10.1 (i32.const 1560) "\05")
 (data $11 (i32.const 1580) "l")
 (data $11.1 (i32.const 1592) "\02\00\00\00R\00\00\00A\00U\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\002\00m\001\00s\009\00K")
 (data $12 (i32.const 1692) "\1c")
 (data $12.1 (i32.const 1704) "\02\00\00\00\04\00\00\00:\00:")
 (data $13 (i32.const 1724) ",")
 (data $13.1 (i32.const 1736) "\02\00\00\00\1a\00\00\00p\00l\00a\00t\00f\00o\00r\00m\00:\00n\00a\00m\00e")
 (data $14 (i32.const 1772) ",")
 (data $14.1 (i32.const 1784) "\02\00\00\00\1c\00\00\00p\00l\00a\00t\00f\00o\00r\00m\00:\00o\00w\00n\00e\00r")
 (data $15 (i32.const 1820) "<")
 (data $15.1 (i32.const 1832) "\02\00\00\00 \00\00\00c\00o\00u\00n\00t\00e\00r\00:\00c\00a\00m\00p\00a\00i\00g\00n")
 (data $16 (i32.const 1884) ",")
 (data $16.1 (i32.const 1896) "\02\00\00\00\1c\00\00\00c\00o\00u\00n\00t\00e\00r\00:\00h\00o\00s\00t\00e\00r")
 (data $17 (i32.const 1932) "<")
 (data $17.1 (i32.const 1944) "\02\00\00\00\"\00\00\00c\00o\00u\00n\00t\00e\00r\00:\00d\00e\00v\00e\00l\00o\00p\00e\00r")
 (data $18 (i32.const 1996) ",")
 (data $18.1 (i32.const 2008) "\02\00\00\00\1c\00\00\00c\00o\00u\00n\00t\00e\00r\00:\00a\00c\00t\00i\00v\00e")
 (data $19 (i32.const 2044) ",")
 (data $19.1 (i32.const 2056) "\02\00\00\00\18\00\00\00s\00t\00a\00t\00s\00:\00l\00o\00c\00k\00e\00d")
 (data $20 (i32.const 2092) ",")
 (data $20.1 (i32.const 2104) "\02\00\00\00\16\00\00\00s\00t\00a\00t\00s\00:\00s\00p\00e\00n\00t")
 (data $21 (i32.const 2140) "<")
 (data $21.1 (i32.const 2152) "\02\00\00\00\"\00\00\00s\00t\00a\00t\00s\00:\00i\00m\00p\00r\00e\00s\00s\00i\00o\00n\00s")
 (data $22 (i32.const 2204) ",")
 (data $22.1 (i32.const 2216) "\02\00\00\00\18\00\00\00s\00t\00a\00t\00s\00:\00c\00l\00i\00c\00k\00s")
 (data $23 (i32.const 2252) ",")
 (data $23.1 (i32.const 2264) "\02\00\00\00\10\00\00\00c\00a\00m\00p\00a\00i\00g\00n")
 (data $24 (i32.const 2300) "\1c")
 (data $24.1 (i32.const 2312) "\02\00\00\00\0c\00\00\00h\00o\00s\00t\00e\00r")
 (data $25 (i32.const 2332) ",")
 (data $25.1 (i32.const 2344) "\02\00\00\00\12\00\00\00d\00e\00v\00e\00l\00o\00p\00e\00r")
 (data $26 (i32.const 2380) "\1c")
 (data $26.1 (i32.const 2392) "\02")
 (data $27 (i32.const 2412) "\1c")
 (data $27.1 (i32.const 2424) "\05")
 (data $28 (i32.const 2444) "<")
 (data $28.1 (i32.const 2456) "\02\00\00\00$\00\00\00U\00n\00p\00a\00i\00r\00e\00d\00 \00s\00u\00r\00r\00o\00g\00a\00t\00e")
 (data $29 (i32.const 2508) ",")
 (data $29.1 (i32.const 2520) "\02\00\00\00\1c\00\00\00~\00l\00i\00b\00/\00s\00t\00r\00i\00n\00g\00.\00t\00s")
 (data $30 (i32.const 2556) ",")
 (data $30.1 (i32.const 2568) "\02\00\00\00\16\00\00\00M\00a\00s\00s\00a\00 \00D\00e\00A\00d\00s")
 (data $31 (i32.const 2604) "\8c")
 (data $31.1 (i32.const 2616) "\02\00\00\00n\00\00\00c\00a\00n\00\'\00t\00 \00d\00e\00s\00e\00r\00i\00a\00l\00i\00z\00e\00 \00u\003\002\00 \00f\00r\00o\00m\00 \00g\00i\00v\00e\00n\00 \00a\00r\00g\00u\00m\00e\00n\00t\00:\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e")
 (data $32 (i32.const 2748) "|")
 (data $32.1 (i32.const 2760) "\02\00\00\00^\00\00\00U\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00\'\00n\00u\00l\00l\00\'\00 \00(\00n\00o\00t\00 \00a\00s\00s\00i\00g\00n\00e\00d\00 \00o\00r\00 \00f\00a\00i\00l\00e\00d\00 \00c\00a\00s\00t\00)")
 (data $33 (i32.const 2876) "l")
 (data $33.1 (i32.const 2888) "\02\00\00\00V\00\00\00~\00l\00i\00b\00/\00@\00m\00a\00s\00s\00a\00l\00a\00b\00s\00/\00a\00s\00-\00t\00y\00p\00e\00s\00/\00a\00s\00s\00e\00m\00b\00l\00y\00/\00r\00e\00s\00u\00l\00t\00.\00t\00s")
 (data $34 (i32.const 2988) "\8c")
 (data $34.1 (i32.const 3000) "\02\00\00\00t\00\00\00c\00a\00n\00\'\00t\00 \00d\00e\00s\00e\00r\00i\00a\00l\00i\00z\00e\00 \00s\00t\00r\00i\00n\00g\00 \00f\00r\00o\00m\00 \00g\00i\00v\00e\00n\00 \00a\00r\00g\00u\00m\00e\00n\00t\00:\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e")
 (data $35 (i32.const 3132) "\1c")
 (data $35.1 (i32.const 3144) "\02\00\00\00\02\00\00\00,")
 (data $36 (i32.const 3164) ",")
 (data $36.1 (i32.const 3176) "\02\00\00\00\1a\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s")
 (data $37 (i32.const 3212) "\1c")
 (data $37.1 (i32.const 3224) "\15\00\00\00\08\00\00\00\01")
 (data $38 (i32.const 3244) "|")
 (data $38.1 (i32.const 3256) "\02\00\00\00^\00\00\00E\00l\00e\00m\00e\00n\00t\00 \00t\00y\00p\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00n\00u\00l\00l\00a\00b\00l\00e\00 \00i\00f\00 \00a\00r\00r\00a\00y\00 \00i\00s\00 \00h\00o\00l\00e\00y")
 (data $39 (i32.const 3372) "\1c")
 (data $39.1 (i32.const 3384) "\02\00\00\00\08\00\00\00n\00a\00m\00e")
 (data $40 (i32.const 3404) "\1c")
 (data $40.1 (i32.const 3416) "\02\00\00\00\04\00\00\00:\00 ")
 (data $41 (i32.const 3436) "\1c\00\00\00\03\00\00\00\00\00\00\00\16\00\00\00\0c\00\00\00\00\00\00\00`\r")
 (data $42 (i32.const 3468) "\9c")
 (data $42.1 (i32.const 3480) "\02\00\00\00\84\00\00\00~\00l\00i\00b\00/\00@\00m\00a\00s\00s\00a\00l\00a\00b\00s\00/\00m\00a\00s\00s\00a\00-\00a\00s\00-\00s\00d\00k\00/\00a\00s\00s\00e\00m\00b\00l\00y\00/\00c\00o\00l\00l\00e\00c\00t\00i\00o\00n\00s\00/\00p\00e\00r\00s\00i\00s\00t\00e\00n\00t\00M\00a\00p\00.\00t\00s")
 (data $43 (i32.const 3628) ",")
 (data $43.1 (i32.const 3640) "\02\00\00\00\1a\00\00\00k\00e\00y\00 \00n\00o\00t\00 \00f\00o\00u\00n\00d")
 (data $44 (i32.const 3676) ",")
 (data $44.1 (i32.const 3688) "\02\00\00\00\0e\00\00\00a\00d\00d\00r\00e\00s\00s")
 (data $45 (i32.const 3724) "\1c\00\00\00\03\00\00\00\00\00\00\00\16\00\00\00\0c\00\00\00\00\00\00\00`\r")
 (data $46 (i32.const 3756) "\1c\00\00\00\03\00\00\00\00\00\00\00\16\00\00\00\0c\00\00\00\00\00\00\00`\r")
 (data $47 (i32.const 3788) ",")
 (data $47.1 (i32.const 3800) "\02\00\00\00\10\00\00\00b\00u\00s\00i\00n\00e\00s\00s")
 (data $48 (i32.const 3836) "\1c\00\00\00\03\00\00\00\00\00\00\00\16\00\00\00\0c\00\00\00\00\00\00\00`\r")
 (data $49 (i32.const 3868) ",")
 (data $49.1 (i32.const 3880) "\02\00\00\00\14\00\00\00c\00a\00t\00e\00g\00o\00r\00i\00e\00s")
 (data $50 (i32.const 3916) "\1c\00\00\00\03\00\00\00\00\00\00\00\16\00\00\00\0c\00\00\00\00\00\00\00`\r")
 (data $51 (i32.const 3948) "\8c")
 (data $51.1 (i32.const 3960) "\02\00\00\00n\00\00\00c\00a\00n\00\'\00t\00 \00d\00e\00s\00e\00r\00i\00a\00l\00i\00z\00e\00 \00u\006\004\00 \00f\00r\00o\00m\00 \00g\00i\00v\00e\00n\00 \00a\00r\00g\00u\00m\00e\00n\00t\00:\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e")
 (data $52 (i32.const 4092) "\1c")
 (data $52.1 (i32.const 4104) "\02\00\00\00\0c\00\00\00b\00u\00d\00g\00e\00t")
 (data $53 (i32.const 4124) "\1c\00\00\00\03\00\00\00\00\00\00\00\16\00\00\00\0c\00\00\00\00\00\00\00`\r")
 (data $54 (i32.const 4156) "\1c")
 (data $54.1 (i32.const 4168) "\02\00\00\00\n\00\00\00s\00p\00e\00n\00t")
 (data $55 (i32.const 4188) "\1c\00\00\00\03\00\00\00\00\00\00\00\16\00\00\00\0c\00\00\00\00\00\00\00`\r")
 (data $56 (i32.const 4220) "\1c")
 (data $56.1 (i32.const 4232) "\02\00\00\00\0c\00\00\00a\00c\00t\00i\00v\00e")
 (data $57 (i32.const 4252) "\1c\00\00\00\03\00\00\00\00\00\00\00\16\00\00\00\0c\00\00\00\00\00\00\00`\r")
 (data $58 (i32.const 4284) ",")
 (data $58.1 (i32.const 4296) "\02\00\00\00\0e\00\00\00c\00r\00e\00a\00t\00e\00d")
 (data $59 (i32.const 4332) "\1c\00\00\00\03\00\00\00\00\00\00\00\16\00\00\00\0c\00\00\00\00\00\00\00`\r")
 (data $60 (i32.const 4364) ",")
 (data $60.1 (i32.const 4376) "\02\00\00\00\0e\00\00\00u\00p\00d\00a\00t\00e\00d")
 (data $61 (i32.const 4412) "\1c\00\00\00\03\00\00\00\00\00\00\00\16\00\00\00\0c\00\00\00\00\00\00\00`\r")
 (data $62 (i32.const 4444) ",")
 (data $62.1 (i32.const 4456) "\02\00\00\00\1c\00\00\00H\00o\00s\00t\00e\00r\00 \00m\00i\00s\00s\00i\00n\00g")
 (data $63 (i32.const 4492) "\1c\00\00\00\03\00\00\00\00\00\00\00\16\00\00\00\0c\00\00\00\00\00\00\00`\r")
 (data $64 (i32.const 4524) "<")
 (data $64.1 (i32.const 4536) "\02\00\00\00\"\00\00\00m\00a\00p\00 \00s\00i\00z\00e\00 \00o\00v\00e\00r\00f\00l\00o\00w")
 (data $65 (i32.const 4588) ",")
 (data $65.1 (i32.const 4600) "\02\00\00\00\0e\00\00\00c\00o\00u\00n\00t\00e\00r")
 (data $66 (i32.const 4636) "\1c\00\00\00\03\00\00\00\00\00\00\00\16\00\00\00\0c\00\00\00\00\00\00\00`\r")
 (data $67 (i32.const 4668) "<")
 (data $67.1 (i32.const 4680) "\02\00\00\00$\00\00\00H\00O\00S\00T\00E\00R\00_\00R\00E\00G\00I\00S\00T\00E\00R\00E\00D\00:")
 (data $68 (i32.const 4732) "\1c\00\00\00\03\00\00\00\00\00\00\00\16\00\00\00\0c\00\00\00\00\00\00\00`\r")
 (data $69 (i32.const 4764) "\1c\00\00\00\03\00\00\00\00\00\00\00\16\00\00\00\0c\00\00\00\00\00\00\00`\r")
 (data $70 (i32.const 4796) "\1c\00\00\00\03\00\00\00\00\00\00\00\16\00\00\00\0c\00\00\00\00\00\00\00`\r")
 (data $71 (i32.const 4828) ",")
 (data $71.1 (i32.const 4840) "\02\00\00\00\0e\00\00\00w\00e\00b\00s\00i\00t\00e")
 (data $72 (i32.const 4876) "\1c\00\00\00\03\00\00\00\00\00\00\00\16\00\00\00\0c\00\00\00\00\00\00\00`\r")
 (data $73 (i32.const 4908) "\1c\00\00\00\03\00\00\00\00\00\00\00\16\00\00\00\0c\00\00\00\00\00\00\00`\r")
 (data $74 (i32.const 4940) "\8c")
 (data $74.1 (i32.const 4952) "\02\00\00\00n\00\00\00c\00a\00n\00\'\00t\00 \00d\00e\00s\00e\00r\00i\00a\00l\00i\00z\00e\00 \00i\003\002\00 \00f\00r\00o\00m\00 \00g\00i\00v\00e\00n\00 \00a\00r\00g\00u\00m\00e\00n\00t\00:\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e")
 (data $75 (i32.const 5084) ",")
 (data $75.1 (i32.const 5096) "\02\00\00\00\14\00\00\00r\00e\00p\00u\00t\00a\00t\00i\00o\00n")
 (data $76 (i32.const 5132) "\1c\00\00\00\03\00\00\00\00\00\00\00\16\00\00\00\0c\00\00\00\00\00\00\00`\r")
 (data $77 (i32.const 5164) ",")
 (data $77.1 (i32.const 5176) "\02\00\00\00\16\00\00\00i\00m\00p\00r\00e\00s\00s\00i\00o\00n\00s")
 (data $78 (i32.const 5212) "\1c\00\00\00\03\00\00\00\00\00\00\00\16\00\00\00\0c\00\00\00\00\00\00\00`\r")
 (data $79 (i32.const 5244) "\1c")
 (data $79.1 (i32.const 5256) "\02\00\00\00\0c\00\00\00c\00l\00i\00c\00k\00s")
 (data $80 (i32.const 5276) "\1c\00\00\00\03\00\00\00\00\00\00\00\16\00\00\00\0c\00\00\00\00\00\00\00`\r")
 (data $81 (i32.const 5308) ",")
 (data $81.1 (i32.const 5320) "\02\00\00\00\0e\00\00\00p\00e\00n\00d\00i\00n\00g")
 (data $82 (i32.const 5356) "\1c\00\00\00\03\00\00\00\00\00\00\00\16\00\00\00\0c\00\00\00\00\00\00\00`\r")
 (data $83 (i32.const 5388) ",")
 (data $83.1 (i32.const 5400) "\02\00\00\00\10\00\00\00e\00a\00r\00n\00i\00n\00g\00s")
 (data $84 (i32.const 5436) "\1c\00\00\00\03\00\00\00\00\00\00\00\16\00\00\00\0c\00\00\00\00\00\00\00`\r")
 (data $85 (i32.const 5468) ",")
 (data $85.1 (i32.const 5480) "\02\00\00\00\16\00\00\00l\00a\00s\00t\00 \00p\00a\00y\00o\00u\00t")
 (data $86 (i32.const 5516) "\1c\00\00\00\03\00\00\00\00\00\00\00\16\00\00\00\0c\00\00\00\00\00\00\00`\r")
 (data $87 (i32.const 5548) ",")
 (data $87.1 (i32.const 5560) "\02\00\00\00\16\00\00\00f\00r\00a\00u\00d\00 \00c\00o\00u\00n\00t")
 (data $88 (i32.const 5596) "\1c\00\00\00\03\00\00\00\00\00\00\00\16\00\00\00\0c\00\00\00\00\00\00\00`\r")
 (data $89 (i32.const 5628) "\1c\00\00\00\03\00\00\00\00\00\00\00\16\00\00\00\0c\00\00\00\00\00\00\00`\r")
 (data $90 (i32.const 5660) "\1c\00\00\00\03\00\00\00\00\00\00\00\16\00\00\00\0c\00\00\00\00\00\00\00`\r")
 (data $91 (i32.const 5692) "<")
 (data $91.1 (i32.const 5704) "\02\00\00\00\"\00\00\00D\00e\00v\00e\00l\00o\00p\00e\00r\00 \00m\00i\00s\00s\00i\00n\00g")
 (data $92 (i32.const 5756) "\1c\00\00\00\03\00\00\00\00\00\00\00\16\00\00\00\0c\00\00\00\00\00\00\00`\r")
 (data $93 (i32.const 5788) "<")
 (data $93.1 (i32.const 5800) "\02\00\00\00*\00\00\00D\00E\00V\00E\00L\00O\00P\00E\00R\00_\00R\00E\00G\00I\00S\00T\00E\00R\00E\00D\00:")
 (data $94 (i32.const 5852) "L")
 (data $94.1 (i32.const 5864) "\02\00\00\000\00\00\00R\00e\00g\00i\00s\00t\00e\00r\00 \00a\00s\00 \00h\00o\00s\00t\00e\00r\00 \00f\00i\00r\00s\00t")
 (data $95 (i32.const 5932) "L")
 (data $95.1 (i32.const 5944) "\02\00\00\004\00\00\00a\00s\00s\00e\00m\00b\00l\00y\00/\00c\00o\00n\00t\00r\00a\00c\00t\00s\00/\00m\00a\00i\00n\00.\00t\00s")
 (data $96 (i32.const 6012) "\1c")
 (data $96.1 (i32.const 6024) "\02\00\00\00\n\00\00\00t\00i\00t\00l\00e")
 (data $97 (i32.const 6044) "\1c\00\00\00\03\00\00\00\00\00\00\00\16\00\00\00\0c\00\00\00\00\00\00\00`\r")
 (data $98 (i32.const 6076) ",")
 (data $98.1 (i32.const 6088) "\02\00\00\00\16\00\00\00d\00e\00s\00c\00r\00i\00p\00t\00i\00o\00n")
 (data $99 (i32.const 6124) "\1c\00\00\00\03\00\00\00\00\00\00\00\16\00\00\00\0c\00\00\00\00\00\00\00`\r")
 (data $100 (i32.const 6156) ",")
 (data $100.1 (i32.const 6168) "\02\00\00\00\10\00\00\00c\00a\00t\00e\00g\00o\00r\00y")
 (data $101 (i32.const 6204) "\1c\00\00\00\03\00\00\00\00\00\00\00\16\00\00\00\0c\00\00\00\00\00\00\00`\r")
 (data $102 (i32.const 6236) "\1c")
 (data $102.1 (i32.const 6248) "\02\00\00\00\0c\00\00\00t\00a\00r\00g\00e\00t")
 (data $103 (i32.const 6268) "\1c\00\00\00\03\00\00\00\00\00\00\00\16\00\00\00\0c\00\00\00\00\00\00\00`\r")
 (data $104 (i32.const 6300) ",")
 (data $104.1 (i32.const 6312) "\02\00\00\00\10\00\00\00c\00r\00e\00a\00t\00i\00v\00e")
 (data $105 (i32.const 6348) "\1c\00\00\00\03\00\00\00\00\00\00\00\16\00\00\00\0c\00\00\00\00\00\00\00`\r")
 (data $106 (i32.const 6380) ",")
 (data $106.1 (i32.const 6392) "\02\00\00\00\0e\00\00\00p\00r\00i\00c\00i\00n\00g")
 (data $107 (i32.const 6428) "\1c\00\00\00\03\00\00\00\00\00\00\00\16\00\00\00\0c\00\00\00\00\00\00\00`\r")
 (data $108 (i32.const 6460) "\1c")
 (data $108.1 (i32.const 6472) "\02\00\00\00\08\00\00\00r\00a\00t\00e")
 (data $109 (i32.const 6492) "\1c\00\00\00\03\00\00\00\00\00\00\00\16\00\00\00\0c\00\00\00\00\00\00\00`\r")
 (data $110 (i32.const 6524) "\1c\00\00\00\03\00\00\00\00\00\00\00\16\00\00\00\0c\00\00\00\00\00\00\00`\r")
 (data $111 (i32.const 6556) ",")
 (data $111.1 (i32.const 6568) "\02\00\00\00\18\00\00\00R\00a\00t\00e\00 \00t\00o\00o\00 \00l\00o\00w")
 (data $112 (i32.const 6604) "\\")
 (data $112.1 (i32.const 6616) "\02\00\00\00F\00\00\00B\00u\00d\00g\00e\00t\00 \00m\00u\00s\00t\00 \00c\00o\00v\00e\00r\00 \00a\00t\00 \00l\00e\00a\00s\00t\00 \00o\00n\00e\00 \00u\00n\00i\00t")
 (data $113 (i32.const 6700) "<")
 (data $113.1 (i32.const 6712) "\02\00\00\00*\00\00\00B\00u\00d\00g\00e\00t\00 \00m\00u\00s\00t\00 \00b\00e\00 \00f\00u\00n\00d\00e\00d")
 (data $114 (i32.const 6764) "|")
 (data $114.1 (i32.const 6776) "\02\00\00\00d\00\00\00t\00o\00S\00t\00r\00i\00n\00g\00(\00)\00 \00r\00a\00d\00i\00x\00 \00a\00r\00g\00u\00m\00e\00n\00t\00 \00m\00u\00s\00t\00 \00b\00e\00 \00b\00e\00t\00w\00e\00e\00n\00 \002\00 \00a\00n\00d\00 \003\006")
 (data $115 (i32.const 6892) "<")
 (data $115.1 (i32.const 6904) "\02\00\00\00&\00\00\00~\00l\00i\00b\00/\00u\00t\00i\00l\00/\00n\00u\00m\00b\00e\00r\00.\00t\00s")
 (data $116 (i32.const 6956) "\1c")
 (data $116.1 (i32.const 6968) "\02\00\00\00\02\00\00\000")
 (data $117 (i32.const 6988) "\\")
 (data $117.1 (i32.const 7000) "\02\00\00\00H\00\00\000\001\002\003\004\005\006\007\008\009\00a\00b\00c\00d\00e\00f\00g\00h\00i\00j\00k\00l\00m\00n\00o\00p\00q\00r\00s\00t\00u\00v\00w\00x\00y\00z")
 (data $118 (i32.const 7084) "\1c")
 (data $118.1 (i32.const 7096) "\02\00\00\00\0c\00\00\00a\00m\00o\00u\00n\00t")
 (data $119 (i32.const 7116) "\1c\00\00\00\03\00\00\00\00\00\00\00\16\00\00\00\0c\00\00\00\00\00\00\00`\r")
 (data $120 (i32.const 7148) "<")
 (data $120.1 (i32.const 7160) "\02\00\00\00\"\00\00\00C\00A\00M\00P\00A\00I\00G\00N\00_\00C\00R\00E\00A\00T\00E\00D\00:")
 (data $121 (i32.const 7212) "\1c")
 (data $121.1 (i32.const 7224) "\02\00\00\00\02\00\00\00:")
 (data $122 (i32.const 7244) ",\00\00\00\03\00\00\00\00\00\00\00\16\00\00\00\10\00\00\00\00\1c\00\00\00\00\00\00@\1c")
 (data $123 (i32.const 7292) "\1c")
 (data $123.1 (i32.const 7304) "\02\00\00\00\04\00\00\00i\00d")
 (data $124 (i32.const 7324) "\1c\00\00\00\03\00\00\00\00\00\00\00\16\00\00\00\0c\00\00\00\00\00\00\00`\r")
 (data $125 (i32.const 7356) "\1c")
 (data $125.1 (i32.const 7368) "\02\00\00\00\0c\00\00\00s\00t\00a\00t\00u\00s")
 (data $126 (i32.const 7388) "\1c\00\00\00\03\00\00\00\00\00\00\00\16\00\00\00\0c\00\00\00\00\00\00\00`\r")
 (data $127 (i32.const 7420) "\1c")
 (data $127.1 (i32.const 7432) "\02\00\00\00\0c\00\00\00p\00a\00u\00s\00e\00d")
 (data $128 (i32.const 7452) ",")
 (data $128.1 (i32.const 7464) "\02\00\00\00\0e\00\00\00s\00t\00o\00p\00p\00e\00d")
 (data $129 (i32.const 7500) ",")
 (data $129.1 (i32.const 7512) "\02\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00s\00t\00a\00t\00u\00s")
 (data $130 (i32.const 7548) "\1c")
 (data $130.1 (i32.const 7560) "\02\00\00\00\06\00\00\00c\00p\00c")
 (data $131 (i32.const 7580) ",")
 (data $131.1 (i32.const 7592) "\02\00\00\00\16\00\00\00c\00a\00m\00p\00a\00i\00g\00n\00 \00i\00d")
 (data $132 (i32.const 7628) "\1c\00\00\00\03\00\00\00\00\00\00\00\16\00\00\00\0c\00\00\00\00\00\00\00`\r")
 (data $133 (i32.const 7660) ",")
 (data $133.1 (i32.const 7672) "\02\00\00\00\1c\00\00\00c\00a\00m\00p\00a\00i\00g\00n\00 \00o\00w\00n\00e\00r")
 (data $134 (i32.const 7708) "\1c\00\00\00\03\00\00\00\00\00\00\00\16\00\00\00\0c\00\00\00\00\00\00\00`\r")
 (data $135 (i32.const 7740) "\1c\00\00\00\03\00\00\00\00\00\00\00\16\00\00\00\0c\00\00\00\00\00\00\00`\r")
 (data $136 (i32.const 7772) "\1c\00\00\00\03\00\00\00\00\00\00\00\16\00\00\00\0c\00\00\00\00\00\00\00`\r")
 (data $137 (i32.const 7804) "\1c\00\00\00\03\00\00\00\00\00\00\00\16\00\00\00\0c\00\00\00\00\00\00\00`\r")
 (data $138 (i32.const 7836) "\1c\00\00\00\03\00\00\00\00\00\00\00\16\00\00\00\0c\00\00\00\00\00\00\00`\r")
 (data $139 (i32.const 7868) "\1c\00\00\00\03\00\00\00\00\00\00\00\16\00\00\00\0c\00\00\00\00\00\00\00`\r")
 (data $140 (i32.const 7900) "\1c\00\00\00\03\00\00\00\00\00\00\00\16\00\00\00\0c\00\00\00\00\00\00\00`\r")
 (data $141 (i32.const 7932) "\1c\00\00\00\03\00\00\00\00\00\00\00\16\00\00\00\0c\00\00\00\00\00\00\00`\r")
 (data $142 (i32.const 7964) "\1c\00\00\00\03\00\00\00\00\00\00\00\16\00\00\00\0c\00\00\00\00\00\00\00`\r")
 (data $143 (i32.const 7996) "\1c\00\00\00\03\00\00\00\00\00\00\00\16\00\00\00\0c\00\00\00\00\00\00\00`\r")
 (data $144 (i32.const 8028) "\1c\00\00\00\03\00\00\00\00\00\00\00\16\00\00\00\0c\00\00\00\00\00\00\00`\r")
 (data $145 (i32.const 8060) "\1c\00\00\00\03\00\00\00\00\00\00\00\16\00\00\00\0c\00\00\00\00\00\00\00`\r")
 (data $146 (i32.const 8092) "\1c\00\00\00\03\00\00\00\00\00\00\00\16\00\00\00\0c\00\00\00\00\00\00\00`\r")
 (data $147 (i32.const 8124) ",")
 (data $147.1 (i32.const 8136) "\02\00\00\00\12\00\00\00c\00r\00e\00a\00t\00e\00d\00A\00t")
 (data $148 (i32.const 8172) "\1c\00\00\00\03\00\00\00\00\00\00\00\16\00\00\00\0c\00\00\00\00\00\00\00`\r")
 (data $149 (i32.const 8204) ",")
 (data $149.1 (i32.const 8216) "\02\00\00\00\12\00\00\00u\00p\00d\00a\00t\00e\00d\00A\00t")
 (data $150 (i32.const 8252) "\1c\00\00\00\03\00\00\00\00\00\00\00\16\00\00\00\0c\00\00\00\00\00\00\00`\r")
 (data $151 (i32.const 8284) "<")
 (data $151.1 (i32.const 8296) "\02\00\00\00$\00\00\00C\00a\00m\00p\00a\00i\00g\00n\00 \00n\00o\00t\00 \00f\00o\00u\00n\00d")
 (data $152 (i32.const 8348) "\1c\00\00\00\03\00\00\00\00\00\00\00\16\00\00\00\0c\00\00\00\00\00\00\00`\r")
 (data $153 (i32.const 8380) ",")
 (data $153.1 (i32.const 8392) "\02\00\00\00\14\00\00\00O\00n\00l\00y\00 \00o\00w\00n\00e\00r")
 (data $154 (i32.const 8428) "<")
 (data $154.1 (i32.const 8440) "\02\00\00\00 \00\00\00C\00A\00M\00P\00A\00I\00G\00N\00_\00S\00T\00A\00T\00U\00S\00:")
 (data $155 (i32.const 8492) ",\00\00\00\03\00\00\00\00\00\00\00\16\00\00\00\10\00\00\00\00!\00\00\00\00\00\00@\1c")
 (data $156 (i32.const 8540) "L")
 (data $156.1 (i32.const 8552) "\02\00\00\006\00\00\00R\00e\00g\00i\00s\00t\00e\00r\00 \00a\00s\00 \00d\00e\00v\00e\00l\00o\00p\00e\00r\00 \00f\00i\00r\00s\00t")
 (data $157 (i32.const 8620) "<")
 (data $157.1 (i32.const 8632) "\02\00\00\00 \00\00\00N\00o\00t\00h\00i\00n\00g\00 \00t\00o\00 \00c\00l\00a\00i\00m")
 (data $158 (i32.const 8684) "\1c\00\00\00\03\00\00\00\00\00\00\00\16\00\00\00\0c\00\00\00\00\00\00\00`\r")
 (data $159 (i32.const 8716) ",")
 (data $159.1 (i32.const 8728) "\02\00\00\00\1c\00\00\00P\00A\00Y\00O\00U\00T\00_\00L\00O\00G\00G\00E\00D\00:")
 (data $160 (i32.const 8764) ",\00\00\00\03\00\00\00\00\00\00\00\16\00\00\00\10\00\00\00 \"\00\00\00\00\00\00@\1c")
 (data $161 (i32.const 8812) "<")
 (data $161.1 (i32.const 8824) "\02\00\00\00\"\00\00\00P\00A\00Y\00O\00U\00T\00_\00T\00R\00I\00G\00G\00E\00R\00E\00D\00:")
 (data $162 (i32.const 8876) "\1c")
 (data $162.1 (i32.const 8888) "\01")
 (data $163 (i32.const 8908) "\1c\00\00\00\03\00\00\00\00\00\00\00\16\00\00\00\0c\00\00\00\00\00\00\00`\r")
 (data $164 (i32.const 8940) "\1c")
 (data $164.1 (i32.const 8952) "\02\00\00\00\0c\00\00\00l\00o\00c\00k\00e\00d")
 (data $165 (i32.const 8972) "\1c\00\00\00\03\00\00\00\00\00\00\00\16\00\00\00\0c\00\00\00\00\00\00\00`\r")
 (data $166 (i32.const 9004) "\1c")
 (data $166.1 (i32.const 9016) "\1f\00\00\00\08\00\00\00\02")
 (data $167 (i32.const 9036) "\1c\00\00\00\03\00\00\00\00\00\00\00\16\00\00\00\0c\00\00\00\00\00\00\00`\r")
 (data $168 (i32.const 9068) "\1c")
 (data $168.1 (i32.const 9080) "\1f\00\00\00\08\00\00\00\03")
 (data $169 (i32.const 9100) "\1c\00\00\00\03\00\00\00\00\00\00\00\16\00\00\00\0c\00\00\00\00\00\00\00`\r")
 (data $170 (i32.const 9132) "\1c")
 (data $170.1 (i32.const 9144) "\1f\00\00\00\08\00\00\00\04")
 (data $171 (i32.const 9164) "\1c\00\00\00\03\00\00\00\00\00\00\00\16\00\00\00\0c\00\00\00\00\00\00\00`\r")
 (data $172 (i32.const 9196) "\1c")
 (data $172.1 (i32.const 9208) "\1f\00\00\00\08\00\00\00\05")
 (data $173 (i32.const 9228) "<")
 (data $173.1 (i32.const 9240) "\02\00\00\00*\00\00\00O\00b\00j\00e\00c\00t\00 \00a\00l\00r\00e\00a\00d\00y\00 \00p\00i\00n\00n\00e\00d")
 (data $174 (i32.const 9292) "<")
 (data $174.1 (i32.const 9304) "\02\00\00\00(\00\00\00O\00b\00j\00e\00c\00t\00 \00i\00s\00 \00n\00o\00t\00 \00p\00i\00n\00n\00e\00d")
 (data $175 (i32.const 9360) " \00\00\00 \00\00\00 \00\00\00 ")
 (data $175.1 (i32.const 9384) "d\00\00\00\02\01\00\00\00\00\00\00 ")
 (data $175.2 (i32.const 9428) "B\00\00\00\02\t\00\00\00\00\00\00\02A\00\00\02A\00\00\00\00\00\00\04A")
 (data $175.3 (i32.const 9472) "A")
 (data $175.4 (i32.const 9484) "\02A")
 (table $0 6 6 funcref)
 (elem $0 (i32.const 1) $~lib/@massalabs/massa-as-sdk/assembly/std/utils/address/json2Address~anonymous|0 $assembly/contracts/main/getPlatformStats~anonymous|0 $assembly/contracts/main/getPlatformStats~anonymous|1 $assembly/contracts/main/getPlatformStats~anonymous|2 $assembly/contracts/main/getPlatformStats~anonymous|3)
 (export "__new" (func $~lib/rt/itcms/__new))
 (export "__pin" (func $~lib/rt/itcms/__pin))
 (export "__unpin" (func $~lib/rt/itcms/__unpin))
 (export "__collect" (func $~lib/rt/itcms/__collect))
 (export "__rtti_base" (global $~lib/rt/__rtti_base))
 (export "memory" (memory $0))
 (export "constructor" (func $export:assembly/contracts/main/constructor))
 (export "registerHoster" (func $export:assembly/contracts/main/registerHoster))
 (export "registerDeveloper" (func $export:assembly/contracts/main/registerDeveloper))
 (export "createCampaign" (func $export:assembly/contracts/main/createCampaign))
 (export "updateCampaignStatus" (func $export:assembly/contracts/main/updateCampaignStatus))
 (export "claimDeveloperEarnings" (func $export:assembly/contracts/main/claimDeveloperEarnings))
 (export "triggerScheduledPayouts" (func $export:assembly/contracts/main/triggerScheduledPayouts))
 (export "listCampaigns" (func $export:assembly/contracts/main/listCampaigns))
 (export "getCampaign" (func $export:assembly/contracts/main/getCampaign))
 (export "getHosterProfile" (func $export:assembly/contracts/main/getHosterProfile))
 (export "getDeveloperProfile" (func $export:assembly/contracts/main/getDeveloperProfile))
 (export "getPlatformStats" (func $export:assembly/contracts/main/getPlatformStats))
 (start $~start)
 (func $~lib/rt/itcms/Object#get:color (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
  i32.const 3
  i32.and
 )
 (func $~lib/rt/itcms/Object#get:next (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
  i32.const -4
  i32.and
 )
 (func $~lib/rt/itcms/Object#set:prev (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=8
 )
 (func $~lib/rt/itcms/Object#set:nextWithColor (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=4
 )
 (func $~lib/rt/itcms/Object#set:next (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  local.get $0
  i32.load offset=4
  i32.const 3
  i32.and
  i32.or
  call $~lib/rt/itcms/Object#set:nextWithColor
 )
 (func $~lib/rt/itcms/Object#unlink (param $0 i32)
  (local $1 i32)
  local.get $0
  call $~lib/rt/itcms/Object#get:next
  local.tee $1
  i32.eqz
  if
   local.get $0
   i32.load offset=8
   i32.eqz
   local.get $0
   i32.const 42260
   i32.lt_u
   i32.and
   i32.eqz
   if
    i32.const 0
    i32.const 1056
    i32.const 128
    i32.const 18
    call $~lib/builtins/abort
    unreachable
   end
   return
  end
  local.get $0
  i32.load offset=8
  local.tee $0
  i32.eqz
  if
   i32.const 0
   i32.const 1056
   i32.const 132
   i32.const 16
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $0
  call $~lib/rt/itcms/Object#set:prev
  local.get $0
  local.get $1
  call $~lib/rt/itcms/Object#set:next
 )
 (func $~lib/rt/itcms/initLazy (param $0 i32) (result i32)
  local.get $0
  local.get $0
  call $~lib/rt/itcms/Object#set:nextWithColor
  local.get $0
  local.get $0
  call $~lib/rt/itcms/Object#set:prev
  local.get $0
 )
 (func $~lib/rt/itcms/Object#linkTo (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $1
  i32.load offset=8
  local.set $3
  local.get $0
  local.get $1
  local.get $2
  i32.or
  call $~lib/rt/itcms/Object#set:nextWithColor
  local.get $0
  local.get $3
  call $~lib/rt/itcms/Object#set:prev
  local.get $3
  local.get $0
  call $~lib/rt/itcms/Object#set:next
  local.get $1
  local.get $0
  call $~lib/rt/itcms/Object#set:prev
 )
 (func $~lib/rt/itcms/Object#makeGray (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  global.get $~lib/rt/itcms/iter
  i32.eq
  if
   local.get $0
   i32.load offset=8
   local.tee $1
   i32.eqz
   if
    i32.const 0
    i32.const 1056
    i32.const 148
    i32.const 30
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   global.set $~lib/rt/itcms/iter
  end
  local.get $0
  call $~lib/rt/itcms/Object#unlink
  global.get $~lib/rt/itcms/toSpace
  local.set $1
  local.get $0
  i32.load offset=12
  local.tee $2
  i32.const 2
  i32.le_u
  if (result i32)
   i32.const 1
  else
   local.get $2
   i32.const 9360
   i32.load
   i32.gt_u
   if
    i32.const 1152
    i32.const 1216
    i32.const 21
    i32.const 28
    call $~lib/builtins/abort
    unreachable
   end
   local.get $2
   i32.const 2
   i32.shl
   i32.const 9364
   i32.add
   i32.load
   i32.const 32
   i32.and
  end
  local.set $2
  local.get $0
  local.get $1
  global.get $~lib/rt/itcms/white
  i32.eqz
  i32.const 2
  local.get $2
  select
  call $~lib/rt/itcms/Object#linkTo
 )
 (func $~lib/rt/itcms/__link (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $1
  i32.eqz
  if
   return
  end
  local.get $0
  i32.eqz
  if
   i32.const 0
   i32.const 1056
   i32.const 295
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 20
  i32.sub
  local.tee $1
  call $~lib/rt/itcms/Object#get:color
  global.get $~lib/rt/itcms/white
  i32.eq
  if
   local.get $0
   i32.const 20
   i32.sub
   local.tee $0
   call $~lib/rt/itcms/Object#get:color
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
 (func $~lib/@massalabs/as-types/assembly/argument/Args#set:serialized (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/@massalabs/as-types/assembly/argument/Args#set:_offset (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
 )
 (func $~lib/rt/itcms/visitRoots
  (local $0 i32)
  (local $1 i32)
  i32.const 1744
  call $~lib/rt/itcms/__visit
  i32.const 1792
  call $~lib/rt/itcms/__visit
  i32.const 1840
  call $~lib/rt/itcms/__visit
  i32.const 1904
  call $~lib/rt/itcms/__visit
  i32.const 1952
  call $~lib/rt/itcms/__visit
  i32.const 2016
  call $~lib/rt/itcms/__visit
  i32.const 2064
  call $~lib/rt/itcms/__visit
  i32.const 2112
  call $~lib/rt/itcms/__visit
  i32.const 2160
  call $~lib/rt/itcms/__visit
  i32.const 2224
  call $~lib/rt/itcms/__visit
  i32.const 2272
  call $~lib/rt/itcms/__visit
  i32.const 2320
  call $~lib/rt/itcms/__visit
  i32.const 2352
  call $~lib/rt/itcms/__visit
  global.get $assembly/contracts/main/campaigns
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $assembly/contracts/main/hosters
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $assembly/contracts/main/developers
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  i32.const 1152
  call $~lib/rt/itcms/__visit
  i32.const 1456
  call $~lib/rt/itcms/__visit
  i32.const 3264
  call $~lib/rt/itcms/__visit
  i32.const 1264
  call $~lib/rt/itcms/__visit
  i32.const 9248
  call $~lib/rt/itcms/__visit
  i32.const 9312
  call $~lib/rt/itcms/__visit
  i32.const 2464
  call $~lib/rt/itcms/__visit
  i32.const 7008
  call $~lib/rt/itcms/__visit
  i32.const 1712
  call $~lib/rt/itcms/__visit
  global.get $~lib/@massalabs/as-types/assembly/argument/NoArg
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  i32.const 1600
  call $~lib/rt/itcms/__visit
  global.get $~lib/rt/itcms/pinSpace
  local.tee $1
  call $~lib/rt/itcms/Object#get:next
  local.set $0
  loop $while-continue|0
   local.get $0
   local.get $1
   i32.ne
   if
    local.get $0
    call $~lib/rt/itcms/Object#get:color
    i32.const 3
    i32.ne
    if
     i32.const 0
     i32.const 1056
     i32.const 160
     i32.const 16
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    i32.const 20
    i32.add
    call $~lib/rt/__visit_members
    local.get $0
    call $~lib/rt/itcms/Object#get:next
    local.set $0
    br $while-continue|0
   end
  end
 )
 (func $~lib/rt/itcms/Object#set:color (param $0 i32) (param $1 i32)
  local.get $0
  local.get $0
  i32.load offset=4
  i32.const -4
  i32.and
  local.get $1
  i32.or
  call $~lib/rt/itcms/Object#set:nextWithColor
 )
 (func $~lib/rt/itcms/__visit (param $0 i32)
  local.get $0
  i32.eqz
  if
   return
  end
  local.get $0
  i32.const 20
  i32.sub
  local.tee $0
  call $~lib/rt/itcms/Object#get:color
  global.get $~lib/rt/itcms/white
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
 (func $~lib/rt/itcms/Object#get:size (param $0 i32) (result i32)
  local.get $0
  i32.load
  i32.const -4
  i32.and
  i32.const 4
  i32.add
 )
 (func $~lib/rt/tlsf/removeBlock (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  i32.load
  local.tee $3
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1392
   i32.const 268
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const -4
  i32.and
  local.tee $3
  i32.const 12
  i32.lt_u
  if
   i32.const 0
   i32.const 1392
   i32.const 270
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 256
  i32.lt_u
  if (result i32)
   local.get $3
   i32.const 4
   i32.shr_u
  else
   i32.const 31
   i32.const 1073741820
   local.get $3
   local.get $3
   i32.const 1073741820
   i32.ge_u
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
  local.tee $4
  i32.const 16
  i32.lt_u
  local.get $2
  i32.const 23
  i32.lt_u
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1392
   i32.const 284
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load offset=8
  local.set $5
  local.get $1
  i32.load offset=4
  local.tee $3
  if
   local.get $3
   local.get $5
   call $~lib/rt/itcms/Object#set:prev
  end
  local.get $5
  if
   local.get $5
   local.get $3
   call $~lib/rt/itcms/Object#set:nextWithColor
  end
  local.get $1
  local.get $0
  local.get $2
  i32.const 4
  i32.shl
  local.get $4
  i32.add
  i32.const 2
  i32.shl
  i32.add
  local.tee $1
  i32.load offset=96
  i32.eq
  if
   local.get $1
   local.get $5
   i32.store offset=96
   local.get $5
   i32.eqz
   if
    local.get $0
    local.get $2
    i32.const 2
    i32.shl
    i32.add
    local.tee $1
    i32.load offset=4
    i32.const -2
    local.get $4
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
     call $~lib/@massalabs/as-types/assembly/argument/Args#set:_offset
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
  i32.eqz
  if
   i32.const 0
   i32.const 1392
   i32.const 201
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load
  local.tee $3
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1392
   i32.const 203
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
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
   call $~lib/@massalabs/as-types/assembly/argument/Args#set:_offset
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
   local.tee $6
   i32.const 1
   i32.and
   i32.eqz
   if
    i32.const 0
    i32.const 1392
    i32.const 221
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
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
   call $~lib/@massalabs/as-types/assembly/argument/Args#set:_offset
  end
  local.get $4
  local.get $2
  i32.const 2
  i32.or
  call $~lib/@massalabs/as-types/assembly/argument/Args#set:_offset
  local.get $3
  i32.const -4
  i32.and
  local.tee $2
  i32.const 12
  i32.lt_u
  if
   i32.const 0
   i32.const 1392
   i32.const 233
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  local.get $1
  i32.const 4
  i32.add
  local.get $2
  i32.add
  i32.ne
  if
   i32.const 0
   i32.const 1392
   i32.const 234
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  i32.const 4
  i32.sub
  local.get $1
  i32.store
  local.get $2
  i32.const 256
  i32.lt_u
  if (result i32)
   local.get $2
   i32.const 4
   i32.shr_u
  else
   i32.const 31
   i32.const 1073741820
   local.get $2
   local.get $2
   i32.const 1073741820
   i32.ge_u
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
  i32.const 16
  i32.lt_u
  local.get $5
  i32.const 23
  i32.lt_u
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1392
   i32.const 251
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $5
  i32.const 4
  i32.shl
  local.get $2
  i32.add
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=96
  local.set $3
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/Object#set:nextWithColor
  local.get $1
  local.get $3
  call $~lib/rt/itcms/Object#set:prev
  local.get $3
  if
   local.get $3
   local.get $1
   call $~lib/rt/itcms/Object#set:nextWithColor
  end
  local.get $0
  local.get $5
  i32.const 4
  i32.shl
  local.get $2
  i32.add
  i32.const 2
  i32.shl
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
  call $~lib/@massalabs/as-types/assembly/argument/Args#set:_offset
  local.get $0
  local.get $5
  i32.const 2
  i32.shl
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
 (func $~lib/rt/tlsf/addMemory (param $0 i32) (param $1 i32) (param $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $2
  local.get $1
  i64.extend_i32_u
  i64.lt_u
  if
   i32.const 0
   i32.const 1392
   i32.const 382
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 19
  i32.add
  i32.const -16
  i32.and
  i32.const 4
  i32.sub
  local.set $1
  local.get $0
  i32.load offset=1568
  local.tee $3
  if
   local.get $3
   i32.const 4
   i32.add
   local.get $1
   i32.gt_u
   if
    i32.const 0
    i32.const 1392
    i32.const 389
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   i32.const 16
   i32.sub
   local.tee $5
   local.get $3
   i32.eq
   if
    local.get $3
    i32.load
    local.set $4
    local.get $5
    local.set $1
   end
  else
   local.get $0
   i32.const 1572
   i32.add
   local.get $1
   i32.gt_u
   if
    i32.const 0
    i32.const 1392
    i32.const 402
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $2
  i32.wrap_i64
  i32.const -16
  i32.and
  local.get $1
  i32.sub
  local.tee $3
  i32.const 20
  i32.lt_u
  if
   return
  end
  local.get $1
  local.get $4
  i32.const 2
  i32.and
  local.get $3
  i32.const 8
  i32.sub
  local.tee $3
  i32.const 1
  i32.or
  i32.or
  call $~lib/@massalabs/as-types/assembly/argument/Args#set:_offset
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/Object#set:nextWithColor
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/Object#set:prev
  local.get $1
  i32.const 4
  i32.add
  local.get $3
  i32.add
  local.tee $3
  i32.const 2
  call $~lib/@massalabs/as-types/assembly/argument/Args#set:_offset
  local.get $0
  local.get $3
  i32.store offset=1568
  local.get $0
  local.get $1
  call $~lib/rt/tlsf/insertBlock
 )
 (func $~lib/rt/tlsf/initialize
  (local $0 i32)
  (local $1 i32)
  memory.size
  local.tee $0
  i32.const 0
  i32.le_s
  if (result i32)
   i32.const 1
   local.get $0
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
  i32.const 42272
  i32.const 0
  call $~lib/@massalabs/as-types/assembly/argument/Args#set:_offset
  i32.const 43840
  i32.const 0
  i32.store
  loop $for-loop|0
   local.get $1
   i32.const 23
   i32.lt_u
   if
    local.get $1
    i32.const 2
    i32.shl
    i32.const 42272
    i32.add
    i32.const 0
    i32.store offset=4
    i32.const 0
    local.set $0
    loop $for-loop|1
     local.get $0
     i32.const 16
     i32.lt_u
     if
      local.get $1
      i32.const 4
      i32.shl
      local.get $0
      i32.add
      i32.const 2
      i32.shl
      i32.const 42272
      i32.add
      i32.const 0
      i32.store offset=96
      local.get $0
      i32.const 1
      i32.add
      local.set $0
      br $for-loop|1
     end
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
  i32.const 42272
  i32.const 43844
  memory.size
  i64.extend_i32_s
  i64.const 16
  i64.shl
  call $~lib/rt/tlsf/addMemory
  i32.const 42272
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
    local.set $1
    global.get $~lib/rt/itcms/iter
    call $~lib/rt/itcms/Object#get:next
    local.set $0
    loop $while-continue|1
     local.get $0
     global.get $~lib/rt/itcms/toSpace
     i32.ne
     if
      local.get $0
      global.set $~lib/rt/itcms/iter
      local.get $0
      call $~lib/rt/itcms/Object#get:color
      local.get $1
      i32.ne
      if
       local.get $0
       local.get $1
       call $~lib/rt/itcms/Object#set:color
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
      call $~lib/rt/itcms/Object#get:next
      local.set $0
      br $while-continue|1
     end
    end
    i32.const 0
    global.set $~lib/rt/itcms/visitCount
    call $~lib/rt/itcms/visitRoots
    global.get $~lib/rt/itcms/iter
    call $~lib/rt/itcms/Object#get:next
    global.get $~lib/rt/itcms/toSpace
    i32.eq
    if
     global.get $~lib/memory/__stack_pointer
     local.set $0
     loop $while-continue|0
      local.get $0
      i32.const 42260
      i32.lt_u
      if
       local.get $0
       i32.load
       call $~lib/rt/itcms/__visit
       local.get $0
       i32.const 4
       i32.add
       local.set $0
       br $while-continue|0
      end
     end
     global.get $~lib/rt/itcms/iter
     call $~lib/rt/itcms/Object#get:next
     local.set $0
     loop $while-continue|2
      local.get $0
      global.get $~lib/rt/itcms/toSpace
      i32.ne
      if
       local.get $0
       call $~lib/rt/itcms/Object#get:color
       local.get $1
       i32.ne
       if
        local.get $0
        local.get $1
        call $~lib/rt/itcms/Object#set:color
        local.get $0
        i32.const 20
        i32.add
        call $~lib/rt/__visit_members
       end
       local.get $0
       call $~lib/rt/itcms/Object#get:next
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
     local.get $1
     global.set $~lib/rt/itcms/white
     local.get $0
     call $~lib/rt/itcms/Object#get:next
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
    call $~lib/rt/itcms/Object#get:next
    global.set $~lib/rt/itcms/iter
    local.get $0
    call $~lib/rt/itcms/Object#get:color
    global.get $~lib/rt/itcms/white
    i32.eqz
    i32.ne
    if
     i32.const 0
     i32.const 1056
     i32.const 229
     i32.const 20
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    i32.const 42260
    i32.lt_u
    if
     local.get $0
     i32.const 0
     call $~lib/rt/itcms/Object#set:nextWithColor
     local.get $0
     i32.const 0
     call $~lib/rt/itcms/Object#set:prev
    else
     global.get $~lib/rt/itcms/total
     local.get $0
     call $~lib/rt/itcms/Object#get:size
     i32.sub
     global.set $~lib/rt/itcms/total
     local.get $0
     i32.const 4
     i32.add
     local.tee $1
     i32.const 42260
     i32.ge_u
     if
      global.get $~lib/rt/tlsf/ROOT
      i32.eqz
      if
       call $~lib/rt/tlsf/initialize
      end
      global.get $~lib/rt/tlsf/ROOT
      local.set $2
      local.get $1
      i32.const 4
      i32.sub
      local.set $0
      local.get $1
      i32.const 15
      i32.and
      i32.const 1
      local.get $1
      select
      if (result i32)
       i32.const 1
      else
       local.get $0
       i32.load
       i32.const 1
       i32.and
      end
      if
       i32.const 0
       i32.const 1392
       i32.const 562
       i32.const 3
       call $~lib/builtins/abort
       unreachable
      end
      local.get $0
      local.get $0
      i32.load
      i32.const 1
      i32.or
      call $~lib/@massalabs/as-types/assembly/argument/Args#set:_offset
      local.get $2
      local.get $0
      call $~lib/rt/tlsf/insertBlock
     end
    end
    i32.const 10
    return
   end
   global.get $~lib/rt/itcms/toSpace
   global.get $~lib/rt/itcms/toSpace
   call $~lib/rt/itcms/Object#set:nextWithColor
   global.get $~lib/rt/itcms/toSpace
   global.get $~lib/rt/itcms/toSpace
   call $~lib/rt/itcms/Object#set:prev
   i32.const 0
   global.set $~lib/rt/itcms/state
  end
  i32.const 0
 )
 (func $~lib/rt/tlsf/roundSize (param $0 i32) (result i32)
  local.get $0
  i32.const 1
  i32.const 27
  local.get $0
  i32.clz
  i32.sub
  i32.shl
  i32.add
  i32.const 1
  i32.sub
  local.get $0
  local.get $0
  i32.const 536870910
  i32.lt_u
  select
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
   local.get $1
   call $~lib/rt/tlsf/roundSize
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
  local.tee $1
  i32.const 16
  i32.lt_u
  local.get $2
  i32.const 23
  i32.lt_u
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1392
   i32.const 334
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $2
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=4
  i32.const -1
  local.get $1
  i32.shl
  i32.and
  local.tee $1
  if (result i32)
   local.get $0
   local.get $1
   i32.ctz
   local.get $2
   i32.const 4
   i32.shl
   i32.add
   i32.const 2
   i32.shl
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
    local.get $1
    i32.ctz
    local.tee $1
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=4
    local.tee $2
    i32.eqz
    if
     i32.const 0
     i32.const 1392
     i32.const 347
     i32.const 18
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $2
    i32.ctz
    local.get $1
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
 (func $~lib/rt/tlsf/allocateBlock (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  i32.const 1073741820
  i32.gt_u
  if
   i32.const 1264
   i32.const 1392
   i32.const 461
   i32.const 29
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 12
  local.get $1
  i32.const 19
  i32.add
  i32.const -16
  i32.and
  i32.const 4
  i32.sub
  local.get $1
  i32.const 12
  i32.le_u
  select
  local.tee $1
  call $~lib/rt/tlsf/searchBlock
  local.tee $2
  i32.eqz
  if
   local.get $1
   i32.const 256
   i32.ge_u
   if (result i32)
    local.get $1
    call $~lib/rt/tlsf/roundSize
   else
    local.get $1
   end
   local.set $2
   memory.size
   local.tee $3
   local.get $2
   i32.const 4
   local.get $0
   i32.load offset=1568
   local.get $3
   i32.const 16
   i32.shl
   i32.const 4
   i32.sub
   i32.ne
   i32.shl
   i32.add
   i32.const 65535
   i32.add
   i32.const -65536
   i32.and
   i32.const 16
   i32.shr_u
   local.tee $2
   local.get $2
   local.get $3
   i32.lt_s
   select
   memory.grow
   i32.const 0
   i32.lt_s
   if
    local.get $2
    memory.grow
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
   local.get $0
   local.get $3
   i32.const 16
   i32.shl
   memory.size
   i64.extend_i32_s
   i64.const 16
   i64.shl
   call $~lib/rt/tlsf/addMemory
   local.get $0
   local.get $1
   call $~lib/rt/tlsf/searchBlock
   local.tee $2
   i32.eqz
   if
    i32.const 0
    i32.const 1392
    i32.const 499
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $1
  local.get $2
  i32.load
  i32.const -4
  i32.and
  i32.gt_u
  if
   i32.const 0
   i32.const 1392
   i32.const 501
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $2
  call $~lib/rt/tlsf/removeBlock
  local.get $2
  i32.load
  local.set $3
  local.get $1
  i32.const 4
  i32.add
  i32.const 15
  i32.and
  if
   i32.const 0
   i32.const 1392
   i32.const 361
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const -4
  i32.and
  local.get $1
  i32.sub
  local.tee $4
  i32.const 16
  i32.ge_u
  if
   local.get $2
   local.get $1
   local.get $3
   i32.const 2
   i32.and
   i32.or
   call $~lib/@massalabs/as-types/assembly/argument/Args#set:_offset
   local.get $2
   i32.const 4
   i32.add
   local.get $1
   i32.add
   local.tee $1
   local.get $4
   i32.const 4
   i32.sub
   i32.const 1
   i32.or
   call $~lib/@massalabs/as-types/assembly/argument/Args#set:_offset
   local.get $0
   local.get $1
   call $~lib/rt/tlsf/insertBlock
  else
   local.get $2
   local.get $3
   i32.const -2
   i32.and
   call $~lib/@massalabs/as-types/assembly/argument/Args#set:_offset
   local.get $2
   i32.const 4
   i32.add
   local.get $2
   i32.load
   i32.const -4
   i32.and
   i32.add
   local.tee $0
   local.get $0
   i32.load
   i32.const -3
   i32.and
   call $~lib/@massalabs/as-types/assembly/argument/Args#set:_offset
  end
  local.get $2
 )
 (func $~lib/rt/itcms/Object#set:rtId (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=12
 )
 (func $~lib/rt/itcms/Object#set:rtSize (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=16
 )
 (func $~lib/rt/itcms/__new (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  i32.const 1073741804
  i32.ge_u
  if
   i32.const 1264
   i32.const 1056
   i32.const 261
   i32.const 31
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/itcms/total
  global.get $~lib/rt/itcms/threshold
  i32.ge_u
  if
   block $__inlined_func$~lib/rt/itcms/interrupt$35
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
      br $__inlined_func$~lib/rt/itcms/interrupt$35
     end
     local.get $2
     i32.const 0
     i32.gt_s
     br_if $do-loop|0
    end
    global.get $~lib/rt/itcms/total
    global.get $~lib/rt/itcms/total
    global.get $~lib/rt/itcms/threshold
    i32.sub
    i32.const 1024
    i32.lt_u
    i32.const 10
    i32.shl
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
  local.get $0
  i32.const 16
  i32.add
  call $~lib/rt/tlsf/allocateBlock
  local.tee $2
  local.get $1
  call $~lib/rt/itcms/Object#set:rtId
  local.get $2
  local.get $0
  call $~lib/rt/itcms/Object#set:rtSize
  local.get $2
  global.get $~lib/rt/itcms/fromSpace
  global.get $~lib/rt/itcms/white
  call $~lib/rt/itcms/Object#linkTo
  global.get $~lib/rt/itcms/total
  local.get $2
  call $~lib/rt/itcms/Object#get:size
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
 (func $~lib/rt/__newBuffer (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  local.get $1
  call $~lib/rt/itcms/__new
  local.set $1
  local.get $2
  if
   local.get $1
   local.get $2
   local.get $0
   memory.copy
  end
  local.get $1
 )
 (func $~lib/string/String#get:length (param $0 i32) (result i32)
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 1
  i32.shr_u
 )
 (func $"~lib/@massalabs/massa-as-sdk/assembly/collections/persistentMap/PersistentMap<~lib/string/String,assembly/contracts/main/Campaign>#set:_elementPrefix" (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/string/String.UTF8.encodeUnsafe (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  local.set $3
  local.get $2
  local.set $1
  loop $while-continue|0
   local.get $0
   local.get $3
   i32.lt_u
   if
    local.get $0
    i32.load16_u
    local.tee $2
    i32.const 128
    i32.lt_u
    if (result i32)
     local.get $1
     local.get $2
     i32.store8
     local.get $1
     i32.const 1
     i32.add
    else
     local.get $2
     i32.const 2048
     i32.lt_u
     if (result i32)
      local.get $1
      local.get $2
      i32.const 6
      i32.shr_u
      i32.const 192
      i32.or
      local.get $2
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.const 8
      i32.shl
      i32.or
      i32.store16
      local.get $1
      i32.const 2
      i32.add
     else
      local.get $2
      i32.const 63488
      i32.and
      i32.const 55296
      i32.eq
      if
       local.get $2
       i32.const 56320
       i32.lt_u
       local.get $0
       i32.const 2
       i32.add
       local.get $3
       i32.lt_u
       i32.and
       if
        local.get $0
        i32.load16_u offset=2
        local.tee $4
        i32.const 64512
        i32.and
        i32.const 56320
        i32.eq
        if
         local.get $1
         local.get $2
         i32.const 1023
         i32.and
         i32.const 10
         i32.shl
         i32.const 65536
         i32.add
         local.get $4
         i32.const 1023
         i32.and
         i32.or
         local.tee $2
         i32.const 63
         i32.and
         i32.const 128
         i32.or
         i32.const 24
         i32.shl
         local.get $2
         i32.const 6
         i32.shr_u
         i32.const 63
         i32.and
         i32.const 128
         i32.or
         i32.const 16
         i32.shl
         i32.or
         local.get $2
         i32.const 12
         i32.shr_u
         i32.const 63
         i32.and
         i32.const 128
         i32.or
         i32.const 8
         i32.shl
         i32.or
         local.get $2
         i32.const 18
         i32.shr_u
         i32.const 240
         i32.or
         i32.or
         i32.store
         local.get $1
         i32.const 4
         i32.add
         local.set $1
         local.get $0
         i32.const 4
         i32.add
         local.set $0
         br $while-continue|0
        end
       end
       i32.const 2464
       i32.const 2528
       i32.const 742
       i32.const 49
       call $~lib/builtins/abort
       unreachable
      end
      local.get $1
      local.get $2
      i32.const 12
      i32.shr_u
      i32.const 224
      i32.or
      local.get $2
      i32.const 6
      i32.shr_u
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.const 8
      i32.shl
      i32.or
      i32.store16
      local.get $1
      local.get $2
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.store8 offset=2
      local.get $1
      i32.const 3
      i32.add
     end
    end
    local.set $1
    local.get $0
    i32.const 2
    i32.add
    local.set $0
    br $while-continue|0
   end
  end
 )
 (func $~lib/staticarray/StaticArray<u8>#get:length (param $0 i32) (result i32)
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
 )
 (func $~lib/rt/itcms/__renew (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  local.get $0
  i32.const 20
  i32.sub
  local.tee $3
  i32.load
  i32.const -4
  i32.and
  i32.const 16
  i32.sub
  i32.le_u
  if
   local.get $3
   local.get $1
   call $~lib/rt/itcms/Object#set:rtSize
   local.get $0
   return
  end
  local.get $1
  local.get $3
  i32.load offset=12
  call $~lib/rt/itcms/__new
  local.tee $2
  local.get $0
  local.get $1
  local.get $3
  i32.load offset=16
  local.tee $0
  local.get $0
  local.get $1
  i32.gt_u
  select
  memory.copy
  local.get $2
 )
 (func $~lib/util/string/compareImpl (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  local.get $0
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  local.set $1
  loop $while-continue|0
   local.get $3
   local.tee $0
   i32.const 1
   i32.sub
   local.set $3
   local.get $0
   if
    local.get $1
    i32.load16_u
    local.tee $0
    local.get $2
    i32.load16_u
    local.tee $4
    i32.ne
    if
     local.get $0
     local.get $4
     i32.sub
     return
    end
    local.get $1
    i32.const 2
    i32.add
    local.set $1
    local.get $2
    i32.const 2
    i32.add
    local.set $2
    br $while-continue|0
   end
  end
  i32.const 0
 )
 (func $~lib/staticarray/StaticArray<~lib/string/String>#__uset (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $0
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  local.get $2
  i32.store
  local.get $0
  local.get $2
  i32.const 1
  call $~lib/rt/itcms/__link
 )
 (func $assembly/contracts/main/HosterProfile#set:businessName (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=8
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $assembly/contracts/main/HosterProfile#set:categories (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=12
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $assembly/contracts/main/HosterProfile#set:totalBudget (param $0 i32) (param $1 i64)
  local.get $0
  local.get $1
  i64.store offset=16
 )
 (func $assembly/contracts/main/HosterProfile#set:totalSpent (param $0 i32) (param $1 i64)
  local.get $0
  local.get $1
  i64.store offset=24
 )
 (func $assembly/contracts/main/HosterProfile#set:activeCampaigns (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=32
 )
 (func $assembly/contracts/main/HosterProfile#set:createdAt (param $0 i32) (param $1 i64)
  local.get $0
  local.get $1
  i64.store offset=40
 )
 (func $assembly/contracts/main/HosterProfile#set:updatedAt (param $0 i32) (param $1 i64)
  local.get $0
  local.get $1
  i64.store offset=48
 )
 (func $assembly/contracts/main/DeveloperProfile#set:clicks (param $0 i32) (param $1 i64)
  local.get $0
  local.get $1
  i64.store offset=32
 )
 (func $assembly/contracts/main/DeveloperProfile#set:lastPayoutAt (param $0 i32) (param $1 i64)
  local.get $0
  local.get $1
  i64.store offset=56
 )
 (func $assembly/contracts/main/DeveloperProfile#set:fraudCount (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=64
 )
 (func $assembly/contracts/main/DeveloperProfile#set:createdAt (param $0 i32) (param $1 i64)
  local.get $0
  local.get $1
  i64.store offset=72
 )
 (func $assembly/contracts/main/DeveloperProfile#set:updatedAt (param $0 i32) (param $1 i64)
  local.get $0
  local.get $1
  i64.store offset=80
 )
 (func $assembly/contracts/main/Campaign#set:category (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=16
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $assembly/contracts/main/Campaign#set:targetUrl (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=20
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $assembly/contracts/main/Campaign#set:creativeUri (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=24
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $assembly/contracts/main/Campaign#set:pricingModel (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=28
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $assembly/contracts/main/Campaign#set:status (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=56
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $assembly/contracts/main/Campaign#set:impressions (param $0 i32) (param $1 i64)
  local.get $0
  local.get $1
  i64.store offset=64
 )
 (func $assembly/contracts/main/Campaign#set:updatedAt (param $0 i32) (param $1 i64)
  local.get $0
  local.get $1
  i64.store offset=88
 )
 (func $~lib/util/number/decimalCount32 (param $0 i32) (result i32)
  local.get $0
  i32.const 10
  i32.ge_u
  i32.const 1
  i32.add
  local.get $0
  i32.const 10000
  i32.ge_u
  i32.const 3
  i32.add
  local.get $0
  i32.const 1000
  i32.ge_u
  i32.add
  local.get $0
  i32.const 100
  i32.lt_u
  select
  local.get $0
  i32.const 1000000
  i32.ge_u
  i32.const 6
  i32.add
  local.get $0
  i32.const 1000000000
  i32.ge_u
  i32.const 8
  i32.add
  local.get $0
  i32.const 100000000
  i32.ge_u
  i32.add
  local.get $0
  i32.const 10000000
  i32.lt_u
  select
  local.get $0
  i32.const 100000
  i32.lt_u
  select
 )
 (func $~lib/util/number/utoa_dec_simple<u32> (param $0 i32) (param $1 i32) (param $2 i32)
  loop $do-loop|0
   local.get $0
   local.get $2
   i32.const 1
   i32.sub
   local.tee $2
   i32.const 1
   i32.shl
   i32.add
   local.get $1
   i32.const 10
   i32.rem_u
   i32.const 48
   i32.add
   i32.store16
   local.get $1
   i32.const 10
   i32.div_u
   local.tee $1
   br_if $do-loop|0
  end
 )
 (func $~lib/number/U32#toString (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  block $folding-inner0
   local.get $0
   i32.eqz
   if
    i32.const 6976
    local.set $1
    br $folding-inner0
   end
   local.get $0
   call $~lib/util/number/decimalCount32
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.const 1
   i32.shl
   i32.const 2
   call $~lib/rt/itcms/__new
   local.tee $1
   i32.store
   local.get $1
   local.get $0
   local.get $2
   call $~lib/util/number/utoa_dec_simple<u32>
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $~lib/rt/itcms/__pin (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  if
   local.get $0
   i32.const 20
   i32.sub
   local.tee $1
   call $~lib/rt/itcms/Object#get:color
   i32.const 3
   i32.eq
   if
    i32.const 9248
    i32.const 1056
    i32.const 338
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   call $~lib/rt/itcms/Object#unlink
   local.get $1
   global.get $~lib/rt/itcms/pinSpace
   i32.const 3
   call $~lib/rt/itcms/Object#linkTo
  end
  local.get $0
 )
 (func $~lib/rt/itcms/__unpin (param $0 i32)
  local.get $0
  i32.eqz
  if
   return
  end
  local.get $0
  i32.const 20
  i32.sub
  local.tee $0
  call $~lib/rt/itcms/Object#get:color
  i32.const 3
  i32.ne
  if
   i32.const 9312
   i32.const 1056
   i32.const 352
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
   local.get $0
   call $~lib/rt/itcms/Object#unlink
   local.get $0
   global.get $~lib/rt/itcms/fromSpace
   global.get $~lib/rt/itcms/white
   call $~lib/rt/itcms/Object#linkTo
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
 (func $~lib/arraybuffer/ArrayBufferView~visit (param $0 i32)
  local.get $0
  i32.load
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
 )
 (func $assembly/contracts/main/HosterProfile~visit (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.load
  local.tee $1
  if
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=4
  local.tee $1
  if
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=8
  local.tee $1
  if
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=12
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
 )
 (func $~lib/function/Function<%28~lib/string/String%2Ci32%2C~lib/array/Array<~lib/string/String>%29=>~lib/@massalabs/massa-as-sdk/assembly/std/address/Address>~visit (param $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.load offset=4
  call $~lib/rt/itcms/__visit
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/rt/__visit_members (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  block $folding-inner1
   block $folding-inner5
    block $folding-inner4
     block $folding-inner3
      block $folding-inner2
       block $folding-inner0
        block $invalid
         block $~lib/function/Function<%28%29=>u64>
          block $~lib/typedarray/Uint8Array
           block $~lib/@massalabs/as-types/assembly/result/Result<u64>
            block $~lib/staticarray/StaticArray<~lib/string/String>
             block $~lib/function/Function<%28~lib/string/String%2Ci32%2C~lib/array/Array<~lib/string/String>%29=>~lib/@massalabs/massa-as-sdk/assembly/std/address/Address>
              block $assembly/contracts/main/DeveloperProfile
               block $assembly/contracts/main/HosterProfile
                block $~lib/@massalabs/as-types/assembly/serializable/Serializable
                 block $assembly/contracts/main/Campaign
                  block $~lib/staticarray/StaticArray<u8>
                   block $~lib/string/String
                    block $~lib/arraybuffer/ArrayBuffer
                     block $~lib/object/Object
                      local.get $0
                      i32.const 8
                      i32.sub
                      i32.load
                      br_table $~lib/object/Object $~lib/arraybuffer/ArrayBuffer $~lib/string/String $folding-inner0 $folding-inner5 $~lib/staticarray/StaticArray<u8> $folding-inner2 $assembly/contracts/main/Campaign $~lib/@massalabs/as-types/assembly/serializable/Serializable $folding-inner0 $assembly/contracts/main/HosterProfile $folding-inner0 $assembly/contracts/main/DeveloperProfile $folding-inner0 $folding-inner3 $folding-inner5 $folding-inner2 $folding-inner2 $folding-inner0 $folding-inner4 $folding-inner4 $~lib/function/Function<%28~lib/string/String%2Ci32%2C~lib/array/Array<~lib/string/String>%29=>~lib/@massalabs/massa-as-sdk/assembly/std/address/Address> $~lib/staticarray/StaticArray<~lib/string/String> $folding-inner3 $folding-inner5 $~lib/@massalabs/as-types/assembly/result/Result<u64> $folding-inner5 $~lib/typedarray/Uint8Array $folding-inner3 $folding-inner3 $folding-inner4 $~lib/function/Function<%28%29=>u64> $invalid
                     end
                     return
                    end
                    return
                   end
                   return
                  end
                  return
                 end
                 local.get $0
                 i32.load offset=4
                 local.tee $1
                 if
                  local.get $1
                  call $~lib/rt/itcms/__visit
                 end
                 local.get $0
                 i32.load offset=8
                 local.tee $1
                 if
                  local.get $1
                  call $~lib/rt/itcms/__visit
                 end
                 local.get $0
                 i32.load offset=12
                 local.tee $1
                 if
                  local.get $1
                  call $~lib/rt/itcms/__visit
                 end
                 local.get $0
                 i32.load offset=16
                 local.tee $1
                 if
                  local.get $1
                  call $~lib/rt/itcms/__visit
                 end
                 local.get $0
                 i32.load offset=20
                 local.tee $1
                 if
                  local.get $1
                  call $~lib/rt/itcms/__visit
                 end
                 local.get $0
                 i32.load offset=24
                 local.tee $1
                 if
                  local.get $1
                  call $~lib/rt/itcms/__visit
                 end
                 local.get $0
                 i32.load offset=28
                 local.tee $1
                 if
                  local.get $1
                  call $~lib/rt/itcms/__visit
                 end
                 local.get $0
                 i32.load offset=56
                 local.tee $0
                 if
                  local.get $0
                  call $~lib/rt/itcms/__visit
                 end
                 return
                end
                return
               end
               local.get $0
               call $assembly/contracts/main/HosterProfile~visit
               return
              end
              local.get $0
              call $assembly/contracts/main/HosterProfile~visit
              return
             end
             local.get $0
             call $~lib/function/Function<%28~lib/string/String%2Ci32%2C~lib/array/Array<~lib/string/String>%29=>~lib/@massalabs/massa-as-sdk/assembly/std/address/Address>~visit
             return
            end
            local.get $0
            local.get $0
            i32.const 20
            i32.sub
            i32.load offset=16
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
               call $~lib/rt/itcms/__visit
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
           i32.load offset=8
           local.tee $0
           if
            local.get $0
            call $~lib/rt/itcms/__visit
           end
           return
          end
          local.get $0
          call $~lib/arraybuffer/ArrayBufferView~visit
          return
         end
         local.get $0
         call $~lib/function/Function<%28~lib/string/String%2Ci32%2C~lib/array/Array<~lib/string/String>%29=>~lib/@massalabs/massa-as-sdk/assembly/std/address/Address>~visit
         return
        end
        unreachable
       end
       local.get $0
       call $~lib/arraybuffer/ArrayBufferView~visit
       return
      end
      global.get $~lib/memory/__stack_pointer
      i32.const 4
      i32.sub
      global.set $~lib/memory/__stack_pointer
      call $~stack_check
      global.get $~lib/memory/__stack_pointer
      i32.const 0
      i32.store
      br $folding-inner1
     end
     local.get $0
     i32.load
     local.tee $1
     if
      local.get $1
      call $~lib/rt/itcms/__visit
     end
     br $folding-inner5
    end
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.sub
    global.set $~lib/memory/__stack_pointer
    call $~stack_check
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    i32.load offset=4
    local.set $1
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $1
    local.get $0
    i32.load offset=12
    i32.const 2
    i32.shl
    i32.add
    local.set $3
    loop $while-continue|00
     local.get $1
     local.get $3
     i32.lt_u
     if
      local.get $1
      i32.load
      local.tee $2
      if
       local.get $2
       call $~lib/rt/itcms/__visit
      end
      local.get $1
      i32.const 4
      i32.add
      local.set $1
      br $while-continue|00
     end
    end
    br $folding-inner1
   end
   local.get $0
   i32.load offset=4
   local.tee $0
   if
    local.get $0
    call $~lib/rt/itcms/__visit
   end
   return
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.load
  call $~lib/rt/itcms/__visit
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~start
  call $start:assembly/contracts/main
 )
 (func $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 9492
  i32.lt_s
  if
   i32.const 42288
   i32.const 42336
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/@massalabs/as-types/assembly/argument/Args#constructor (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.const 4
  call $~lib/rt/itcms/__new
  local.tee $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  i32.const 0
  call $~lib/@massalabs/as-types/assembly/argument/Args#set:_offset
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  i32.const 0
  call $~lib/staticarray/StaticArray<u8>#constructor
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=8
  local.get $1
  local.get $2
  call $~lib/@massalabs/as-types/assembly/argument/Args#set:serialized
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  local.get $1
  local.get $0
  call $~lib/@massalabs/as-types/assembly/argument/Args#set:serialized
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  i32.const 0
  call $~lib/@massalabs/as-types/assembly/argument/Args#set:_offset
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $~lib/@massalabs/as-types/assembly/argument/Args#constructor@varargs (result i32)
  (local $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  block $2of2
   block $0of2
    block $outOfRange
     global.get $~argumentsLength
     br_table $0of2 $2of2 $2of2 $outOfRange
    end
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 5
   i32.const 1568
   call $~lib/rt/__newBuffer
   local.tee $0
   i32.store
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  local.get $0
  call $~lib/@massalabs/as-types/assembly/argument/Args#constructor
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/string/String#concat (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/string/String#get:length
  i32.const 1
  i32.shl
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  block $folding-inner0
   local.get $1
   call $~lib/string/String#get:length
   i32.const 1
   i32.shl
   local.tee $4
   local.get $3
   i32.add
   local.tee $2
   i32.eqz
   if
    i32.const 2400
    local.set $2
    br $folding-inner0
   end
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.const 2
   call $~lib/rt/itcms/__new
   local.tee $2
   i32.store offset=4
   local.get $2
   local.get $0
   local.get $3
   memory.copy
   local.get $2
   local.get $3
   i32.add
   local.get $1
   local.get $4
   memory.copy
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $~lib/string/String.__concat (param $0 i32) (param $1 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $~lib/string/String#concat
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $start:assembly/contracts/main
  (local $0 i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  i32.const 1104
  call $~lib/rt/itcms/initLazy
  global.set $~lib/rt/itcms/toSpace
  memory.size
  i32.const 16
  i32.shl
  i32.const 42260
  i32.sub
  i32.const 1
  i32.shr_u
  global.set $~lib/rt/itcms/threshold
  i32.const 1312
  call $~lib/rt/itcms/initLazy
  global.set $~lib/rt/itcms/pinSpace
  i32.const 1344
  call $~lib/rt/itcms/initLazy
  global.set $~lib/rt/itcms/fromSpace
  i32.const 0
  global.set $~argumentsLength
  call $~lib/@massalabs/as-types/assembly/argument/Args#constructor@varargs
  global.set $~lib/@massalabs/as-types/assembly/argument/NoArg
  global.get $~lib/memory/__stack_pointer
  i32.const 2272
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 1712
  i32.store offset=8
  i32.const 2272
  i32.const 1712
  call $~lib/string/String#concat
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 20
  memory.fill
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.const 9
  call $~lib/rt/itcms/__new
  local.tee $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  i32.const 0
  call $"~lib/@massalabs/massa-as-sdk/assembly/collections/persistentMap/PersistentMap<~lib/string/String,assembly/contracts/main/Campaign>#set:_elementPrefix"
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/Object#set:nextWithColor
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 1712
  i32.store offset=16
  local.get $0
  i32.const 1712
  call $~lib/string/String.__concat
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  local.get $1
  local.get $0
  call $"~lib/@massalabs/massa-as-sdk/assembly/collections/persistentMap/PersistentMap<~lib/string/String,assembly/contracts/main/Campaign>#set:_elementPrefix"
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/Object#set:nextWithColor
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  global.set $assembly/contracts/main/campaigns
  global.get $~lib/memory/__stack_pointer
  i32.const 2320
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 1712
  i32.store offset=8
  i32.const 2320
  i32.const 1712
  call $~lib/string/String#concat
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 20
  memory.fill
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.const 11
  call $~lib/rt/itcms/__new
  local.tee $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  i32.const 0
  call $"~lib/@massalabs/massa-as-sdk/assembly/collections/persistentMap/PersistentMap<~lib/string/String,assembly/contracts/main/Campaign>#set:_elementPrefix"
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/Object#set:nextWithColor
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 1712
  i32.store offset=16
  local.get $0
  i32.const 1712
  call $~lib/string/String.__concat
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  local.get $1
  local.get $0
  call $"~lib/@massalabs/massa-as-sdk/assembly/collections/persistentMap/PersistentMap<~lib/string/String,assembly/contracts/main/Campaign>#set:_elementPrefix"
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/Object#set:nextWithColor
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  global.set $assembly/contracts/main/hosters
  global.get $~lib/memory/__stack_pointer
  i32.const 2352
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 1712
  i32.store offset=8
  i32.const 2352
  i32.const 1712
  call $~lib/string/String#concat
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 20
  memory.fill
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.const 13
  call $~lib/rt/itcms/__new
  local.tee $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  i32.const 0
  call $"~lib/@massalabs/massa-as-sdk/assembly/collections/persistentMap/PersistentMap<~lib/string/String,assembly/contracts/main/Campaign>#set:_elementPrefix"
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/Object#set:nextWithColor
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 1712
  i32.store offset=16
  local.get $0
  i32.const 1712
  call $~lib/string/String.__concat
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  local.get $1
  local.get $0
  call $"~lib/@massalabs/massa-as-sdk/assembly/collections/persistentMap/PersistentMap<~lib/string/String,assembly/contracts/main/Campaign>#set:_elementPrefix"
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/Object#set:nextWithColor
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  global.set $assembly/contracts/main/developers
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/@massalabs/as-types/assembly/serialization/strings/stringToBytes (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  local.tee $1
  i32.store
  block $folding-inner0
   local.get $1
   call $~lib/string/String#get:length
   i32.eqz
   if
    i32.const 0
    i32.const 5
    i32.const 2432
    call $~lib/rt/__newBuffer
    local.set $0
    br $folding-inner0
   end
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   call $~stack_check
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   local.get $1
   local.set $2
   i32.const 0
   local.set $0
   local.get $1
   local.get $1
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.add
   local.set $3
   loop $while-continue|0
    local.get $2
    local.get $3
    i32.lt_u
    if
     local.get $2
     i32.load16_u
     local.tee $4
     i32.const 128
     i32.lt_u
     if (result i32)
      local.get $0
      i32.const 1
      i32.add
     else
      local.get $4
      i32.const 2048
      i32.lt_u
      if (result i32)
       local.get $0
       i32.const 2
       i32.add
      else
       local.get $4
       i32.const 64512
       i32.and
       i32.const 55296
       i32.eq
       local.get $2
       i32.const 2
       i32.add
       local.get $3
       i32.lt_u
       i32.and
       if
        local.get $2
        i32.load16_u offset=2
        i32.const 64512
        i32.and
        i32.const 56320
        i32.eq
        if
         local.get $0
         i32.const 4
         i32.add
         local.set $0
         local.get $2
         i32.const 4
         i32.add
         local.set $2
         br $while-continue|0
        end
       end
       local.get $0
       i32.const 3
       i32.add
      end
     end
     local.set $0
     local.get $2
     i32.const 2
     i32.add
     local.set $2
     br $while-continue|0
    end
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.const 1
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   local.get $1
   local.get $1
   call $~lib/string/String#get:length
   local.get $0
   call $~lib/string/String.UTF8.encodeUnsafe
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/@massalabs/massa-as-sdk/assembly/std/storage/toDatastoreFormat<~lib/string/String> (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/@massalabs/as-types/assembly/serialization/strings/stringToBytes
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/@massalabs/as-types/assembly/result/Result<u32>#constructor (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  i32.const 15
  call $byn$mgfn-shared$~lib/@massalabs/as-types/assembly/result/Result<u32>#constructor
 )
 (func $~lib/staticarray/StaticArray<u8>#slice<~lib/array/Array<u8>> (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/staticarray/StaticArray<u8>#get:length
  local.set $3
  local.get $1
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $1
   local.get $3
   i32.add
   local.tee $1
   i32.const 0
   local.get $1
   i32.const 0
   i32.gt_s
   select
  else
   local.get $1
   local.get $3
   local.get $1
   local.get $3
   i32.lt_s
   select
  end
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $2
   local.get $3
   i32.add
   local.tee $2
   i32.const 0
   local.get $2
   i32.const 0
   i32.gt_s
   select
  else
   local.get $2
   local.get $3
   local.get $2
   local.get $3
   i32.lt_s
   select
  end
  local.get $1
  i32.sub
  local.tee $2
  i32.const 0
  local.get $2
  i32.const 0
  i32.gt_s
  select
  local.tee $2
  i32.const 0
  i32.const 16
  i32.const 0
  call $~lib/rt/__newArray
  local.tee $3
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  i32.load offset=4
  local.get $0
  local.get $1
  i32.add
  local.get $2
  memory.copy
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $~lib/@massalabs/as-types/assembly/argument/Args#getNextData (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=4
  local.tee $2
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  local.get $0
  i32.load
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  local.get $2
  local.get $4
  local.get $0
  i32.load
  local.get $1
  i32.add
  call $~lib/staticarray/StaticArray<u8>#slice<~lib/array/Array<u8>>
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $3
  local.get $2
  i32.load offset=4
  local.tee $2
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  local.get $0
  i32.load
  local.get $1
  i32.add
  call $~lib/@massalabs/as-types/assembly/argument/Args#set:_offset
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $~lib/@massalabs/as-types/assembly/serialization/numbers/bytesToU32 (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.load
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/@massalabs/as-types/assembly/argument/Args#nextU32 (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  block $folding-inner0 (result i32)
   local.get $0
   i32.load
   i32.const 4
   i32.add
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=4
   local.tee $2
   i32.store
   local.get $2
   call $~lib/staticarray/StaticArray<u8>#get:length
   local.get $1
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 2624
    i32.store
    i32.const 0
    i32.const 2624
    call $~lib/@massalabs/as-types/assembly/result/Result<u32>#constructor
    br $folding-inner0
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   local.get $0
   i32.const 4
   call $~lib/@massalabs/as-types/assembly/argument/Args#getNextData
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   call $~lib/@massalabs/as-types/assembly/serialization/numbers/bytesToU32
   i32.const 0
   call $~lib/@massalabs/as-types/assembly/result/Result<u32>#constructor
  end
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/string/String.__not (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  if (result i32)
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   call $~lib/string/String#get:length
   i32.eqz
  else
   i32.const 1
  end
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/@massalabs/as-types/assembly/result/Result<~lib/string/String>#constructor (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  i32.const 14
  call $byn$mgfn-shared$~lib/@massalabs/as-types/assembly/result/Result<~lib/string/String>#constructor
 )
 (func $~lib/@massalabs/as-types/assembly/argument/Args#nextString (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const -64
  i32.add
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 64
  memory.fill
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  call $~lib/@massalabs/as-types/assembly/argument/Args#nextU32
  local.tee $1
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.load offset=4
  local.tee $2
  i32.store
  block $folding-inner2
   block $folding-inner1
    block $folding-inner0
     local.get $2
     call $~lib/string/String.__not
     if (result i32)
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store
      local.get $0
      i32.load
      local.set $2
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.store offset=20
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.store offset=24
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.store offset=16
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.load offset=4
      local.tee $3
      i32.store
      local.get $3
      call $~lib/string/String.__not
      i32.eqz
      if
       global.get $~lib/memory/__stack_pointer
       local.get $1
       i32.store
       global.get $~lib/memory/__stack_pointer
       local.get $1
       i32.load offset=4
       local.tee $0
       i32.store offset=28
       local.get $0
       i32.eqz
       br_if $folding-inner0
       br $folding-inner2
      end
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.store offset=32
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.store
      local.get $2
      local.get $1
      i32.load
      i32.add
      local.set $2
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store offset=16
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.load offset=4
      local.tee $3
      i32.store
      local.get $3
      call $~lib/staticarray/StaticArray<u8>#get:length
      local.get $2
      i32.lt_s
     else
      i32.const 1
     end
     if
      global.get $~lib/memory/__stack_pointer
      i32.const 2400
      i32.store
      global.get $~lib/memory/__stack_pointer
      i32.const 3008
      i32.store offset=16
      i32.const 2400
      i32.const 3008
      call $~lib/@massalabs/as-types/assembly/result/Result<~lib/string/String>#constructor
      local.set $0
      br $folding-inner1
     end
     global.get $~lib/memory/__stack_pointer
     local.set $2
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=16
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store offset=36
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store offset=40
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store offset=48
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.load offset=4
     local.tee $3
     i32.store offset=44
     local.get $3
     call $~lib/string/String.__not
     i32.eqz
     if
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.store offset=44
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.load offset=4
      local.tee $0
      i32.store offset=52
      local.get $0
      i32.eqz
      br_if $folding-inner0
      br $folding-inner2
     end
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store offset=56
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store offset=44
     local.get $0
     local.get $1
     i32.load
     call $~lib/@massalabs/as-types/assembly/argument/Args#getNextData
     local.set $0
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     global.get $~lib/memory/__stack_pointer
     i32.const 4
     i32.sub
     global.set $~lib/memory/__stack_pointer
     call $~stack_check
     global.get $~lib/memory/__stack_pointer
     i32.const 0
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     block $folding-inner00
      local.get $0
      call $~lib/staticarray/StaticArray<u8>#get:length
      i32.eqz
      if
       i32.const 2400
       local.set $0
       br $folding-inner00
      end
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store
      global.get $~lib/memory/__stack_pointer
      i32.const 4
      i32.sub
      global.set $~lib/memory/__stack_pointer
      call $~stack_check
      global.get $~lib/memory/__stack_pointer
      i32.const 0
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store
      local.get $0
      local.get $0
      i32.const 20
      i32.sub
      i32.load offset=16
      call $~lib/string/String.UTF8.decodeUnsafe
      local.set $0
      global.get $~lib/memory/__stack_pointer
      i32.const 4
      i32.add
      global.set $~lib/memory/__stack_pointer
     end
     global.get $~lib/memory/__stack_pointer
     i32.const 4
     i32.add
     global.set $~lib/memory/__stack_pointer
     local.get $2
     local.get $0
     i32.store offset=60
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     local.get $0
     i32.const 0
     call $~lib/@massalabs/as-types/assembly/result/Result<~lib/string/String>#constructor
     local.set $0
     br $folding-inner1
    end
    i32.const 2768
    i32.const 2896
    i32.const 70
    i32.const 21
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const -64
   i32.sub
   global.set $~lib/memory/__stack_pointer
   local.get $0
   return
  end
  local.get $0
  i32.const 2896
  i32.const 70
  i32.const 7
  call $~lib/builtins/abort
  unreachable
 )
 (func $assembly/contracts/main/unwrapOr<~lib/string/String> (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 28
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 28
  memory.fill
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=4
  local.tee $2
  i32.store offset=4
  local.get $2
  call $~lib/string/String.__not
  if
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=16
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=4
   local.tee $1
   i32.store offset=4
   local.get $1
   call $~lib/string/String.__not
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=4
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.load offset=4
    local.tee $0
    i32.store offset=20
    local.get $0
    i32.eqz
    if
     i32.const 2768
     i32.const 2896
     i32.const 70
     i32.const 21
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    i32.const 2896
    i32.const 70
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=24
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   local.get $0
   i32.load
   local.set $1
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 28
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $~lib/@massalabs/massa-as-sdk/assembly/std/storage/set<~lib/string/String> (param $0 i32) (param $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  local.get $0
  call $~lib/@massalabs/massa-as-sdk/assembly/std/storage/toDatastoreFormat<~lib/string/String>
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  local.get $1
  call $~lib/@massalabs/massa-as-sdk/assembly/std/storage/toDatastoreFormat<~lib/string/String>
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $~lib/@massalabs/massa-as-sdk/assembly/env/env/env.set
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/string/String#substring (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  i32.const 1
  local.get $0
  call $~lib/string/String#get:length
  local.tee $2
  local.get $2
  i32.const 1
  i32.gt_s
  select
  local.tee $4
  local.get $1
  i32.const 0
  local.get $1
  i32.const 0
  i32.gt_s
  select
  local.tee $1
  local.get $2
  local.get $1
  local.get $2
  i32.lt_s
  select
  local.tee $1
  local.get $1
  local.get $4
  i32.gt_s
  select
  i32.const 1
  i32.shl
  local.set $3
  block $folding-inner0
   local.get $4
   local.get $1
   local.get $1
   local.get $4
   i32.lt_s
   select
   i32.const 1
   i32.shl
   local.tee $1
   local.get $3
   i32.sub
   local.tee $4
   i32.eqz
   if
    i32.const 2400
    local.set $0
    br $folding-inner0
   end
   local.get $3
   i32.eqz
   local.get $1
   local.get $2
   i32.const 1
   i32.shl
   i32.eq
   i32.and
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.const 2
   call $~lib/rt/itcms/__new
   local.tee $1
   i32.store offset=4
   local.get $1
   local.get $0
   local.get $3
   i32.add
   local.get $4
   memory.copy
   local.get $1
   local.set $0
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/array/ensureCapacity (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $1
  local.get $0
  i32.load offset=8
  local.tee $3
  i32.const 2
  i32.shr_u
  i32.gt_u
  if
   local.get $1
   i32.const 268435455
   i32.gt_u
   if
    i32.const 1456
    i32.const 3184
    i32.const 19
    i32.const 48
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.load
   local.tee $2
   i32.const 1073741820
   local.get $3
   i32.const 1
   i32.shl
   local.tee $3
   local.get $3
   i32.const 1073741820
   i32.ge_u
   select
   local.tee $3
   i32.const 8
   local.get $1
   local.get $1
   i32.const 8
   i32.le_u
   select
   i32.const 2
   i32.shl
   local.tee $1
   local.get $1
   local.get $3
   i32.lt_u
   select
   local.tee $1
   call $~lib/rt/itcms/__renew
   local.tee $3
   local.get $2
   i32.ne
   if
    local.get $0
    local.get $3
    i32.store
    local.get $0
    local.get $3
    i32.store offset=4
    local.get $0
    local.get $3
    i32.const 0
    call $~lib/rt/itcms/__link
   end
   local.get $0
   local.get $1
   i32.store offset=8
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/array/Array<~lib/string/String>#push (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $0
  i32.load offset=12
  local.tee $2
  i32.const 1
  i32.add
  local.tee $3
  call $~lib/array/ensureCapacity
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.load offset=4
  local.get $2
  i32.const 2
  i32.shl
  i32.add
  local.get $1
  i32.store
  local.get $0
  local.get $1
  i32.const 1
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $3
  call $~lib/rt/itcms/Object#set:rtId
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/string/String#split (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 40
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 40
  memory.fill
  block $folding-inner2
   block $folding-inner1
    block $folding-inner0
     local.get $2
     i32.eqz
     br_if $folding-inner0
     local.get $1
     i32.eqz
     if
      global.get $~lib/memory/__stack_pointer
      i32.const 1
      i32.const 2
      i32.const 20
      i32.const 0
      call $~lib/rt/__newArray
      local.tee $1
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.load offset=4
      i32.store offset=4
      global.get $~lib/memory/__stack_pointer
      i32.const 4
      i32.sub
      global.set $~lib/memory/__stack_pointer
      call $~stack_check
      global.get $~lib/memory/__stack_pointer
      i32.const 0
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.store
      local.get $1
      i32.load offset=12
      i32.eqz
      if
       local.get $1
       i32.const 1
       call $~lib/array/ensureCapacity
       global.get $~lib/memory/__stack_pointer
       local.get $1
       i32.store
       local.get $1
       i32.const 1
       call $~lib/rt/itcms/Object#set:rtId
      end
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.store
      local.get $1
      i32.load offset=4
      local.get $0
      i32.store
      local.get $1
      local.get $0
      i32.const 1
      call $~lib/rt/itcms/__link
      global.get $~lib/memory/__stack_pointer
      i32.const 4
      i32.add
      global.set $~lib/memory/__stack_pointer
      global.get $~lib/memory/__stack_pointer
      i32.const 40
      i32.add
      global.set $~lib/memory/__stack_pointer
      local.get $1
      return
     end
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=8
     local.get $0
     call $~lib/string/String#get:length
     local.set $5
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store offset=8
     i32.const 2147483647
     local.get $2
     local.get $2
     i32.const 0
     i32.lt_s
     select
     local.set $7
     local.get $1
     call $~lib/string/String#get:length
     local.tee $8
     if
      local.get $5
      i32.eqz
      if
       global.get $~lib/memory/__stack_pointer
       i32.const 1
       i32.const 2
       i32.const 20
       i32.const 0
       call $~lib/rt/__newArray
       local.tee $0
       i32.store offset=20
       global.get $~lib/memory/__stack_pointer
       local.get $0
       i32.store offset=8
       local.get $0
       i32.load offset=4
       i32.const 2400
       i32.store
       br $folding-inner1
      end
     else
      local.get $5
      i32.eqz
      br_if $folding-inner0
      global.get $~lib/memory/__stack_pointer
      local.get $5
      local.get $7
      local.get $5
      local.get $7
      i32.lt_s
      select
      local.tee $2
      i32.const 2
      i32.const 20
      i32.const 0
      call $~lib/rt/__newArray
      local.tee $3
      i32.store offset=12
      global.get $~lib/memory/__stack_pointer
      local.get $3
      i32.store offset=8
      local.get $3
      i32.load offset=4
      local.set $4
      i32.const 0
      local.set $1
      loop $for-loop|0
       local.get $1
       local.get $2
       i32.lt_s
       if
        global.get $~lib/memory/__stack_pointer
        i32.const 2
        i32.const 2
        call $~lib/rt/itcms/__new
        local.tee $5
        i32.store offset=16
        local.get $5
        local.get $0
        local.get $1
        i32.const 1
        i32.shl
        i32.add
        i32.load16_u
        i32.store16
        local.get $4
        local.get $1
        i32.const 2
        i32.shl
        i32.add
        local.get $5
        i32.store
        local.get $3
        local.get $5
        i32.const 1
        call $~lib/rt/itcms/__link
        local.get $1
        i32.const 1
        i32.add
        local.set $1
        br $for-loop|0
       end
      end
      global.get $~lib/memory/__stack_pointer
      i32.const 40
      i32.add
      global.set $~lib/memory/__stack_pointer
      local.get $3
      return
     end
     global.get $~lib/memory/__stack_pointer
     i32.const 0
     i32.const 2
     i32.const 20
     i32.const 0
     call $~lib/rt/__newArray
     local.tee $6
     i32.store offset=24
     loop $while-continue|1
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store offset=8
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.store offset=28
      global.get $~lib/memory/__stack_pointer
      i32.const 8
      i32.sub
      global.set $~lib/memory/__stack_pointer
      call $~stack_check
      global.get $~lib/memory/__stack_pointer
      i64.const 0
      i64.store
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.store
      block $folding-inner10
       local.get $1
       call $~lib/string/String#get:length
       local.tee $9
       i32.eqz
       if
        i32.const 0
        local.set $2
        br $folding-inner10
       end
       global.get $~lib/memory/__stack_pointer
       local.get $0
       i32.store
       local.get $0
       call $~lib/string/String#get:length
       local.tee $10
       if
        local.get $3
        i32.const 0
        local.get $3
        i32.const 0
        i32.gt_s
        select
        local.tee $2
        local.get $10
        local.get $2
        local.get $10
        i32.lt_s
        select
        local.set $2
        local.get $10
        local.get $9
        i32.sub
        local.set $10
        loop $for-loop|01
         local.get $2
         local.get $10
         i32.le_s
         if
          global.get $~lib/memory/__stack_pointer
          local.get $0
          i32.store
          global.get $~lib/memory/__stack_pointer
          local.get $1
          i32.store offset=4
          local.get $0
          local.get $2
          local.get $1
          local.get $9
          call $~lib/util/string/compareImpl
          i32.eqz
          br_if $folding-inner10
          local.get $2
          i32.const 1
          i32.add
          local.set $2
          br $for-loop|01
         end
        end
       end
       i32.const -1
       local.set $2
      end
      global.get $~lib/memory/__stack_pointer
      i32.const 8
      i32.add
      global.set $~lib/memory/__stack_pointer
      local.get $2
      i32.const -1
      i32.xor
      if
       local.get $2
       local.get $3
       i32.sub
       local.tee $9
       i32.const 0
       i32.gt_s
       if
        global.get $~lib/memory/__stack_pointer
        local.get $9
        i32.const 1
        i32.shl
        local.tee $9
        i32.const 2
        call $~lib/rt/itcms/__new
        local.tee $10
        i32.store offset=32
        local.get $10
        local.get $0
        local.get $3
        i32.const 1
        i32.shl
        i32.add
        local.get $9
        memory.copy
        global.get $~lib/memory/__stack_pointer
        local.get $6
        i32.store offset=8
        global.get $~lib/memory/__stack_pointer
        local.get $10
        i32.store offset=28
        local.get $6
        local.get $10
        call $~lib/array/Array<~lib/string/String>#push
       else
        global.get $~lib/memory/__stack_pointer
        local.get $6
        i32.store offset=8
        global.get $~lib/memory/__stack_pointer
        i32.const 2400
        i32.store offset=28
        local.get $6
        i32.const 2400
        call $~lib/array/Array<~lib/string/String>#push
       end
       local.get $4
       i32.const 1
       i32.add
       local.tee $4
       local.get $7
       i32.eq
       br_if $folding-inner2
       local.get $2
       local.get $8
       i32.add
       local.set $3
       br $while-continue|1
      end
     end
     local.get $3
     i32.eqz
     if
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store offset=8
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store offset=28
      local.get $6
      local.get $0
      call $~lib/array/Array<~lib/string/String>#push
      br $folding-inner2
     end
     local.get $5
     local.get $3
     i32.sub
     local.tee $1
     i32.const 0
     i32.gt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.const 1
      i32.shl
      local.tee $1
      i32.const 2
      call $~lib/rt/itcms/__new
      local.tee $2
      i32.store offset=36
      local.get $2
      local.get $0
      local.get $3
      i32.const 1
      i32.shl
      i32.add
      local.get $1
      memory.copy
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store offset=8
      global.get $~lib/memory/__stack_pointer
      local.get $2
      i32.store offset=28
      local.get $6
      local.get $2
      call $~lib/array/Array<~lib/string/String>#push
     else
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store offset=8
      global.get $~lib/memory/__stack_pointer
      i32.const 2400
      i32.store offset=28
      local.get $6
      i32.const 2400
      call $~lib/array/Array<~lib/string/String>#push
     end
     global.get $~lib/memory/__stack_pointer
     i32.const 40
     i32.add
     global.set $~lib/memory/__stack_pointer
     local.get $6
     return
    end
    i32.const 0
    i32.const 2
    i32.const 20
    i32.const 0
    call $~lib/rt/__newArray
    local.set $0
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 40
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   return
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 40
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $6
 )
 (func $~lib/@massalabs/massa-as-sdk/assembly/std/utils/address/json2Address~anonymous|0 (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  local.get $0
  local.get $0
  call $~lib/string/String#get:length
  i32.const 1
  i32.sub
  call $~lib/string/String#substring
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.const 18
  call $~lib/rt/itcms/__new
  local.tee $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  local.get $0
  local.get $1
  call $"~lib/@massalabs/massa-as-sdk/assembly/collections/persistentMap/PersistentMap<~lib/string/String,assembly/contracts/main/Campaign>#set:_elementPrefix"
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/array/Array<~lib/string/String>#map<~lib/@massalabs/massa-as-sdk/assembly/std/address/Address> (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 20
  memory.fill
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=12
  local.tee $3
  i32.const 2
  i32.const 19
  i32.const 0
  call $~lib/rt/__newArray
  local.tee $1
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  i32.load offset=4
  local.set $4
  loop $for-loop|0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $2
   local.get $3
   local.get $0
   i32.load offset=12
   local.tee $5
   local.get $3
   local.get $5
   i32.lt_s
   select
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=12
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.const 2
    i32.shl
    local.tee $5
    local.get $0
    i32.load offset=4
    i32.add
    i32.load
    local.tee $6
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=8
    i32.const 3
    global.set $~argumentsLength
    global.get $~lib/memory/__stack_pointer
    local.get $6
    local.get $2
    local.get $0
    i32.const 3232
    i32.load
    call_indirect (type $5)
    local.tee $6
    i32.store offset=16
    local.get $4
    local.get $5
    i32.add
    local.get $6
    i32.store
    local.get $1
    local.get $6
    i32.const 1
    call $~lib/rt/itcms/__link
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $~lib/@massalabs/massa-as-sdk/assembly/std/utils/address/json2Address (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  local.get $0
  call $~lib/string/String#get:length
  i32.const 1
  i32.sub
  call $~lib/string/String#substring
  local.tee $1
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  i32.const 3152
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 3152
  i32.store offset=4
  i32.const 1
  global.set $~argumentsLength
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  block $2of2
   block $1of2
    block $0of2
     block $outOfRange
      global.get $~argumentsLength
      br_table $0of2 $1of2 $2of2 $outOfRange
     end
     unreachable
    end
    i32.const 0
    local.set $0
   end
   i32.const 2147483647
   local.set $3
  end
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $1
  local.get $0
  local.get $3
  call $~lib/string/String#split
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
  local.get $0
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 3232
  i32.store offset=4
  local.get $0
  call $~lib/array/Array<~lib/string/String>#map<~lib/@massalabs/massa-as-sdk/assembly/std/address/Address>
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/@massalabs/massa-as-sdk/assembly/std/context/addressStack (result i32)
  (local $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  call $~lib/@massalabs/massa-as-sdk/assembly/env/env/env.callStack
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/@massalabs/massa-as-sdk/assembly/std/utils/address/json2Address
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/array/Array<~lib/@massalabs/massa-as-sdk/assembly/std/address/Address>#get:length (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.load offset=12
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/array/Array<~lib/@massalabs/massa-as-sdk/assembly/std/address/Address>#__get (param $0 i32) (param $1 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 1152
   i32.const 3184
   i32.const 114
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.tee $0
  i32.store offset=4
  local.get $0
  i32.eqz
  if
   i32.const 3264
   i32.const 3184
   i32.const 118
   i32.const 40
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/@massalabs/massa-as-sdk/assembly/std/context/caller (result i32)
  (local $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  call $~lib/@massalabs/massa-as-sdk/assembly/std/context/addressStack
  local.tee $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  call $~lib/array/Array<~lib/@massalabs/massa-as-sdk/assembly/std/address/Address>#get:length
  i32.const 2
  i32.lt_s
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.sub
   global.set $~lib/memory/__stack_pointer
   call $~stack_check
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   call $~lib/@massalabs/massa-as-sdk/assembly/std/context/addressStack
   local.tee $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=8
   local.get $0
   local.get $0
   call $~lib/array/Array<~lib/@massalabs/massa-as-sdk/assembly/std/address/Address>#get:length
   i32.const 1
   i32.sub
   call $~lib/array/Array<~lib/@massalabs/massa-as-sdk/assembly/std/address/Address>#__get
   local.set $0
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
  else
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=8
   local.get $0
   local.get $0
   call $~lib/array/Array<~lib/@massalabs/massa-as-sdk/assembly/std/address/Address>#get:length
   i32.const 2
   i32.sub
   call $~lib/array/Array<~lib/@massalabs/massa-as-sdk/assembly/std/address/Address>#__get
   local.set $0
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $assembly/contracts/main/constructor (param $0 i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 20
  memory.fill
  global.get $~lib/memory/__stack_pointer
  i32.const 1744
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 1744
  i32.store offset=4
  i32.const 1744
  call $~lib/@massalabs/massa-as-sdk/assembly/std/storage/toDatastoreFormat<~lib/string/String>
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $~lib/@massalabs/massa-as-sdk/assembly/env/env/env.has
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 20
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 2576
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 2576
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/staticarray/StaticArray<u8>#get:length
  i32.const 0
  i32.gt_s
  if
   global.get $~lib/memory/__stack_pointer
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=16
   local.get $0
   call $~lib/@massalabs/as-types/assembly/argument/Args#constructor
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=12
   local.get $0
   call $~lib/@massalabs/as-types/assembly/argument/Args#nextString
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 2576
   i32.store offset=8
   local.get $1
   local.get $0
   i32.const 2576
   call $assembly/contracts/main/unwrapOr<~lib/string/String>
   local.tee $1
   i32.store offset=4
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 1744
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  i32.const 1744
  local.get $1
  call $~lib/@massalabs/massa-as-sdk/assembly/std/storage/set<~lib/string/String>
  global.get $~lib/memory/__stack_pointer
  i32.const 1792
  i32.store
  call $~lib/@massalabs/massa-as-sdk/assembly/std/context/caller
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=12
  local.get $0
  call $~lib/@massalabs/as-types/assembly/serialization/numbers/bytesToU32
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  i32.const 1792
  local.get $0
  call $~lib/@massalabs/massa-as-sdk/assembly/std/storage/set<~lib/string/String>
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/string/String.__eq (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  block $folding-inner0
   local.get $0
   local.get $1
   i32.eq
   if
    i32.const 1
    local.set $2
    br $folding-inner0
   end
   local.get $1
   i32.eqz
   local.get $0
   i32.eqz
   i32.or
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   call $~lib/string/String#get:length
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   local.get $1
   call $~lib/string/String#get:length
   local.get $3
   i32.ne
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   local.get $0
   i32.const 0
   local.get $1
   local.get $3
   call $~lib/util/string/compareImpl
   i32.eqz
   local.set $2
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $~lib/string/String.__ne (param $0 i32) (param $1 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $~lib/string/String.__eq
  i32.eqz
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/util/string/joinReferenceArray<~lib/string/String> (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 20
  memory.fill
  block $folding-inner0
   local.get $1
   i32.const 1
   i32.sub
   local.tee $3
   i32.const 0
   i32.lt_s
   if
    i32.const 2400
    local.set $0
    br $folding-inner0
   end
   local.get $3
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.load
    local.tee $0
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=4
    local.get $0
    i32.const 0
    call $~lib/string/String.__ne
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=4
    else
     i32.const 2400
     local.set $0
    end
    br $folding-inner0
   end
   i32.const 2400
   local.set $1
   global.get $~lib/memory/__stack_pointer
   i32.const 2400
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   i32.const 2400
   i32.store offset=4
   i32.const 2400
   call $~lib/string/String#get:length
   local.set $5
   loop $for-loop|0
    local.get $3
    local.get $4
    i32.gt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     local.get $4
     i32.const 2
     i32.shl
     i32.add
     i32.load
     local.tee $2
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $2
     i32.store offset=4
     local.get $2
     i32.const 0
     call $~lib/string/String.__ne
     if
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.store offset=4
      global.get $~lib/memory/__stack_pointer
      local.get $2
      i32.store offset=16
      global.get $~lib/memory/__stack_pointer
      local.get $2
      i32.store offset=12
      global.get $~lib/memory/__stack_pointer
      local.get $1
      local.get $2
      call $~lib/string/String.__concat
      local.tee $1
      i32.store offset=8
     end
     local.get $5
     if
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.store offset=4
      global.get $~lib/memory/__stack_pointer
      i32.const 2400
      i32.store offset=12
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.const 2400
      call $~lib/string/String.__concat
      local.tee $1
      i32.store offset=8
     end
     local.get $4
     i32.const 1
     i32.add
     local.set $4
     br $for-loop|0
    end
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   local.get $3
   i32.const 2
   i32.shl
   i32.add
   i32.load
   local.tee $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   local.get $0
   i32.const 0
   call $~lib/string/String.__ne
   if
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store offset=4
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=16
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=12
    global.get $~lib/memory/__stack_pointer
    local.get $1
    local.get $0
    call $~lib/string/String.__concat
    local.tee $1
    i32.store offset=8
   end
   local.get $1
   local.set $0
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/staticarray/StaticArray<~lib/string/String>#join (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 2
  i32.shr_u
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 2400
  i32.store
  local.get $0
  local.get $1
  call $~lib/util/string/joinReferenceArray<~lib/string/String>
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $"~lib/@massalabs/massa-as-sdk/assembly/collections/persistentMap/PersistentMap<~lib/string/String,assembly/contracts/main/HosterProfile>#_key" (param $0 i32) (param $1 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load
  local.tee $0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  local.get $0
  local.get $1
  call $~lib/string/String.__concat
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/@massalabs/as-types/assembly/serialization/strings/stringToBytes
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/@massalabs/massa-as-sdk/assembly/std/storage/has<~lib/staticarray/StaticArray<u8>> (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/@massalabs/massa-as-sdk/assembly/env/env/env.has
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $"~lib/@massalabs/massa-as-sdk/assembly/collections/persistentMap/PersistentMap<~lib/string/String,assembly/contracts/main/HosterProfile>#contains" (param $0 i32) (param $1 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  local.get $0
  local.get $1
  call $"~lib/@massalabs/massa-as-sdk/assembly/collections/persistentMap/PersistentMap<~lib/string/String,assembly/contracts/main/HosterProfile>#_key"
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/@massalabs/massa-as-sdk/assembly/std/storage/has<~lib/staticarray/StaticArray<u8>>
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $assembly/contracts/main/HosterProfile#constructor (result i32)
  (local $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 56
  i32.const 10
  call $~lib/rt/itcms/__new
  local.tee $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 2400
  i32.store offset=8
  local.get $0
  i32.const 2400
  call $"~lib/@massalabs/massa-as-sdk/assembly/collections/persistentMap/PersistentMap<~lib/string/String,assembly/contracts/main/Campaign>#set:_elementPrefix"
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 2400
  i32.store offset=8
  local.get $0
  i32.const 2400
  call $~lib/@massalabs/as-types/assembly/argument/Args#set:serialized
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 2400
  i32.store offset=8
  local.get $0
  i32.const 2400
  call $assembly/contracts/main/HosterProfile#set:businessName
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 2400
  i32.store offset=8
  local.get $0
  i32.const 2400
  call $assembly/contracts/main/HosterProfile#set:categories
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i64.const 0
  call $assembly/contracts/main/HosterProfile#set:totalBudget
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i64.const 0
  call $assembly/contracts/main/HosterProfile#set:totalSpent
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 0
  call $assembly/contracts/main/HosterProfile#set:activeCampaigns
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i64.const 0
  call $assembly/contracts/main/HosterProfile#set:createdAt
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i64.const 0
  call $assembly/contracts/main/HosterProfile#set:updatedAt
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/@massalabs/as-types/assembly/result/Result<assembly/contracts/main/HosterProfile>#constructor (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  i32.const 23
  call $byn$mgfn-shared$~lib/@massalabs/as-types/assembly/result/Result<~lib/string/String>#constructor
 )
 (func $~lib/@massalabs/massa-as-sdk/assembly/std/storage/get<~lib/staticarray/StaticArray<u8>> (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  call $~lib/@massalabs/massa-as-sdk/assembly/env/env/env.get
  local.tee $0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/@massalabs/as-types/assembly/result/Result<u64>#constructor (param $0 i64) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.const 25
  call $~lib/rt/itcms/__new
  local.tee $2
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  local.get $0
  i64.store
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  local.get $2
  local.get $1
  call $assembly/contracts/main/HosterProfile#set:businessName
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $~lib/@massalabs/as-types/assembly/argument/Args#nextU64 (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i64)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  block $folding-inner0 (result i32)
   local.get $0
   i32.load
   i32.const 8
   i32.add
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=4
   local.tee $2
   i32.store
   local.get $2
   call $~lib/staticarray/StaticArray<u8>#get:length
   local.get $1
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 3968
    i32.store
    i64.const 0
    i32.const 3968
    call $~lib/@massalabs/as-types/assembly/result/Result<u64>#constructor
    br $folding-inner0
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   local.get $0
   i32.const 8
   call $~lib/@massalabs/as-types/assembly/argument/Args#getNextData
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   call $~stack_check
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i64.load
   local.set $3
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $3
   i32.const 0
   call $~lib/@massalabs/as-types/assembly/result/Result<u64>#constructor
  end
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/@massalabs/as-types/assembly/result/Result<i32>#constructor (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  i32.const 24
  call $byn$mgfn-shared$~lib/@massalabs/as-types/assembly/result/Result<u32>#constructor
 )
 (func $~lib/@massalabs/as-types/assembly/argument/Args#get:offset (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.load
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $assembly/contracts/main/HosterProfile#deserialize (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 308
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 308
  memory.fill
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  call $~lib/@massalabs/as-types/assembly/argument/Args#constructor
  local.tee $1
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  local.get $1
  call $~lib/@massalabs/as-types/assembly/argument/Args#nextString
  local.tee $2
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  i32.const 3696
  i32.store offset=20
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=24
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=28
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=32
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.load offset=4
  local.tee $3
  i32.store offset=12
  block $folding-inner0
   local.get $3
   call $~lib/string/String.__not
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 3696
    i32.store offset=36
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=12
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.load offset=4
    local.tee $0
    i32.store offset=40
    local.get $0
    i32.eqz
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=44
    global.get $~lib/memory/__stack_pointer
    i32.const 3744
    i32.store offset=12
    global.get $~lib/memory/__stack_pointer
    i32.const 3696
    i32.store offset=32
    i32.const 3744
    i32.const 0
    i32.const 3696
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 3744
    i32.store offset=12
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=32
    i32.const 3744
    i32.const 2
    local.get $0
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 3744
    i32.store offset=12
    global.get $~lib/memory/__stack_pointer
    i32.const 2400
    i32.store offset=32
    i32.const 3744
    call $~lib/staticarray/StaticArray<~lib/string/String>#join
    i32.const 2896
    i32.const 52
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=48
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.load
   local.tee $2
   i32.store offset=8
   local.get $0
   local.get $2
   call $"~lib/@massalabs/massa-as-sdk/assembly/collections/persistentMap/PersistentMap<~lib/string/String,assembly/contracts/main/Campaign>#set:_elementPrefix"
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   local.get $1
   call $~lib/@massalabs/as-types/assembly/argument/Args#nextString
   local.tee $2
   i32.store offset=52
   global.get $~lib/memory/__stack_pointer
   i32.const 3392
   i32.store offset=56
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=60
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=64
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=32
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.load offset=4
   local.tee $3
   i32.store offset=12
   local.get $3
   call $~lib/string/String.__not
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 3392
    i32.store offset=68
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=12
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.load offset=4
    local.tee $0
    i32.store offset=72
    local.get $0
    i32.eqz
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=76
    global.get $~lib/memory/__stack_pointer
    i32.const 3776
    i32.store offset=12
    global.get $~lib/memory/__stack_pointer
    i32.const 3392
    i32.store offset=32
    i32.const 3776
    i32.const 0
    i32.const 3392
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 3776
    i32.store offset=12
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=32
    i32.const 3776
    i32.const 2
    local.get $0
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 3776
    i32.store offset=12
    global.get $~lib/memory/__stack_pointer
    i32.const 2400
    i32.store offset=32
    i32.const 3776
    call $~lib/staticarray/StaticArray<~lib/string/String>#join
    i32.const 2896
    i32.const 52
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=80
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.load
   local.tee $2
   i32.store offset=8
   local.get $0
   local.get $2
   call $~lib/@massalabs/as-types/assembly/argument/Args#set:serialized
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   local.get $1
   call $~lib/@massalabs/as-types/assembly/argument/Args#nextString
   local.tee $2
   i32.store offset=84
   global.get $~lib/memory/__stack_pointer
   i32.const 3808
   i32.store offset=88
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=92
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=96
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=32
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.load offset=4
   local.tee $3
   i32.store offset=12
   local.get $3
   call $~lib/string/String.__not
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 3808
    i32.store offset=100
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=12
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.load offset=4
    local.tee $0
    i32.store offset=104
    local.get $0
    i32.eqz
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=108
    global.get $~lib/memory/__stack_pointer
    i32.const 3856
    i32.store offset=12
    global.get $~lib/memory/__stack_pointer
    i32.const 3808
    i32.store offset=32
    i32.const 3856
    i32.const 0
    i32.const 3808
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 3856
    i32.store offset=12
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=32
    i32.const 3856
    i32.const 2
    local.get $0
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 3856
    i32.store offset=12
    global.get $~lib/memory/__stack_pointer
    i32.const 2400
    i32.store offset=32
    i32.const 3856
    call $~lib/staticarray/StaticArray<~lib/string/String>#join
    i32.const 2896
    i32.const 52
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=112
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.load
   local.tee $2
   i32.store offset=8
   local.get $0
   local.get $2
   call $assembly/contracts/main/HosterProfile#set:businessName
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   local.get $1
   call $~lib/@massalabs/as-types/assembly/argument/Args#nextString
   local.tee $2
   i32.store offset=116
   global.get $~lib/memory/__stack_pointer
   i32.const 3888
   i32.store offset=120
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=124
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=128
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=32
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.load offset=4
   local.tee $3
   i32.store offset=12
   local.get $3
   call $~lib/string/String.__not
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 3888
    i32.store offset=132
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=12
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.load offset=4
    local.tee $0
    i32.store offset=136
    local.get $0
    i32.eqz
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=140
    global.get $~lib/memory/__stack_pointer
    i32.const 3936
    i32.store offset=12
    global.get $~lib/memory/__stack_pointer
    i32.const 3888
    i32.store offset=32
    i32.const 3936
    i32.const 0
    i32.const 3888
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 3936
    i32.store offset=12
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=32
    i32.const 3936
    i32.const 2
    local.get $0
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 3936
    i32.store offset=12
    global.get $~lib/memory/__stack_pointer
    i32.const 2400
    i32.store offset=32
    i32.const 3936
    call $~lib/staticarray/StaticArray<~lib/string/String>#join
    i32.const 2896
    i32.const 52
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=144
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.load
   local.tee $2
   i32.store offset=8
   local.get $0
   local.get $2
   call $assembly/contracts/main/HosterProfile#set:categories
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $1
   call $~lib/@massalabs/as-types/assembly/argument/Args#nextU64
   local.tee $2
   i32.store offset=148
   global.get $~lib/memory/__stack_pointer
   i32.const 4112
   i32.store offset=152
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=156
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=160
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.load offset=8
   local.tee $3
   i32.store offset=8
   local.get $3
   call $~lib/string/String.__not
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 4112
    i32.store offset=164
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.load offset=8
    local.tee $0
    i32.store offset=168
    local.get $0
    i32.eqz
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=172
    global.get $~lib/memory/__stack_pointer
    i32.const 4144
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    i32.const 4112
    i32.store offset=12
    i32.const 4144
    i32.const 0
    i32.const 4112
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 4144
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=12
    i32.const 4144
    i32.const 2
    local.get $0
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 4144
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    i32.const 2400
    i32.store offset=12
    i32.const 4144
    call $~lib/staticarray/StaticArray<~lib/string/String>#join
    i32.const 2896
    i32.const 52
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=176
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=8
   local.get $0
   local.get $2
   i64.load
   call $assembly/contracts/main/HosterProfile#set:totalBudget
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $1
   call $~lib/@massalabs/as-types/assembly/argument/Args#nextU64
   local.tee $2
   i32.store offset=180
   global.get $~lib/memory/__stack_pointer
   i32.const 4176
   i32.store offset=184
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=188
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=192
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.load offset=8
   local.tee $3
   i32.store offset=8
   local.get $3
   call $~lib/string/String.__not
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 4176
    i32.store offset=196
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.load offset=8
    local.tee $0
    i32.store offset=200
    local.get $0
    i32.eqz
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=204
    global.get $~lib/memory/__stack_pointer
    i32.const 4208
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    i32.const 4176
    i32.store offset=12
    i32.const 4208
    i32.const 0
    i32.const 4176
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 4208
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=12
    i32.const 4208
    i32.const 2
    local.get $0
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 4208
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    i32.const 2400
    i32.store offset=12
    i32.const 4208
    call $~lib/staticarray/StaticArray<~lib/string/String>#join
    i32.const 2896
    i32.const 52
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=208
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=8
   local.get $0
   local.get $2
   i64.load
   call $assembly/contracts/main/HosterProfile#set:totalSpent
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $1
   call $~lib/@massalabs/as-types/assembly/argument/Args#nextU32
   local.tee $2
   i32.store offset=212
   global.get $~lib/memory/__stack_pointer
   i32.const 4240
   i32.store offset=216
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=220
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=224
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.load offset=4
   local.tee $3
   i32.store offset=8
   local.get $3
   call $~lib/string/String.__not
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 4240
    i32.store offset=228
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.load offset=4
    local.tee $0
    i32.store offset=232
    local.get $0
    i32.eqz
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=236
    global.get $~lib/memory/__stack_pointer
    i32.const 4272
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    i32.const 4240
    i32.store offset=12
    i32.const 4272
    i32.const 0
    i32.const 4240
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 4272
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=12
    i32.const 4272
    i32.const 2
    local.get $0
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 4272
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    i32.const 2400
    i32.store offset=12
    i32.const 4272
    call $~lib/staticarray/StaticArray<~lib/string/String>#join
    i32.const 2896
    i32.const 52
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=240
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=8
   local.get $0
   local.get $2
   i32.load
   call $assembly/contracts/main/HosterProfile#set:activeCampaigns
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $1
   call $~lib/@massalabs/as-types/assembly/argument/Args#nextU64
   local.tee $2
   i32.store offset=244
   global.get $~lib/memory/__stack_pointer
   i32.const 4304
   i32.store offset=248
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=252
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=256
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.load offset=8
   local.tee $3
   i32.store offset=8
   local.get $3
   call $~lib/string/String.__not
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 4304
    i32.store offset=260
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.load offset=8
    local.tee $0
    i32.store offset=264
    local.get $0
    i32.eqz
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=268
    global.get $~lib/memory/__stack_pointer
    i32.const 4352
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    i32.const 4304
    i32.store offset=12
    i32.const 4352
    i32.const 0
    i32.const 4304
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 4352
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=12
    i32.const 4352
    i32.const 2
    local.get $0
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 4352
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    i32.const 2400
    i32.store offset=12
    i32.const 4352
    call $~lib/staticarray/StaticArray<~lib/string/String>#join
    i32.const 2896
    i32.const 52
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=272
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=8
   local.get $0
   local.get $2
   i64.load
   call $assembly/contracts/main/HosterProfile#set:createdAt
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $1
   call $~lib/@massalabs/as-types/assembly/argument/Args#nextU64
   local.tee $2
   i32.store offset=276
   global.get $~lib/memory/__stack_pointer
   i32.const 4384
   i32.store offset=280
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=284
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=288
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.load offset=8
   local.tee $3
   i32.store offset=8
   local.get $3
   call $~lib/string/String.__not
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 4384
    i32.store offset=292
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.load offset=8
    local.tee $0
    i32.store offset=296
    local.get $0
    i32.eqz
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=300
    global.get $~lib/memory/__stack_pointer
    i32.const 4432
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    i32.const 4384
    i32.store offset=12
    i32.const 4432
    i32.const 0
    i32.const 4384
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 4432
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=12
    i32.const 4432
    i32.const 2
    local.get $0
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 4432
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    i32.const 2400
    i32.store offset=12
    i32.const 4432
    call $~lib/staticarray/StaticArray<~lib/string/String>#join
    i32.const 2896
    i32.const 52
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=304
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=8
   local.get $0
   local.get $2
   i64.load
   call $assembly/contracts/main/HosterProfile#set:updatedAt
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   local.get $1
   call $~lib/@massalabs/as-types/assembly/argument/Args#get:offset
   i32.const 0
   call $~lib/@massalabs/as-types/assembly/result/Result<i32>#constructor
   local.set $0
   global.get $~lib/memory/__stack_pointer
   i32.const 308
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   return
  end
  i32.const 2768
  i32.const 2896
  i32.const 52
  i32.const 32
  call $~lib/builtins/abort
  unreachable
 )
 (func $"~lib/@massalabs/massa-as-sdk/assembly/collections/persistentMap/PersistentMap<~lib/string/String,assembly/contracts/main/HosterProfile>#getSome" (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 24
  memory.fill
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  block $folding-inner0 (result i32)
   local.get $0
   local.get $1
   call $"~lib/@massalabs/massa-as-sdk/assembly/collections/persistentMap/PersistentMap<~lib/string/String,assembly/contracts/main/HosterProfile>#contains"
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=8
    local.get $2
    i32.eqz
    if
     i32.const 2768
     i32.const 3488
     i32.const 220
     i32.const 28
     call $~lib/builtins/abort
     unreachable
    end
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store
    global.get $~lib/memory/__stack_pointer
    i32.const 3648
    i32.store offset=4
    local.get $2
    i32.const 3648
    call $~lib/@massalabs/as-types/assembly/result/Result<assembly/contracts/main/HosterProfile>#constructor
    br $folding-inner0
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   local.set $3
   global.get $~lib/memory/__stack_pointer
   i32.const 28
   i32.sub
   global.set $~lib/memory/__stack_pointer
   call $~stack_check
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 28
   memory.fill
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   local.get $0
   local.get $1
   call $"~lib/@massalabs/massa-as-sdk/assembly/collections/persistentMap/PersistentMap<~lib/string/String,assembly/contracts/main/HosterProfile>#contains"
   if
    local.get $2
    if (result i32)
     global.get $~lib/memory/__stack_pointer
     local.set $4
     global.get $~lib/memory/__stack_pointer
     local.get $2
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=12
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store offset=16
     local.get $0
     local.get $1
     call $"~lib/@massalabs/massa-as-sdk/assembly/collections/persistentMap/PersistentMap<~lib/string/String,assembly/contracts/main/HosterProfile>#_key"
     local.set $0
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=8
     local.get $0
     call $~lib/@massalabs/massa-as-sdk/assembly/std/storage/get<~lib/staticarray/StaticArray<u8>>
     local.set $0
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=4
     local.get $4
     local.get $2
     local.get $0
     call $assembly/contracts/main/HosterProfile#deserialize
     local.tee $0
     i32.store offset=20
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=24
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=4
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.load offset=4
     local.tee $0
     i32.store
     local.get $2
     i32.const 0
     local.get $0
     call $~lib/string/String.__not
     select
    else
     i32.const 0
    end
    local.set $2
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 28
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $3
   local.get $2
   i32.store offset=16
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=20
   local.get $2
   i32.eqz
   if
    i32.const 2768
    i32.const 3488
    i32.const 224
    i32.const 26
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store
   local.get $2
   i32.const 0
   call $~lib/@massalabs/as-types/assembly/result/Result<assembly/contracts/main/HosterProfile>#constructor
  end
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $assembly/contracts/main/getHoster (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const -64
  i32.add
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 64
  memory.fill
  global.get $~lib/memory/__stack_pointer
  global.get $assembly/contracts/main/hosters
  local.tee $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  block $folding-inner0
   local.get $1
   local.get $0
   call $"~lib/@massalabs/massa-as-sdk/assembly/collections/persistentMap/PersistentMap<~lib/string/String,assembly/contracts/main/HosterProfile>#contains"
   if
    global.get $~lib/memory/__stack_pointer
    local.set $1
    global.get $~lib/memory/__stack_pointer
    global.get $assembly/contracts/main/hosters
    local.tee $2
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=4
    global.get $~lib/memory/__stack_pointer
    i32.const 2400
    i32.store offset=12
    global.get $~lib/memory/__stack_pointer
    i32.const 2400
    i32.store offset=16
    global.get $~lib/memory/__stack_pointer
    i32.const 2400
    i32.store offset=20
    global.get $~lib/memory/__stack_pointer
    i32.const 2400
    i32.store offset=24
    call $assembly/contracts/main/HosterProfile#constructor
    local.set $3
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store offset=8
    local.get $1
    local.get $2
    local.get $0
    local.get $3
    call $"~lib/@massalabs/massa-as-sdk/assembly/collections/persistentMap/PersistentMap<~lib/string/String,assembly/contracts/main/HosterProfile>#getSome"
    local.tee $0
    i32.store offset=28
    global.get $~lib/memory/__stack_pointer
    i32.const 4464
    i32.store offset=32
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=36
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=40
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=4
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.load offset=4
    local.tee $1
    i32.store
    local.get $1
    call $~lib/string/String.__not
    i32.eqz
    if
     global.get $~lib/memory/__stack_pointer
     i32.const 4464
     i32.store offset=44
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.load offset=4
     local.tee $0
     i32.store offset=48
     global.get $~lib/memory/__stack_pointer
     local.set $1
     local.get $0
     i32.eqz
     if
      i32.const 2768
      i32.const 2896
      i32.const 52
      i32.const 32
      call $~lib/builtins/abort
      unreachable
     end
     local.get $1
     local.get $0
     i32.store offset=52
     global.get $~lib/memory/__stack_pointer
     i32.const 4512
     i32.store
     global.get $~lib/memory/__stack_pointer
     i32.const 4464
     i32.store offset=4
     i32.const 4512
     i32.const 0
     i32.const 4464
     call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
     global.get $~lib/memory/__stack_pointer
     i32.const 4512
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=4
     i32.const 4512
     i32.const 2
     local.get $0
     call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
     global.get $~lib/memory/__stack_pointer
     i32.const 4512
     i32.store
     global.get $~lib/memory/__stack_pointer
     i32.const 2400
     i32.store offset=4
     i32.const 4512
     call $~lib/staticarray/StaticArray<~lib/string/String>#join
     i32.const 2896
     i32.const 52
     i32.const 7
     call $~lib/builtins/abort
     unreachable
    end
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=56
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    i32.load
    local.set $1
    br $folding-inner0
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 2400
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 2400
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 2400
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   i32.const 2400
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   call $assembly/contracts/main/HosterProfile#constructor
   local.tee $1
   i32.store offset=60
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   local.get $1
   local.get $0
   call $"~lib/@massalabs/massa-as-sdk/assembly/collections/persistentMap/PersistentMap<~lib/string/String,assembly/contracts/main/Campaign>#set:_elementPrefix"
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   local.get $1
   call $~lib/@massalabs/massa-as-sdk/assembly/env/env/env.time
   call $assembly/contracts/main/HosterProfile#set:createdAt
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   local.get $1
   local.get $1
   i64.load offset=40
   call $assembly/contracts/main/HosterProfile#set:updatedAt
  end
  global.get $~lib/memory/__stack_pointer
  i32.const -64
  i32.sub
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $~lib/@massalabs/as-types/assembly/result/Result<usize>#constructor (param $0 i32) (param $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.const 26
  call $~lib/rt/itcms/__new
  local.tee $2
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  local.get $0
  call $~lib/@massalabs/as-types/assembly/argument/Args#set:_offset
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  local.get $2
  local.get $1
  call $~lib/@massalabs/as-types/assembly/argument/Args#set:serialized
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $"~lib/@massalabs/massa-as-sdk/assembly/collections/persistentMap/PersistentMap<~lib/string/String,assembly/contracts/main/HosterProfile>#size" (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.load offset=4
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $"~lib/@massalabs/massa-as-sdk/assembly/collections/persistentMap/PersistentMap<~lib/string/String,assembly/contracts/main/HosterProfile>#_increaseSize" (param $0 i32) (param $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $"~lib/@massalabs/massa-as-sdk/assembly/collections/persistentMap/PersistentMap<~lib/string/String,assembly/contracts/main/HosterProfile>#contains"
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   local.get $0
   local.get $0
   i32.load offset=4
   i32.const 1
   i32.add
   call $~lib/rt/itcms/Object#set:nextWithColor
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/staticarray/StaticArray<u8>#concat<~lib/staticarray/StaticArray<u8>> (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/staticarray/StaticArray<u8>#get:length
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $~lib/staticarray/StaticArray<u8>#get:length
  local.tee $3
  local.get $2
  i32.add
  local.tee $4
  i32.const 1073741820
  i32.gt_u
  if
   i32.const 1456
   i32.const 1504
   i32.const 178
   i32.const 7
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.const 5
  call $~lib/rt/itcms/__new
  local.tee $4
  i32.store offset=4
  local.get $4
  local.get $0
  local.get $2
  memory.copy
  local.get $2
  local.get $4
  i32.add
  local.get $1
  local.get $3
  memory.copy
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
 )
 (func $"~lib/@massalabs/as-types/assembly/argument/Args#add<u32,void>" (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 20
  memory.fill
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=4
  local.tee $3
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  call $~lib/staticarray/StaticArray<u8>#constructor
  local.tee $2
  i32.store
  local.get $2
  local.get $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=12
  local.get $3
  local.get $2
  call $~lib/staticarray/StaticArray<u8>#concat<~lib/staticarray/StaticArray<u8>>
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $~lib/@massalabs/as-types/assembly/argument/Args#set:serialized
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $"~lib/@massalabs/as-types/assembly/argument/Args#add<~lib/string/String,void>" (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 24
  memory.fill
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  call $~lib/@massalabs/as-types/assembly/serialization/strings/stringToBytes
  local.tee $1
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  local.get $0
  local.get $1
  call $~lib/staticarray/StaticArray<u8>#get:length
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<u32,void>"
  drop
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=20
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=4
  local.tee $2
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=16
  local.get $2
  local.get $1
  call $~lib/staticarray/StaticArray<u8>#concat<~lib/staticarray/StaticArray<u8>>
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  local.get $0
  local.get $1
  call $~lib/@massalabs/as-types/assembly/argument/Args#set:serialized
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $"~lib/@massalabs/as-types/assembly/argument/Args#add<u64,void>" (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 20
  memory.fill
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=4
  local.tee $3
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  call $~lib/staticarray/StaticArray<u8>#constructor
  local.tee $2
  i32.store
  local.get $2
  local.get $1
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=12
  local.get $3
  local.get $2
  call $~lib/staticarray/StaticArray<u8>#concat<~lib/staticarray/StaticArray<u8>>
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $0
  local.get $2
  call $~lib/@massalabs/as-types/assembly/argument/Args#set:serialized
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $assembly/contracts/main/HosterProfile#serialize (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 60
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 60
  memory.fill
  i32.const 0
  global.set $~argumentsLength
  call $~lib/@massalabs/as-types/assembly/argument/Args#constructor@varargs
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=48
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=56
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load
  local.tee $2
  i32.store offset=52
  local.get $1
  local.get $2
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<~lib/string/String,void>"
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=40
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=48
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=4
  local.tee $2
  i32.store offset=44
  local.get $1
  local.get $2
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<~lib/string/String,void>"
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=32
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=40
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=8
  local.tee $2
  i32.store offset=36
  local.get $1
  local.get $2
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<~lib/string/String,void>"
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=24
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=32
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=12
  local.tee $2
  i32.store offset=28
  local.get $1
  local.get $2
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<~lib/string/String,void>"
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=20
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=24
  local.get $1
  local.get $0
  i64.load offset=16
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<u64,void>"
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=20
  local.get $1
  local.get $0
  i64.load offset=24
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<u64,void>"
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=16
  local.get $1
  local.get $0
  i32.load offset=32
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<u32,void>"
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=12
  local.get $1
  local.get $0
  i64.load offset=40
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<u64,void>"
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  local.get $1
  local.get $0
  i64.load offset=48
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<u64,void>"
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $"~lib/@massalabs/massa-as-sdk/assembly/collections/persistentMap/PersistentMap<~lib/string/String,assembly/contracts/main/HosterProfile>#size"
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 60
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/@massalabs/massa-as-sdk/assembly/std/storage/set<~lib/staticarray/StaticArray<u8>> (param $0 i32) (param $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $~lib/@massalabs/massa-as-sdk/assembly/env/env/env.set
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $"~lib/@massalabs/massa-as-sdk/assembly/collections/persistentMap/PersistentMap<~lib/string/String,assembly/contracts/main/HosterProfile>#set" (param $0 i32) (param $1 i32) (param $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.load offset=4
  i32.const -1
  i32.eq
  if
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   local.get $0
   call $"~lib/@massalabs/massa-as-sdk/assembly/collections/persistentMap/PersistentMap<~lib/string/String,assembly/contracts/main/HosterProfile>#size"
   local.set $0
   global.get $~lib/memory/__stack_pointer
   i32.const 4544
   i32.store
   local.get $0
   i32.const 4544
   call $~lib/@massalabs/as-types/assembly/result/Result<usize>#constructor
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $"~lib/@massalabs/massa-as-sdk/assembly/collections/persistentMap/PersistentMap<~lib/string/String,assembly/contracts/main/HosterProfile>#_increaseSize"
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=12
  local.get $0
  local.get $1
  call $"~lib/@massalabs/massa-as-sdk/assembly/collections/persistentMap/PersistentMap<~lib/string/String,assembly/contracts/main/HosterProfile>#_key"
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=8
  local.get $2
  call $assembly/contracts/main/HosterProfile#serialize
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $1
  local.get $2
  call $~lib/@massalabs/massa-as-sdk/assembly/std/storage/set<~lib/staticarray/StaticArray<u8>>
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $"~lib/@massalabs/massa-as-sdk/assembly/collections/persistentMap/PersistentMap<~lib/string/String,assembly/contracts/main/HosterProfile>#size"
  i32.const 0
  call $~lib/@massalabs/as-types/assembly/result/Result<usize>#constructor
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/contracts/main/saveHoster (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  global.get $assembly/contracts/main/hosters
  local.tee $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load
  local.tee $2
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  local.get $1
  local.get $2
  local.get $0
  call $"~lib/@massalabs/massa-as-sdk/assembly/collections/persistentMap/PersistentMap<~lib/string/String,assembly/contracts/main/HosterProfile>#set"
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/contracts/main/readCounter (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 48
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 48
  memory.fill
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  call $~lib/@massalabs/as-types/assembly/serialization/strings/stringToBytes
  local.tee $0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  block $folding-inner0 (result i32)
   local.get $0
   call $~lib/@massalabs/massa-as-sdk/assembly/std/storage/has<~lib/staticarray/StaticArray<u8>>
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $0
    call $~lib/@massalabs/massa-as-sdk/assembly/std/storage/get<~lib/staticarray/StaticArray<u8>>
    local.tee $0
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.set $1
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=12
    local.get $0
    call $~lib/@massalabs/as-types/assembly/argument/Args#constructor
    local.set $0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $1
    local.get $0
    call $~lib/@massalabs/as-types/assembly/argument/Args#nextU32
    local.tee $0
    i32.store offset=16
    global.get $~lib/memory/__stack_pointer
    i32.const 4608
    i32.store offset=20
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=24
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=28
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=12
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.load offset=4
    local.tee $1
    i32.store
    local.get $1
    call $~lib/string/String.__not
    i32.eqz
    if
     global.get $~lib/memory/__stack_pointer
     i32.const 4608
     i32.store offset=32
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.load offset=4
     local.tee $0
     i32.store offset=36
     global.get $~lib/memory/__stack_pointer
     local.set $1
     local.get $0
     i32.eqz
     if
      i32.const 2768
      i32.const 2896
      i32.const 52
      i32.const 32
      call $~lib/builtins/abort
      unreachable
     end
     local.get $1
     local.get $0
     i32.store offset=40
     global.get $~lib/memory/__stack_pointer
     i32.const 4656
     i32.store
     global.get $~lib/memory/__stack_pointer
     i32.const 4608
     i32.store offset=12
     i32.const 4656
     i32.const 0
     i32.const 4608
     call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
     global.get $~lib/memory/__stack_pointer
     i32.const 4656
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=12
     i32.const 4656
     i32.const 2
     local.get $0
     call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
     global.get $~lib/memory/__stack_pointer
     i32.const 4656
     i32.store
     global.get $~lib/memory/__stack_pointer
     i32.const 2400
     i32.store offset=12
     i32.const 4656
     call $~lib/staticarray/StaticArray<~lib/string/String>#join
     i32.const 2896
     i32.const 52
     i32.const 7
     call $~lib/builtins/abort
     unreachable
    end
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=44
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    i32.load
    br $folding-inner0
   end
   i32.const 0
  end
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 48
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $assembly/contracts/main/writeCounter (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  call $~lib/@massalabs/as-types/assembly/serialization/strings/stringToBytes
  local.tee $2
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.set $0
  i32.const 0
  global.set $~argumentsLength
  call $~lib/@massalabs/as-types/assembly/argument/Args#constructor@varargs
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=8
  local.get $3
  local.get $1
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<u32,void>"
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $0
  local.get $1
  call $"~lib/@massalabs/massa-as-sdk/assembly/collections/persistentMap/PersistentMap<~lib/string/String,assembly/contracts/main/HosterProfile>#size"
  local.tee $0
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  local.get $2
  local.get $0
  call $~lib/@massalabs/massa-as-sdk/assembly/std/storage/set<~lib/staticarray/StaticArray<u8>>
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/contracts/main/increaseCounter (param $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  local.get $0
  call $assembly/contracts/main/readCounter
  i32.const 1
  i32.add
  call $assembly/contracts/main/writeCounter
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/@massalabs/massa-as-sdk/assembly/std/utils/events/generateEvent (param $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/@massalabs/massa-as-sdk/assembly/env/env/env.generateEvent
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/contracts/main/registerHoster (param $0 i32)
  (local $1 i64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 68
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 68
  memory.fill
  global.get $~lib/memory/__stack_pointer
  local.set $2
  call $~lib/@massalabs/massa-as-sdk/assembly/std/context/caller
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $2
  local.get $3
  call $~lib/@massalabs/as-types/assembly/serialization/numbers/bytesToU32
  local.tee $2
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  call $~lib/@massalabs/as-types/assembly/argument/Args#constructor
  local.tee $0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  call $~lib/@massalabs/as-types/assembly/argument/Args#nextString
  local.tee $4
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 3392
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=20
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=24
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=28
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.load offset=4
  local.tee $5
  i32.store
  local.get $5
  call $~lib/string/String.__not
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 3392
   i32.store offset=32
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.load offset=4
   local.tee $0
   i32.store offset=36
   global.get $~lib/memory/__stack_pointer
   local.set $2
   local.get $0
   i32.eqz
   if
    i32.const 2768
    i32.const 2896
    i32.const 52
    i32.const 32
    call $~lib/builtins/abort
    unreachable
   end
   local.get $2
   local.get $0
   i32.store offset=40
   global.get $~lib/memory/__stack_pointer
   i32.const 3456
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 3392
   i32.store offset=28
   i32.const 3456
   i32.const 0
   i32.const 3392
   call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
   global.get $~lib/memory/__stack_pointer
   i32.const 3456
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=28
   i32.const 3456
   i32.const 2
   local.get $0
   call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
   global.get $~lib/memory/__stack_pointer
   i32.const 3456
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 2400
   i32.store offset=28
   i32.const 3456
   call $~lib/staticarray/StaticArray<~lib/string/String>#join
   i32.const 2896
   i32.const 52
   i32.const 7
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=44
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $3
  local.get $4
  i32.load
  local.tee $3
  i32.store offset=48
  global.get $~lib/memory/__stack_pointer
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=52
  local.get $0
  call $~lib/@massalabs/as-types/assembly/argument/Args#nextString
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 2400
  i32.store offset=28
  local.get $4
  local.get $5
  i32.const 2400
  call $assembly/contracts/main/unwrapOr<~lib/string/String>
  local.tee $4
  i32.store offset=56
  global.get $~lib/memory/__stack_pointer
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=52
  local.get $0
  call $~lib/@massalabs/as-types/assembly/argument/Args#nextString
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 2400
  i32.store offset=28
  local.get $5
  local.get $0
  i32.const 2400
  call $assembly/contracts/main/unwrapOr<~lib/string/String>
  local.tee $5
  i32.store offset=60
  call $~lib/@massalabs/massa-as-sdk/assembly/env/env/env.time
  local.set $1
  global.get $~lib/memory/__stack_pointer
  global.get $assembly/contracts/main/hosters
  local.tee $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=28
  local.get $0
  local.get $2
  call $"~lib/@massalabs/massa-as-sdk/assembly/collections/persistentMap/PersistentMap<~lib/string/String,assembly/contracts/main/HosterProfile>#contains"
  i32.eqz
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $2
  call $assembly/contracts/main/getHoster
  local.tee $0
  i32.store offset=64
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=28
  local.get $0
  local.get $3
  call $~lib/@massalabs/as-types/assembly/argument/Args#set:serialized
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=28
  local.get $0
  local.get $4
  call $assembly/contracts/main/HosterProfile#set:businessName
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=28
  local.get $0
  local.get $5
  call $assembly/contracts/main/HosterProfile#set:categories
  local.get $6
  if
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   local.get $1
   call $assembly/contracts/main/HosterProfile#set:createdAt
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  call $assembly/contracts/main/HosterProfile#set:updatedAt
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $assembly/contracts/main/saveHoster
  local.get $6
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 1904
   i32.store
   i32.const 1904
   call $assembly/contracts/main/increaseCounter
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4688
  i32.store offset=28
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=52
  i32.const 4688
  local.get $2
  call $~lib/string/String#concat
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/@massalabs/massa-as-sdk/assembly/std/utils/events/generateEvent
  global.get $~lib/memory/__stack_pointer
  i32.const 68
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/contracts/main/DeveloperProfile#constructor (result i32)
  (local $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 88
  i32.const 12
  call $~lib/rt/itcms/__new
  local.tee $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 2400
  i32.store offset=8
  local.get $0
  i32.const 2400
  call $"~lib/@massalabs/massa-as-sdk/assembly/collections/persistentMap/PersistentMap<~lib/string/String,assembly/contracts/main/Campaign>#set:_elementPrefix"
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 2400
  i32.store offset=8
  local.get $0
  i32.const 2400
  call $~lib/@massalabs/as-types/assembly/argument/Args#set:serialized
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 2400
  i32.store offset=8
  local.get $0
  i32.const 2400
  call $assembly/contracts/main/HosterProfile#set:businessName
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 2400
  i32.store offset=8
  local.get $0
  i32.const 2400
  call $assembly/contracts/main/HosterProfile#set:categories
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 50
  call $~lib/rt/itcms/Object#set:rtSize
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i64.const 0
  call $assembly/contracts/main/HosterProfile#set:totalSpent
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i64.const 0
  call $assembly/contracts/main/DeveloperProfile#set:clicks
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i64.const 0
  call $assembly/contracts/main/HosterProfile#set:createdAt
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i64.const 0
  call $assembly/contracts/main/HosterProfile#set:updatedAt
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i64.const 0
  call $assembly/contracts/main/DeveloperProfile#set:lastPayoutAt
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 0
  call $assembly/contracts/main/DeveloperProfile#set:fraudCount
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i64.const 0
  call $assembly/contracts/main/DeveloperProfile#set:createdAt
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i64.const 0
  call $assembly/contracts/main/DeveloperProfile#set:updatedAt
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/@massalabs/as-types/assembly/result/Result<assembly/contracts/main/DeveloperProfile>#constructor (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  i32.const 28
  call $byn$mgfn-shared$~lib/@massalabs/as-types/assembly/result/Result<~lib/string/String>#constructor
 )
 (func $assembly/contracts/main/DeveloperProfile#deserialize (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 436
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 436
  memory.fill
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  call $~lib/@massalabs/as-types/assembly/argument/Args#constructor
  local.tee $2
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  local.get $2
  call $~lib/@massalabs/as-types/assembly/argument/Args#nextString
  local.tee $1
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  i32.const 3696
  i32.store offset=20
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=24
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=28
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=32
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.load offset=4
  local.tee $3
  i32.store offset=12
  block $folding-inner0
   local.get $3
   call $~lib/string/String.__not
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 3696
    i32.store offset=36
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store offset=12
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.load offset=4
    local.tee $0
    i32.store offset=40
    local.get $0
    i32.eqz
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=44
    global.get $~lib/memory/__stack_pointer
    i32.const 4784
    i32.store offset=12
    global.get $~lib/memory/__stack_pointer
    i32.const 3696
    i32.store offset=32
    i32.const 4784
    i32.const 0
    i32.const 3696
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 4784
    i32.store offset=12
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=32
    i32.const 4784
    i32.const 2
    local.get $0
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 4784
    i32.store offset=12
    global.get $~lib/memory/__stack_pointer
    i32.const 2400
    i32.store offset=32
    i32.const 4784
    call $~lib/staticarray/StaticArray<~lib/string/String>#join
    i32.const 2896
    i32.const 52
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=48
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.load
   local.tee $1
   i32.store offset=8
   local.get $0
   local.get $1
   call $"~lib/@massalabs/massa-as-sdk/assembly/collections/persistentMap/PersistentMap<~lib/string/String,assembly/contracts/main/Campaign>#set:_elementPrefix"
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   local.get $2
   call $~lib/@massalabs/as-types/assembly/argument/Args#nextString
   local.tee $1
   i32.store offset=52
   global.get $~lib/memory/__stack_pointer
   i32.const 3392
   i32.store offset=56
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=60
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=64
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=32
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.load offset=4
   local.tee $3
   i32.store offset=12
   local.get $3
   call $~lib/string/String.__not
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 3392
    i32.store offset=68
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store offset=12
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.load offset=4
    local.tee $0
    i32.store offset=72
    local.get $0
    i32.eqz
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=76
    global.get $~lib/memory/__stack_pointer
    i32.const 4816
    i32.store offset=12
    global.get $~lib/memory/__stack_pointer
    i32.const 3392
    i32.store offset=32
    i32.const 4816
    i32.const 0
    i32.const 3392
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 4816
    i32.store offset=12
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=32
    i32.const 4816
    i32.const 2
    local.get $0
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 4816
    i32.store offset=12
    global.get $~lib/memory/__stack_pointer
    i32.const 2400
    i32.store offset=32
    i32.const 4816
    call $~lib/staticarray/StaticArray<~lib/string/String>#join
    i32.const 2896
    i32.const 52
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=80
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.load
   local.tee $1
   i32.store offset=8
   local.get $0
   local.get $1
   call $~lib/@massalabs/as-types/assembly/argument/Args#set:serialized
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   local.get $2
   call $~lib/@massalabs/as-types/assembly/argument/Args#nextString
   local.tee $1
   i32.store offset=84
   global.get $~lib/memory/__stack_pointer
   i32.const 4848
   i32.store offset=88
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=92
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=96
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=32
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.load offset=4
   local.tee $3
   i32.store offset=12
   local.get $3
   call $~lib/string/String.__not
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 4848
    i32.store offset=100
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store offset=12
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.load offset=4
    local.tee $0
    i32.store offset=104
    local.get $0
    i32.eqz
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=108
    global.get $~lib/memory/__stack_pointer
    i32.const 4896
    i32.store offset=12
    global.get $~lib/memory/__stack_pointer
    i32.const 4848
    i32.store offset=32
    i32.const 4896
    i32.const 0
    i32.const 4848
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 4896
    i32.store offset=12
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=32
    i32.const 4896
    i32.const 2
    local.get $0
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 4896
    i32.store offset=12
    global.get $~lib/memory/__stack_pointer
    i32.const 2400
    i32.store offset=32
    i32.const 4896
    call $~lib/staticarray/StaticArray<~lib/string/String>#join
    i32.const 2896
    i32.const 52
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=112
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.load
   local.tee $1
   i32.store offset=8
   local.get $0
   local.get $1
   call $assembly/contracts/main/HosterProfile#set:businessName
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   local.get $2
   call $~lib/@massalabs/as-types/assembly/argument/Args#nextString
   local.tee $1
   i32.store offset=116
   global.get $~lib/memory/__stack_pointer
   i32.const 3888
   i32.store offset=120
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=124
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=128
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=32
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.load offset=4
   local.tee $3
   i32.store offset=12
   local.get $3
   call $~lib/string/String.__not
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 3888
    i32.store offset=132
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store offset=12
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.load offset=4
    local.tee $0
    i32.store offset=136
    local.get $0
    i32.eqz
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=140
    global.get $~lib/memory/__stack_pointer
    i32.const 4928
    i32.store offset=12
    global.get $~lib/memory/__stack_pointer
    i32.const 3888
    i32.store offset=32
    i32.const 4928
    i32.const 0
    i32.const 3888
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 4928
    i32.store offset=12
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=32
    i32.const 4928
    i32.const 2
    local.get $0
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 4928
    i32.store offset=12
    global.get $~lib/memory/__stack_pointer
    i32.const 2400
    i32.store offset=32
    i32.const 4928
    call $~lib/staticarray/StaticArray<~lib/string/String>#join
    i32.const 2896
    i32.const 52
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=144
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.load
   local.tee $1
   i32.store offset=8
   local.get $0
   local.get $1
   call $assembly/contracts/main/HosterProfile#set:categories
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.set $3
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   call $~stack_check
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store
   block $folding-inner00 (result i32)
    local.get $2
    i32.load
    i32.const 4
    i32.add
    local.set $4
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=4
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.load offset=4
    local.tee $1
    i32.store
    local.get $1
    call $~lib/staticarray/StaticArray<u8>#get:length
    local.get $4
    i32.lt_s
    if
     global.get $~lib/memory/__stack_pointer
     i32.const 4960
     i32.store
     i32.const 0
     i32.const 4960
     call $~lib/@massalabs/as-types/assembly/result/Result<i32>#constructor
     br $folding-inner00
    end
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=4
    local.get $2
    i32.const 4
    call $~lib/@massalabs/as-types/assembly/argument/Args#getNextData
    local.set $1
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.sub
    global.set $~lib/memory/__stack_pointer
    call $~stack_check
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store
    local.get $1
    call $~lib/@massalabs/as-types/assembly/serialization/numbers/bytesToU32
    local.set $1
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.add
    global.set $~lib/memory/__stack_pointer
    local.get $1
    i32.const 0
    call $~lib/@massalabs/as-types/assembly/result/Result<i32>#constructor
   end
   local.set $1
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $3
   local.get $1
   i32.store offset=148
   global.get $~lib/memory/__stack_pointer
   i32.const 5104
   i32.store offset=152
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=156
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=160
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.load offset=4
   local.tee $3
   i32.store offset=8
   local.get $3
   call $~lib/string/String.__not
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 5104
    i32.store offset=164
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.load offset=4
    local.tee $0
    i32.store offset=168
    local.get $0
    i32.eqz
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=172
    global.get $~lib/memory/__stack_pointer
    i32.const 5152
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    i32.const 5104
    i32.store offset=12
    i32.const 5152
    i32.const 0
    i32.const 5104
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 5152
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=12
    i32.const 5152
    i32.const 2
    local.get $0
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 5152
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    i32.const 2400
    i32.store offset=12
    i32.const 5152
    call $~lib/staticarray/StaticArray<~lib/string/String>#join
    i32.const 2896
    i32.const 52
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=176
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=8
   local.get $0
   local.get $1
   i32.load
   call $~lib/rt/itcms/Object#set:rtSize
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $2
   call $~lib/@massalabs/as-types/assembly/argument/Args#nextU64
   local.tee $1
   i32.store offset=180
   global.get $~lib/memory/__stack_pointer
   i32.const 5184
   i32.store offset=184
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=188
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=192
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.load offset=8
   local.tee $3
   i32.store offset=8
   local.get $3
   call $~lib/string/String.__not
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 5184
    i32.store offset=196
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.load offset=8
    local.tee $0
    i32.store offset=200
    local.get $0
    i32.eqz
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=204
    global.get $~lib/memory/__stack_pointer
    i32.const 5232
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    i32.const 5184
    i32.store offset=12
    i32.const 5232
    i32.const 0
    i32.const 5184
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 5232
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=12
    i32.const 5232
    i32.const 2
    local.get $0
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 5232
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    i32.const 2400
    i32.store offset=12
    i32.const 5232
    call $~lib/staticarray/StaticArray<~lib/string/String>#join
    i32.const 2896
    i32.const 52
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=208
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=8
   local.get $0
   local.get $1
   i64.load
   call $assembly/contracts/main/HosterProfile#set:totalSpent
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $2
   call $~lib/@massalabs/as-types/assembly/argument/Args#nextU64
   local.tee $1
   i32.store offset=212
   global.get $~lib/memory/__stack_pointer
   i32.const 5264
   i32.store offset=216
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=220
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=224
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.load offset=8
   local.tee $3
   i32.store offset=8
   local.get $3
   call $~lib/string/String.__not
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 5264
    i32.store offset=228
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.load offset=8
    local.tee $0
    i32.store offset=232
    local.get $0
    i32.eqz
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=236
    global.get $~lib/memory/__stack_pointer
    i32.const 5296
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    i32.const 5264
    i32.store offset=12
    i32.const 5296
    i32.const 0
    i32.const 5264
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 5296
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=12
    i32.const 5296
    i32.const 2
    local.get $0
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 5296
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    i32.const 2400
    i32.store offset=12
    i32.const 5296
    call $~lib/staticarray/StaticArray<~lib/string/String>#join
    i32.const 2896
    i32.const 52
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=240
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=8
   local.get $0
   local.get $1
   i64.load
   call $assembly/contracts/main/DeveloperProfile#set:clicks
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $2
   call $~lib/@massalabs/as-types/assembly/argument/Args#nextU64
   local.tee $1
   i32.store offset=244
   global.get $~lib/memory/__stack_pointer
   i32.const 5328
   i32.store offset=248
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=252
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=256
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.load offset=8
   local.tee $3
   i32.store offset=8
   local.get $3
   call $~lib/string/String.__not
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 5328
    i32.store offset=260
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.load offset=8
    local.tee $0
    i32.store offset=264
    local.get $0
    i32.eqz
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=268
    global.get $~lib/memory/__stack_pointer
    i32.const 5376
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    i32.const 5328
    i32.store offset=12
    i32.const 5376
    i32.const 0
    i32.const 5328
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 5376
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=12
    i32.const 5376
    i32.const 2
    local.get $0
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 5376
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    i32.const 2400
    i32.store offset=12
    i32.const 5376
    call $~lib/staticarray/StaticArray<~lib/string/String>#join
    i32.const 2896
    i32.const 52
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=272
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=8
   local.get $0
   local.get $1
   i64.load
   call $assembly/contracts/main/HosterProfile#set:createdAt
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $2
   call $~lib/@massalabs/as-types/assembly/argument/Args#nextU64
   local.tee $1
   i32.store offset=276
   global.get $~lib/memory/__stack_pointer
   i32.const 5408
   i32.store offset=280
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=284
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=288
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.load offset=8
   local.tee $3
   i32.store offset=8
   local.get $3
   call $~lib/string/String.__not
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 5408
    i32.store offset=292
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.load offset=8
    local.tee $0
    i32.store offset=296
    local.get $0
    i32.eqz
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=300
    global.get $~lib/memory/__stack_pointer
    i32.const 5456
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    i32.const 5408
    i32.store offset=12
    i32.const 5456
    i32.const 0
    i32.const 5408
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 5456
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=12
    i32.const 5456
    i32.const 2
    local.get $0
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 5456
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    i32.const 2400
    i32.store offset=12
    i32.const 5456
    call $~lib/staticarray/StaticArray<~lib/string/String>#join
    i32.const 2896
    i32.const 52
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=304
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=8
   local.get $0
   local.get $1
   i64.load
   call $assembly/contracts/main/HosterProfile#set:updatedAt
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $2
   call $~lib/@massalabs/as-types/assembly/argument/Args#nextU64
   local.tee $1
   i32.store offset=308
   global.get $~lib/memory/__stack_pointer
   i32.const 5488
   i32.store offset=312
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=316
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=320
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.load offset=8
   local.tee $3
   i32.store offset=8
   local.get $3
   call $~lib/string/String.__not
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 5488
    i32.store offset=324
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.load offset=8
    local.tee $0
    i32.store offset=328
    local.get $0
    i32.eqz
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=332
    global.get $~lib/memory/__stack_pointer
    i32.const 5536
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    i32.const 5488
    i32.store offset=12
    i32.const 5536
    i32.const 0
    i32.const 5488
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 5536
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=12
    i32.const 5536
    i32.const 2
    local.get $0
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 5536
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    i32.const 2400
    i32.store offset=12
    i32.const 5536
    call $~lib/staticarray/StaticArray<~lib/string/String>#join
    i32.const 2896
    i32.const 52
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=336
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=8
   local.get $0
   local.get $1
   i64.load
   call $assembly/contracts/main/DeveloperProfile#set:lastPayoutAt
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $2
   call $~lib/@massalabs/as-types/assembly/argument/Args#nextU32
   local.tee $1
   i32.store offset=340
   global.get $~lib/memory/__stack_pointer
   i32.const 5568
   i32.store offset=344
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=348
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=352
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.load offset=4
   local.tee $3
   i32.store offset=8
   local.get $3
   call $~lib/string/String.__not
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 5568
    i32.store offset=356
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.load offset=4
    local.tee $0
    i32.store offset=360
    local.get $0
    i32.eqz
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=364
    global.get $~lib/memory/__stack_pointer
    i32.const 5616
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    i32.const 5568
    i32.store offset=12
    i32.const 5616
    i32.const 0
    i32.const 5568
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 5616
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=12
    i32.const 5616
    i32.const 2
    local.get $0
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 5616
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    i32.const 2400
    i32.store offset=12
    i32.const 5616
    call $~lib/staticarray/StaticArray<~lib/string/String>#join
    i32.const 2896
    i32.const 52
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=368
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=8
   local.get $0
   local.get $1
   i32.load
   call $assembly/contracts/main/DeveloperProfile#set:fraudCount
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $2
   call $~lib/@massalabs/as-types/assembly/argument/Args#nextU64
   local.tee $1
   i32.store offset=372
   global.get $~lib/memory/__stack_pointer
   i32.const 4304
   i32.store offset=376
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=380
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=384
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.load offset=8
   local.tee $3
   i32.store offset=8
   local.get $3
   call $~lib/string/String.__not
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 4304
    i32.store offset=388
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.load offset=8
    local.tee $0
    i32.store offset=392
    local.get $0
    i32.eqz
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=396
    global.get $~lib/memory/__stack_pointer
    i32.const 5648
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    i32.const 4304
    i32.store offset=12
    i32.const 5648
    i32.const 0
    i32.const 4304
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 5648
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=12
    i32.const 5648
    i32.const 2
    local.get $0
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 5648
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    i32.const 2400
    i32.store offset=12
    i32.const 5648
    call $~lib/staticarray/StaticArray<~lib/string/String>#join
    i32.const 2896
    i32.const 52
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=400
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=8
   local.get $0
   local.get $1
   i64.load
   call $assembly/contracts/main/DeveloperProfile#set:createdAt
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $2
   call $~lib/@massalabs/as-types/assembly/argument/Args#nextU64
   local.tee $1
   i32.store offset=404
   global.get $~lib/memory/__stack_pointer
   i32.const 4384
   i32.store offset=408
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=412
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=416
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.load offset=8
   local.tee $3
   i32.store offset=8
   local.get $3
   call $~lib/string/String.__not
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 4384
    i32.store offset=420
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.load offset=8
    local.tee $0
    i32.store offset=424
    local.get $0
    i32.eqz
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=428
    global.get $~lib/memory/__stack_pointer
    i32.const 5680
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    i32.const 4384
    i32.store offset=12
    i32.const 5680
    i32.const 0
    i32.const 4384
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 5680
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=12
    i32.const 5680
    i32.const 2
    local.get $0
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 5680
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    i32.const 2400
    i32.store offset=12
    i32.const 5680
    call $~lib/staticarray/StaticArray<~lib/string/String>#join
    i32.const 2896
    i32.const 52
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=432
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=8
   local.get $0
   local.get $1
   i64.load
   call $assembly/contracts/main/DeveloperProfile#set:updatedAt
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store
   local.get $2
   call $~lib/@massalabs/as-types/assembly/argument/Args#get:offset
   i32.const 0
   call $~lib/@massalabs/as-types/assembly/result/Result<i32>#constructor
   local.set $0
   global.get $~lib/memory/__stack_pointer
   i32.const 436
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   return
  end
  i32.const 2768
  i32.const 2896
  i32.const 52
  i32.const 32
  call $~lib/builtins/abort
  unreachable
 )
 (func $"~lib/@massalabs/massa-as-sdk/assembly/collections/persistentMap/PersistentMap<~lib/string/String,assembly/contracts/main/DeveloperProfile>#getSome" (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 24
  memory.fill
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  block $folding-inner0 (result i32)
   local.get $0
   local.get $1
   call $"~lib/@massalabs/massa-as-sdk/assembly/collections/persistentMap/PersistentMap<~lib/string/String,assembly/contracts/main/HosterProfile>#contains"
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=8
    local.get $2
    i32.eqz
    if
     i32.const 2768
     i32.const 3488
     i32.const 220
     i32.const 28
     call $~lib/builtins/abort
     unreachable
    end
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store
    global.get $~lib/memory/__stack_pointer
    i32.const 3648
    i32.store offset=4
    local.get $2
    i32.const 3648
    call $~lib/@massalabs/as-types/assembly/result/Result<assembly/contracts/main/DeveloperProfile>#constructor
    br $folding-inner0
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   local.set $3
   global.get $~lib/memory/__stack_pointer
   i32.const 28
   i32.sub
   global.set $~lib/memory/__stack_pointer
   call $~stack_check
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 28
   memory.fill
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   local.get $0
   local.get $1
   call $"~lib/@massalabs/massa-as-sdk/assembly/collections/persistentMap/PersistentMap<~lib/string/String,assembly/contracts/main/HosterProfile>#contains"
   if
    local.get $2
    if (result i32)
     global.get $~lib/memory/__stack_pointer
     local.set $4
     global.get $~lib/memory/__stack_pointer
     local.get $2
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=12
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store offset=16
     local.get $0
     local.get $1
     call $"~lib/@massalabs/massa-as-sdk/assembly/collections/persistentMap/PersistentMap<~lib/string/String,assembly/contracts/main/HosterProfile>#_key"
     local.set $0
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=8
     local.get $0
     call $~lib/@massalabs/massa-as-sdk/assembly/std/storage/get<~lib/staticarray/StaticArray<u8>>
     local.set $0
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=4
     local.get $4
     local.get $2
     local.get $0
     call $assembly/contracts/main/DeveloperProfile#deserialize
     local.tee $0
     i32.store offset=20
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=24
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=4
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.load offset=4
     local.tee $0
     i32.store
     local.get $2
     i32.const 0
     local.get $0
     call $~lib/string/String.__not
     select
    else
     i32.const 0
    end
    local.set $2
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 28
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $3
   local.get $2
   i32.store offset=16
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=20
   local.get $2
   i32.eqz
   if
    i32.const 2768
    i32.const 3488
    i32.const 224
    i32.const 26
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store
   local.get $2
   i32.const 0
   call $~lib/@massalabs/as-types/assembly/result/Result<assembly/contracts/main/DeveloperProfile>#constructor
  end
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $assembly/contracts/main/getDeveloper (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const -64
  i32.add
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 64
  memory.fill
  global.get $~lib/memory/__stack_pointer
  global.get $assembly/contracts/main/developers
  local.tee $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  block $folding-inner0
   local.get $1
   local.get $0
   call $"~lib/@massalabs/massa-as-sdk/assembly/collections/persistentMap/PersistentMap<~lib/string/String,assembly/contracts/main/HosterProfile>#contains"
   if
    global.get $~lib/memory/__stack_pointer
    local.set $1
    global.get $~lib/memory/__stack_pointer
    global.get $assembly/contracts/main/developers
    local.tee $2
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=4
    global.get $~lib/memory/__stack_pointer
    i32.const 2400
    i32.store offset=12
    global.get $~lib/memory/__stack_pointer
    i32.const 2400
    i32.store offset=16
    global.get $~lib/memory/__stack_pointer
    i32.const 2400
    i32.store offset=20
    global.get $~lib/memory/__stack_pointer
    i32.const 2400
    i32.store offset=24
    call $assembly/contracts/main/DeveloperProfile#constructor
    local.set $3
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store offset=8
    local.get $1
    local.get $2
    local.get $0
    local.get $3
    call $"~lib/@massalabs/massa-as-sdk/assembly/collections/persistentMap/PersistentMap<~lib/string/String,assembly/contracts/main/DeveloperProfile>#getSome"
    local.tee $0
    i32.store offset=28
    global.get $~lib/memory/__stack_pointer
    i32.const 5712
    i32.store offset=32
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=36
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=40
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=4
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.load offset=4
    local.tee $1
    i32.store
    local.get $1
    call $~lib/string/String.__not
    i32.eqz
    if
     global.get $~lib/memory/__stack_pointer
     i32.const 5712
     i32.store offset=44
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.load offset=4
     local.tee $0
     i32.store offset=48
     global.get $~lib/memory/__stack_pointer
     local.set $1
     local.get $0
     i32.eqz
     if
      i32.const 2768
      i32.const 2896
      i32.const 52
      i32.const 32
      call $~lib/builtins/abort
      unreachable
     end
     local.get $1
     local.get $0
     i32.store offset=52
     global.get $~lib/memory/__stack_pointer
     i32.const 5776
     i32.store
     global.get $~lib/memory/__stack_pointer
     i32.const 5712
     i32.store offset=4
     i32.const 5776
     i32.const 0
     i32.const 5712
     call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
     global.get $~lib/memory/__stack_pointer
     i32.const 5776
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=4
     i32.const 5776
     i32.const 2
     local.get $0
     call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
     global.get $~lib/memory/__stack_pointer
     i32.const 5776
     i32.store
     global.get $~lib/memory/__stack_pointer
     i32.const 2400
     i32.store offset=4
     i32.const 5776
     call $~lib/staticarray/StaticArray<~lib/string/String>#join
     i32.const 2896
     i32.const 52
     i32.const 7
     call $~lib/builtins/abort
     unreachable
    end
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=56
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    i32.load
    local.set $1
    br $folding-inner0
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 2400
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 2400
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 2400
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   i32.const 2400
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   call $assembly/contracts/main/DeveloperProfile#constructor
   local.tee $1
   i32.store offset=60
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   local.get $1
   local.get $0
   call $"~lib/@massalabs/massa-as-sdk/assembly/collections/persistentMap/PersistentMap<~lib/string/String,assembly/contracts/main/Campaign>#set:_elementPrefix"
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   local.get $1
   call $~lib/@massalabs/massa-as-sdk/assembly/env/env/env.time
   call $assembly/contracts/main/DeveloperProfile#set:createdAt
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   local.get $1
   local.get $1
   i64.load offset=72
   call $assembly/contracts/main/DeveloperProfile#set:updatedAt
  end
  global.get $~lib/memory/__stack_pointer
  i32.const -64
  i32.sub
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $assembly/contracts/main/DeveloperProfile#serialize (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 76
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 76
  memory.fill
  i32.const 0
  global.set $~argumentsLength
  call $~lib/@massalabs/as-types/assembly/argument/Args#constructor@varargs
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=64
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=72
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load
  local.tee $2
  i32.store offset=68
  local.get $1
  local.get $2
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<~lib/string/String,void>"
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=56
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=64
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=4
  local.tee $2
  i32.store offset=60
  local.get $1
  local.get $2
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<~lib/string/String,void>"
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=48
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=56
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=8
  local.tee $2
  i32.store offset=52
  local.get $1
  local.get $2
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<~lib/string/String,void>"
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=40
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=48
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=12
  local.tee $2
  i32.store offset=44
  local.get $1
  local.get $2
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<~lib/string/String,void>"
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=36
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=40
  local.get $1
  local.get $0
  i32.load offset=16
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<u32,void>"
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=32
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=36
  local.get $1
  local.get $0
  i64.load offset=24
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<u64,void>"
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=28
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=32
  local.get $1
  local.get $0
  i64.load offset=32
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<u64,void>"
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=24
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=28
  local.get $1
  local.get $0
  i64.load offset=40
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<u64,void>"
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=20
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=24
  local.get $1
  local.get $0
  i64.load offset=48
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<u64,void>"
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=20
  local.get $1
  local.get $0
  i64.load offset=56
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<u64,void>"
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=16
  local.get $1
  local.get $0
  i32.load offset=64
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<u32,void>"
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=12
  local.get $1
  local.get $0
  i64.load offset=72
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<u64,void>"
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  local.get $1
  local.get $0
  i64.load offset=80
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<u64,void>"
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $"~lib/@massalabs/massa-as-sdk/assembly/collections/persistentMap/PersistentMap<~lib/string/String,assembly/contracts/main/HosterProfile>#size"
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 76
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $"~lib/@massalabs/massa-as-sdk/assembly/collections/persistentMap/PersistentMap<~lib/string/String,assembly/contracts/main/DeveloperProfile>#set" (param $0 i32) (param $1 i32) (param $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.load offset=4
  i32.const -1
  i32.eq
  if
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   local.get $0
   call $"~lib/@massalabs/massa-as-sdk/assembly/collections/persistentMap/PersistentMap<~lib/string/String,assembly/contracts/main/HosterProfile>#size"
   local.set $0
   global.get $~lib/memory/__stack_pointer
   i32.const 4544
   i32.store
   local.get $0
   i32.const 4544
   call $~lib/@massalabs/as-types/assembly/result/Result<usize>#constructor
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $"~lib/@massalabs/massa-as-sdk/assembly/collections/persistentMap/PersistentMap<~lib/string/String,assembly/contracts/main/HosterProfile>#_increaseSize"
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=12
  local.get $0
  local.get $1
  call $"~lib/@massalabs/massa-as-sdk/assembly/collections/persistentMap/PersistentMap<~lib/string/String,assembly/contracts/main/HosterProfile>#_key"
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=8
  local.get $2
  call $assembly/contracts/main/DeveloperProfile#serialize
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $1
  local.get $2
  call $~lib/@massalabs/massa-as-sdk/assembly/std/storage/set<~lib/staticarray/StaticArray<u8>>
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $"~lib/@massalabs/massa-as-sdk/assembly/collections/persistentMap/PersistentMap<~lib/string/String,assembly/contracts/main/HosterProfile>#size"
  i32.const 0
  call $~lib/@massalabs/as-types/assembly/result/Result<usize>#constructor
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/contracts/main/saveDeveloper (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  global.get $assembly/contracts/main/developers
  local.tee $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load
  local.tee $2
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  local.get $1
  local.get $2
  local.get $0
  call $"~lib/@massalabs/massa-as-sdk/assembly/collections/persistentMap/PersistentMap<~lib/string/String,assembly/contracts/main/DeveloperProfile>#set"
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/contracts/main/registerDeveloper (param $0 i32)
  (local $1 i64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 68
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 68
  memory.fill
  global.get $~lib/memory/__stack_pointer
  local.set $2
  call $~lib/@massalabs/massa-as-sdk/assembly/std/context/caller
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $2
  local.get $3
  call $~lib/@massalabs/as-types/assembly/serialization/numbers/bytesToU32
  local.tee $2
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  call $~lib/@massalabs/as-types/assembly/argument/Args#constructor
  local.tee $0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  call $~lib/@massalabs/as-types/assembly/argument/Args#nextString
  local.tee $4
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 3392
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=20
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=24
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=28
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.load offset=4
  local.tee $5
  i32.store
  local.get $5
  call $~lib/string/String.__not
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 3392
   i32.store offset=32
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.load offset=4
   local.tee $0
   i32.store offset=36
   global.get $~lib/memory/__stack_pointer
   local.set $2
   local.get $0
   i32.eqz
   if
    i32.const 2768
    i32.const 2896
    i32.const 52
    i32.const 32
    call $~lib/builtins/abort
    unreachable
   end
   local.get $2
   local.get $0
   i32.store offset=40
   global.get $~lib/memory/__stack_pointer
   i32.const 4752
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 3392
   i32.store offset=28
   i32.const 4752
   i32.const 0
   i32.const 3392
   call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
   global.get $~lib/memory/__stack_pointer
   i32.const 4752
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=28
   i32.const 4752
   i32.const 2
   local.get $0
   call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
   global.get $~lib/memory/__stack_pointer
   i32.const 4752
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 2400
   i32.store offset=28
   i32.const 4752
   call $~lib/staticarray/StaticArray<~lib/string/String>#join
   i32.const 2896
   i32.const 52
   i32.const 7
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=44
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $3
  local.get $4
  i32.load
  local.tee $3
  i32.store offset=48
  global.get $~lib/memory/__stack_pointer
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=52
  local.get $0
  call $~lib/@massalabs/as-types/assembly/argument/Args#nextString
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 2400
  i32.store offset=28
  local.get $4
  local.get $5
  i32.const 2400
  call $assembly/contracts/main/unwrapOr<~lib/string/String>
  local.tee $4
  i32.store offset=56
  global.get $~lib/memory/__stack_pointer
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=52
  local.get $0
  call $~lib/@massalabs/as-types/assembly/argument/Args#nextString
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 2400
  i32.store offset=28
  local.get $5
  local.get $0
  i32.const 2400
  call $assembly/contracts/main/unwrapOr<~lib/string/String>
  local.tee $5
  i32.store offset=60
  call $~lib/@massalabs/massa-as-sdk/assembly/env/env/env.time
  local.set $1
  global.get $~lib/memory/__stack_pointer
  global.get $assembly/contracts/main/developers
  local.tee $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=28
  local.get $0
  local.get $2
  call $"~lib/@massalabs/massa-as-sdk/assembly/collections/persistentMap/PersistentMap<~lib/string/String,assembly/contracts/main/HosterProfile>#contains"
  i32.eqz
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $2
  call $assembly/contracts/main/getDeveloper
  local.tee $0
  i32.store offset=64
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=28
  local.get $0
  local.get $3
  call $~lib/@massalabs/as-types/assembly/argument/Args#set:serialized
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=28
  local.get $0
  local.get $4
  call $assembly/contracts/main/HosterProfile#set:businessName
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=28
  local.get $0
  local.get $5
  call $assembly/contracts/main/HosterProfile#set:categories
  local.get $6
  if
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   local.get $1
   call $assembly/contracts/main/DeveloperProfile#set:createdAt
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  call $assembly/contracts/main/DeveloperProfile#set:updatedAt
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $assembly/contracts/main/saveDeveloper
  local.get $6
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 1952
   i32.store
   i32.const 1952
   call $assembly/contracts/main/increaseCounter
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 5808
  i32.store offset=28
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=52
  i32.const 5808
  local.get $2
  call $~lib/string/String#concat
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/@massalabs/massa-as-sdk/assembly/std/utils/events/generateEvent
  global.get $~lib/memory/__stack_pointer
  i32.const 68
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/contracts/main/Campaign#constructor (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (param $5 i32) (param $6 i32) (param $7 i32) (param $8 i64) (param $9 i64) (param $10 i64) (param $11 i64) (result i32)
  (local $12 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 96
  i32.const 7
  call $~lib/rt/itcms/__new
  local.tee $12
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $12
  i32.store offset=4
  local.get $12
  local.get $0
  call $~lib/@massalabs/as-types/assembly/argument/Args#set:_offset
  global.get $~lib/memory/__stack_pointer
  local.get $12
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  local.get $12
  local.get $1
  call $~lib/@massalabs/as-types/assembly/argument/Args#set:serialized
  global.get $~lib/memory/__stack_pointer
  local.get $12
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=8
  local.get $12
  local.get $2
  call $assembly/contracts/main/HosterProfile#set:businessName
  global.get $~lib/memory/__stack_pointer
  local.get $12
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=8
  local.get $12
  local.get $3
  call $assembly/contracts/main/HosterProfile#set:categories
  global.get $~lib/memory/__stack_pointer
  local.get $12
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=8
  local.get $12
  local.get $4
  call $assembly/contracts/main/Campaign#set:category
  global.get $~lib/memory/__stack_pointer
  local.get $12
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=8
  local.get $12
  local.get $5
  call $assembly/contracts/main/Campaign#set:targetUrl
  global.get $~lib/memory/__stack_pointer
  local.get $12
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=8
  local.get $12
  local.get $6
  call $assembly/contracts/main/Campaign#set:creativeUri
  global.get $~lib/memory/__stack_pointer
  local.get $12
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=8
  local.get $12
  local.get $7
  call $assembly/contracts/main/Campaign#set:pricingModel
  global.get $~lib/memory/__stack_pointer
  local.get $12
  i32.store offset=4
  local.get $12
  local.get $8
  call $assembly/contracts/main/DeveloperProfile#set:clicks
  global.get $~lib/memory/__stack_pointer
  local.get $12
  i32.store offset=4
  local.get $12
  local.get $9
  call $assembly/contracts/main/HosterProfile#set:createdAt
  global.get $~lib/memory/__stack_pointer
  local.get $12
  i32.store offset=4
  local.get $12
  i64.const 0
  call $assembly/contracts/main/HosterProfile#set:updatedAt
  global.get $~lib/memory/__stack_pointer
  local.get $12
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 4240
  i32.store offset=8
  local.get $12
  i32.const 4240
  call $assembly/contracts/main/Campaign#set:status
  global.get $~lib/memory/__stack_pointer
  local.get $12
  i32.store offset=4
  local.get $12
  i64.const 0
  call $assembly/contracts/main/Campaign#set:impressions
  global.get $~lib/memory/__stack_pointer
  local.get $12
  i32.store offset=4
  local.get $12
  i64.const 0
  call $assembly/contracts/main/DeveloperProfile#set:createdAt
  global.get $~lib/memory/__stack_pointer
  local.get $12
  i32.store offset=4
  local.get $12
  local.get $10
  call $assembly/contracts/main/DeveloperProfile#set:updatedAt
  global.get $~lib/memory/__stack_pointer
  local.get $12
  i32.store offset=4
  local.get $12
  local.get $11
  call $assembly/contracts/main/Campaign#set:updatedAt
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $12
 )
 (func $assembly/contracts/main/Campaign#serialize (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 104
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 104
  memory.fill
  i32.const 0
  global.set $~argumentsLength
  call $~lib/@massalabs/as-types/assembly/argument/Args#constructor@varargs
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=96
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=100
  local.get $1
  local.get $0
  i32.load
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<u32,void>"
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=88
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=96
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=4
  local.tee $2
  i32.store offset=92
  local.get $1
  local.get $2
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<~lib/string/String,void>"
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=80
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=88
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=8
  local.tee $2
  i32.store offset=84
  local.get $1
  local.get $2
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<~lib/string/String,void>"
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=72
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=80
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=12
  local.tee $2
  i32.store offset=76
  local.get $1
  local.get $2
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<~lib/string/String,void>"
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=64
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=72
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=16
  local.tee $2
  i32.store offset=68
  local.get $1
  local.get $2
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<~lib/string/String,void>"
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=56
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=64
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=20
  local.tee $2
  i32.store offset=60
  local.get $1
  local.get $2
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<~lib/string/String,void>"
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=48
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=56
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=24
  local.tee $2
  i32.store offset=52
  local.get $1
  local.get $2
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<~lib/string/String,void>"
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=40
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=48
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=28
  local.tee $2
  i32.store offset=44
  local.get $1
  local.get $2
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<~lib/string/String,void>"
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=36
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=40
  local.get $1
  local.get $0
  i64.load offset=32
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<u64,void>"
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=32
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=36
  local.get $1
  local.get $0
  i64.load offset=40
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<u64,void>"
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=28
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=32
  local.get $1
  local.get $0
  i64.load offset=48
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<u64,void>"
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=20
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=28
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=56
  local.tee $2
  i32.store offset=24
  local.get $1
  local.get $2
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<~lib/string/String,void>"
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=20
  local.get $1
  local.get $0
  i64.load offset=64
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<u64,void>"
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=16
  local.get $1
  local.get $0
  i64.load offset=72
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<u64,void>"
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=12
  local.get $1
  local.get $0
  i64.load offset=80
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<u64,void>"
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  local.get $1
  local.get $0
  i64.load offset=88
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<u64,void>"
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $"~lib/@massalabs/massa-as-sdk/assembly/collections/persistentMap/PersistentMap<~lib/string/String,assembly/contracts/main/HosterProfile>#size"
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 104
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $"~lib/@massalabs/massa-as-sdk/assembly/collections/persistentMap/PersistentMap<~lib/string/String,assembly/contracts/main/Campaign>#set" (param $0 i32) (param $1 i32) (param $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.load offset=4
  i32.const -1
  i32.eq
  if
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   local.get $0
   call $"~lib/@massalabs/massa-as-sdk/assembly/collections/persistentMap/PersistentMap<~lib/string/String,assembly/contracts/main/HosterProfile>#size"
   local.set $0
   global.get $~lib/memory/__stack_pointer
   i32.const 4544
   i32.store
   local.get $0
   i32.const 4544
   call $~lib/@massalabs/as-types/assembly/result/Result<usize>#constructor
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $"~lib/@massalabs/massa-as-sdk/assembly/collections/persistentMap/PersistentMap<~lib/string/String,assembly/contracts/main/HosterProfile>#_increaseSize"
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=12
  local.get $0
  local.get $1
  call $"~lib/@massalabs/massa-as-sdk/assembly/collections/persistentMap/PersistentMap<~lib/string/String,assembly/contracts/main/HosterProfile>#_key"
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=8
  local.get $2
  call $assembly/contracts/main/Campaign#serialize
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $1
  local.get $2
  call $~lib/@massalabs/massa-as-sdk/assembly/std/storage/set<~lib/staticarray/StaticArray<u8>>
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $"~lib/@massalabs/massa-as-sdk/assembly/collections/persistentMap/PersistentMap<~lib/string/String,assembly/contracts/main/HosterProfile>#size"
  i32.const 0
  call $~lib/@massalabs/as-types/assembly/result/Result<usize>#constructor
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/contracts/main/saveCampaign (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  global.get $assembly/contracts/main/campaigns
  local.tee $2
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=12
  local.get $0
  i32.load
  call $~lib/number/U32#toString
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  local.get $2
  local.get $1
  local.get $0
  call $"~lib/@massalabs/massa-as-sdk/assembly/collections/persistentMap/PersistentMap<~lib/string/String,assembly/contracts/main/Campaign>#set"
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/contracts/main/increaseAmount (param $0 i32) (param $1 i64)
  (local $2 i64)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 52
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 52
  memory.fill
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  call $~lib/@massalabs/as-types/assembly/serialization/strings/stringToBytes
  local.tee $0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/@massalabs/massa-as-sdk/assembly/std/storage/has<~lib/staticarray/StaticArray<u8>>
  if (result i64)
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   call $~lib/@massalabs/massa-as-sdk/assembly/std/storage/get<~lib/staticarray/StaticArray<u8>>
   local.tee $3
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.set $4
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=12
   local.get $3
   call $~lib/@massalabs/as-types/assembly/argument/Args#constructor
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store
   local.get $4
   local.get $3
   call $~lib/@massalabs/as-types/assembly/argument/Args#nextU64
   local.tee $3
   i32.store offset=16
   global.get $~lib/memory/__stack_pointer
   i32.const 7104
   i32.store offset=20
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=24
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=28
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.load offset=8
   local.tee $4
   i32.store
   local.get $4
   call $~lib/string/String.__not
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 7104
    i32.store offset=32
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.load offset=8
    local.tee $0
    i32.store offset=36
    global.get $~lib/memory/__stack_pointer
    local.set $3
    local.get $0
    i32.eqz
    if
     i32.const 2768
     i32.const 2896
     i32.const 52
     i32.const 32
     call $~lib/builtins/abort
     unreachable
    end
    local.get $3
    local.get $0
    i32.store offset=40
    global.get $~lib/memory/__stack_pointer
    i32.const 7136
    i32.store
    global.get $~lib/memory/__stack_pointer
    i32.const 7104
    i32.store offset=12
    i32.const 7136
    i32.const 0
    i32.const 7104
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 7136
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=12
    i32.const 7136
    i32.const 2
    local.get $0
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 7136
    i32.store
    global.get $~lib/memory/__stack_pointer
    i32.const 2400
    i32.store offset=12
    i32.const 7136
    call $~lib/staticarray/StaticArray<~lib/string/String>#join
    i32.const 2896
    i32.const 52
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=44
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store
   local.get $3
   i64.load
  else
   i64.const 0
  end
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.set $3
  i32.const 0
  global.set $~argumentsLength
  call $~lib/@massalabs/as-types/assembly/argument/Args#constructor@varargs
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=12
  local.get $4
  local.get $1
  local.get $2
  i64.add
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<u64,void>"
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $3
  local.get $4
  call $"~lib/@massalabs/massa-as-sdk/assembly/collections/persistentMap/PersistentMap<~lib/string/String,assembly/contracts/main/HosterProfile>#size"
  local.tee $3
  i32.store offset=48
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=12
  local.get $0
  local.get $3
  call $~lib/@massalabs/massa-as-sdk/assembly/std/storage/set<~lib/staticarray/StaticArray<u8>>
  global.get $~lib/memory/__stack_pointer
  i32.const 52
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/contracts/main/createCampaign (param $0 i32) (result i32)
  (local $1 i64)
  (local $2 i64)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 336
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 336
  memory.fill
  global.get $~lib/memory/__stack_pointer
  local.set $4
  call $~lib/@massalabs/massa-as-sdk/assembly/std/context/caller
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $4
  local.get $5
  call $~lib/@massalabs/as-types/assembly/serialization/numbers/bytesToU32
  local.tee $4
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  global.get $assembly/contracts/main/hosters
  local.tee $5
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=8
  local.get $5
  local.get $4
  call $"~lib/@massalabs/massa-as-sdk/assembly/collections/persistentMap/PersistentMap<~lib/string/String,assembly/contracts/main/HosterProfile>#contains"
  i32.eqz
  if
   i32.const 5872
   i32.const 5952
   i32.const 416
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  call $~lib/@massalabs/as-types/assembly/argument/Args#constructor
  local.tee $0
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  call $~lib/@massalabs/as-types/assembly/argument/Args#nextString
  local.tee $6
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  i32.const 6032
  i32.store offset=20
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=24
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=28
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.load offset=4
  local.tee $7
  i32.store
  block $folding-inner1
   block $folding-inner0
    local.get $7
    call $~lib/string/String.__not
    i32.eqz
    if
     global.get $~lib/memory/__stack_pointer
     i32.const 6032
     i32.store offset=32
     global.get $~lib/memory/__stack_pointer
     local.get $6
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $6
     i32.load offset=4
     local.tee $4
     i32.store offset=36
     local.get $4
     i32.eqz
     br_if $folding-inner0
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.store offset=40
     global.get $~lib/memory/__stack_pointer
     i32.const 6064
     i32.store
     global.get $~lib/memory/__stack_pointer
     i32.const 6032
     i32.store offset=8
     i32.const 6064
     i32.const 0
     i32.const 6032
     call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
     i32.const 6064
     local.set $0
     global.get $~lib/memory/__stack_pointer
     i32.const 6064
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.store offset=8
     i32.const 6064
     i32.const 2
     local.get $4
     call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
     global.get $~lib/memory/__stack_pointer
     i32.const 6064
     i32.store
     br $folding-inner1
    end
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.store offset=44
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.store
    local.get $5
    local.get $6
    i32.load
    local.tee $5
    i32.store offset=48
    global.get $~lib/memory/__stack_pointer
    local.set $6
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $0
    call $~lib/@massalabs/as-types/assembly/argument/Args#nextString
    local.tee $7
    i32.store offset=52
    global.get $~lib/memory/__stack_pointer
    i32.const 6096
    i32.store offset=56
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store offset=60
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store offset=64
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.load offset=4
    local.tee $8
    i32.store
    local.get $8
    call $~lib/string/String.__not
    i32.eqz
    if
     global.get $~lib/memory/__stack_pointer
     i32.const 6096
     i32.store offset=68
     global.get $~lib/memory/__stack_pointer
     local.get $7
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $7
     i32.load offset=4
     local.tee $4
     i32.store offset=72
     local.get $4
     i32.eqz
     br_if $folding-inner0
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.store offset=76
     global.get $~lib/memory/__stack_pointer
     i32.const 6144
     i32.store
     global.get $~lib/memory/__stack_pointer
     i32.const 6096
     i32.store offset=8
     i32.const 6144
     i32.const 0
     i32.const 6096
     call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
     i32.const 6144
     local.set $0
     global.get $~lib/memory/__stack_pointer
     i32.const 6144
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.store offset=8
     i32.const 6144
     i32.const 2
     local.get $4
     call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
     global.get $~lib/memory/__stack_pointer
     i32.const 6144
     i32.store
     br $folding-inner1
    end
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store offset=80
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store
    local.get $6
    local.get $7
    i32.load
    local.tee $6
    i32.store offset=84
    global.get $~lib/memory/__stack_pointer
    local.set $7
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $0
    call $~lib/@massalabs/as-types/assembly/argument/Args#nextString
    local.tee $8
    i32.store offset=88
    global.get $~lib/memory/__stack_pointer
    i32.const 6176
    i32.store offset=92
    global.get $~lib/memory/__stack_pointer
    local.get $8
    i32.store offset=96
    global.get $~lib/memory/__stack_pointer
    local.get $8
    i32.store offset=100
    global.get $~lib/memory/__stack_pointer
    local.get $8
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $8
    i32.load offset=4
    local.tee $9
    i32.store
    local.get $9
    call $~lib/string/String.__not
    i32.eqz
    if
     global.get $~lib/memory/__stack_pointer
     i32.const 6176
     i32.store offset=104
     global.get $~lib/memory/__stack_pointer
     local.get $8
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $8
     i32.load offset=4
     local.tee $4
     i32.store offset=108
     local.get $4
     i32.eqz
     br_if $folding-inner0
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.store offset=112
     global.get $~lib/memory/__stack_pointer
     i32.const 6224
     i32.store
     global.get $~lib/memory/__stack_pointer
     i32.const 6176
     i32.store offset=8
     i32.const 6224
     i32.const 0
     i32.const 6176
     call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
     i32.const 6224
     local.set $0
     global.get $~lib/memory/__stack_pointer
     i32.const 6224
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.store offset=8
     i32.const 6224
     i32.const 2
     local.get $4
     call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
     global.get $~lib/memory/__stack_pointer
     i32.const 6224
     i32.store
     br $folding-inner1
    end
    global.get $~lib/memory/__stack_pointer
    local.get $8
    i32.store offset=116
    global.get $~lib/memory/__stack_pointer
    local.get $8
    i32.store
    local.get $7
    local.get $8
    i32.load
    local.tee $7
    i32.store offset=120
    global.get $~lib/memory/__stack_pointer
    local.set $8
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $0
    call $~lib/@massalabs/as-types/assembly/argument/Args#nextString
    local.tee $9
    i32.store offset=124
    global.get $~lib/memory/__stack_pointer
    i32.const 6256
    i32.store offset=128
    global.get $~lib/memory/__stack_pointer
    local.get $9
    i32.store offset=132
    global.get $~lib/memory/__stack_pointer
    local.get $9
    i32.store offset=136
    global.get $~lib/memory/__stack_pointer
    local.get $9
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $9
    i32.load offset=4
    local.tee $10
    i32.store
    local.get $10
    call $~lib/string/String.__not
    i32.eqz
    if
     global.get $~lib/memory/__stack_pointer
     i32.const 6256
     i32.store offset=140
     global.get $~lib/memory/__stack_pointer
     local.get $9
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $9
     i32.load offset=4
     local.tee $4
     i32.store offset=144
     local.get $4
     i32.eqz
     br_if $folding-inner0
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.store offset=148
     global.get $~lib/memory/__stack_pointer
     i32.const 6288
     i32.store
     global.get $~lib/memory/__stack_pointer
     i32.const 6256
     i32.store offset=8
     i32.const 6288
     i32.const 0
     i32.const 6256
     call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
     i32.const 6288
     local.set $0
     global.get $~lib/memory/__stack_pointer
     i32.const 6288
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.store offset=8
     i32.const 6288
     i32.const 2
     local.get $4
     call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
     global.get $~lib/memory/__stack_pointer
     i32.const 6288
     i32.store
     br $folding-inner1
    end
    global.get $~lib/memory/__stack_pointer
    local.get $9
    i32.store offset=152
    global.get $~lib/memory/__stack_pointer
    local.get $9
    i32.store
    local.get $8
    local.get $9
    i32.load
    local.tee $8
    i32.store offset=156
    global.get $~lib/memory/__stack_pointer
    local.set $9
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $0
    call $~lib/@massalabs/as-types/assembly/argument/Args#nextString
    local.tee $10
    i32.store offset=160
    global.get $~lib/memory/__stack_pointer
    i32.const 6320
    i32.store offset=164
    global.get $~lib/memory/__stack_pointer
    local.get $10
    i32.store offset=168
    global.get $~lib/memory/__stack_pointer
    local.get $10
    i32.store offset=172
    global.get $~lib/memory/__stack_pointer
    local.get $10
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $10
    i32.load offset=4
    local.tee $11
    i32.store
    local.get $11
    call $~lib/string/String.__not
    i32.eqz
    if
     global.get $~lib/memory/__stack_pointer
     i32.const 6320
     i32.store offset=176
     global.get $~lib/memory/__stack_pointer
     local.get $10
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $10
     i32.load offset=4
     local.tee $4
     i32.store offset=180
     local.get $4
     i32.eqz
     br_if $folding-inner0
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.store offset=184
     global.get $~lib/memory/__stack_pointer
     i32.const 6368
     i32.store
     global.get $~lib/memory/__stack_pointer
     i32.const 6320
     i32.store offset=8
     i32.const 6368
     i32.const 0
     i32.const 6320
     call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
     i32.const 6368
     local.set $0
     global.get $~lib/memory/__stack_pointer
     i32.const 6368
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.store offset=8
     i32.const 6368
     i32.const 2
     local.get $4
     call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
     global.get $~lib/memory/__stack_pointer
     i32.const 6368
     i32.store
     br $folding-inner1
    end
    global.get $~lib/memory/__stack_pointer
    local.get $10
    i32.store offset=188
    global.get $~lib/memory/__stack_pointer
    local.get $10
    i32.store
    local.get $9
    local.get $10
    i32.load
    local.tee $9
    i32.store offset=192
    global.get $~lib/memory/__stack_pointer
    local.set $10
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $0
    call $~lib/@massalabs/as-types/assembly/argument/Args#nextString
    local.tee $11
    i32.store offset=196
    global.get $~lib/memory/__stack_pointer
    i32.const 6400
    i32.store offset=200
    global.get $~lib/memory/__stack_pointer
    local.get $11
    i32.store offset=204
    global.get $~lib/memory/__stack_pointer
    local.get $11
    i32.store offset=208
    global.get $~lib/memory/__stack_pointer
    local.get $11
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $11
    i32.load offset=4
    local.tee $12
    i32.store
    local.get $12
    call $~lib/string/String.__not
    i32.eqz
    if
     global.get $~lib/memory/__stack_pointer
     i32.const 6400
     i32.store offset=212
     global.get $~lib/memory/__stack_pointer
     local.get $11
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $11
     i32.load offset=4
     local.tee $4
     i32.store offset=216
     local.get $4
     i32.eqz
     br_if $folding-inner0
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.store offset=220
     global.get $~lib/memory/__stack_pointer
     i32.const 6448
     i32.store
     global.get $~lib/memory/__stack_pointer
     i32.const 6400
     i32.store offset=8
     i32.const 6448
     i32.const 0
     i32.const 6400
     call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
     i32.const 6448
     local.set $0
     global.get $~lib/memory/__stack_pointer
     i32.const 6448
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.store offset=8
     i32.const 6448
     i32.const 2
     local.get $4
     call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
     global.get $~lib/memory/__stack_pointer
     i32.const 6448
     i32.store
     br $folding-inner1
    end
    global.get $~lib/memory/__stack_pointer
    local.get $11
    i32.store offset=224
    global.get $~lib/memory/__stack_pointer
    local.get $11
    i32.store
    local.get $10
    local.get $11
    i32.load
    local.tee $10
    i32.store offset=228
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $0
    call $~lib/@massalabs/as-types/assembly/argument/Args#nextU64
    local.tee $11
    i32.store offset=232
    global.get $~lib/memory/__stack_pointer
    i32.const 6480
    i32.store offset=236
    global.get $~lib/memory/__stack_pointer
    local.get $11
    i32.store offset=240
    global.get $~lib/memory/__stack_pointer
    local.get $11
    i32.store offset=244
    global.get $~lib/memory/__stack_pointer
    local.get $11
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $11
    i32.load offset=8
    local.tee $12
    i32.store
    local.get $12
    call $~lib/string/String.__not
    i32.eqz
    if
     global.get $~lib/memory/__stack_pointer
     i32.const 6480
     i32.store offset=248
     global.get $~lib/memory/__stack_pointer
     local.get $11
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $11
     i32.load offset=8
     local.tee $4
     i32.store offset=252
     local.get $4
     i32.eqz
     br_if $folding-inner0
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.store offset=256
     global.get $~lib/memory/__stack_pointer
     i32.const 6512
     i32.store
     global.get $~lib/memory/__stack_pointer
     i32.const 6480
     i32.store offset=8
     i32.const 6512
     i32.const 0
     i32.const 6480
     call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
     i32.const 6512
     local.set $0
     global.get $~lib/memory/__stack_pointer
     i32.const 6512
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.store offset=8
     i32.const 6512
     i32.const 2
     local.get $4
     call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
     global.get $~lib/memory/__stack_pointer
     i32.const 6512
     i32.store
     br $folding-inner1
    end
    global.get $~lib/memory/__stack_pointer
    local.get $11
    i32.store offset=260
    global.get $~lib/memory/__stack_pointer
    local.get $11
    i32.store
    local.get $11
    i64.load
    local.set $2
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $0
    call $~lib/@massalabs/as-types/assembly/argument/Args#nextU64
    local.tee $0
    i32.store offset=264
    global.get $~lib/memory/__stack_pointer
    i32.const 4112
    i32.store offset=268
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=272
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=276
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.load offset=8
    local.tee $11
    i32.store
    local.get $11
    call $~lib/string/String.__not
    i32.eqz
    if
     global.get $~lib/memory/__stack_pointer
     i32.const 4112
     i32.store offset=280
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.load offset=8
     local.tee $4
     i32.store offset=284
     local.get $4
     i32.eqz
     br_if $folding-inner0
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.store offset=288
     global.get $~lib/memory/__stack_pointer
     i32.const 6544
     i32.store
     global.get $~lib/memory/__stack_pointer
     i32.const 4112
     i32.store offset=8
     i32.const 6544
     i32.const 0
     i32.const 4112
     call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
     i32.const 6544
     local.set $0
     global.get $~lib/memory/__stack_pointer
     i32.const 6544
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.store offset=8
     i32.const 6544
     i32.const 2
     local.get $4
     call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
     global.get $~lib/memory/__stack_pointer
     i32.const 6544
     i32.store
     br $folding-inner1
    end
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=292
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    i64.load
    local.set $1
    local.get $2
    i64.eqz
    if
     i32.const 6576
     i32.const 5952
     i32.const 428
     i32.const 3
     call $~lib/builtins/abort
     unreachable
    end
    local.get $1
    local.get $2
    i64.lt_u
    if
     i32.const 6624
     i32.const 5952
     i32.const 429
     i32.const 3
     call $~lib/builtins/abort
     unreachable
    end
    call $~lib/@massalabs/massa-as-sdk/assembly/env/env/env.callCoins
    local.get $1
    i64.lt_u
    if
     i32.const 6720
     i32.const 5952
     i32.const 430
     i32.const 3
     call $~lib/builtins/abort
     unreachable
    end
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.sub
    global.set $~lib/memory/__stack_pointer
    call $~stack_check
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.store
    global.get $~lib/memory/__stack_pointer
    i32.const 1840
    i32.store
    i32.const 1840
    call $assembly/contracts/main/readCounter
    i32.const 1
    i32.add
    local.set $0
    global.get $~lib/memory/__stack_pointer
    i32.const 1840
    i32.store
    i32.const 1840
    local.get $0
    call $assembly/contracts/main/writeCounter
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.add
    global.set $~lib/memory/__stack_pointer
    call $~lib/@massalabs/massa-as-sdk/assembly/env/env/env.time
    local.set $3
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.store offset=296
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store offset=300
    global.get $~lib/memory/__stack_pointer
    local.get $8
    i32.store offset=304
    global.get $~lib/memory/__stack_pointer
    local.get $9
    i32.store offset=308
    global.get $~lib/memory/__stack_pointer
    local.get $10
    i32.store offset=312
    global.get $~lib/memory/__stack_pointer
    i32.const 4240
    i32.store offset=316
    global.get $~lib/memory/__stack_pointer
    local.get $0
    local.get $4
    local.get $5
    local.get $6
    local.get $7
    local.get $8
    local.get $9
    local.get $10
    local.get $2
    local.get $1
    local.get $3
    local.get $3
    call $assembly/contracts/main/Campaign#constructor
    local.tee $5
    i32.store offset=320
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store
    local.get $5
    call $assembly/contracts/main/saveCampaign
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $4
    call $assembly/contracts/main/getHoster
    local.tee $5
    i32.store offset=324
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store offset=8
    local.get $5
    local.get $1
    local.get $5
    i64.load offset=16
    i64.add
    call $assembly/contracts/main/HosterProfile#set:totalBudget
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store offset=8
    local.get $5
    local.get $5
    i32.load offset=32
    i32.const 1
    i32.add
    call $assembly/contracts/main/HosterProfile#set:activeCampaigns
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store
    local.get $5
    local.get $3
    call $assembly/contracts/main/HosterProfile#set:updatedAt
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store
    local.get $5
    call $assembly/contracts/main/saveHoster
    global.get $~lib/memory/__stack_pointer
    i32.const 2016
    i32.store
    i32.const 2016
    call $assembly/contracts/main/increaseCounter
    global.get $~lib/memory/__stack_pointer
    i32.const 2064
    i32.store
    i32.const 2064
    local.get $1
    call $assembly/contracts/main/increaseAmount
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store offset=328
    global.get $~lib/memory/__stack_pointer
    local.get $0
    call $~lib/number/U32#toString
    local.tee $5
    i32.store offset=332
    global.get $~lib/memory/__stack_pointer
    i32.const 7264
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store offset=296
    i32.const 7264
    i32.const 1
    local.get $4
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 7264
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store offset=296
    i32.const 7264
    i32.const 3
    local.get $5
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 7264
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    i32.const 2400
    i32.store offset=296
    i32.const 7264
    call $~lib/staticarray/StaticArray<~lib/string/String>#join
    local.set $4
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store
    local.get $4
    call $~lib/@massalabs/massa-as-sdk/assembly/std/utils/events/generateEvent
    i32.const 0
    global.set $~argumentsLength
    call $~lib/@massalabs/as-types/assembly/argument/Args#constructor@varargs
    local.set $4
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store offset=8
    local.get $4
    local.get $0
    call $"~lib/@massalabs/as-types/assembly/argument/Args#add<u32,void>"
    local.set $0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    call $"~lib/@massalabs/massa-as-sdk/assembly/collections/persistentMap/PersistentMap<~lib/string/String,assembly/contracts/main/HosterProfile>#size"
    local.set $0
    global.get $~lib/memory/__stack_pointer
    i32.const 336
    i32.add
    global.set $~lib/memory/__stack_pointer
    local.get $0
    return
   end
   i32.const 2768
   i32.const 2896
   i32.const 52
   i32.const 32
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 2400
  i32.store offset=8
  local.get $0
  call $~lib/staticarray/StaticArray<~lib/string/String>#join
  i32.const 2896
  i32.const 52
  i32.const 7
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/@massalabs/as-types/assembly/result/Result<assembly/contracts/main/Campaign>#constructor (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  i32.const 29
  call $byn$mgfn-shared$~lib/@massalabs/as-types/assembly/result/Result<~lib/string/String>#constructor
 )
 (func $assembly/contracts/main/Campaign#deserialize (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 532
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 532
  memory.fill
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  call $~lib/@massalabs/as-types/assembly/argument/Args#constructor
  local.tee $1
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $1
  call $~lib/@massalabs/as-types/assembly/argument/Args#nextU32
  local.tee $2
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 7600
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=20
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=24
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=28
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.load offset=4
  local.tee $3
  i32.store offset=8
  block $folding-inner0
   local.get $3
   call $~lib/string/String.__not
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 7600
    i32.store offset=32
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.load offset=4
    local.tee $0
    i32.store offset=36
    local.get $0
    i32.eqz
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=40
    global.get $~lib/memory/__stack_pointer
    i32.const 7648
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    i32.const 7600
    i32.store offset=28
    i32.const 7648
    i32.const 0
    i32.const 7600
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 7648
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=28
    i32.const 7648
    i32.const 2
    local.get $0
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 7648
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    i32.const 2400
    i32.store offset=28
    i32.const 7648
    call $~lib/staticarray/StaticArray<~lib/string/String>#join
    i32.const 2896
    i32.const 52
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=44
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=8
   local.get $0
   local.get $2
   i32.load
   call $~lib/@massalabs/as-types/assembly/argument/Args#set:_offset
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=28
   global.get $~lib/memory/__stack_pointer
   local.get $1
   call $~lib/@massalabs/as-types/assembly/argument/Args#nextString
   local.tee $2
   i32.store offset=48
   global.get $~lib/memory/__stack_pointer
   i32.const 7680
   i32.store offset=52
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=56
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=60
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=64
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.load offset=4
   local.tee $3
   i32.store offset=28
   local.get $3
   call $~lib/string/String.__not
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 7680
    i32.store offset=68
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=28
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.load offset=4
    local.tee $0
    i32.store offset=72
    local.get $0
    i32.eqz
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=76
    global.get $~lib/memory/__stack_pointer
    i32.const 7728
    i32.store offset=28
    global.get $~lib/memory/__stack_pointer
    i32.const 7680
    i32.store offset=64
    i32.const 7728
    i32.const 0
    i32.const 7680
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 7728
    i32.store offset=28
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=64
    i32.const 7728
    i32.const 2
    local.get $0
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 7728
    i32.store offset=28
    global.get $~lib/memory/__stack_pointer
    i32.const 2400
    i32.store offset=64
    i32.const 7728
    call $~lib/staticarray/StaticArray<~lib/string/String>#join
    i32.const 2896
    i32.const 52
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=80
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=28
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.load
   local.tee $2
   i32.store offset=8
   local.get $0
   local.get $2
   call $~lib/@massalabs/as-types/assembly/argument/Args#set:serialized
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=28
   global.get $~lib/memory/__stack_pointer
   local.get $1
   call $~lib/@massalabs/as-types/assembly/argument/Args#nextString
   local.tee $2
   i32.store offset=84
   global.get $~lib/memory/__stack_pointer
   i32.const 6032
   i32.store offset=88
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=92
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=96
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=64
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.load offset=4
   local.tee $3
   i32.store offset=28
   local.get $3
   call $~lib/string/String.__not
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 6032
    i32.store offset=100
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=28
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.load offset=4
    local.tee $0
    i32.store offset=104
    local.get $0
    i32.eqz
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=108
    global.get $~lib/memory/__stack_pointer
    i32.const 7760
    i32.store offset=28
    global.get $~lib/memory/__stack_pointer
    i32.const 6032
    i32.store offset=64
    i32.const 7760
    i32.const 0
    i32.const 6032
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 7760
    i32.store offset=28
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=64
    i32.const 7760
    i32.const 2
    local.get $0
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 7760
    i32.store offset=28
    global.get $~lib/memory/__stack_pointer
    i32.const 2400
    i32.store offset=64
    i32.const 7760
    call $~lib/staticarray/StaticArray<~lib/string/String>#join
    i32.const 2896
    i32.const 52
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=112
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=28
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.load
   local.tee $2
   i32.store offset=8
   local.get $0
   local.get $2
   call $assembly/contracts/main/HosterProfile#set:businessName
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=28
   global.get $~lib/memory/__stack_pointer
   local.get $1
   call $~lib/@massalabs/as-types/assembly/argument/Args#nextString
   local.tee $2
   i32.store offset=116
   global.get $~lib/memory/__stack_pointer
   i32.const 6096
   i32.store offset=120
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=124
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=128
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=64
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.load offset=4
   local.tee $3
   i32.store offset=28
   local.get $3
   call $~lib/string/String.__not
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 6096
    i32.store offset=132
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=28
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.load offset=4
    local.tee $0
    i32.store offset=136
    local.get $0
    i32.eqz
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=140
    global.get $~lib/memory/__stack_pointer
    i32.const 7792
    i32.store offset=28
    global.get $~lib/memory/__stack_pointer
    i32.const 6096
    i32.store offset=64
    i32.const 7792
    i32.const 0
    i32.const 6096
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 7792
    i32.store offset=28
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=64
    i32.const 7792
    i32.const 2
    local.get $0
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 7792
    i32.store offset=28
    global.get $~lib/memory/__stack_pointer
    i32.const 2400
    i32.store offset=64
    i32.const 7792
    call $~lib/staticarray/StaticArray<~lib/string/String>#join
    i32.const 2896
    i32.const 52
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=144
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=28
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.load
   local.tee $2
   i32.store offset=8
   local.get $0
   local.get $2
   call $assembly/contracts/main/HosterProfile#set:categories
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=28
   global.get $~lib/memory/__stack_pointer
   local.get $1
   call $~lib/@massalabs/as-types/assembly/argument/Args#nextString
   local.tee $2
   i32.store offset=148
   global.get $~lib/memory/__stack_pointer
   i32.const 6176
   i32.store offset=152
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=156
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=160
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=64
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.load offset=4
   local.tee $3
   i32.store offset=28
   local.get $3
   call $~lib/string/String.__not
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 6176
    i32.store offset=164
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=28
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.load offset=4
    local.tee $0
    i32.store offset=168
    local.get $0
    i32.eqz
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=172
    global.get $~lib/memory/__stack_pointer
    i32.const 7824
    i32.store offset=28
    global.get $~lib/memory/__stack_pointer
    i32.const 6176
    i32.store offset=64
    i32.const 7824
    i32.const 0
    i32.const 6176
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 7824
    i32.store offset=28
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=64
    i32.const 7824
    i32.const 2
    local.get $0
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 7824
    i32.store offset=28
    global.get $~lib/memory/__stack_pointer
    i32.const 2400
    i32.store offset=64
    i32.const 7824
    call $~lib/staticarray/StaticArray<~lib/string/String>#join
    i32.const 2896
    i32.const 52
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=176
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=28
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.load
   local.tee $2
   i32.store offset=8
   local.get $0
   local.get $2
   call $assembly/contracts/main/Campaign#set:category
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=28
   global.get $~lib/memory/__stack_pointer
   local.get $1
   call $~lib/@massalabs/as-types/assembly/argument/Args#nextString
   local.tee $2
   i32.store offset=180
   global.get $~lib/memory/__stack_pointer
   i32.const 6256
   i32.store offset=184
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=188
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=192
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=64
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.load offset=4
   local.tee $3
   i32.store offset=28
   local.get $3
   call $~lib/string/String.__not
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 6256
    i32.store offset=196
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=28
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.load offset=4
    local.tee $0
    i32.store offset=200
    local.get $0
    i32.eqz
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=204
    global.get $~lib/memory/__stack_pointer
    i32.const 7856
    i32.store offset=28
    global.get $~lib/memory/__stack_pointer
    i32.const 6256
    i32.store offset=64
    i32.const 7856
    i32.const 0
    i32.const 6256
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 7856
    i32.store offset=28
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=64
    i32.const 7856
    i32.const 2
    local.get $0
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 7856
    i32.store offset=28
    global.get $~lib/memory/__stack_pointer
    i32.const 2400
    i32.store offset=64
    i32.const 7856
    call $~lib/staticarray/StaticArray<~lib/string/String>#join
    i32.const 2896
    i32.const 52
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=208
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=28
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.load
   local.tee $2
   i32.store offset=8
   local.get $0
   local.get $2
   call $assembly/contracts/main/Campaign#set:targetUrl
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=28
   global.get $~lib/memory/__stack_pointer
   local.get $1
   call $~lib/@massalabs/as-types/assembly/argument/Args#nextString
   local.tee $2
   i32.store offset=212
   global.get $~lib/memory/__stack_pointer
   i32.const 6320
   i32.store offset=216
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=220
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=224
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=64
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.load offset=4
   local.tee $3
   i32.store offset=28
   local.get $3
   call $~lib/string/String.__not
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 6320
    i32.store offset=228
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=28
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.load offset=4
    local.tee $0
    i32.store offset=232
    local.get $0
    i32.eqz
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=236
    global.get $~lib/memory/__stack_pointer
    i32.const 7888
    i32.store offset=28
    global.get $~lib/memory/__stack_pointer
    i32.const 6320
    i32.store offset=64
    i32.const 7888
    i32.const 0
    i32.const 6320
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 7888
    i32.store offset=28
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=64
    i32.const 7888
    i32.const 2
    local.get $0
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 7888
    i32.store offset=28
    global.get $~lib/memory/__stack_pointer
    i32.const 2400
    i32.store offset=64
    i32.const 7888
    call $~lib/staticarray/StaticArray<~lib/string/String>#join
    i32.const 2896
    i32.const 52
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=240
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=28
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.load
   local.tee $2
   i32.store offset=8
   local.get $0
   local.get $2
   call $assembly/contracts/main/Campaign#set:creativeUri
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=28
   global.get $~lib/memory/__stack_pointer
   local.get $1
   call $~lib/@massalabs/as-types/assembly/argument/Args#nextString
   local.tee $2
   i32.store offset=244
   global.get $~lib/memory/__stack_pointer
   i32.const 6400
   i32.store offset=248
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=252
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=256
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=64
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.load offset=4
   local.tee $3
   i32.store offset=28
   local.get $3
   call $~lib/string/String.__not
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 6400
    i32.store offset=260
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=28
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.load offset=4
    local.tee $0
    i32.store offset=264
    local.get $0
    i32.eqz
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=268
    global.get $~lib/memory/__stack_pointer
    i32.const 7920
    i32.store offset=28
    global.get $~lib/memory/__stack_pointer
    i32.const 6400
    i32.store offset=64
    i32.const 7920
    i32.const 0
    i32.const 6400
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 7920
    i32.store offset=28
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=64
    i32.const 7920
    i32.const 2
    local.get $0
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 7920
    i32.store offset=28
    global.get $~lib/memory/__stack_pointer
    i32.const 2400
    i32.store offset=64
    i32.const 7920
    call $~lib/staticarray/StaticArray<~lib/string/String>#join
    i32.const 2896
    i32.const 52
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=272
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=28
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.load
   local.tee $2
   i32.store offset=8
   local.get $0
   local.get $2
   call $assembly/contracts/main/Campaign#set:pricingModel
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $1
   call $~lib/@massalabs/as-types/assembly/argument/Args#nextU64
   local.tee $2
   i32.store offset=276
   global.get $~lib/memory/__stack_pointer
   i32.const 6480
   i32.store offset=280
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=284
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=288
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=28
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.load offset=8
   local.tee $3
   i32.store offset=8
   local.get $3
   call $~lib/string/String.__not
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 6480
    i32.store offset=292
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.load offset=8
    local.tee $0
    i32.store offset=296
    local.get $0
    i32.eqz
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=300
    global.get $~lib/memory/__stack_pointer
    i32.const 7952
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    i32.const 6480
    i32.store offset=28
    i32.const 7952
    i32.const 0
    i32.const 6480
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 7952
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=28
    i32.const 7952
    i32.const 2
    local.get $0
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 7952
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    i32.const 2400
    i32.store offset=28
    i32.const 7952
    call $~lib/staticarray/StaticArray<~lib/string/String>#join
    i32.const 2896
    i32.const 52
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=304
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=8
   local.get $0
   local.get $2
   i64.load
   call $assembly/contracts/main/DeveloperProfile#set:clicks
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $1
   call $~lib/@massalabs/as-types/assembly/argument/Args#nextU64
   local.tee $2
   i32.store offset=308
   global.get $~lib/memory/__stack_pointer
   i32.const 4112
   i32.store offset=312
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=316
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=320
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=28
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.load offset=8
   local.tee $3
   i32.store offset=8
   local.get $3
   call $~lib/string/String.__not
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 4112
    i32.store offset=324
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.load offset=8
    local.tee $0
    i32.store offset=328
    local.get $0
    i32.eqz
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=332
    global.get $~lib/memory/__stack_pointer
    i32.const 7984
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    i32.const 4112
    i32.store offset=28
    i32.const 7984
    i32.const 0
    i32.const 4112
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 7984
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=28
    i32.const 7984
    i32.const 2
    local.get $0
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 7984
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    i32.const 2400
    i32.store offset=28
    i32.const 7984
    call $~lib/staticarray/StaticArray<~lib/string/String>#join
    i32.const 2896
    i32.const 52
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=336
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=8
   local.get $0
   local.get $2
   i64.load
   call $assembly/contracts/main/HosterProfile#set:createdAt
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $1
   call $~lib/@massalabs/as-types/assembly/argument/Args#nextU64
   local.tee $2
   i32.store offset=340
   global.get $~lib/memory/__stack_pointer
   i32.const 4176
   i32.store offset=344
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=348
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=352
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=28
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.load offset=8
   local.tee $3
   i32.store offset=8
   local.get $3
   call $~lib/string/String.__not
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 4176
    i32.store offset=356
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.load offset=8
    local.tee $0
    i32.store offset=360
    local.get $0
    i32.eqz
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=364
    global.get $~lib/memory/__stack_pointer
    i32.const 8016
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    i32.const 4176
    i32.store offset=28
    i32.const 8016
    i32.const 0
    i32.const 4176
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 8016
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=28
    i32.const 8016
    i32.const 2
    local.get $0
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 8016
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    i32.const 2400
    i32.store offset=28
    i32.const 8016
    call $~lib/staticarray/StaticArray<~lib/string/String>#join
    i32.const 2896
    i32.const 52
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=368
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=8
   local.get $0
   local.get $2
   i64.load
   call $assembly/contracts/main/HosterProfile#set:updatedAt
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=28
   global.get $~lib/memory/__stack_pointer
   local.get $1
   call $~lib/@massalabs/as-types/assembly/argument/Args#nextString
   local.tee $2
   i32.store offset=372
   global.get $~lib/memory/__stack_pointer
   i32.const 7376
   i32.store offset=376
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=380
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=384
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=64
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.load offset=4
   local.tee $3
   i32.store offset=28
   local.get $3
   call $~lib/string/String.__not
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 7376
    i32.store offset=388
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=28
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.load offset=4
    local.tee $0
    i32.store offset=392
    local.get $0
    i32.eqz
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=396
    global.get $~lib/memory/__stack_pointer
    i32.const 8048
    i32.store offset=28
    global.get $~lib/memory/__stack_pointer
    i32.const 7376
    i32.store offset=64
    i32.const 8048
    i32.const 0
    i32.const 7376
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 8048
    i32.store offset=28
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=64
    i32.const 8048
    i32.const 2
    local.get $0
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 8048
    i32.store offset=28
    global.get $~lib/memory/__stack_pointer
    i32.const 2400
    i32.store offset=64
    i32.const 8048
    call $~lib/staticarray/StaticArray<~lib/string/String>#join
    i32.const 2896
    i32.const 52
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=400
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=28
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.load
   local.tee $2
   i32.store offset=8
   local.get $0
   local.get $2
   call $assembly/contracts/main/Campaign#set:status
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $1
   call $~lib/@massalabs/as-types/assembly/argument/Args#nextU64
   local.tee $2
   i32.store offset=404
   global.get $~lib/memory/__stack_pointer
   i32.const 5184
   i32.store offset=408
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=412
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=416
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=28
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.load offset=8
   local.tee $3
   i32.store offset=8
   local.get $3
   call $~lib/string/String.__not
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 5184
    i32.store offset=420
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.load offset=8
    local.tee $0
    i32.store offset=424
    local.get $0
    i32.eqz
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=428
    global.get $~lib/memory/__stack_pointer
    i32.const 8080
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    i32.const 5184
    i32.store offset=28
    i32.const 8080
    i32.const 0
    i32.const 5184
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 8080
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=28
    i32.const 8080
    i32.const 2
    local.get $0
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 8080
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    i32.const 2400
    i32.store offset=28
    i32.const 8080
    call $~lib/staticarray/StaticArray<~lib/string/String>#join
    i32.const 2896
    i32.const 52
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=432
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=8
   local.get $0
   local.get $2
   i64.load
   call $assembly/contracts/main/Campaign#set:impressions
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $1
   call $~lib/@massalabs/as-types/assembly/argument/Args#nextU64
   local.tee $2
   i32.store offset=436
   global.get $~lib/memory/__stack_pointer
   i32.const 5264
   i32.store offset=440
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=444
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=448
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=28
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.load offset=8
   local.tee $3
   i32.store offset=8
   local.get $3
   call $~lib/string/String.__not
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 5264
    i32.store offset=452
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.load offset=8
    local.tee $0
    i32.store offset=456
    local.get $0
    i32.eqz
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=460
    global.get $~lib/memory/__stack_pointer
    i32.const 8112
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    i32.const 5264
    i32.store offset=28
    i32.const 8112
    i32.const 0
    i32.const 5264
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 8112
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=28
    i32.const 8112
    i32.const 2
    local.get $0
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 8112
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    i32.const 2400
    i32.store offset=28
    i32.const 8112
    call $~lib/staticarray/StaticArray<~lib/string/String>#join
    i32.const 2896
    i32.const 52
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=464
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=8
   local.get $0
   local.get $2
   i64.load
   call $assembly/contracts/main/DeveloperProfile#set:createdAt
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $1
   call $~lib/@massalabs/as-types/assembly/argument/Args#nextU64
   local.tee $2
   i32.store offset=468
   global.get $~lib/memory/__stack_pointer
   i32.const 8144
   i32.store offset=472
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=476
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=480
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=28
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.load offset=8
   local.tee $3
   i32.store offset=8
   local.get $3
   call $~lib/string/String.__not
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 8144
    i32.store offset=484
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.load offset=8
    local.tee $0
    i32.store offset=488
    local.get $0
    i32.eqz
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=492
    global.get $~lib/memory/__stack_pointer
    i32.const 8192
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    i32.const 8144
    i32.store offset=28
    i32.const 8192
    i32.const 0
    i32.const 8144
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 8192
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=28
    i32.const 8192
    i32.const 2
    local.get $0
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 8192
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    i32.const 2400
    i32.store offset=28
    i32.const 8192
    call $~lib/staticarray/StaticArray<~lib/string/String>#join
    i32.const 2896
    i32.const 52
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=496
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=8
   local.get $0
   local.get $2
   i64.load
   call $assembly/contracts/main/DeveloperProfile#set:updatedAt
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $1
   call $~lib/@massalabs/as-types/assembly/argument/Args#nextU64
   local.tee $2
   i32.store offset=500
   global.get $~lib/memory/__stack_pointer
   i32.const 8224
   i32.store offset=504
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=508
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=512
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=28
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.load offset=8
   local.tee $3
   i32.store offset=8
   local.get $3
   call $~lib/string/String.__not
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 8224
    i32.store offset=516
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.load offset=8
    local.tee $0
    i32.store offset=520
    local.get $0
    i32.eqz
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=524
    global.get $~lib/memory/__stack_pointer
    i32.const 8272
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    i32.const 8224
    i32.store offset=28
    i32.const 8272
    i32.const 0
    i32.const 8224
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 8272
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=28
    i32.const 8272
    i32.const 2
    local.get $0
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 8272
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    i32.const 2400
    i32.store offset=28
    i32.const 8272
    call $~lib/staticarray/StaticArray<~lib/string/String>#join
    i32.const 2896
    i32.const 52
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=528
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=8
   local.get $0
   local.get $2
   i64.load
   call $assembly/contracts/main/Campaign#set:updatedAt
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   local.get $1
   call $~lib/@massalabs/as-types/assembly/argument/Args#get:offset
   i32.const 0
   call $~lib/@massalabs/as-types/assembly/result/Result<i32>#constructor
   local.set $0
   global.get $~lib/memory/__stack_pointer
   i32.const 532
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   return
  end
  i32.const 2768
  i32.const 2896
  i32.const 52
  i32.const 32
  call $~lib/builtins/abort
  unreachable
 )
 (func $"~lib/@massalabs/massa-as-sdk/assembly/collections/persistentMap/PersistentMap<~lib/string/String,assembly/contracts/main/Campaign>#getSome" (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 24
  memory.fill
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  block $folding-inner0 (result i32)
   local.get $0
   local.get $1
   call $"~lib/@massalabs/massa-as-sdk/assembly/collections/persistentMap/PersistentMap<~lib/string/String,assembly/contracts/main/HosterProfile>#contains"
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=8
    local.get $2
    i32.eqz
    if
     i32.const 2768
     i32.const 3488
     i32.const 220
     i32.const 28
     call $~lib/builtins/abort
     unreachable
    end
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store
    global.get $~lib/memory/__stack_pointer
    i32.const 3648
    i32.store offset=4
    local.get $2
    i32.const 3648
    call $~lib/@massalabs/as-types/assembly/result/Result<assembly/contracts/main/Campaign>#constructor
    br $folding-inner0
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   local.set $3
   global.get $~lib/memory/__stack_pointer
   i32.const 28
   i32.sub
   global.set $~lib/memory/__stack_pointer
   call $~stack_check
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 28
   memory.fill
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   local.get $0
   local.get $1
   call $"~lib/@massalabs/massa-as-sdk/assembly/collections/persistentMap/PersistentMap<~lib/string/String,assembly/contracts/main/HosterProfile>#contains"
   if
    local.get $2
    if (result i32)
     global.get $~lib/memory/__stack_pointer
     local.set $4
     global.get $~lib/memory/__stack_pointer
     local.get $2
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=12
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store offset=16
     local.get $0
     local.get $1
     call $"~lib/@massalabs/massa-as-sdk/assembly/collections/persistentMap/PersistentMap<~lib/string/String,assembly/contracts/main/HosterProfile>#_key"
     local.set $0
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=8
     local.get $0
     call $~lib/@massalabs/massa-as-sdk/assembly/std/storage/get<~lib/staticarray/StaticArray<u8>>
     local.set $0
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=4
     local.get $4
     local.get $2
     local.get $0
     call $assembly/contracts/main/Campaign#deserialize
     local.tee $0
     i32.store offset=20
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=24
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=4
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.load offset=4
     local.tee $0
     i32.store
     local.get $2
     i32.const 0
     local.get $0
     call $~lib/string/String.__not
     select
    else
     i32.const 0
    end
    local.set $2
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 28
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $3
   local.get $2
   i32.store offset=16
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=20
   local.get $2
   i32.eqz
   if
    i32.const 2768
    i32.const 3488
    i32.const 224
    i32.const 26
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store
   local.get $2
   i32.const 0
   call $~lib/@massalabs/as-types/assembly/result/Result<assembly/contracts/main/Campaign>#constructor
  end
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $assembly/contracts/main/requireCampaign (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 80
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 80
  memory.fill
  global.get $~lib/memory/__stack_pointer
  local.set $2
  global.get $~lib/memory/__stack_pointer
  global.get $assembly/contracts/main/campaigns
  local.tee $1
  i32.store
  local.get $0
  call $~lib/number/U32#toString
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 2400
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 2400
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  i32.const 2400
  i32.store offset=20
  global.get $~lib/memory/__stack_pointer
  i32.const 2400
  i32.store offset=24
  global.get $~lib/memory/__stack_pointer
  i32.const 2400
  i32.store offset=28
  global.get $~lib/memory/__stack_pointer
  i32.const 2400
  i32.store offset=32
  global.get $~lib/memory/__stack_pointer
  i32.const 7568
  i32.store offset=36
  global.get $~lib/memory/__stack_pointer
  i32.const 4240
  i32.store offset=40
  i32.const 0
  i32.const 2400
  i32.const 2400
  i32.const 2400
  i32.const 2400
  i32.const 2400
  i32.const 2400
  i32.const 7568
  i64.const 0
  i64.const 0
  i64.const 0
  i64.const 0
  call $assembly/contracts/main/Campaign#constructor
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=8
  local.get $2
  local.get $1
  local.get $0
  local.get $3
  call $"~lib/@massalabs/massa-as-sdk/assembly/collections/persistentMap/PersistentMap<~lib/string/String,assembly/contracts/main/Campaign>#getSome"
  local.tee $0
  i32.store offset=44
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=48
  global.get $~lib/memory/__stack_pointer
  i32.const 8304
  i32.store offset=52
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=56
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=60
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=4
  local.tee $1
  i32.store
  local.get $1
  call $~lib/string/String.__not
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 8304
   i32.store offset=64
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=4
   local.tee $0
   i32.store offset=68
   global.get $~lib/memory/__stack_pointer
   local.set $1
   local.get $0
   i32.eqz
   if
    i32.const 2768
    i32.const 2896
    i32.const 52
    i32.const 32
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   local.get $0
   i32.store offset=72
   global.get $~lib/memory/__stack_pointer
   i32.const 8368
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 8304
   i32.store offset=4
   i32.const 8368
   i32.const 0
   i32.const 8304
   call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
   global.get $~lib/memory/__stack_pointer
   i32.const 8368
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   i32.const 8368
   i32.const 2
   local.get $0
   call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
   global.get $~lib/memory/__stack_pointer
   i32.const 8368
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 2400
   i32.store offset=4
   i32.const 8368
   call $~lib/staticarray/StaticArray<~lib/string/String>#join
   i32.const 2896
   i32.const 52
   i32.const 7
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=76
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.load
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 80
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $assembly/contracts/main/updateCampaignStatus (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 108
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 108
  memory.fill
  global.get $~lib/memory/__stack_pointer
  local.set $1
  call $~lib/@massalabs/massa-as-sdk/assembly/std/context/caller
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $1
  local.get $2
  call $~lib/@massalabs/as-types/assembly/serialization/numbers/bytesToU32
  local.tee $1
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  call $~lib/@massalabs/as-types/assembly/argument/Args#constructor
  local.tee $0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  call $~lib/@massalabs/as-types/assembly/argument/Args#nextU32
  local.tee $2
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 7312
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=20
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=24
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=28
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.load offset=4
  local.tee $3
  i32.store
  block $folding-inner1
   block $folding-inner0
    local.get $3
    call $~lib/string/String.__not
    i32.eqz
    if
     global.get $~lib/memory/__stack_pointer
     i32.const 7312
     i32.store offset=32
     global.get $~lib/memory/__stack_pointer
     local.get $2
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $2
     i32.load offset=4
     local.tee $1
     i32.store offset=36
     local.get $1
     i32.eqz
     br_if $folding-inner0
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store offset=40
     global.get $~lib/memory/__stack_pointer
     i32.const 7344
     i32.store
     global.get $~lib/memory/__stack_pointer
     i32.const 7312
     i32.store offset=28
     i32.const 7344
     i32.const 0
     i32.const 7312
     call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
     i32.const 7344
     local.set $0
     global.get $~lib/memory/__stack_pointer
     i32.const 7344
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store offset=28
     i32.const 7344
     i32.const 2
     local.get $1
     call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
     global.get $~lib/memory/__stack_pointer
     i32.const 7344
     i32.store
     br $folding-inner1
    end
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=44
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store
    local.get $2
    i32.load
    local.set $2
    global.get $~lib/memory/__stack_pointer
    local.set $3
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $0
    call $~lib/@massalabs/as-types/assembly/argument/Args#nextString
    local.tee $0
    i32.store offset=48
    global.get $~lib/memory/__stack_pointer
    i32.const 7376
    i32.store offset=52
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=56
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=60
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=28
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.load offset=4
    local.tee $4
    i32.store
    local.get $4
    call $~lib/string/String.__not
    i32.eqz
    if
     global.get $~lib/memory/__stack_pointer
     i32.const 7376
     i32.store offset=64
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.load offset=4
     local.tee $1
     i32.store offset=68
     local.get $1
     i32.eqz
     br_if $folding-inner0
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store offset=72
     global.get $~lib/memory/__stack_pointer
     i32.const 7408
     i32.store
     global.get $~lib/memory/__stack_pointer
     i32.const 7376
     i32.store offset=28
     i32.const 7408
     i32.const 0
     i32.const 7376
     call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
     i32.const 7408
     local.set $0
     global.get $~lib/memory/__stack_pointer
     i32.const 7408
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store offset=28
     i32.const 7408
     i32.const 2
     local.get $1
     call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
     global.get $~lib/memory/__stack_pointer
     i32.const 7408
     i32.store
     br $folding-inner1
    end
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=76
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $3
    local.get $0
    i32.load
    local.tee $0
    i32.store offset=80
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    global.get $~lib/memory/__stack_pointer
    i32.const 4240
    i32.store offset=28
    local.get $0
    i32.const 4240
    call $~lib/string/String.__eq
    if (result i32)
     i32.const 1
    else
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     global.get $~lib/memory/__stack_pointer
     i32.const 7440
     i32.store offset=28
     local.get $0
     i32.const 7440
     call $~lib/string/String.__eq
    end
    if (result i32)
     i32.const 1
    else
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     global.get $~lib/memory/__stack_pointer
     i32.const 7472
     i32.store offset=28
     local.get $0
     i32.const 7472
     call $~lib/string/String.__eq
    end
    i32.eqz
    if
     i32.const 7520
     i32.const 5952
     i32.const 476
     i32.const 3
     call $~lib/builtins/abort
     unreachable
    end
    global.get $~lib/memory/__stack_pointer
    local.get $2
    call $assembly/contracts/main/requireCampaign
    local.tee $3
    i32.store offset=84
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store offset=88
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.load offset=4
    local.tee $4
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store offset=28
    local.get $4
    local.get $1
    call $~lib/string/String.__eq
    i32.eqz
    if
     i32.const 8400
     i32.const 5952
     i32.const 484
     i32.const 3
     call $~lib/builtins/abort
     unreachable
    end
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.load offset=56
    local.tee $4
    i32.store offset=92
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=28
    local.get $3
    local.get $0
    call $assembly/contracts/main/Campaign#set:status
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store
    local.get $3
    call $~lib/@massalabs/massa-as-sdk/assembly/env/env/env.time
    call $assembly/contracts/main/Campaign#set:updatedAt
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store
    local.get $3
    call $assembly/contracts/main/saveCampaign
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $1
    call $assembly/contracts/main/getHoster
    local.tee $1
    i32.store offset=96
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store
    global.get $~lib/memory/__stack_pointer
    i32.const 4240
    i32.store offset=28
    local.get $4
    i32.const 4240
    call $~lib/string/String.__eq
    if (result i32)
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     global.get $~lib/memory/__stack_pointer
     i32.const 4240
     i32.store offset=28
     local.get $0
     i32.const 4240
     call $~lib/string/String.__ne
    else
     i32.const 0
    end
    if
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store
     local.get $1
     i32.load offset=32
     if
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.store offset=28
      local.get $1
      local.get $1
      i32.load offset=32
      i32.const 1
      i32.sub
      call $assembly/contracts/main/HosterProfile#set:activeCampaigns
     end
     global.get $~lib/memory/__stack_pointer
     i32.const 2016
     i32.store
     global.get $~lib/memory/__stack_pointer
     i32.const 4
     i32.sub
     global.set $~lib/memory/__stack_pointer
     call $~stack_check
     global.get $~lib/memory/__stack_pointer
     i32.const 0
     i32.store
     global.get $~lib/memory/__stack_pointer
     i32.const 2016
     i32.store
     i32.const 2016
     call $assembly/contracts/main/readCounter
     local.tee $4
     if
      global.get $~lib/memory/__stack_pointer
      i32.const 2016
      i32.store
      i32.const 2016
      local.get $4
      i32.const 1
      i32.sub
      call $assembly/contracts/main/writeCounter
     end
     global.get $~lib/memory/__stack_pointer
     i32.const 4
     i32.add
     global.set $~lib/memory/__stack_pointer
    else
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.store
     global.get $~lib/memory/__stack_pointer
     i32.const 4240
     i32.store offset=28
     local.get $4
     i32.const 4240
     call $~lib/string/String.__ne
     if (result i32)
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store
      global.get $~lib/memory/__stack_pointer
      i32.const 4240
      i32.store offset=28
      local.get $0
      i32.const 4240
      call $~lib/string/String.__eq
     else
      i32.const 0
     end
     if
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.store offset=28
      local.get $1
      local.get $1
      i32.load offset=32
      i32.const 1
      i32.add
      call $assembly/contracts/main/HosterProfile#set:activeCampaigns
      global.get $~lib/memory/__stack_pointer
      i32.const 2016
      i32.store
      i32.const 2016
      call $assembly/contracts/main/increaseCounter
     end
    end
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store offset=28
    local.get $1
    local.get $3
    i64.load offset=88
    call $assembly/contracts/main/HosterProfile#set:updatedAt
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store
    local.get $1
    call $assembly/contracts/main/saveHoster
    global.get $~lib/memory/__stack_pointer
    local.get $2
    call $~lib/number/U32#toString
    local.tee $1
    i32.store offset=100
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=104
    global.get $~lib/memory/__stack_pointer
    i32.const 8512
    i32.store offset=28
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store offset=88
    i32.const 8512
    i32.const 1
    local.get $1
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 8512
    i32.store offset=28
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=88
    i32.const 8512
    i32.const 3
    local.get $0
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 8512
    i32.store offset=28
    global.get $~lib/memory/__stack_pointer
    i32.const 2400
    i32.store offset=88
    i32.const 8512
    call $~lib/staticarray/StaticArray<~lib/string/String>#join
    local.set $0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    call $~lib/@massalabs/massa-as-sdk/assembly/std/utils/events/generateEvent
    i32.const 0
    global.set $~argumentsLength
    call $~lib/@massalabs/as-types/assembly/argument/Args#constructor@varargs
    local.set $0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=28
    local.get $0
    local.get $2
    call $"~lib/@massalabs/as-types/assembly/argument/Args#add<u32,void>"
    local.set $0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    call $"~lib/@massalabs/massa-as-sdk/assembly/collections/persistentMap/PersistentMap<~lib/string/String,assembly/contracts/main/HosterProfile>#size"
    local.set $0
    global.get $~lib/memory/__stack_pointer
    i32.const 108
    i32.add
    global.set $~lib/memory/__stack_pointer
    local.get $0
    return
   end
   i32.const 2768
   i32.const 2896
   i32.const 52
   i32.const 32
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 2400
  i32.store offset=28
  local.get $0
  call $~lib/staticarray/StaticArray<~lib/string/String>#join
  i32.const 2896
  i32.const 52
  i32.const 7
  call $~lib/builtins/abort
  unreachable
 )
 (func $assembly/contracts/main/decreaseAmount (param $0 i64)
  (local $1 i32)
  (local $2 i64)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 52
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 52
  memory.fill
  global.get $~lib/memory/__stack_pointer
  i32.const 2064
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 2064
  call $~lib/@massalabs/as-types/assembly/serialization/strings/stringToBytes
  local.tee $1
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $~lib/@massalabs/massa-as-sdk/assembly/std/storage/has<~lib/staticarray/StaticArray<u8>>
  if (result i64)
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $1
   call $~lib/@massalabs/massa-as-sdk/assembly/std/storage/get<~lib/staticarray/StaticArray<u8>>
   local.tee $3
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.set $4
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=12
   local.get $3
   call $~lib/@massalabs/as-types/assembly/argument/Args#constructor
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store
   local.get $4
   local.get $3
   call $~lib/@massalabs/as-types/assembly/argument/Args#nextU64
   local.tee $3
   i32.store offset=16
   global.get $~lib/memory/__stack_pointer
   i32.const 7104
   i32.store offset=20
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=24
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=28
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.load offset=8
   local.tee $4
   i32.store
   local.get $4
   call $~lib/string/String.__not
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 7104
    i32.store offset=32
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.load offset=8
    local.tee $1
    i32.store offset=36
    global.get $~lib/memory/__stack_pointer
    local.set $3
    local.get $1
    i32.eqz
    if
     i32.const 2768
     i32.const 2896
     i32.const 52
     i32.const 32
     call $~lib/builtins/abort
     unreachable
    end
    local.get $3
    local.get $1
    i32.store offset=40
    global.get $~lib/memory/__stack_pointer
    i32.const 8704
    i32.store
    global.get $~lib/memory/__stack_pointer
    i32.const 7104
    i32.store offset=12
    i32.const 8704
    i32.const 0
    i32.const 7104
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 8704
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store offset=12
    i32.const 8704
    i32.const 2
    local.get $1
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 8704
    i32.store
    global.get $~lib/memory/__stack_pointer
    i32.const 2400
    i32.store offset=12
    i32.const 8704
    call $~lib/staticarray/StaticArray<~lib/string/String>#join
    i32.const 2896
    i32.const 52
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=44
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store
   local.get $3
   i64.load
  else
   i64.const 0
  end
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.set $3
  i32.const 0
  global.set $~argumentsLength
  call $~lib/@massalabs/as-types/assembly/argument/Args#constructor@varargs
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=12
  local.get $4
  local.get $2
  local.get $0
  i64.sub
  i64.const 0
  local.get $0
  local.get $2
  i64.lt_u
  select
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<u64,void>"
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $3
  local.get $4
  call $"~lib/@massalabs/massa-as-sdk/assembly/collections/persistentMap/PersistentMap<~lib/string/String,assembly/contracts/main/HosterProfile>#size"
  local.tee $3
  i32.store offset=48
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=12
  local.get $1
  local.get $3
  call $~lib/@massalabs/massa-as-sdk/assembly/std/storage/set<~lib/staticarray/StaticArray<u8>>
  global.get $~lib/memory/__stack_pointer
  i32.const 52
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/contracts/main/claimDeveloperEarnings (result i32)
  (local $0 i32)
  (local $1 i64)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 28
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 28
  memory.fill
  global.get $~lib/memory/__stack_pointer
  local.set $0
  call $~lib/@massalabs/massa-as-sdk/assembly/std/context/caller
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $0
  local.get $2
  call $~lib/@massalabs/as-types/assembly/serialization/numbers/bytesToU32
  local.tee $0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  global.get $assembly/contracts/main/developers
  local.tee $2
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  local.get $2
  local.get $0
  call $"~lib/@massalabs/massa-as-sdk/assembly/collections/persistentMap/PersistentMap<~lib/string/String,assembly/contracts/main/HosterProfile>#contains"
  i32.eqz
  if
   i32.const 8560
   i32.const 5952
   i32.const 512
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  call $assembly/contracts/main/getDeveloper
  local.tee $2
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  i64.load offset=40
  i64.eqz
  if
   i32.const 8640
   i32.const 5952
   i32.const 514
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  i64.load offset=40
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  i64.const 0
  call $assembly/contracts/main/HosterProfile#set:createdAt
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $~lib/@massalabs/massa-as-sdk/assembly/env/env/env.time
  call $assembly/contracts/main/DeveloperProfile#set:lastPayoutAt
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=8
  local.get $2
  local.get $2
  i64.load offset=56
  call $assembly/contracts/main/DeveloperProfile#set:updatedAt
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $assembly/contracts/main/saveDeveloper
  global.get $~lib/memory/__stack_pointer
  i32.const 2064
  i32.store
  local.get $1
  call $assembly/contracts/main/decreaseAmount
  global.get $~lib/memory/__stack_pointer
  i32.const 2112
  i32.store
  i32.const 2112
  local.get $1
  call $assembly/contracts/main/increaseAmount
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $1
  call $~lib/util/number/utoa64
  local.tee $2
  i32.store offset=20
  global.get $~lib/memory/__stack_pointer
  i32.const 8784
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=24
  i32.const 8784
  i32.const 1
  local.get $0
  call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
  global.get $~lib/memory/__stack_pointer
  i32.const 8784
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=24
  i32.const 8784
  i32.const 3
  local.get $2
  call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
  global.get $~lib/memory/__stack_pointer
  i32.const 8784
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 2400
  i32.store offset=24
  i32.const 8784
  call $~lib/staticarray/StaticArray<~lib/string/String>#join
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/@massalabs/massa-as-sdk/assembly/std/utils/events/generateEvent
  i32.const 0
  global.set $~argumentsLength
  call $~lib/@massalabs/as-types/assembly/argument/Args#constructor@varargs
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  local.get $0
  local.get $1
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<u64,void>"
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $"~lib/@massalabs/massa-as-sdk/assembly/collections/persistentMap/PersistentMap<~lib/string/String,assembly/contracts/main/HosterProfile>#size"
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 28
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $assembly/contracts/main/encodeCampaign (param $0 i32) (param $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 100
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 100
  memory.fill
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=92
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=96
  local.get $0
  local.get $1
  i32.load
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<u32,void>"
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=84
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=92
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.load offset=4
  local.tee $2
  i32.store offset=88
  local.get $0
  local.get $2
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<~lib/string/String,void>"
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=76
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=84
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.load offset=8
  local.tee $2
  i32.store offset=80
  local.get $0
  local.get $2
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<~lib/string/String,void>"
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=68
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=76
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.load offset=12
  local.tee $2
  i32.store offset=72
  local.get $0
  local.get $2
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<~lib/string/String,void>"
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=60
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=68
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.load offset=16
  local.tee $2
  i32.store offset=64
  local.get $0
  local.get $2
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<~lib/string/String,void>"
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=52
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=60
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.load offset=20
  local.tee $2
  i32.store offset=56
  local.get $0
  local.get $2
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<~lib/string/String,void>"
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=44
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=52
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.load offset=24
  local.tee $2
  i32.store offset=48
  local.get $0
  local.get $2
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<~lib/string/String,void>"
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=36
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=44
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.load offset=28
  local.tee $2
  i32.store offset=40
  local.get $0
  local.get $2
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<~lib/string/String,void>"
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=32
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=36
  local.get $0
  local.get $1
  i64.load offset=32
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<u64,void>"
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=28
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=32
  local.get $0
  local.get $1
  i64.load offset=40
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<u64,void>"
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=24
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=28
  local.get $0
  local.get $1
  i64.load offset=48
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<u64,void>"
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=24
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.load offset=56
  local.tee $2
  i32.store offset=20
  local.get $0
  local.get $2
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<~lib/string/String,void>"
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=16
  local.get $0
  local.get $1
  i64.load offset=64
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<u64,void>"
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=12
  local.get $0
  local.get $1
  i64.load offset=72
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<u64,void>"
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  local.get $0
  local.get $1
  i64.load offset=80
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<u64,void>"
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  i64.load offset=88
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<u64,void>"
  drop
  global.get $~lib/memory/__stack_pointer
  i32.const 100
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/contracts/main/listCampaigns (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 40
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 40
  memory.fill
  i32.const 24
  local.set $3
  i32.const 2400
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 2400
  i32.store
  i32.const 2400
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 2400
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  local.get $0
  call $~lib/staticarray/StaticArray<u8>#get:length
  i32.const 0
  i32.gt_s
  if
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $0
   call $~lib/@massalabs/as-types/assembly/argument/Args#constructor
   local.tee $0
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=16
   local.get $0
   call $~lib/@massalabs/as-types/assembly/argument/Args#nextU32
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=8
   local.get $1
   i32.const 0
   call $assembly/contracts/main/unwrapOr<~lib/string/String>
   local.set $4
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=16
   local.get $0
   call $~lib/@massalabs/as-types/assembly/argument/Args#nextU32
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=8
   local.get $1
   i32.const 24
   call $assembly/contracts/main/unwrapOr<~lib/string/String>
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=20
   local.get $0
   call $~lib/@massalabs/as-types/assembly/argument/Args#nextString
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   i32.const 2400
   i32.store offset=16
   local.get $1
   local.get $2
   i32.const 2400
   call $assembly/contracts/main/unwrapOr<~lib/string/String>
   local.tee $1
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=20
   local.get $0
   call $~lib/@massalabs/as-types/assembly/argument/Args#nextString
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   i32.const 2400
   i32.store offset=16
   local.get $2
   local.get $0
   i32.const 2400
   call $assembly/contracts/main/unwrapOr<~lib/string/String>
   local.tee $2
   i32.store offset=4
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 1840
  i32.store offset=8
  i32.const 1840
  call $assembly/contracts/main/readCounter
  local.set $5
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 2
  i32.const 30
  i32.const 8896
  call $~lib/rt/__newArray
  local.tee $6
  i32.store offset=24
  i32.const 1
  local.set $0
  loop $for-loop|0
   local.get $0
   local.get $5
   i32.le_u
   if
    block $for-break0
     global.get $~lib/memory/__stack_pointer
     local.get $6
     i32.store offset=8
     local.get $6
     call $~lib/array/Array<~lib/@massalabs/massa-as-sdk/assembly/std/address/Address>#get:length
     local.get $3
     i32.ge_s
     br_if $for-break0
     global.get $~lib/memory/__stack_pointer
     local.get $0
     call $~lib/number/U32#toString
     local.tee $7
     i32.store offset=28
     global.get $~lib/memory/__stack_pointer
     global.get $assembly/contracts/main/campaigns
     local.tee $8
     i32.store offset=8
     global.get $~lib/memory/__stack_pointer
     local.get $7
     i32.store offset=16
     block $for-continue|0
      local.get $8
      local.get $7
      call $"~lib/@massalabs/massa-as-sdk/assembly/collections/persistentMap/PersistentMap<~lib/string/String,assembly/contracts/main/HosterProfile>#contains"
      i32.eqz
      local.get $0
      local.get $4
      i32.le_u
      i32.or
      br_if $for-continue|0
      global.get $~lib/memory/__stack_pointer
      local.get $0
      call $assembly/contracts/main/requireCampaign
      local.tee $7
      i32.store offset=32
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.store offset=8
      local.get $1
      call $~lib/string/String#get:length
      i32.const 0
      i32.gt_s
      if (result i32)
       global.get $~lib/memory/__stack_pointer
       local.get $7
       i32.store offset=20
       global.get $~lib/memory/__stack_pointer
       local.get $7
       i32.load offset=16
       local.tee $8
       i32.store offset=8
       global.get $~lib/memory/__stack_pointer
       local.get $1
       i32.store offset=16
       local.get $8
       local.get $1
       call $~lib/string/String.__ne
      else
       i32.const 0
      end
      br_if $for-continue|0
      global.get $~lib/memory/__stack_pointer
      local.get $2
      i32.store offset=8
      local.get $2
      call $~lib/string/String#get:length
      i32.const 0
      i32.gt_s
      if (result i32)
       global.get $~lib/memory/__stack_pointer
       local.get $7
       i32.store offset=20
       global.get $~lib/memory/__stack_pointer
       local.get $7
       i32.load offset=56
       local.tee $8
       i32.store offset=8
       global.get $~lib/memory/__stack_pointer
       local.get $2
       i32.store offset=16
       local.get $8
       local.get $2
       call $~lib/string/String.__ne
      else
       i32.const 0
      end
      br_if $for-continue|0
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store offset=8
      global.get $~lib/memory/__stack_pointer
      local.get $7
      i32.store offset=16
      local.get $6
      local.get $7
      call $~lib/array/Array<~lib/string/String>#push
     end
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $for-loop|0
    end
   end
  end
  global.get $~lib/memory/__stack_pointer
  local.set $0
  i32.const 0
  global.set $~argumentsLength
  call $~lib/@massalabs/as-types/assembly/argument/Args#constructor@varargs
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=16
  local.get $0
  local.get $1
  local.get $6
  call $~lib/array/Array<~lib/@massalabs/massa-as-sdk/assembly/std/address/Address>#get:length
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<u32,void>"
  local.tee $0
  i32.store offset=36
  i32.const 0
  local.set $1
  loop $for-loop|1
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store offset=8
   local.get $6
   call $~lib/array/Array<~lib/@massalabs/massa-as-sdk/assembly/std/address/Address>#get:length
   local.get $1
   i32.gt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.store offset=20
    local.get $6
    local.get $1
    call $~lib/array/Array<~lib/@massalabs/massa-as-sdk/assembly/std/address/Address>#__get
    local.set $2
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=16
    local.get $0
    local.get $2
    call $assembly/contracts/main/encodeCampaign
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|1
   end
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  local.get $0
  call $"~lib/@massalabs/massa-as-sdk/assembly/collections/persistentMap/PersistentMap<~lib/string/String,assembly/contracts/main/HosterProfile>#size"
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 40
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $assembly/contracts/main/getCampaign (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 52
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 52
  memory.fill
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  call $~lib/@massalabs/as-types/assembly/argument/Args#constructor
  local.tee $0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  call $~lib/@massalabs/as-types/assembly/argument/Args#nextU32
  local.tee $0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 7312
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=20
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=24
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=4
  local.tee $1
  i32.store
  local.get $1
  call $~lib/string/String.__not
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 7312
   i32.store offset=28
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=4
   local.tee $0
   i32.store offset=32
   global.get $~lib/memory/__stack_pointer
   local.set $1
   local.get $0
   i32.eqz
   if
    i32.const 2768
    i32.const 2896
    i32.const 52
    i32.const 32
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   local.get $0
   i32.store offset=36
   global.get $~lib/memory/__stack_pointer
   i32.const 8928
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 7312
   i32.store offset=24
   i32.const 8928
   i32.const 0
   i32.const 7312
   call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
   global.get $~lib/memory/__stack_pointer
   i32.const 8928
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=24
   i32.const 8928
   i32.const 2
   local.get $0
   call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
   global.get $~lib/memory/__stack_pointer
   i32.const 8928
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 2400
   i32.store offset=24
   i32.const 8928
   call $~lib/staticarray/StaticArray<~lib/string/String>#join
   i32.const 2896
   i32.const 52
   i32.const 7
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=40
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load
  call $assembly/contracts/main/requireCampaign
  local.tee $0
  i32.store offset=44
  i32.const 0
  global.set $~argumentsLength
  global.get $~lib/memory/__stack_pointer
  call $~lib/@massalabs/as-types/assembly/argument/Args#constructor@varargs
  local.tee $1
  i32.store offset=48
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=24
  local.get $1
  local.get $0
  call $assembly/contracts/main/encodeCampaign
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $"~lib/@massalabs/massa-as-sdk/assembly/collections/persistentMap/PersistentMap<~lib/string/String,assembly/contracts/main/HosterProfile>#size"
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 52
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $assembly/contracts/main/encodeHoster (param $0 i32) (param $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 56
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 56
  memory.fill
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=44
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=52
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.load
  local.tee $2
  i32.store offset=48
  local.get $0
  local.get $2
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<~lib/string/String,void>"
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=36
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=44
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.load offset=4
  local.tee $2
  i32.store offset=40
  local.get $0
  local.get $2
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<~lib/string/String,void>"
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=28
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=36
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.load offset=8
  local.tee $2
  i32.store offset=32
  local.get $0
  local.get $2
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<~lib/string/String,void>"
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=20
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=28
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.load offset=12
  local.tee $2
  i32.store offset=24
  local.get $0
  local.get $2
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<~lib/string/String,void>"
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=20
  local.get $0
  local.get $1
  i64.load offset=16
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<u64,void>"
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=16
  local.get $0
  local.get $1
  i64.load offset=24
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<u64,void>"
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=12
  local.get $0
  local.get $1
  i32.load offset=32
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<u32,void>"
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  local.get $0
  local.get $1
  i64.load offset=40
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<u64,void>"
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  i64.load offset=48
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<u64,void>"
  drop
  global.get $~lib/memory/__stack_pointer
  i32.const 56
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/contracts/main/getHosterProfile (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 28
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 28
  memory.fill
  global.get $~lib/memory/__stack_pointer
  local.set $1
  call $~lib/@massalabs/massa-as-sdk/assembly/std/context/caller
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $1
  local.get $2
  call $~lib/@massalabs/as-types/assembly/serialization/numbers/bytesToU32
  local.tee $1
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/staticarray/StaticArray<u8>#get:length
  i32.const 0
  i32.gt_s
  if
   global.get $~lib/memory/__stack_pointer
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=16
   local.get $0
   call $~lib/@massalabs/as-types/assembly/argument/Args#constructor
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=12
   local.get $0
   call $~lib/@massalabs/as-types/assembly/argument/Args#nextString
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=8
   local.get $2
   local.get $0
   local.get $1
   call $assembly/contracts/main/unwrapOr<~lib/string/String>
   local.tee $1
   i32.store offset=4
  end
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  call $assembly/contracts/main/getHoster
  local.tee $0
  i32.store offset=20
  i32.const 0
  global.set $~argumentsLength
  global.get $~lib/memory/__stack_pointer
  call $~lib/@massalabs/as-types/assembly/argument/Args#constructor@varargs
  local.tee $1
  i32.store offset=24
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  local.get $1
  local.get $0
  call $assembly/contracts/main/encodeHoster
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $"~lib/@massalabs/massa-as-sdk/assembly/collections/persistentMap/PersistentMap<~lib/string/String,assembly/contracts/main/HosterProfile>#size"
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 28
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $assembly/contracts/main/encodeDeveloper (param $0 i32) (param $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 72
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 72
  memory.fill
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=60
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=68
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.load
  local.tee $2
  i32.store offset=64
  local.get $0
  local.get $2
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<~lib/string/String,void>"
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=52
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=60
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.load offset=4
  local.tee $2
  i32.store offset=56
  local.get $0
  local.get $2
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<~lib/string/String,void>"
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=44
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=52
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.load offset=8
  local.tee $2
  i32.store offset=48
  local.get $0
  local.get $2
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<~lib/string/String,void>"
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=36
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=44
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.load offset=12
  local.tee $2
  i32.store offset=40
  local.get $0
  local.get $2
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<~lib/string/String,void>"
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=32
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=36
  local.get $0
  local.get $1
  i32.load offset=16
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<u32,void>"
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=28
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=32
  local.get $0
  local.get $1
  i64.load offset=24
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<u64,void>"
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=24
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=28
  local.get $0
  local.get $1
  i64.load offset=32
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<u64,void>"
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=20
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=24
  local.get $0
  local.get $1
  i64.load offset=40
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<u64,void>"
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=20
  local.get $0
  local.get $1
  i64.load offset=48
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<u64,void>"
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=16
  local.get $0
  local.get $1
  i64.load offset=56
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<u64,void>"
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=12
  local.get $0
  local.get $1
  i32.load offset=64
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<u32,void>"
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  local.get $0
  local.get $1
  i64.load offset=72
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<u64,void>"
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  i64.load offset=80
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<u64,void>"
  drop
  global.get $~lib/memory/__stack_pointer
  i32.const 72
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/contracts/main/getDeveloperProfile (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 28
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 28
  memory.fill
  global.get $~lib/memory/__stack_pointer
  local.set $1
  call $~lib/@massalabs/massa-as-sdk/assembly/std/context/caller
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $1
  local.get $2
  call $~lib/@massalabs/as-types/assembly/serialization/numbers/bytesToU32
  local.tee $1
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/staticarray/StaticArray<u8>#get:length
  i32.const 0
  i32.gt_s
  if
   global.get $~lib/memory/__stack_pointer
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=16
   local.get $0
   call $~lib/@massalabs/as-types/assembly/argument/Args#constructor
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=12
   local.get $0
   call $~lib/@massalabs/as-types/assembly/argument/Args#nextString
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=8
   local.get $2
   local.get $0
   local.get $1
   call $assembly/contracts/main/unwrapOr<~lib/string/String>
   local.tee $1
   i32.store offset=4
  end
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  call $assembly/contracts/main/getDeveloper
  local.tee $0
  i32.store offset=20
  i32.const 0
  global.set $~argumentsLength
  global.get $~lib/memory/__stack_pointer
  call $~lib/@massalabs/as-types/assembly/argument/Args#constructor@varargs
  local.tee $1
  i32.store offset=24
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  local.get $1
  local.get $0
  call $assembly/contracts/main/encodeDeveloper
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $"~lib/@massalabs/massa-as-sdk/assembly/collections/persistentMap/PersistentMap<~lib/string/String,assembly/contracts/main/HosterProfile>#size"
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 28
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $assembly/contracts/main/getPlatformStats~anonymous|0 (result i64)
  i32.const 8992
  i32.const 8960
  i32.const 2064
  call $byn$mgfn-shared$assembly/contracts/main/getPlatformStats~anonymous|0
 )
 (func $assembly/contracts/main/getPlatformStats~anonymous|1 (result i64)
  i32.const 9056
  i32.const 4176
  i32.const 2112
  call $byn$mgfn-shared$assembly/contracts/main/getPlatformStats~anonymous|0
 )
 (func $assembly/contracts/main/getPlatformStats~anonymous|2 (result i64)
  i32.const 9120
  i32.const 5184
  i32.const 2160
  call $byn$mgfn-shared$assembly/contracts/main/getPlatformStats~anonymous|0
 )
 (func $assembly/contracts/main/getPlatformStats~anonymous|3 (result i64)
  i32.const 9184
  i32.const 5264
  i32.const 2224
  call $byn$mgfn-shared$assembly/contracts/main/getPlatformStats~anonymous|0
 )
 (func $assembly/contracts/main/getPlatformStats (result i32)
  (local $0 i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 40
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 40
  memory.fill
  i32.const 0
  global.set $~argumentsLength
  global.get $~lib/memory/__stack_pointer
  call $~lib/@massalabs/as-types/assembly/argument/Args#constructor@varargs
  local.tee $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=32
  global.get $~lib/memory/__stack_pointer
  i32.const 1904
  i32.store offset=36
  local.get $0
  i32.const 1904
  call $assembly/contracts/main/readCounter
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<u32,void>"
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=28
  global.get $~lib/memory/__stack_pointer
  i32.const 1952
  i32.store offset=32
  local.get $1
  i32.const 1952
  call $assembly/contracts/main/readCounter
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<u32,void>"
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=24
  global.get $~lib/memory/__stack_pointer
  i32.const 1840
  i32.store offset=28
  local.get $1
  i32.const 1840
  call $assembly/contracts/main/readCounter
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<u32,void>"
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=20
  global.get $~lib/memory/__stack_pointer
  i32.const 2016
  i32.store offset=24
  local.get $1
  i32.const 2016
  call $assembly/contracts/main/readCounter
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<u32,void>"
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=16
  i32.const 0
  global.set $~argumentsLength
  local.get $1
  i32.const 9024
  i32.load
  call_indirect (type $6)
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<u64,void>"
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=12
  i32.const 0
  global.set $~argumentsLength
  local.get $1
  i32.const 9088
  i32.load
  call_indirect (type $6)
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<u64,void>"
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  i32.const 0
  global.set $~argumentsLength
  local.get $1
  i32.const 9152
  i32.load
  call_indirect (type $6)
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<u64,void>"
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  i32.const 0
  global.set $~argumentsLength
  local.get $1
  i32.const 9216
  i32.load
  call_indirect (type $6)
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<u64,void>"
  drop
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  call $"~lib/@massalabs/massa-as-sdk/assembly/collections/persistentMap/PersistentMap<~lib/string/String,assembly/contracts/main/HosterProfile>#size"
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 40
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/staticarray/StaticArray<u8>#constructor (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.const 1073741820
  i32.gt_u
  if
   i32.const 1456
   i32.const 1504
   i32.const 51
   i32.const 60
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.const 5
  call $~lib/rt/itcms/__new
  local.tee $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/rt/__newArray (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  local.get $1
  i32.shl
  local.tee $1
  i32.const 1
  local.get $3
  call $~lib/rt/__newBuffer
  local.tee $3
  i32.store
  i32.const 16
  local.get $2
  call $~lib/rt/itcms/__new
  local.tee $2
  local.get $3
  i32.store
  local.get $2
  local.get $3
  i32.const 0
  call $~lib/rt/itcms/__link
  local.get $2
  local.get $3
  i32.store offset=4
  local.get $2
  local.get $1
  i32.store offset=8
  local.get $2
  local.get $0
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $~lib/string/String.UTF8.decodeUnsafe (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  local.get $1
  i32.add
  local.tee $4
  local.get $0
  i32.lt_u
  if
   i32.const 0
   i32.const 2528
   i32.const 770
   i32.const 7
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.const 1
  i32.shl
  i32.const 2
  call $~lib/rt/itcms/__new
  local.tee $2
  i32.store
  local.get $2
  local.set $1
  loop $while-continue|0
   local.get $0
   local.get $4
   i32.lt_u
   if
    block $while-break|0
     local.get $0
     i32.load8_u
     local.set $5
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     local.get $5
     i32.const 128
     i32.and
     if
      local.get $0
      local.get $4
      i32.eq
      br_if $while-break|0
      local.get $0
      i32.load8_u
      i32.const 63
      i32.and
      local.set $6
      local.get $0
      i32.const 1
      i32.add
      local.set $0
      local.get $5
      i32.const 224
      i32.and
      i32.const 192
      i32.eq
      if
       local.get $1
       local.get $5
       i32.const 31
       i32.and
       i32.const 6
       i32.shl
       local.get $6
       i32.or
       i32.store16
      else
       local.get $0
       local.get $4
       i32.eq
       br_if $while-break|0
       local.get $0
       i32.load8_u
       i32.const 63
       i32.and
       local.set $3
       local.get $0
       i32.const 1
       i32.add
       local.set $0
       local.get $5
       i32.const 240
       i32.and
       i32.const 224
       i32.eq
       if
        local.get $5
        i32.const 15
        i32.and
        i32.const 12
        i32.shl
        local.get $6
        i32.const 6
        i32.shl
        i32.or
        local.get $3
        i32.or
        local.set $3
       else
        local.get $0
        local.get $4
        i32.eq
        br_if $while-break|0
        local.get $0
        i32.load8_u
        i32.const 63
        i32.and
        local.get $5
        i32.const 7
        i32.and
        i32.const 18
        i32.shl
        local.get $6
        i32.const 12
        i32.shl
        i32.or
        local.get $3
        i32.const 6
        i32.shl
        i32.or
        i32.or
        local.set $3
        local.get $0
        i32.const 1
        i32.add
        local.set $0
       end
       local.get $3
       i32.const 65536
       i32.lt_u
       if
        local.get $1
        local.get $3
        i32.store16
       else
        local.get $1
        local.get $3
        i32.const 65536
        i32.sub
        local.tee $3
        i32.const 10
        i32.shr_u
        i32.const 55296
        i32.or
        local.get $3
        i32.const 1023
        i32.and
        i32.const 56320
        i32.or
        i32.const 16
        i32.shl
        i32.or
        i32.store
        local.get $1
        i32.const 2
        i32.add
        local.set $1
       end
      end
     else
      local.get $1
      local.get $5
      i32.store16
     end
     local.get $1
     i32.const 2
     i32.add
     local.set $1
     br $while-continue|0
    end
   end
  end
  local.get $2
  local.get $1
  local.get $2
  i32.sub
  call $~lib/rt/itcms/__renew
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/util/number/utoa64 (param $0 i64) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i64.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 6976
   return
  end
  local.get $0
  i64.const 4294967295
  i64.le_u
  if
   local.get $0
   i32.wrap_i64
   local.tee $1
   call $~lib/util/number/decimalCount32
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.const 1
   i32.shl
   i32.const 2
   call $~lib/rt/itcms/__new
   local.tee $2
   i32.store
   local.get $2
   local.get $1
   local.get $3
   call $~lib/util/number/utoa_dec_simple<u32>
  else
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i64.const 100000000000
   i64.ge_u
   i32.const 10
   i32.add
   local.get $0
   i64.const 10000000000
   i64.ge_u
   i32.add
   local.get $0
   i64.const 100000000000000
   i64.ge_u
   i32.const 13
   i32.add
   local.get $0
   i64.const 10000000000000
   i64.ge_u
   i32.add
   local.get $0
   i64.const 1000000000000
   i64.lt_u
   select
   local.get $0
   i64.const 10000000000000000
   i64.ge_u
   i32.const 16
   i32.add
   local.get $0
   i64.const -8446744073709551616
   i64.ge_u
   i32.const 18
   i32.add
   local.get $0
   i64.const 1000000000000000000
   i64.ge_u
   i32.add
   local.get $0
   i64.const 100000000000000000
   i64.lt_u
   select
   local.get $0
   i64.const 1000000000000000
   i64.lt_u
   select
   local.tee $1
   i32.const 1
   i32.shl
   i32.const 2
   call $~lib/rt/itcms/__new
   local.tee $2
   i32.store
   loop $do-loop|0
    local.get $2
    local.get $1
    i32.const 1
    i32.sub
    local.tee $1
    i32.const 1
    i32.shl
    i32.add
    local.get $0
    i64.const 10
    i64.rem_u
    i32.wrap_i64
    i32.const 48
    i32.add
    i32.store16
    local.get $0
    i64.const 10
    i64.div_u
    local.tee $0
    i64.const 0
    i64.ne
    br_if $do-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $export:assembly/contracts/main/constructor (param $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $assembly/contracts/main/constructor
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:assembly/contracts/main/registerHoster (param $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $assembly/contracts/main/registerHoster
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:assembly/contracts/main/registerDeveloper (param $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $assembly/contracts/main/registerDeveloper
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:assembly/contracts/main/createCampaign (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $assembly/contracts/main/createCampaign
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $export:assembly/contracts/main/updateCampaignStatus (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $assembly/contracts/main/updateCampaignStatus
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $export:assembly/contracts/main/claimDeveloperEarnings (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  call $assembly/contracts/main/claimDeveloperEarnings
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $export:assembly/contracts/main/triggerScheduledPayouts (param $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  local.get $0
  call $~lib/@massalabs/as-types/assembly/argument/Args#constructor
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  call $~lib/@massalabs/as-types/assembly/argument/Args#nextU32
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 0
  call $assembly/contracts/main/unwrapOr<~lib/string/String>
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 8832
  i32.store offset=4
  local.get $0
  call $~lib/number/U32#toString
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  i32.const 8832
  local.get $0
  call $~lib/string/String#concat
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/@massalabs/massa-as-sdk/assembly/std/utils/events/generateEvent
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:assembly/contracts/main/listCampaigns (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $assembly/contracts/main/listCampaigns
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $export:assembly/contracts/main/getCampaign (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $assembly/contracts/main/getCampaign
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $export:assembly/contracts/main/getHosterProfile (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $assembly/contracts/main/getHosterProfile
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $export:assembly/contracts/main/getDeveloperProfile (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $assembly/contracts/main/getDeveloperProfile
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $export:assembly/contracts/main/getPlatformStats (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  call $assembly/contracts/main/getPlatformStats
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $byn$mgfn-shared$assembly/contracts/main/getPlatformStats~anonymous|0 (param $0 i32) (param $1 i32) (param $2 i32) (result i64)
  (local $3 i64)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 48
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 48
  memory.fill
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $2
  call $~lib/@massalabs/as-types/assembly/serialization/strings/stringToBytes
  local.tee $2
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $~lib/@massalabs/massa-as-sdk/assembly/std/storage/has<~lib/staticarray/StaticArray<u8>>
  if
   global.get $~lib/memory/__stack_pointer
   local.set $4
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=12
   local.get $2
   call $~lib/@massalabs/massa-as-sdk/assembly/std/storage/get<~lib/staticarray/StaticArray<u8>>
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=8
   local.get $2
   call $~lib/@massalabs/as-types/assembly/argument/Args#constructor
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store
   local.get $4
   local.get $2
   call $~lib/@massalabs/as-types/assembly/argument/Args#nextU64
   local.tee $2
   i32.store offset=16
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=20
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=24
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=28
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.load offset=8
   local.tee $4
   i32.store
   local.get $4
   call $~lib/string/String.__not
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store offset=32
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.load offset=8
    local.tee $2
    i32.store offset=36
    global.get $~lib/memory/__stack_pointer
    local.set $4
    local.get $2
    i32.eqz
    if
     i32.const 2768
     i32.const 2896
     i32.const 52
     i32.const 32
     call $~lib/builtins/abort
     unreachable
    end
    local.get $4
    local.get $2
    i32.store offset=40
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store offset=8
    local.get $0
    i32.const 0
    local.get $1
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=8
    local.get $0
    i32.const 2
    local.get $2
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    global.get $~lib/memory/__stack_pointer
    i32.const 2400
    i32.store offset=8
    local.get $0
    call $~lib/staticarray/StaticArray<~lib/string/String>#join
    i32.const 2896
    i32.const 52
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=44
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store
   local.get $2
   i64.load
   local.set $3
   global.get $~lib/memory/__stack_pointer
   i32.const 48
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $3
   return
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 48
  i32.add
  global.set $~lib/memory/__stack_pointer
  i64.const 0
 )
 (func $byn$mgfn-shared$~lib/@massalabs/as-types/assembly/result/Result<u32>#constructor (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  local.get $2
  call $~lib/rt/itcms/__new
  local.tee $2
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  local.get $0
  call $~lib/@massalabs/as-types/assembly/argument/Args#set:_offset
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  local.get $2
  local.get $1
  call $~lib/@massalabs/as-types/assembly/argument/Args#set:serialized
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $byn$mgfn-shared$~lib/@massalabs/as-types/assembly/result/Result<~lib/string/String>#constructor (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  local.get $2
  call $~lib/rt/itcms/__new
  local.tee $2
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  local.get $2
  local.get $0
  call $"~lib/@massalabs/massa-as-sdk/assembly/collections/persistentMap/PersistentMap<~lib/string/String,assembly/contracts/main/Campaign>#set:_elementPrefix"
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  local.get $2
  local.get $1
  call $~lib/@massalabs/as-types/assembly/argument/Args#set:serialized
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
)
