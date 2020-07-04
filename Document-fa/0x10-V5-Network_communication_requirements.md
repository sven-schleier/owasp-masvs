<div dir="rtl" markdown="1">

# V5: نیازمندی‌های ارتباطات شبکه

## هدف کنترل

هدف کنترل های فهرست شده در این بخش این است که از محرمانگی و یکپارچگی اطلاعات مبادله شده میان برنامه موبایل و پایانه‌های سرویس از راه دور، اطمینان حاصل کنند. در حداقل شرایط، یک برنامه موبایل باید کانالی امن و رمزنگاری شده برای ارتباطات شبکه با استفاده از پروتکل TLS با تنظیمات مناسب، ایجاد کند. سطح دو، اقدامات اضافی دفاع عمیق مانند SSL pinning را لیست می کند.

## نیازمندی‌های وارسی امنیت

| # | MSTG-ID | شرح | سطح یک | سطح دو |
| -- | -------- | ---------------------- | - | - |
| **5.1** | MSTG-NETWORK-1 | داده با استفاده از TLS روی شبکه رمزگذاری می شود. کانال امن در طول برنامه، همواره استفاده می شود. | ✓ | ✓ |
| **5.2** | MSTG-NETWORK-2 | تنظیمات TLS با بهترین روش‌های حال حاضر مطابقت دارند، و یا اگر سیستم عامل موبایل از استانداردهای پیشنهادی پشتیبانی نمی کند، تنظیمات TLS تا جای ممکن با آنها مشابهت داشته باشد. | ✓ | ✓ |
| **5.3** | MSTG-NETWORK-3 | برنامه، گواهینامه X.509 پایانه‌ از راه دور را هنگامی که کانال امن ایجاد شود، وارسی می کند. تنها گواهینامه‌های امضا شده توسط CA مطمئن قابل قبول می باشند. | ✓ | ✓ |
| **5.4** | MSTG-NETWORK-4 | برنامه یا از certificate store خودش استفاده می کند، یا گواهینامه پایانه یا کلید عمومی را پین می کند، و متعاقبا اتصالات به پایانه‌هایی که گواهینامه یا کلید متفاوتی دارند را ایجاد نمی کند، حتی اگر آن گواهینامه توسط CA مطمئن امضا شده باشد. |   | ✓ |
| **5.5** | MSTG-NETWORK-5 | برنامه بر تنها یک کانال ناامن ارتباطی (ایمیل یا پیامک) برای عملیات های بسیار مهم مانند ثبت نام‌ها و بازگردانی حساب، تکیه نمی کند. |  | ✓ |
| **5.6** | MSTG-NETWORK-6 | برنامه تنها بر کتابخانه‌های امنیت و اتصال که به روز می باشند، متکی می باشد. |  | ✓ |

## منابع

راهنمای وارسی امنیتی موبایل OWASP، دستورالعمل‌هایی مفصل برای تایید نیازمندی‌های لیست شده در این بخش، فراهم می کند.

- General: Testing Network Communication - <https://github.com/OWASP/owasp-mstg/blob/master/Document/0x04f-Testing-Network-Communication.md>
- Android: Testing Network Communication - <https://github.com/OWASP/owasp-mstg/blob/master/Document/0x05g-Testing-Network-Communication.md>
- iOS: Testing Network Communication - <https://github.com/OWASP/owasp-mstg/blob/master/Document/0x06g-Testing-Network-Communication.md>

برای اطلاعات بیشتر، مشاهده کنید:

- OWASP Mobile Top 10: M3 (Insecure Communication) - <https://owasp.org/www-project-mobile-top-10/2016-risks/m3-insecure-communication>
- CWE 295 (Improper Certificate Validation) - <https://cwe.mitre.org/data/definitions/295.html>
- CWE 296 (Improper Following of a Certificate's Chain of Trust) - <https://cwe.mitre.org/data/definitions/296.html>
- CWE 297 (Improper Validation of Certificate with Host Mismatch) - <https://cwe.mitre.org/data/definitions/297.html>
- CWE 298 (Improper Validation of Certificate Expiration) - <https://cwe.mitre.org/data/definitions/298.html>
- CWE 308 (Use of Single-factor Authentication) - <https://cwe.mitre.org/data/definitions/308.html>
- CWE 319 (Cleartext Transmission of Sensitive Information) - <https://cwe.mitre.org/data/definitions/319.html>
- CWE 326 (Inadequate Encryption Strength) - <https://cwe.mitre.org/data/definitions/326.html>
- CWE 327 (Use of a Broken or Risky Cryptographic Algorithm) - <https://cwe.mitre.org/data/definitions/327.html>
- CWE 780 (Use of RSA Algorithm without OAEP) - <https://cwe.mitre.org/data/definitions/780.html>
- CWE 940 (Improper Verification of Source of a Communication Channel) - <https://cwe.mitre.org/data/definitions/940.html>
- CWE 941 (Incorrectly Specified Destination in a Communication Channel) - <https://cwe.mitre.org/data/definitions/941.html>

</div>
