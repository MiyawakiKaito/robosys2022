#!/bin/bash -xv
# SPDX-FileCopyrightText: 2022 Miyawaki Kaito
# SPDX-License-Identifier: BSD-3-Clause

ng () {
	echo NG at Line $1
	res=1
}

res=0

### I/O TEST ### #整合性テスト

### plus(add) I/O ###
out=$(seq 5 | ./plus)
[ "${out}" = 15 ] || ng ${LINENO}

### multiply I/O ###
out=$(seq 5 | ./multiply)
[ "${out}" = 120 ] || ng ${LINENO}

### divisor I/O ###
out=$(seq 5 | ./divisor)
[ "${out}" = 1 ] || ng ${LINENO}

### plus(add) STRANGE INPUT ###
out=$(echo あ | ./plus)
[ "$?" = 1 ]          || ng ${LINENO}
[ "${out}" = "" ]     || ng ${LINENO}

out=$(echo  | ./plus)
[ "$?" = 1 ]          || ng ${LINENO}
[ "${out}" = "" ]     || ng ${LINENO}

### multiply STRANGE INPUT ###
out=$(echo あ | ./multiply)
[ "$?" = 1 ]          || ng ${LINENO}
[ "${out}" = "" ]     || ng ${LINENO}

out=$(echo  | ./multiply)
[ "$?" = 1 ]          || ng ${LINENO}
[ "${out}" = "" ]     || ng ${LINENO}

### divisor STRANGE INPUT ###
out=$(echo あ | ./divisor)
[ "$?" = 1 ]          || ng ${LINENO}
[ "${out}" = "" ]     || ng ${LINENO}

 out=$(echo  | ./divisor)
[ "$?" = 1 ]          || ng ${LINENO}
[ "${out}" = "" ]     || ng ${LINENO}

[ "$res" = 0 ] && echo OK
exit $res



