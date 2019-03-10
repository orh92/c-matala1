
![github-small](https://raw.githubusercontent.com/orh92/PackmanGame/master/1.bmp)

פה ניתן לראות את התיקיה הנוכחית שאנחנו נמצאים בה , בתיקיה נמצאים MAKEFILE MAIN.CPP BASICHCHECK.SH
./BasicCheck.sh /home/seed/Desktop/cpp a.out
זו הפקודה שמפעילה את הסקריפט שמפעיל את ה מייקפייל שמקמפל את מיין.סיפיפי
/home/seed/Desktop/cpp זה הנתיב שאנחנו מכניסים לארגומנט הראשון
a.out זה הארגומנט השני שאנחנו מכניסים
![github-small](https://raw.githubusercontent.com/orh92/PackmanGame/master/2.bmp)
כאן אפשר לראות שהקובץ לא מתקמפל ובאמת לא נכנס לתנאי הראשון  מחזיר שגיאה 7 ומדגיש שכל שאר הבדיקות מקבלות כישלון אוטומטית
![github-small](https://raw.githubusercontent.com/orh92/PackmanGame/master/3.bmp)
כאן ניתן לראות שלא שיחררנו את ההקצאת זיכרון והתוכנה אכן אומרת שבדיקה זו נכשלה. כמו כן הערך המוחזר הוא 2..ו על יידי בדיקת הערך המוחזר האחרון $? הראינו שאכן הסיבה ליציאה מהתוכנית היא 2 כלומר רק דליפת זיכרון

![github-small](https://raw.githubusercontent.com/orh92/PackmanGame/master/4.bmp)
בתמונה זו ניתן לראות שישנה גם דליפת זיכרון וגם מרוץ הטרדים נכשל. כמו כן הערך המוחזר הוא 3
![github-small](https://raw.githubusercontent.com/orh92/PackmanGame/master/5.bmp)
כאן ניתן לראות שהקובץ אכן תקין והתוכנה מראה שכל הבדיקות עברו בהצלחה.

הערות: 
בפקודה של MAKE הפנינו את הפלא של התוכנית ל /dev/null 2>&1<
כדי לא לראות את כל הריצה של התוכנית כי כרגע לא מעניין אותנו הכיתוב.
עשינו כל תנאי עצמאי ובדקנו מה הוא תורם לערך המוחזר בנפרד, ושינינו בהתאם את ערך המשתנה PASS/FAILD בהתאמה
