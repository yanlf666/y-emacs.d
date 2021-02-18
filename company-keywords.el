

;; company-keywords.el --- A company backend for programming language keywords

;; Copyright (C) 2009-2011, 2016  Free Software Foundation, Inc.

;; Author: Nikolaj Schumacher

;; This file is part of GNU Emacs.

;; GNU Emacs is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; GNU Emacs is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs.  If not, see <http://www.gnu.org/licenses/>.


;;; Commentary:
;;

;;; Code:

(require 'company)
(require 'cl-lib)

(defun company-keywords-upper-lower (&rest lst)
  ;; Upcase order is different for _.
  (nconc (sort (mapcar 'upcase lst) 'string<) lst))

(defvar company-keywords-alist
  ;; Please contribute corrections or additions.
  `((c++-mode
     "alignas" "alignof" "asm" "auto" "bool" "break" "case" "catch" "char"
     "char16_t" "char32_t" "class" "const" "const_cast" "constexpr" "continue"
     "decltype" "default" "delete" "do" "double" "dynamic_cast" "else" "enum"
     "explicit" "export" "extern" "false" "final" "float" "for" "friend"
     "goto" "if" "inline" "int" "long" "mutable" "namespace" "new" "noexcept"
     "nullptr" "operator" "override"
     "private" "protected" "public" "register" "reinterpret_cast"
     "return" "short" "signed" "sizeof" "static" "static_assert"
     "static_cast" "struct" "switch" "template" "this" "thread_local"
     "throw" "true" "try" "typedef" "typeid" "typename"
     "union" "unsigned" "using" "virtual" "void" "volatile" "wchar_t" "while")

    (c-mode
    
     "yanl" 
     "\< \>"
     ;;MSP430 寄存器名
     ;;CSCTL0
     "CSCTL0_H" "CSKEY"
     
     ;;CSCTL1
     "CSCTL1" "DCORSEL"
     "DCOFSEL_0" "DCOFSEL_1" "DCOFSEL_2" "DCOFSEL_3"
     "DCOFSEL_4" "DCOFSEL_5" "DCOFSEL_6" "DCOFSEL_7"
     
     ;;CSCTL2
     "CSCTL2"
     "SELA__ACLK" "SELA__LFXTCLK" "SELA__VLOCLK" "SELA__LFMODCLK"
     "SELS__SMCLK" "SELS__LFXTCLK" "SELS__VLOCLK" "SELS__LFMODCLK"
     "SELS__DCOCLK" "SELS__MODCLK" "SELS__HFXTCLK"
     "SELM__MCLK" "SELM__LFXTCLK" "SELM__VLOCLK" "SELM__LFMODCLK"
     "SELM__DCOCLK" "SELM__MODCLK" "SELM__HFXTCLK"
     
     ;;CSCTL3
     "CSCTL3"
     "DIVA__1" "DIVA__2" "DIVA__3" "DIVA__4" "DIVA__5" "DIVA__6" 
     "DIVS__1" "DIVS__2" "DIVS__3" "DIVS__4" "DIVS__5" "DIVS__6"
     "DIVM__1" "DIVM__2" "DIVM__3" "DIVM__4" "DIVM__5" "DIVM__6"
     
     ;;CSCTL4
     "CSCTL4"
     "HFXTDRIVE_1" "HFXTDRIVE_2" "HFXTDRIVE_3" "HFXTDRIVE_4"
     "HFXTBYPASS"
     "HFFREQ"
     "HFXTOFF"
     "LFXTDRIVE_1" "LFXTDRIVE_2" "LFXTDRIVE_3"
     "LFXTBYPASS"
     "VLOOFF"
     "SMCLKOFF"
     "LFXTOFF"
     
     ;;CSCTL5
     "CSCTL5"
     "ENSTFCNT2"
     "ENSTFCNT1"
     "SWDONE"
     "HFXTOFFG"
     "LFXTOFFG"
     
     ;;CSCTL6
     "CSCTL6"
     "MODCLKREQEN"
     "SMCLKREQEN"
     "MCLKREQEN"
     "ACLKREQEN"

     ;;Timer_A
     ;;TAxCTL
     "TA0CTL" "TA1CTL"
     "TASSEL__ACLK" "TASSEL__SMCLK" "TASSEL__INCLK"
     "ID"
     "MC__STOP" "MC__UP" "MC__CONTINUOUS" "MC__UP/DOWN"
     "TACLR"
     "TAIE"
     "TAIFG"
     
     ;;TAxCCTLn
     "TA0CCTL1" "TA0CCTL2" "TA0CCTL3" "TA0CCTL4" "TA0CCTL5" "TA0CCTL6"
     "CM"
     "CCIS"
     "SCS"
     "SCCI"
     "CAP"
     "OUTMOD"
     "CCIE"
     "CCI"
     "OUT"
     "COV"
     "CCIFG"
     ;;TAxCCRn
     
     "TA0CCR0" "TA0CCR1" "TA0CCR2" "TA0CCR3" "TA0CCR4" "TA0CCR5" "TA0CCR6"
     "TA1CCR0"
     
     ;;TAxIV
     "TAIV"
     
     ;;TAxEX0
     "TAIDEX"

     ;; LCD_C
     ;; LCDCCTL0
     "LCDCCTL0"
     "LCDDIV__1" "LCDDIV__2" "LCDDIV__3" "LCDDIV__4" "LCDDIV__5"
     "LCDDIV__6" "LCDDIV__7" "LCDDIV__8" "LCDDIV__9" "LCDDIV__10"
     "LCDDIV__" "LCDDIV__32"
     "LCDPRE__1" "LCDPRE__2" "LCDPRE__4" "LCDPRE__8" "LCDPRE__16"
     "LCDPRE__32"
     "LCDSSEL__ACLK" "LCDSSEL__VLOCLK"
     "LCDMXx"
     "LCD2MUX" "LCD3MUX" "LCD4MUX" "LCD5MUX" "LCD6MUX" "LCD7MUX"
     "LCD8MUX"
     "LCDSON"
     "LCDLP"
     "LCDON"
     
     ;;LCDCCTL1
     "LCDCCTL1"
     "LCDNOCAPIE"
     "LCDBLKONIE"
     "LCDBLKOFFIE"
     "LCDFRMIE"
     "LCDNOCAPIFG"
     "LCDBLKONIFG"
     "LCDBLKOFFIFG"
     "LCDFRMIFG"
     
     ;;LCDCBLKCTL
     "LCDCBLKCTL"
     "LCDBLKDIVx"
     "LCDBLKPREx"
     "LCDBLKMODx"
     
     ;;LCDCMEMCTL
     "LCDCMEMCTL"
     "LCDCLRBM"
     "LCDCLRM"
     "LCDDISP"
     
     ;;LCDCVCTL
     "LCDCVCTL"
     "VLCDx"
     "VLCD_1" "VLCD_0"
     "LCDREXT"
     "R03EXT"
     "LCDEXTBIAS"
     "VLCDEXT"
     "LCDCPEN"
     "VLCDREFx"
     "VLCDREF_0" "VLCDREF_1" "VLCDREF_2" "VLCDREF_3"
     "LCD2B"
     
     ;;LCDCPCTL0
     "LCDCPCTL0 = 0xFFFF"
     "LCDSx"
     
     ;;LCDCPCTL1
     "LCDCPCTL1 = 0xFC3F"
     "LCDSx"
     
     ;;LCDCPCTL2
     "LCDCPCTL2 = 0x0FFF"
     "LCDSx"
     
     ;;LCDCPCTL3
     "LCDCPCTL3"
     "LCDSx"
     
     ;;LCDCCPCTL
     "LCDCCPCTL"
     "LCDCPCLKSYNC"
     "LCDCPDISx"
     
     ;; LCDCIV
     "LCDCIV"
     "LCDCIVx"

     ;; I2C
     ;; UCBxCTLW0
     "UCB0CTLW0"
    ;; "UCB0CTLW0: 00; eUSCI_Bx Control Word Register 0."

     ;; UCA10
     "UCA10"
    ;; "UCA10: 00; Own addressing mode select."
    ;; "UCA10: 01; Modify only when UCSWRST = 1 "
     "UCA10: 02; 0b = Own address is a 7-bit address."
     "UCA10: 03; 1b = Own address is a 10-bit address."

     ;; UCSLA10
     "UCSLA10"
    ;; "UCSLA10: 00; Slave addressing mode select"
     "UCSLA10: 01; 0b = Address slave with 7-bit address"
     "UCSLA10: 02; 1b = Address slave with 10-bit addrss"

     ;; UCMM
     "UCMM"
    ;; "UCMM: 00; Multi-master environment select."
    ;; "UCMM: 01; Modify only when UCSWRST = 1. "
    ;; "UCMM: 02; 0b = Single master environment. "
    ;; "UCMM: 03; 0b = There is no other master in the system. "
     "UCMM: 04; 0b = The address compare unit is disabled. "
     "UCMM: 05; 1b = Multi-master environment"

     ;; UCMST
     "UCMST"
    ;; "UCMST: 00; Master mode select."
    ;; "UCMST: 01; When a master loses arbitration in a "
    ;; "UCMST: 02; multi-master environment (UCMM= 1), "
   ;;  "UCMST: 03; the UCMST bit is automatically cleared and "
   ;;  "UCMST: 04; the module acts as slave."
     "UCMST: 05; 0b = Slave mode"
     "UCMST: 06; 1b = Master mode"

     ;; UCMODEx
     "UCMODEx"
     "UCMODE_0"
     "UCMODE_1"
     "UCMODE_2"
     "UCMODE_3"
    ;; "UCMODEx: 00; eUSCI_B mode."
   ;;  "UCMODEx: 01; The UCMODEx bit select the synchronous mode "
   ;;  "UCMODEx: 02; when UCSYNC = 1"
   ;;  "UCMODEx: 03; Modify only when UCSWRST = 1"
     "UCMODEx: 04; 00b = 3-pin SPI"
     "UCMODEx: 05; 01b = 4-pin SPI(master or slave enabled if STE = 1)"
     "UCMODEx: 06; 10b = 4-pin SPI(master or slave enabled if STE = 0)"
     "UCMODEx: 07; 11b = I2C mode"

     ;; UCSYNC
     "UCSYNC"
     ;;"UCSYNC: 00; Synchronous mode enable."
     "UCSYNC: 01; For eUSCI_B always read and write as 1."

     ;; UCSSELx
     "UCSSELx"
     "UCSSEL__UCLKI"
     "UCSSEL__ACLK"
     "UCSSEL__SMCLK"
     ;;"UCSSEL_0"
     ;;"UCSSEL_1"
     ;;"UCSSEL_2"
     ;;"UCSSEL_3"
    ;; "UCSSELx: 00; eUSCI_B clock source select."
    ;; "UCSSELx: 01; These bits select the BRCLK source clock."
    ;; "UCSSELx: 02; These bits are ignored in slave mode."
     "UCSSELx: 03; 00b = UCLKI"
     "UCSSELx: 04; 01b = ACLK"
     "UCSSELx: 05; 02b = SMCLK"
     "UCSSELx: 06; 03b = SMCLK"

     ;; UCTXACK
     "UCTXACK"
    ;; "UCTXACK: 00; Transmit ACK condition in slave mode "
    ;; "UCTXACK: 01; with enabled address mask register."
    ;; "UCTXACK: 02; After the UCSTTIFG has been set,"
    ;; "UCTXACK: 03; the user needs to set or reset the UCTXACK flag to"
    ;; "UCTXACK: 04; continue with the I2C protocol."
    ;; "UCTXACK: 05; The clock is stretched until the UCBxCTL1 register"
   ;;  "UCTXACK: 06; has been written."
   ;;  "UCTXACK: 07; This bit is cleared automatically after "
   ;;  "UCTXACK: 08; the ACK has been send."
     "UCTXACK: 09; 0b = Do not acknowledge the slave addresss"
     "UCTXACK: 10; 1b = Acknowledge the slave address"

     ;; UCTR
     "UCTR"
    ;; "UCTR: 00; Transmitter/receiver"
     "UCTR: 01; 0b = Receiver"
     "UCTR: 02; 1b = Transmitter"

     ;; UCTXNACK
     "UCTXNACK"
    ;; "UCTXNACK: 00; Transmit a NACK."
    ;; "UCTXNACK: 01; UCTXNACK is automatically cleared after "
    ;; "UCTXNACK: 02; a NACK is transmitted."
    ;; "UCTXNACK: 03; Only for slave receiver mode."
     "UCTXNACK: 04; 0b = Acknowledge normally"
     "UCTXNACK: 05; 1b = Generate NACK"

     ;; UCTXSTP
     "UCTXSTP"
   ;;  "UCTXSTP: 00; Transmit SOPT condition in master mode."
   ;;  "UCTXSTP: 01; Ignored in slave mode."
   ;;  "UCTXSTP: 03; In master receiver mode,"
   ;;  "UCTXSTP: 04; the STOP condition is preceded by a NACK."
   ;;  "UCTXSTP: 05; UCTXSTP is automatically cleared "
   ;;  "UCTXSTP: 06; after STOP is generated"
   ;;  "UCTXSTP: 07; This bit is a don't care,"
   ;;  "UCTXSTP: 08; if automatic UCASTPx is different form 01 or 10."
     "UCTXSTP: 09; 0b = No STOP generated"
     "UCTXSTP: 10; 1b = Generate STOP"

     ;; UCTXSTT
     "UCTXSTT"
    ;; "UCTXSTT: 00; Transmit START condition in master mode."
    ;; "UCTXSTT: 01; Ignored in slave mode."
    ;; "UCTXSTT: 02; In master receiver mode,"
    ;; "UCTXSTT: 03; a repeated START condition is preceded by a NACK."
    ;; "UCTXSTT: 04; UCTXSTT is automatically cleared after START"
    ;; "UCTXSTT: 05; condition and address information is transmitted."
    ;; "UCTXSTT: 06; Ignored in slave mode."
     "UCTXSTT: 07; 0b = Do not generate START condition"
     "UCTXSTT: 08; 1b = generate START condition"

     ;; UCSWRST
     "UCSWRST"
     ;;"UCSWRST: 00; Software reset enable."
     "UCSWRST: 01; 0b = Disabled. eUSCI_B released for operation."
     "UCSWRST: 02; 1b = Enabled. eUSCI_B logic held in reset state."

     ;; UCBxCTLW1
     "UCBxCTLW1"
     "UCB0CTLW1"
    ;; "UCB0CTLW1: 00; eUSCI_Bx Control Word Register 1" 
     "UCETXINT"
     "UCCLTO"
     "UCSTPNACK"
     "UCSWACK"
     "UCASTPx"
     "UCGLITx"

     ;; UCBxBRW
     "UCBxBRW"

     ;; UCBxSTATW
     "UCBxSTATW"
     "UCBCNTx"
     "UCSCLLOW"
     "UCGC"
     "UCGC"
     "UCBBUSY"
     
     
     "WDTCTL" "WDTPW" "WDTHOLD" "PM5CTL0" "LOCKLPM5"
     "SFRIFG1" "OFIFG"
     ;; msp430头文件名
     "msp430.h"
     ;; C头文件名
     "stdio.h"
     ;; C语言 预处理
     "include" "ifndef" "define" "endif" "main"  "ifdef"
     "elif" "error"
     "uint8_t" "uint16_t" "uint32_t" 
     "__delay_cycles(8000 000)"
     "__bis_SR_register(LPM0_bits | GIE)"
     "__bis_SR_register(LPM0_bits + GIE)"
     "__no_operation()"
     "__enable_interrupt()"
     
     "auto"   "break" "case" "char" "const" "continue" "default" "do"
     "double" "else" "enum" "extern" "float" "for" "goto" "if" "int" "long"
     "register" "return" "short" "signed" "sizeof" "static" "struct"
     "switch" "typedef" "union" "unsigned" "void" "volatile" "while" "bool")
    
    (csharp-mode
     "abstract" "add" "alias" "as" "base" "bool" "break" "byte" "case"
     "catch" "char" "checked" "class" "const" "continue" "decimal" "default"
     "delegate" "do" "double" "else" "enum" "event" "explicit" "extern"
     "false" "finally" "fixed" "float" "for" "foreach" "get" "global" "goto"
     "if" "implicit" "in" "int" "interface" "internal" "is" "lock" "long"
     "namespace" "new" "null" "object" "operator" "out" "override" "params"
     "partial" "private" "protected" "public" "readonly" "ref" "remove"
     "return" "sbyte" "sealed" "set" "short" "sizeof" "stackalloc" "static"
     "string" "struct" "switch" "this" "throw" "true" "try" "typeof" "uint"
     "ulong" "unchecked" "unsafe" "ushort" "using" "value" "var" "virtual"
     "void" "volatile" "where" "while" "yield")
    (d-mode
     ;; from http://www.digitalmars.com/d/2.0/lex.html
     "abstract" "alias" "align" "asm"
     "assert" "auto" "body" "bool" "break" "byte" "case" "cast" "catch"
     "cdouble" "cent" "cfloat" "char" "class" "const" "continue" "creal"
     "dchar" "debug" "default" "delegate" "delete" "deprecated" "do"
     "double" "else" "enum" "export" "extern" "false" "final" "finally"
     "float" "for" "foreach" "foreach_reverse" "function" "goto" "idouble"
     "if" "ifloat" "import" "in" "inout" "int" "interface" "invariant"
     "ireal" "is" "lazy" "long" "macro" "mixin" "module" "new" "nothrow"
     "null" "out" "override" "package" "pragma" "private" "protected"
     "public" "pure" "real" "ref" "return" "scope" "short" "static" "struct"
     "super" "switch" "synchronized" "template" "this" "throw" "true" "try"
     "typedef" "typeid" "typeof" "ubyte" "ucent" "uint" "ulong" "union"
     "unittest" "ushort" "version" "void" "volatile" "wchar" "while" "with")
    (f90-mode .
     ;; from f90.el
     ;; ".AND." ".GE." ".GT." ".LT." ".LE." ".NE." ".OR." ".TRUE." ".FALSE."
     ,(company-keywords-upper-lower
      "abs" "abstract" "achar" "acos" "adjustl" "adjustr" "aimag" "aint"
      "align" "all" "all_prefix" "all_scatter" "all_suffix" "allocatable"
      "allocate" "allocated" "and" "anint" "any" "any_prefix" "any_scatter"
      "any_suffix" "asin" "assign" "assignment" "associate" "associated"
      "asynchronous" "atan" "atan2" "backspace" "bind" "bit_size" "block"
      "btest" "c_alert" "c_associated" "c_backspace" "c_bool"
      "c_carriage_return" "c_char" "c_double" "c_double_complex" "c_f_pointer"
      "c_f_procpointer" "c_float" "c_float_complex" "c_form_feed" "c_funloc"
      "c_funptr" "c_horizontal_tab" "c_int" "c_int16_t" "c_int32_t" "c_int64_t"
      "c_int8_t" "c_int_fast16_t" "c_int_fast32_t" "c_int_fast64_t"
      "c_int_fast8_t" "c_int_least16_t" "c_int_least32_t" "c_int_least64_t"
      "c_int_least8_t" "c_intmax_t" "c_intptr_t" "c_loc" "c_long"
      "c_long_double" "c_long_double_complex" "c_long_long" "c_new_line"
      "c_null_char" "c_null_funptr" "c_null_ptr" "c_ptr" "c_short"
      "c_signed_char" "c_size_t" "c_vertical_tab" "call" "case" "ceiling"
      "char" "character" "character_storage_size" "class" "close" "cmplx"
      "command_argument_count" "common" "complex" "conjg" "contains" "continue"
      "copy_prefix" "copy_scatter" "copy_suffix" "cos" "cosh" "count"
      "count_prefix" "count_scatter" "count_suffix" "cpu_time" "cshift"
      "cycle" "cyclic" "data" "date_and_time" "dble" "deallocate" "deferred"
      "digits" "dim" "dimension" "distribute" "do" "dot_product" "double"
      "dprod" "dynamic" "elemental" "else" "elseif" "elsewhere" "end" "enddo"
      "endfile" "endif" "entry" "enum" "enumerator" "eoshift" "epsilon" "eq"
      "equivalence" "eqv" "error_unit" "exit" "exp" "exponent" "extends"
      "extends_type_of" "external" "extrinsic" "false" "file_storage_size"
      "final" "floor" "flush" "forall" "format" "fraction" "function" "ge"
      "generic" "get_command" "get_command_argument" "get_environment_variable"
      "goto" "grade_down" "grade_up" "gt" "hpf_alignment" "hpf_distribution"
      "hpf_template" "huge" "iachar" "iall" "iall_prefix" "iall_scatter"
      "iall_suffix" "iand" "iany" "iany_prefix" "iany_scatter" "iany_suffix"
      "ibclr" "ibits" "ibset" "ichar" "ieee_arithmetic" "ieee_exceptions"
      "ieee_features" "ieee_get_underflow_mode" "ieee_set_underflow_mode"
      "ieee_support_underflow_control" "ieor" "if" "ilen" "implicit"
      "import" "include" "independent" "index" "inherit" "input_unit"
      "inquire" "int" "integer" "intent" "interface" "intrinsic" "ior"
      "iostat_end" "iostat_eor" "iparity" "iparity_prefix" "iparity_scatter"
      "iparity_suffix" "ishft" "ishftc" "iso_c_binding" "iso_fortran_env"
      "kind" "lbound" "le" "leadz" "len" "len_trim" "lge" "lgt" "lle" "llt"
      "log" "log10" "logical" "lt" "matmul" "max" "maxexponent" "maxloc"
      "maxval" "maxval_prefix" "maxval_scatter" "maxval_suffix" "merge"
      "min" "minexponent" "minloc" "minval" "minval_prefix" "minval_scatter"
      "minval_suffix" "mod" "module" "modulo" "move_alloc" "mvbits" "namelist"
      "ne" "nearest" "neqv" "new" "new_line" "nint" "non_intrinsic"
      "non_overridable" "none" "nopass" "not" "null" "nullify"
      "number_of_processors" "numeric_storage_size" "only" "onto" "open"
      "operator" "optional" "or" "output_unit" "pack" "parameter" "parity"
      "parity_prefix" "parity_scatter" "parity_suffix" "pass" "pause"
      "pointer" "popcnt" "poppar" "precision" "present" "print" "private"
      "procedure" "processors" "processors_shape" "product" "product_prefix"
      "product_scatter" "product_suffix" "program" "protected" "public"
      "pure" "radix" "random_number" "random_seed" "range" "read" "real"
      "realign" "recursive" "redistribute" "repeat" "reshape" "result"
      "return" "rewind" "rrspacing" "same_type_as" "save" "scale" "scan"
      "select" "selected_char_kind" "selected_int_kind" "selected_real_kind"
      "sequence" "set_exponent" "shape" "sign" "sin" "sinh" "size" "spacing"
      "spread" "sqrt" "stop" "subroutine" "sum" "sum_prefix" "sum_scatter"
      "sum_suffix" "system_clock" "tan" "tanh" "target" "template" "then"
      "tiny" "transfer" "transpose" "trim" "true" "type" "ubound" "unpack"
      "use" "value" "verify" "volatile" "wait" "where" "while" "with" "write"))
    (go-mode
     ;; 1. Keywords ref: https://golang.org/ref/spec#Keywords
     ;; 2. Builtin functions and types ref: https://golang.org/pkg/builtin/
     "append" "bool" "break" "byte" "cap" "case" "chan" "close" "complex" "complex128"
     "complex64" "const" "continue" "copy" "default" "defer" "delete" "else" "error"
     "fallthrough" "false" "float32" "float64" "for" "func" "go" "goto" "if" "imag"
     "import" "int" "int16" "int32" "int64" "int8" "interface" "len" "make"
     "map" "new" "nil" "package" "panic" "print" "println" "range" "real" "recover"
     "return" "rune" "select" "string" "struct" "switch" "true" "type" "uint" "uint16"
     "uint32" "uint64" "uint8" "uintptr" "var")
    (java-mode
     "abstract" "assert" "boolean" "break" "byte" "case" "catch" "char" "class"
     "continue" "default" "do" "double" "else" "enum" "extends" "final"
     "finally" "float" "for" "if" "implements" "import" "instanceof" "int"
     "interface" "long" "native" "new" "package" "private" "protected" "public"
     "return" "short" "static" "strictfp" "super" "switch" "synchronized"
     "this" "throw" "throws" "transient" "try" "void" "volatile" "while")
    (javascript-mode
     ;; https://tc39.github.io/ecma262/ + async, static and undefined
     "async" "await" "break" "case" "catch" "class" "const" "continue"
     "debugger" "default" "delete" "do" "else" "enum" "export" "extends" "false"
     "finally" "for" "function" "if" "import" "in" "instanceof" "let" "new"
     "null" "return" "static" "super" "switch" "this" "throw" "true" "try"
     "typeof" "undefined" "var" "void" "while" "with" "yield")
    (kotlin-mode
     "abstract" "annotation" "as" "break" "by" "catch" "class" "companion"
     "const" "constructor" "continue" "data" "do" "else" "enum" "false" "final"
     "finally" "for" "fun" "if" "import" "in" "init" "inner" "interface"
     "internal" "is" "lateinit" "nested" "null" "object" "open" "out" "override"
     "package" "private" "protected" "public" "return" "super" "this" "throw"
     "trait" "true" "try" "typealias" "val" "var" "when" "while")
    (objc-mode
     "@catch" "@class" "@encode" "@end" "@finally" "@implementation"
     "@interface" "@private" "@protected" "@protocol" "@public"
     "@selector" "@synchronized" "@throw" "@try" "alloc" "autorelease"
     "bycopy" "byref" "in" "inout" "oneway" "out" "release" "retain")
    (perl-mode
     ;; from cperl.el
     "AUTOLOAD" "BEGIN" "CHECK" "CORE" "DESTROY" "END" "INIT" "__END__"
     "__FILE__" "__LINE__" "abs" "accept" "alarm" "and" "atan2" "bind"
     "binmode" "bless" "caller" "chdir" "chmod" "chomp" "chop" "chown" "chr"
     "chroot" "close" "closedir" "cmp" "connect" "continue" "cos"
     "crypt" "dbmclose" "dbmopen" "defined" "delete" "die" "do" "dump" "each"
     "else" "elsif" "endgrent" "endhostent" "endnetent" "endprotoent"
     "endpwent" "endservent" "eof" "eq" "eval" "exec" "exists" "exit" "exp"
     "fcntl" "fileno" "flock" "for" "foreach" "fork" "format" "formline"
     "ge" "getc" "getgrent" "getgrgid" "getgrnam" "gethostbyaddr"
     "gethostbyname" "gethostent" "getlogin" "getnetbyaddr" "getnetbyname"
     "getnetent" "getpeername" "getpgrp" "getppid" "getpriority"
     "getprotobyname" "getprotobynumber" "getprotoent" "getpwent" "getpwnam"
     "getpwuid" "getservbyname" "getservbyport" "getservent" "getsockname"
     "getsockopt" "glob" "gmtime" "goto" "grep" "gt" "hex" "if" "index" "int"
     "ioctl" "join" "keys" "kill" "last" "lc" "lcfirst" "le" "length"
     "link" "listen" "local" "localtime" "lock" "log" "lstat" "lt" "map"
     "mkdir" "msgctl" "msgget" "msgrcv" "msgsnd" "my" "ne" "next" "no"
     "not" "oct" "open" "opendir" "or" "ord" "our" "pack" "package" "pipe"
     "pop" "pos" "print" "printf" "push" "q" "qq" "quotemeta" "qw" "qx"
     "rand" "read" "readdir" "readline" "readlink" "readpipe" "recv" "redo"
     "ref" "rename" "require" "reset" "return" "reverse" "rewinddir" "rindex"
     "rmdir" "scalar" "seek" "seekdir" "select" "semctl" "semget" "semop"
     "send" "setgrent" "sethostent" "setnetent" "setpgrp" "setpriority"
     "setprotoent" "setpwent" "setservent" "setsockopt" "shift" "shmctl"
     "shmget" "shmread" "shmwrite" "shutdown" "sin" "sleep" "socket"
     "socketpair" "sort" "splice" "split" "sprintf" "sqrt" "srand" "stat"
     "study" "sub" "substr" "symlink" "syscall" "sysopen" "sysread" "system"
     "syswrite" "tell" "telldir" "tie" "time" "times" "tr" "truncate" "uc"
     "ucfirst" "umask" "undef" "unless" "unlink" "unpack" "unshift" "untie"
     "until" "use" "utime" "values" "vec" "wait" "waitpid"
     "wantarray" "warn" "while" "write" "x" "xor" "y")
    (php-mode
     "__CLASS__" "__DIR__" "__FILE__" "__FUNCTION__" "__LINE__" "__METHOD__"
     "__NAMESPACE__" "_once" "abstract" "and" "array" "as" "break" "case"
     "catch" "cfunction" "class" "clone" "const" "continue" "declare"
     "default" "die" "do" "echo" "else" "elseif" "empty" "enddeclare"
     "endfor" "endforeach" "endif" "endswitch" "endwhile" "eval" "exception"
     "exit" "extends" "final" "for" "foreach" "function" "global"
     "goto" "if" "implements" "include" "instanceof" "interface"
     "isset" "list" "namespace" "new" "old_function" "or" "php_user_filter"
     "print" "private" "protected" "public" "require" "require_once" "return"
     "static" "switch" "this" "throw" "try" "unset" "use" "var" "while" "xor")
    (python-mode
     ;; https://docs.python.org/3/reference/lexical_analysis.html#keywords
     "False" "None" "True" "and" "as" "assert" "break" "class" "continue" "def"
     "del" "elif" "else" "except" "exec" "finally" "for" "from" "global" "if"
     "import" "in" "is" "lambda" "nonlocal" "not" "or" "pass" "print" "raise"
     "return" "try" "while" "with" "yield")
    (ruby-mode
     "BEGIN" "END" "alias" "and"  "begin" "break" "case" "class" "def" "defined?"
     "do" "else" "elsif"  "end" "ensure" "false" "for" "if" "in" "module"
     "next" "nil" "not" "or" "redo" "rescue" "retry" "return" "self" "super"
     "then" "true" "undef" "unless" "until" "when" "while" "yield")
    ;; From https://doc.rust-lang.org/grammar.html#keywords
    ;; but excluding unused reserved words: https://www.reddit.com/r/rust/comments/34fq0k/is_there_a_good_list_of_rusts_keywords/cqucvnj
    (rust-mode
     "Self"
     "as" "box" "break" "const" "continue" "crate" "else" "enum" "extern"
     "false" "fn" "for" "if" "impl" "in" "let" "loop" "macro" "match" "mod"
     "move" "mut" "pub" "ref" "return" "self" "static" "struct" "super"
     "trait" "true" "type" "unsafe" "use" "where" "while")
    (scala-mode
     "abstract" "case" "catch" "class" "def" "do" "else" "extends" "false"
     "final" "finally" "for" "forSome" "if" "implicit" "import" "lazy" "match"
     "new" "null" "object" "override" "package" "private" "protected"
     "return" "sealed" "super" "this" "throw" "trait" "true" "try" "type" "val"
     "var" "while" "with" "yield")
    (swift-mode
     "Protocol" "Self" "Type" "and" "as" "assignment" "associatedtype"
     "associativity" "available" "break" "case" "catch" "class" "column" "continue"
     "convenience" "default" "defer" "deinit" "didSet" "do" "dynamic" "dynamicType"
     "else" "elseif" "endif" "enum" "extension" "fallthrough" "false" "file"
     "fileprivate" "final" "for" "func" "function" "get" "guard" "higherThan" "if"
     "import" "in" "indirect" "infix" "init" "inout" "internal" "is" "lazy" "left"
     "let" "line" "lowerThan" "mutating" "nil" "none" "nonmutating" "open"
     "operator" "optional" "override" "postfix" "precedence" "precedencegroup"
     "prefix" "private" "protocol" "public" "repeat" "required" "rethrows" "return"
     "right" "selector" "self" "set" "static" "struct" "subscript" "super" "switch"
     "throw" "throws" "true" "try" "typealias" "unowned" "var" "weak" "where"
     "while" "willSet")
    (julia-mode
     "abstract" "break" "case" "catch" "const" "continue" "do" "else" "elseif"
     "end" "eval" "export" "false" "finally" "for" "function" "global" "if"
     "ifelse" "immutable" "import" "importall" "in" "let" "macro" "module"
     "otherwise" "quote" "return" "switch" "throw" "true" "try" "type"
     "typealias" "using" "while"
     )
    ;; From https://github.com/apache/thrift/blob/master/contrib/thrift.el
    (thrift-mode
     "binary" "bool" "byte" "const" "double" "enum" "exception" "extends"
     "i16" "i32" "i64" "include" "list" "map" "oneway" "optional" "required"
     "service" "set" "string" "struct" "throws" "typedef" "void"
     )
    ;; aliases
    (js2-mode . javascript-mode)
    (js2-jsx-mode . javascript-mode)
    (espresso-mode . javascript-mode)
    (js-mode . javascript-mode)
    (js-jsx-mode . javascript-mode)
    (rjsx-mode . javascript-mode)
    (cperl-mode . perl-mode)
    (jde-mode . java-mode)
    (ess-julia-mode . julia-mode)
    (enh-ruby-mode . ruby-mode))
  "Alist mapping major-modes to sorted keywords for `company-keywords'.")

;;;###autoload
(defun company-keywords (command &optional arg &rest ignored)
  "`company-mode' backend for programming language keywords."
  (interactive (list 'interactive))
  (cl-case command
    (interactive (company-begin-backend 'company-keywords))
    (prefix (and (assq major-mode company-keywords-alist)
                 (not (company-in-string-or-comment))
                 (or (company-grab-symbol) 'stop)))
    (candidates
     (let ((completion-ignore-case nil)
           (symbols (cdr (assq major-mode company-keywords-alist))))
       (all-completions arg (if (consp symbols)
                                symbols
                              (cdr (assq symbols company-keywords-alist))))))
    (sorted t)))

(provide 'company-keywords)
;;; company-keywords.el ends here
