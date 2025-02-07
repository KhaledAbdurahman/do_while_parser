# Syntax Parser for `do-while` Statement in C

This is a syntax parser for the `do-while` statement in C, implemented using Yacc and Lex.
The grammar supports:

## Files
- `lexer.l`: Lexer file for tokenizing input.
- `parser.y`: Parser file for syntax analysis.
- `README.md` : Explains how to compile and run the parser.

## Compilation Steps
تشغيل ملفات ال yacc وال lex في الويندوز تتطلب ملفات وحزم إضافية لتشغيل المشروع على ويدوز إليك الخطوات التالية:
1.	تنزيل وتثبيت GnuWin32 Flex:
https://gnuwin32.sourceforge.net/packages/flex.htm

2.	قم بتنزيل وتثبيت GnuWin32 Bison:
https://gnuwin32.sourceforge.net/packages/bison.htm

3.	إضافة Flex وBison إلى مسار النظام:
-	افتح لوحة التحكم > النظام > إعدادات النظام المتقدمة
-	انقر فوق متغيرات البيئة
-	ضمن متغيرات النظام، ابحث عن المسار، وانقر فوق "تحرير"، وأضف: - C:\Program Files (x86)\GnuWin32\bin

4.	افتح موجه الأوامر (cmd.exe) وانتقل إلى المجلد:
5.	شغل ملف ال lexer - flex do_while.l
6.	شغل ملف YACC - bison -d do_while.y
7.	تجميع ملفات C مع ال GCC - gcc lex.yy.c y.tab.c -o parser.exe او mingw32-gcc lex.yy.c y.tab.c -o parser.exe
8.	شغل ال parser - parser.exe
9.	أدخل do-while وتحقق من صحة بناء الجملة.


## This was an Open Book exam in Compiler Designing Subject in College For Dr.Bakeel Azman
## Done By E.Khaled Abdurahman 
