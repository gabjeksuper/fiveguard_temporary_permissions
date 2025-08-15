-- Localization for Fiveguard Temporary Permissions
-- Add or edit translations here. Supported codes: 'en', 'it', 'es', 'ar'
Locale = Locale or {}
Locale.code = Locale.code or 'en'
Locale.strings = Locale.strings or {}

Locale.strings['en'] = {
  FG_NOT_FOUND = "This is an addon for FiveGuard, but it was not found. Purchase it at https://fiveguard.net/#pricing",
  FG_IS = "Fiveguard is: ^3%s^0",
  LINKED_SUCCESS = "Fiveguard linked ^2successfully^0!",
  BAD_RESOURCENAME_WARNING = "\27[31m[FIVEGUARD WARNING]: Your resource name is 'fiveguard_temporary_permissions'. Please change it to something less obvious!\27[0m",
  FG_NOT_STARTED = "Seems like you didn't start ^3%s^1 before this resource\nMake sure to start ^3%s^0 earlier in your server.cfg for better compatibility with your scripts!",
  TRY_START = "Trying to start ^3%s^0 (attempt: %d)^0",
  START_FAILED = "Failed to start ^3%s^1 (attempts: %d)",
  CONFIG_ERROR_MISSING = "\27[31m[FIVEGUARD CONFIG ERROR]: '%s' is missing in section '%s'\27[0m",
  DEBUG_GRANTED = "[DEBUG] Granted %s:%s to %s (%d)",
  DEBUG_REVOKED = "[DEBUG] Revoked %s:%s from %s (%d)",
  CONFIG_WARNING_INVALID_SECTION = "\27[33m[FIVEGUARD CONFIG WARNING]: Section '%s' is not a valid table!\27[0m"
}

Locale.strings['it'] = {
  FG_NOT_FOUND = "Questo è un addon per FiveGuard, ma non è stato trovato. Acquistalo su https://fiveguard.net/#pricing",
  FG_IS = "Fiveguard è: ^3%s^0",
  LINKED_SUCCESS = "Fiveguard collegato ^2correttamente^0!",
  BAD_RESOURCENAME_WARNING = "\27[31m[AVVISO FIVEGUARD]: Il nome della tua risorsa è 'fiveguard_temporary_permissions'. Cambialo con qualcosa di meno ovvio!\27[0m",
  FG_NOT_STARTED = "Sembra che tu non abbia avviato ^3%s^1 prima di questa risorsa\nAssicurati di avviare ^3%s^0 prima nel tuo server.cfg per una migliore compatibilità con gli script!",
  TRY_START = "Tentativo di avviare ^3%s^0 (tentativo: %d)^0",
  START_FAILED = "Impossibile avviare ^3%s^1 (tentativi: %d)",
  CONFIG_ERROR_MISSING = "\27[31m[ERRORE CONFIG FIVEGUARD]: '%s' manca nella sezione '%s'\27[0m",
  DEBUG_GRANTED = "[DEBUG] Concessi %s:%s a %s (%d)",
  DEBUG_REVOKED = "[DEBUG] Revocati %s:%s da %s (%d)",
  CONFIG_WARNING_INVALID_SECTION = "\27[33m[AVVISO CONFIG FIVEGUARD]: La sezione '%s' non è una tabella valida!\27[0m"
}

Locale.strings['es'] = {
  FG_NOT_FOUND = "Este es un complemento para FiveGuard, pero no se encontró. Cómpralo en https://fiveguard.net/#pricing",
  FG_IS = "Fiveguard es: ^3%s^0",
  LINKED_SUCCESS = "¡Fiveguard vinculado ^2correctamente^0!",
  BAD_RESOURCENAME_WARNING = "\27[31m[ADVERTENCIA FIVEGUARD]: El nombre de tu recurso es 'fiveguard_temporary_permissions'. ¡Cámbialo por algo menos obvio!\27[0m",
  FG_NOT_STARTED = "Parece que no iniciaste ^3%s^1 antes de este recurso\n¡Asegúrate de iniciar ^3%s^0 antes en tu server.cfg para una mejor compatibilidad con tus scripts!",
  TRY_START = "Intentando iniciar ^3%s^0 (intento: %d)^0",
  START_FAILED = "No se pudo iniciar ^3%s^1 (intentos: %d)",
  CONFIG_ERROR_MISSING = "\27[31m[ERROR DE CONFIG FIVEGUARD]: Falta '%s' en la sección '%s'\27[0m",
  DEBUG_GRANTED = "[DEBUG] Concedidos %s:%s a %s (%d)",
  DEBUG_REVOKED = "[DEBUG] Revocados %s:%s de %s (%d)",
  CONFIG_WARNING_INVALID_SECTION = "\27[33m[ADVERTENCIA DE CONFIG FIVEGUARD]: ¡La sección '%s' no es una tabla válida!\27[0m"
}

Locale.strings['ar'] = {
  FG_NOT_FOUND = "هذا إضافة لـ FiveGuard، ولكن لم يتم العثور عليه. يمكنك شراؤه من https://fiveguard.net/#pricing",
  FG_IS = "‏Fiveguard هو: ^3%s^0",
  LINKED_SUCCESS = "تم ربط Fiveguard ^2بنجاح^0!",
  BAD_RESOURCENAME_WARNING = "\27[31m[تحذير FIVEGUARD]: اسم المورد لديك هو 'fiveguard_temporary_permissions'. يرجى تغييره لاسم أقل وضوحًا!\27[0m",
  FG_NOT_STARTED = "يبدو أنك لم تقم بتشغيل ^3%s^1 قبل هذا المورد\nتأكد من تشغيل ^3%s^0 مبكرًا في ملف server.cfg لتحسين التوافق مع السكربتات!",
  TRY_START = "محاولة تشغيل ^3%s^0 (محاولة: %d)^0",
  START_FAILED = "فشل تشغيل ^3%s^1 (عدد المحاولات: %d)",
  CONFIG_ERROR_MISSING = "\27[31m[خطأ إعدادات FIVEGUARD]: '%s' مفقود في القسم '%s'\27[0m",
  DEBUG_GRANTED = "[DEBUG] تم منح %s:%s إلى %s (%d)",
  DEBUG_REVOKED = "[DEBUG] تم سحب %s:%s من %s (%d)",
  CONFIG_WARNING_INVALID_SECTION = "\27[33m[تحذير إعدادات FIVEGUARD]: القسم '%s' ليس جدولًا صالحًا!\27[0m"
}

function _L(key, ...)
  local lang = (Config and Config.Locale) or Locale.code or 'en'
  local dict = Locale.strings[lang] or Locale.strings['en']
  local msg = dict[key] or Locale.strings['en'][key] or key
  if select('#', ...) > 0 then
    return string.format(msg, ...)
  end
  return msg
end

Locale.strings['fr'] = {
  FG_NOT_FOUND = "Ceci est un addon pour FiveGuard, mais il est introuvable. Achetez-le sur https://fiveguard.net/#pricing",
  FG_IS = "Fiveguard est : ^3%s^0",
  LINKED_SUCCESS = "Fiveguard lié ^2avec succès^0 !",
  BAD_RESOURCENAME_WARNING = "\\27[31m[AVERTISSEMENT FIVEGUARD] : Le nom de votre ressource est 'fiveguard_temporary_permissions'. Veuillez le changer pour quelque chose de moins évident !\\27[0m",
  FG_NOT_STARTED = "Il semble que vous n'ayez pas démarré ^3%s^1 avant cette ressource\\nAssurez-vous de démarrer ^3%s^0 plus tôt dans votre server.cfg pour une meilleure compatibilité avec vos scripts !",
  TRY_START = "Tentative de démarrer ^3%s^0 (essai : %d)^0",
  START_FAILED = "Échec du démarrage de ^3%s^1 (essais : %d)",
  CONFIG_ERROR_MISSING = "\\27[31m[ERREUR DE CONFIG FIVEGUARD] : '%s' est manquant dans la section '%s'\\27[0m",
  DEBUG_GRANTED = "[DEBUG] Accordé %s:%s à %s (%d)",
  DEBUG_REVOKED = "[DEBUG] Révoqué %s:%s de %s (%d)",
  CONFIG_WARNING_INVALID_SECTION = "\\27[33m[AVERTISSEMENT CONFIG FIVEGUARD] : La section '%s' n'est pas une table valide !\\27[0m",
}

Locale.strings['de'] = {
  FG_NOT_FOUND = "Dies ist ein Addon für FiveGuard, aber es wurde nicht gefunden. Kaufen Sie es unter https://fiveguard.net/#pricing",
  FG_IS = "Fiveguard ist: ^3%s^0",
  LINKED_SUCCESS = "Fiveguard ^2erfolgreich^0 verbunden!",
  BAD_RESOURCENAME_WARNING = "\\27[31m[FIVEGUARD WARNUNG]: Der Name Ihrer Ressource ist 'fiveguard_temporary_permissions'. Bitte ändern Sie ihn in etwas weniger Offensichtliches!\\27[0m",
  FG_NOT_STARTED = "Anscheinend haben Sie ^3%s^1 nicht vor dieser Ressource gestartet\\nStellen Sie sicher, dass Sie ^3%s^0 früher in Ihrer server.cfg starten, um die Kompatibilität mit Ihren Scripts zu verbessern!",
  TRY_START = "Versuche, ^3%s^0 zu starten (Versuch: %d)^0",
  START_FAILED = "Start von ^3%s^1 fehlgeschlagen (Versuche: %d)",
  CONFIG_ERROR_MISSING = "\\27[31m[FIVEGUARD KONFIG-FEHLER]: '%s' fehlt im Abschnitt '%s'\\27[0m",
  DEBUG_GRANTED = "[DEBUG] %s:%s für %s (%d) gewährt",
  DEBUG_REVOKED = "[DEBUG] %s:%s von %s (%d) entzogen",
  CONFIG_WARNING_INVALID_SECTION = "\\27[33m[FIVEGUARD KONFIG-WARNUNG]: Abschnitt '%s' ist keine gültige Tabelle!\\27[0m",
}

Locale.strings['pt'] = {
  FG_NOT_FOUND = "Este é um addon para o FiveGuard, mas não foi encontrado. Compre em https://fiveguard.net/#pricing",
  FG_IS = "Fiveguard é: ^3%s^0",
  LINKED_SUCCESS = "Fiveguard ligado ^2com sucesso^0!",
  BAD_RESOURCENAME_WARNING = "\\27[31m[AVISO FIVEGUARD]: O nome do seu recurso é 'fiveguard_temporary_permissions'. Altere para algo menos óbvio!\\27[0m",
  FG_NOT_STARTED = "Parece que você não iniciou ^3%s^1 antes deste recurso\\nCertifique-se de iniciar ^3%s^0 mais cedo no seu server.cfg para melhor compatibilidade com seus scripts!",
  TRY_START = "Tentando iniciar ^3%s^0 (tentativa: %d)^0",
  START_FAILED = "Falha ao iniciar ^3%s^1 (tentativas: %d)",
  CONFIG_ERROR_MISSING = "\\27[31m[ERRO DE CONFIG DO FIVEGUARD]: '%s' está ausente na seção '%s'\\27[0m",
  DEBUG_GRANTED = "[DEBUG] Concedido %s:%s a %s (%d)",
  DEBUG_REVOKED = "[DEBUG] Revogado %s:%s de %s (%d)",
  CONFIG_WARNING_INVALID_SECTION = "\\27[33m[AVISO DE CONFIG DO FIVEGUARD]: A seção '%s' não é uma tabela válida!\\27[0m",
}

Locale.strings['pt-BR'] = {
  FG_NOT_FOUND = "Este é um addon para o FiveGuard, mas não foi encontrado. Compre em https://fiveguard.net/#pricing",
  FG_IS = "Fiveguard é: ^3%s^0",
  LINKED_SUCCESS = "Fiveguard conectado ^2com sucesso^0!",
  BAD_RESOURCENAME_WARNING = "\\27[31m[AVISO FIVEGUARD]: O nome do seu recurso é 'fiveguard_temporary_permissions'. Altere para algo menos óbvio!\\27[0m",
  FG_NOT_STARTED = "Parece que você não iniciou ^3%s^1 antes deste recurso\\nCertifique-se de iniciar ^3%s^0 mais cedo no seu server.cfg para melhor compatibilidade com seus scripts!",
  TRY_START = "Tentando iniciar ^3%s^0 (tentativa: %d)^0",
  START_FAILED = "Falha ao iniciar ^3%s^1 (tentativas: %d)",
  CONFIG_ERROR_MISSING = "\\27[31m[ERRO DE CONFIG DO FIVEGUARD]: '%s' está ausente na seção '%s'\\27[0m",
  DEBUG_GRANTED = "[DEBUG] Concedido %s:%s para %s (%d)",
  DEBUG_REVOKED = "[DEBUG] Revogado %s:%s de %s (%d)",
  CONFIG_WARNING_INVALID_SECTION = "\\27[33m[AVISO DE CONFIG DO FIVEGUARD]: A seção '%s' não é uma tabela válida!\\27[0m",
}

Locale.strings['nl'] = {
  FG_NOT_FOUND = "Dit is een addon voor FiveGuard, maar hij is niet gevonden. Koop het op https://fiveguard.net/#pricing",
  FG_IS = "Fiveguard is: ^3%s^0",
  LINKED_SUCCESS = "Fiveguard ^2succesvol^0 gekoppeld!",
  BAD_RESOURCENAME_WARNING = "\\27[31m[FIVEGUARD WAARSCHUWING]: De naam van je resource is 'fiveguard_temporary_permissions'. Verander dit naar iets minder voor de hand liggends!\\27[0m",
  FG_NOT_STARTED = "Het lijkt erop dat je ^3%s^1 niet vóór deze resource hebt gestart\\nZorg ervoor dat je ^3%s^0 eerder in je server.cfg start voor betere compatibiliteit met je scripts!",
  TRY_START = "Bezig met starten van ^3%s^0 (poging: %d)^0",
  START_FAILED = "Starten van ^3%s^1 mislukt (pogingen: %d)",
  CONFIG_ERROR_MISSING = "\\27[31m[FIVEGUARD CONFIG-FOUT]: '%s' ontbreekt in sectie '%s'\\27[0m",
  DEBUG_GRANTED = "[DEBUG] %s:%s verleend aan %s (%d)",
  DEBUG_REVOKED = "[DEBUG] %s:%s ingetrokken van %s (%d)",
  CONFIG_WARNING_INVALID_SECTION = "\\27[33m[FIVEGUARD CONFIG-WAARSCHUWING]: Sectie '%s' is geen geldige tabel!\\27[0m",
}

Locale.strings['pl'] = {
  FG_NOT_FOUND = "To jest dodatek do FiveGuard, ale nie został znaleziony. Kup na https://fiveguard.net/#pricing",
  FG_IS = "Fiveguard to: ^3%s^0",
  LINKED_SUCCESS = "Fiveguard ^2pomyślnie^0 połączony!",
  BAD_RESOURCENAME_WARNING = "\\27[31m[OSTRZEŻENIE FIVEGUARD]: Nazwa twojego zasobu to 'fiveguard_temporary_permissions'. Zmień na mniej oczywistą!\\27[0m",
  FG_NOT_STARTED = "Wygląda na to, że nie uruchomiłeś ^3%s^1 przed tym zasobem\\nUpewnij się, że uruchamiasz ^3%s^0 wcześniej w server.cfg dla lepszej kompatybilności ze skryptami!",
  TRY_START = "Próba uruchomienia ^3%s^0 (próba: %d)^0",
  START_FAILED = "Nie udało się uruchomić ^3%s^1 (liczba prób: %d)",
  CONFIG_ERROR_MISSING = "\\27[31m[BŁĄD KONFIGURACJI FIVEGUARD]: Brakuje '%s' w sekcji '%s'\\27[0m",
  DEBUG_GRANTED = "[DEBUG] Nadano %s:%s dla %s (%d)",
  DEBUG_REVOKED = "[DEBUG] Odebrano %s:%s od %s (%d)",
  CONFIG_WARNING_INVALID_SECTION = "\\27[33m[OSTRZEŻENIE KONFIGURACJI FIVEGUARD]: Sekcja '%s' nie jest prawidłową tabelą!\\27[0m",
}

Locale.strings['ro'] = {
  FG_NOT_FOUND = "Acesta este un addon pentru FiveGuard, dar nu a fost găsit. Cumpără-l la https://fiveguard.net/#pricing",
  FG_IS = "Fiveguard este: ^3%s^0",
  LINKED_SUCCESS = "Fiveguard a fost conectat ^2cu succes^0!",
  BAD_RESOURCENAME_WARNING = "\\27[31m[AVERTISMENT FIVEGUARD]: Numele resursei tale este 'fiveguard_temporary_permissions'. Te rugăm să-l schimbi cu ceva mai puțin evident!\\27[0m",
  FG_NOT_STARTED = "Se pare că nu ai pornit ^3%s^1 înaintea acestei resurse\\nAsigură-te că pornești ^3%s^0 mai devreme în server.cfg pentru o compatibilitate mai bună cu scripturile!",
  TRY_START = "Încercare de a porni ^3%s^0 (încercarea: %d)^0",
  START_FAILED = "Pornirea ^3%s^1 a eșuat (încercări: %d)",
  CONFIG_ERROR_MISSING = "\\27[31m[EROARE CONFIG FIVEGUARD]: Lipsește '%s' în secțiunea '%s'\\27[0m",
  DEBUG_GRANTED = "[DEBUG] Acordat %s:%s pentru %s (%d)",
  DEBUG_REVOKED = "[DEBUG] Revocat %s:%s de la %s (%d)",
  CONFIG_WARNING_INVALID_SECTION = "\\27[33m[AVERTISMENT CONFIG FIVEGUARD]: Secțiunea '%s' nu este un tabel valid!\\27[0m",
}

Locale.strings['tr'] = {
  FG_NOT_FOUND = "Bu, FiveGuard için bir eklentidir ancak bulunamadı. https://fiveguard.net/#pricing adresinden satın alın",
  FG_IS = "Fiveguard: ^3%s^0",
  LINKED_SUCCESS = "Fiveguard ^2başarıyla^0 bağlandı!",
  BAD_RESOURCENAME_WARNING = "\\27[31m[FIVEGUARD UYARI]: Kaynağınızın adı 'fiveguard_temporary_permissions'. Lütfen daha az bariz bir isimle değiştirin!\\27[0m",
  FG_NOT_STARTED = "Görünüşe göre bu kaynaktan önce ^3%s^1'i başlatmadınız\\nDaha iyi uyumluluk için ^3%s^0'i server.cfg dosyanızda daha önce başlattığınızdan emin olun!",
  TRY_START = "^3%s^0 başlatılmaya çalışılıyor (deneme: %d)^0",
  START_FAILED = "^3%s^1 başlatılamadı (deneme sayısı: %d)",
  CONFIG_ERROR_MISSING = "\\27[31m[FIVEGUARD YAPILANDIRMA HATASI]: '%s', '%s' bölümünde eksik\\27[0m",
  DEBUG_GRANTED = "[DEBUG] %s:%s, %s (%d) için verildi",
  DEBUG_REVOKED = "[DEBUG] %s:%s, %s (%d) üzerinden geri alındı",
  CONFIG_WARNING_INVALID_SECTION = "\\27[33m[FIVEGUARD YAPILANDIRMA UYARISI]: '%s' bölümü geçerli bir tablo değil!\\27[0m",
}

Locale.strings['ru'] = {
  FG_NOT_FOUND = "Это аддон для FiveGuard, но он не найден. Приобретите его на https://fiveguard.net/#pricing",
  FG_IS = "Fiveguard: ^3%s^0",
  LINKED_SUCCESS = "Fiveguard ^2успешно^0 подключён!",
  BAD_RESOURCENAME_WARNING = "\\27[31m[ПРЕДУПРЕЖДЕНИЕ FIVEGUARD]: Имя вашего ресурса — 'fiveguard_temporary_permissions'. Пожалуйста, измените его на менее очевидное!\\27[0m",
  FG_NOT_STARTED = "Похоже, вы не запустили ^3%s^1 перед этим ресурсом\\nУбедитесь, что запускаете ^3%s^0 раньше в server.cfg для лучшей совместимости со скриптами!",
  TRY_START = "Попытка запустить ^3%s^0 (попытка: %d)^0",
  START_FAILED = "Не удалось запустить ^3%s^1 (попыток: %d)",
  CONFIG_ERROR_MISSING = "\\27[31m[ОШИБКА КОНФИГУРАЦИИ FIVEGUARD]: '%s' отсутствует в разделе '%s'\\27[0m",
  DEBUG_GRANTED = "[DEBUG] Выданы %s:%s пользователю %s (%d)",
  DEBUG_REVOKED = "[DEBUG] Отозваны %s:%s у %s (%d)",
  CONFIG_WARNING_INVALID_SECTION = "\\27[33m[ПРЕДУПРЕЖДЕНИЕ КОНФИГУРАЦИИ FIVEGUARD]: Раздел '%s' не является допустимой таблицей!\\27[0m",
}

Locale.strings['uk'] = {
  FG_NOT_FOUND = "Це аддон для FiveGuard, але його не знайдено. Придбайте на https://fiveguard.net/#pricing",
  FG_IS = "Fiveguard: ^3%s^0",
  LINKED_SUCCESS = "Fiveguard ^2успішно^0 підключено!",
  BAD_RESOURCENAME_WARNING = "\\27[31m[ПОПЕРЕДЖЕННЯ FIVEGUARD]: Назва вашого ресурсу — 'fiveguard_temporary_permissions'. Змініть її на менш очевидну!\\27[0m",
  FG_NOT_STARTED = "Схоже, ви не запустили ^3%s^1 перед цим ресурсом\\nПереконайтеся, що запускаєте ^3%s^0 раніше у server.cfg для кращої сумісності зі скриптами!",
  TRY_START = "Спроба запустити ^3%s^0 (спроба: %d)^0",
  START_FAILED = "Не вдалося запустити ^3%s^1 (спроб: %d)",
  CONFIG_ERROR_MISSING = "\\27[31m[ПОМИЛКА КОНФІГУРАЦІЇ FIVEGUARD]: '%s' відсутній у розділі '%s'\\27[0m",
  DEBUG_GRANTED = "[DEBUG] Надано %s:%s для %s (%d)",
  DEBUG_REVOKED = "[DEBUG] Відкликано %s:%s у %s (%d)",
  CONFIG_WARNING_INVALID_SECTION = "\\27[33m[ПОПЕРЕДЖЕННЯ КОНФІГУРАЦІЇ FIVEGUARD]: Розділ '%s' не є дійсною таблицею!\\27[0m",
}

Locale.strings['el'] = {
  FG_NOT_FOUND = "Αυτό είναι ένα πρόσθετο για το FiveGuard, αλλά δεν βρέθηκε. Αγοράστε το στο https://fiveguard.net/#pricing",
  FG_IS = "Το Fiveguard είναι: ^3%s^0",
  LINKED_SUCCESS = "Το Fiveguard συνδέθηκε ^2επιτυχώς^0!",
  BAD_RESOURCENAME_WARNING = "\\27[31m[ΠΡΟΕΙΔΟΠΟΙΗΣΗ FIVEGUARD]: Το όνομα του πόρου σας είναι 'fiveguard_temporary_permissions'. Αλλάξτε το σε κάτι λιγότερο προφανές!\\27[0m",
  FG_NOT_STARTED = "Φαίνεται ότι δεν εκκινήσατε το ^3%s^1 πριν από αυτόν τον πόρο\\nΒεβαιωθείτε ότι εκκινείτε το ^3%s^0 νωρίτερα στο server.cfg για καλύτερη συμβατότητα με τα scripts!",
  TRY_START = "Προσπάθεια εκκίνησης του ^3%s^0 (προσπάθεια: %d)^0",
  START_FAILED = "Αποτυχία εκκίνησης του ^3%s^1 (προσπάθειες: %d)",
  CONFIG_ERROR_MISSING = "\\27[31m[ΣΦΑΛΜΑ ΡΥΘΜΙΣΕΩΝ FIVEGUARD]: Λείπει το '%s' στην ενότητα '%s'\\27[0m",
  DEBUG_GRANTED = "[DEBUG] Παραχωρήθηκε %s:%s στον/στην %s (%d)",
  DEBUG_REVOKED = "[DEBUG] Ανακλήθηκε %s:%s από τον/την %s (%d)",
  CONFIG_WARNING_INVALID_SECTION = "\\27[33m[ΠΡΟΕΙΔΟΠΟΙΗΣΗ ΡΥΘΜΙΣΕΩΝ FIVEGUARD]: Η ενότητα '%s' δεν είναι έγκυρος πίνακας!\\27[0m",
}

Locale.strings['cs'] = {
  FG_NOT_FOUND = "Toto je doplněk pro FiveGuard, ale nebyl nalezen. Zakupte na https://fiveguard.net/#pricing",
  FG_IS = "Fiveguard je: ^3%s^0",
  LINKED_SUCCESS = "Fiveguard byl ^2úspěšně^0 připojen!",
  BAD_RESOURCENAME_WARNING = "\\27[31m[UPOZORNĚNÍ FIVEGUARD]: Název vašeho resource je 'fiveguard_temporary_permissions'. Změňte jej na méně zřejmý!\\27[0m",
  FG_NOT_STARTED = "Zdá se, že jste nespustili ^3%s^1 před tímto resource\\nUjistěte se, že spouštíte ^3%s^0 dříve v server.cfg pro lepší kompatibilitu se skripty!",
  TRY_START = "Pokus o spuštění ^3%s^0 (pokus: %d)^0",
  START_FAILED = "Nepodařilo se spustit ^3%s^1 (pokusů: %d)",
  CONFIG_ERROR_MISSING = "\\27[31m[CHYBA KONFIGURACE FIVEGUARD]: '%s' chybí v sekci '%s'\\27[0m",
  DEBUG_GRANTED = "[DEBUG] Uděleno %s:%s pro %s (%d)",
  DEBUG_REVOKED = "[DEBUG] Odebráno %s:%s od %s (%d)",
  CONFIG_WARNING_INVALID_SECTION = "\\27[33m[UPOZORNĚNÍ KONFIGURACE FIVEGUARD]: Sekce '%s' není platná tabulka!\\27[0m",
}

Locale.strings['sk'] = {
  FG_NOT_FOUND = "Toto je doplnok pre FiveGuard, ale nenašiel sa. Zakúpte na https://fiveguard.net/#pricing",
  FG_IS = "Fiveguard je: ^3%s^0",
  LINKED_SUCCESS = "Fiveguard bol ^2úspešne^0 pripojený!",
  BAD_RESOURCENAME_WARNING = "\\27[31m[UPOZORNENIE FIVEGUARD]: Názov vášho zdroja je 'fiveguard_temporary_permissions'. Zmeňte ho na menej zrejmý!\\27[0m",
  FG_NOT_STARTED = "Zdá sa, že ste nespustili ^3%s^1 pred týmto zdrojom\\nUistite sa, že spúšťate ^3%s^0 skôr v server.cfg pre lepšiu kompatibilitu so skriptmi!",
  TRY_START = "Pokus o spustenie ^3%s^0 (pokus: %d)^0",
  START_FAILED = "Nepodarilo sa spustiť ^3%s^1 (pokusov: %d)",
  CONFIG_ERROR_MISSING = "\\27[31m[CHYBA KONFIGURÁCIE FIVEGUARD]: '%s' chýba v sekcii '%s'\\27[0m",
  DEBUG_GRANTED = "[DEBUG] Udelené %s:%s pre %s (%d)",
  DEBUG_REVOKED = "[DEBUG] Odobraté %s:%s od %s (%d)",
  CONFIG_WARNING_INVALID_SECTION = "\\27[33m[UPOZORNENIE KONFIGURÁCIE FIVEGUARD]: Sekcia '%s' nie je platná tabuľka!\\27[0m",
}

Locale.strings['hu'] = {
  FG_NOT_FOUND = "Ez egy FiveGuard kiegészítő, de nem található. Vásárolja meg itt: https://fiveguard.net/#pricing",
  FG_IS = "A Fiveguard: ^3%s^0",
  LINKED_SUCCESS = "A Fiveguard ^2sikeresen^0 csatlakoztatva!",
  BAD_RESOURCENAME_WARNING = "\\27[31m[FIVEGUARD FIGYELMEZTETÉS]: Az erőforrás neve 'fiveguard_temporary_permissions'. Kérjük, változtassa meg kevésbé egyértelműre!\\27[0m",
  FG_NOT_STARTED = "Úgy tűnik, nem indította el a(z) ^3%s^1 erőforrást ez előtt\\nGyőződjön meg róla, hogy a ^3%s^0 korábban indul a server.cfg-ben a jobb kompatibilitás érdekében!",
  TRY_START = "^3%s^0 indításának kísérlete (kísérlet: %d)^0",
  START_FAILED = "Nem sikerült elindítani: ^3%s^1 (kísérletek: %d)",
  CONFIG_ERROR_MISSING = "\\27[31m[FIVEGUARD KONFIG HIBA]: A(z) '%s' hiányzik a(z) '%s' szakaszból\\27[0m",
  DEBUG_GRANTED = "[DEBUG] %s:%s megadva %s (%d) részére",
  DEBUG_REVOKED = "[DEBUG] %s:%s visszavonva %s (%d) felhasználótól",
  CONFIG_WARNING_INVALID_SECTION = "\\27[33m[FIVEGUARD KONFIG FIGYELMEZTETÉS]: A(z) '%s' szakasz nem érvényes tábla!\\27[0m",
}

Locale.strings['sv'] = {
  FG_NOT_FOUND = "Detta är ett tillägg för FiveGuard, men det hittades inte. Köp det på https://fiveguard.net/#pricing",
  FG_IS = "Fiveguard är: ^3%s^0",
  LINKED_SUCCESS = "Fiveguard har ^2anslutits^0 framgångsrikt!",
  BAD_RESOURCENAME_WARNING = "\\27[31m[FIVEGUARD VARNING]: Ditt resursnamn är 'fiveguard_temporary_permissions'. Byt till något mindre uppenbart!\\27[0m",
  FG_NOT_STARTED = "Det verkar som att du inte startade ^3%s^1 före denna resurs\\nSe till att starta ^3%s^0 tidigare i din server.cfg för bättre kompatibilitet med dina scripts!",
  TRY_START = "Försöker starta ^3%s^0 (försök: %d)^0",
  START_FAILED = "Kunde inte starta ^3%s^1 (försök: %d)",
  CONFIG_ERROR_MISSING = "\\27[31m[FIVEGUARD KONFIG-FEL]: '%s' saknas i sektionen '%s'\\27[0m",
  DEBUG_GRANTED = "[DEBUG] Beviljade %s:%s till %s (%d)",
  DEBUG_REVOKED = "[DEBUG] Återkallade %s:%s från %s (%d)",
  CONFIG_WARNING_INVALID_SECTION = "\\27[33m[FIVEGUARD KONFIG-VARNING]: Sektionen '%s' är inte en giltig tabell!\\27[0m",
}

Locale.strings['da'] = {
  FG_NOT_FOUND = "Dette er et addon til FiveGuard, men det blev ikke fundet. Køb det på https://fiveguard.net/#pricing",
  FG_IS = "Fiveguard er: ^3%s^0",
  LINKED_SUCCESS = "Fiveguard er ^2forbundet^0 med succes!",
  BAD_RESOURCENAME_WARNING = "\\27[31m[FIVEGUARD ADVARSEL]: Navnet på din ressource er 'fiveguard_temporary_permissions'. Skift det til noget mindre oplagt!\\27[0m",
  FG_NOT_STARTED = "Det ser ud til, at du ikke startede ^3%s^1 før denne ressource\\nSørg for at starte ^3%s^0 tidligere i din server.cfg for bedre kompatibilitet med dine scripts!",
  TRY_START = "Forsøger at starte ^3%s^0 (forsøg: %d)^0",
  START_FAILED = "Kunne ikke starte ^3%s^1 (forsøg: %d)",
  CONFIG_ERROR_MISSING = "\\27[31m[FIVEGUARD KONFIG-FEJL]: '%s' mangler i sektionen '%s'\\27[0m",
  DEBUG_GRANTED = "[DEBUG] Tildelte %s:%s til %s (%d)",
  DEBUG_REVOKED = "[DEBUG] Tilbagekaldte %s:%s fra %s (%d)",
  CONFIG_WARNING_INVALID_SECTION = "\\27[33m[FIVEGUARD KONFIG-ADVARSEL]: Sektionen '%s' er ikke en gyldig tabel!\\27[0m",
}

Locale.strings['nb'] = {
  FG_NOT_FOUND = "Dette er et tillegg for FiveGuard, men det ble ikke funnet. Kjøp det på https://fiveguard.net/#pricing",
  FG_IS = "Fiveguard er: ^3%s^0",
  LINKED_SUCCESS = "Fiveguard ble ^2koblet til^0 vellykket!",
  BAD_RESOURCENAME_WARNING = "\\27[31m[FIVEGUARD ADVARSEL]: Ressursnavnet ditt er 'fiveguard_temporary_permissions'. Endre det til noe mindre åpenbart!\\27[0m",
  FG_NOT_STARTED = "Det ser ut som du ikke startet ^3%s^1 før denne ressursen\\nSørg for å starte ^3%s^0 tidligere i server.cfg for bedre kompatibilitet med skriptene dine!",
  TRY_START = "Prøver å starte ^3%s^0 (forsøk: %d)^0",
  START_FAILED = "Kunne ikke starte ^3%s^1 (forsøk: %d)",
  CONFIG_ERROR_MISSING = "\\27[31m[FIVEGUARD KONFIGURASJONSFEIL]: '%s' mangler i seksjonen '%s'\\27[0m",
  DEBUG_GRANTED = "[DEBUG] Innvilget %s:%s til %s (%d)",
  DEBUG_REVOKED = "[DEBUG] Tilbakekalt %s:%s fra %s (%d)",
  CONFIG_WARNING_INVALID_SECTION = "\\27[33m[FIVEGUARD KONFIGURASJONSADVARSEL]: Seksjonen '%s' er ikke en gyldig tabell!\\27[0m",
}

Locale.strings['fi'] = {
  FG_NOT_FOUND = "Tämä on FiveGuard-lisäosa, mutta sitä ei löytynyt. Osta se osoitteesta https://fiveguard.net/#pricing",
  FG_IS = "Fiveguard on: ^3%s^0",
  LINKED_SUCCESS = "Fiveguard yhdistetty ^2onnistuneesti^0!",
  BAD_RESOURCENAME_WARNING = "\\27[31m[FIVEGUARD VAROITUS]: Resurssisi nimi on 'fiveguard_temporary_permissions'. Vaihda se vähemmän ilmeiseksi!\\27[0m",
  FG_NOT_STARTED = "Näyttää siltä, ettet käynnistänyt ^3%s^1 ennen tätä resurssia\\nVarmista, että käynnistät ^3%s^0 aiemmin server.cfg:ssä paremman yhteensopivuuden saavuttamiseksi!",
  TRY_START = "Yritetään käynnistää ^3%s^0 (yritys: %d)^0",
  START_FAILED = "^3%s^1 käynnistys epäonnistui (yrityksiä: %d)",
  CONFIG_ERROR_MISSING = "\\27[31m[FIVEGUARD KONFIGUROINTIVIRHE]: '%s' puuttuu osiosta '%s'\\27[0m",
  DEBUG_GRANTED = "[DEBUG] Myönnetty %s:%s käyttäjälle %s (%d)",
  DEBUG_REVOKED = "[DEBUG] Peruttu %s:%s käyttäjältä %s (%d)",
  CONFIG_WARNING_INVALID_SECTION = "\\27[33m[FIVEGUARD KONFIGUROINTIVAROITUS]: Osa '%s' ei ole kelvollinen taulukko!\\27[0m",
}

Locale.strings['bg'] = {
  FG_NOT_FOUND = "Това е добавка за FiveGuard, но не беше намерена. Закупете я от https://fiveguard.net/#pricing",
  FG_IS = "Fiveguard е: ^3%s^0",
  LINKED_SUCCESS = "Fiveguard е ^2успешно^0 свързан!",
  BAD_RESOURCENAME_WARNING = "\\27[31m[ПРЕДУПРЕЖДЕНИЕ FIVEGUARD]: Името на ресурса ви е 'fiveguard_temporary_permissions'. Моля, променете го на по-малко очевидно!\\27[0m",
  FG_NOT_STARTED = "Изглежда, че не сте стартирали ^3%s^1 преди този ресурс\\nУверете се, че стартирате ^3%s^0 по-рано в server.cfg за по-добра съвместимост със скриптовете!",
  TRY_START = "Опит за стартиране на ^3%s^0 (опит: %d)^0",
  START_FAILED = "Неуспешно стартиране на ^3%s^1 (опити: %d)",
  CONFIG_ERROR_MISSING = "\\27[31m[ГРЕШКА КОНФИГУРАЦИЯ FIVEGUARD]: Липсва '%s' в раздел '%s'\\27[0m",
  DEBUG_GRANTED = "[DEBUG] Предоставени %s:%s на %s (%d)",
  DEBUG_REVOKED = "[DEBUG] Отнети %s:%s от %s (%d)",
  CONFIG_WARNING_INVALID_SECTION = "\\27[33m[ПРЕДУПРЕЖДЕНИЕ КОНФИГУРАЦИЯ FIVEGUARD]: Раздел '%s' не е валидна таблица!\\27[0m",
}

Locale.strings['hr'] = {
  FG_NOT_FOUND = "Ovo je dodatak za FiveGuard, ali nije pronađen. Kupite ga na https://fiveguard.net/#pricing",
  FG_IS = "Fiveguard je: ^3%s^0",
  LINKED_SUCCESS = "Fiveguard je ^2uspješno^0 povezan!",
  BAD_RESOURCENAME_WARNING = "\\27[31m[UPOZORENJE FIVEGUARD]: Naziv vašeg resursa je 'fiveguard_temporary_permissions'. Promijenite ga u nešto manje očito!\\27[0m",
  FG_NOT_STARTED = "Čini se da niste pokrenuli ^3%s^1 prije ovog resursa\\nObavezno pokrenite ^3%s^0 ranije u server.cfg radi bolje kompatibilnosti sa skriptama!",
  TRY_START = "Pokušaj pokretanja ^3%s^0 (pokušaj: %d)^0",
  START_FAILED = "Neuspjelo pokretanje ^3%s^1 (pokušaja: %d)",
  CONFIG_ERROR_MISSING = "\\27[31m[GREŠKA KONFIGURACIJE FIVEGUARD]: Nedostaje '%s' u odjeljku '%s'\\27[0m",
  DEBUG_GRANTED = "[DEBUG] Dodijeljeno %s:%s za %s (%d)",
  DEBUG_REVOKED = "[DEBUG] Oduzeto %s:%s od %s (%d)",
  CONFIG_WARNING_INVALID_SECTION = "\\27[33m[UPOZORENJE KONFIGURACIJE FIVEGUARD]: Odjeljak '%s' nije valjana tablica!\\27[0m",
}

Locale.strings['sr'] = {
  FG_NOT_FOUND = "Ово је додатак за FiveGuard, али није пронађен. Купите га на https://fiveguard.net/#pricing",
  FG_IS = "Fiveguard је: ^3%s^0",
  LINKED_SUCCESS = "Fiveguard је ^2успешно^0 повезан!",
  BAD_RESOURCENAME_WARNING = "\\27[31m[УПОЗОРЕЊЕ FIVEGUARD]: Назив вашег ресурса је 'fiveguard_temporary_permissions'. Промените га у нешто мање очигледно!\\27[0m",
  FG_NOT_STARTED = "Изгледа да нисте покренули ^3%s^1 пре овог ресурса\\nУверите се да покрећете ^3%s^0 раније у server.cfg ради боље компатибилности са скриптовима!",
  TRY_START = "Покушај покретања ^3%s^0 (покушај: %d)^0",
  START_FAILED = "Није успело покретање ^3%s^1 (покушаја: %d)",
  CONFIG_ERROR_MISSING = "\\27[31m[ГРЕШКА КОНФИГУРАЦИЈЕ FIVEGUARD]: Недостаје '%s' у одељку '%s'\\27[0m",
  DEBUG_GRANTED = "[DEBUG] Додељено %s:%s за %s (%d)",
  DEBUG_REVOKED = "[DEBUG] Поништено %s:%s од %s (%d)",
  CONFIG_WARNING_INVALID_SECTION = "\\27[33m[УПОЗОРЕЊЕ КОНФИГУРАЦИЈЕ FIVEGUARD]: Одељак '%s' није важећа табела!\\27[0m",
}

Locale.strings['sl'] = {
  FG_NOT_FOUND = "To je dodatek za FiveGuard, vendar ni bil najden. Kupite ga na https://fiveguard.net/#pricing",
  FG_IS = "Fiveguard je: ^3%s^0",
  LINKED_SUCCESS = "Fiveguard je bil ^2uspešno^0 povezan!",
  BAD_RESOURCENAME_WARNING = "\\27[31m[OPOZORILO FIVEGUARD]: Ime vaše datoteke z viri je 'fiveguard_temporary_permissions'. Spremenite ga v nekaj manj očitnega!\\27[0m",
  FG_NOT_STARTED = "Videti je, da niste zagnali ^3%s^1 pred tem virom\\nPoskrbite, da ^3%s^0 zaženete prej v server.cfg za boljšo združljivost s skriptami!",
  TRY_START = "Poskus zagona ^3%s^0 (poskus: %d)^0",
  START_FAILED = "Zagon ^3%s^1 ni uspel (poskusov: %d)",
  CONFIG_ERROR_MISSING = "\\27[31m[NAPAKA KONFIGURACIJE FIVEGUARD]: '%s' manjka v razdelku '%s'\\27[0m",
  DEBUG_GRANTED = "[DEBUG] Dodeljeno %s:%s za %s (%d)",
  DEBUG_REVOKED = "[DEBUG] Preklicano %s:%s od %s (%d)",
  CONFIG_WARNING_INVALID_SECTION = "\\27[33m[OPOZORILO KONFIGURACIJE FIVEGUARD]: Razdelek '%s' ni veljavna tabela!\\27[0m",
}

Locale.strings['he'] = {
  FG_NOT_FOUND = "זהו תוסף ל‑FiveGuard, אך הוא לא נמצא. ניתן לרכוש ב‑https://fiveguard.net/#pricing",
  FG_IS = "‏Fiveguard הוא: ^3%s^0",
  LINKED_SUCCESS = "‏Fiveguard קושר ^2בהצלחה^0!",
  BAD_RESOURCENAME_WARNING = "\\27[31m[אזהרת FIVEGUARD]: שם המשאב שלך הוא 'fiveguard_temporary_permissions'. אנא שנה לשם פחות ברור!\\27[0m",
  FG_NOT_STARTED = "נראה שלא הפעלת את ^3%s^1 לפני משאב זה\\nודא להפעיל את ^3%s^0 מוקדם יותר ב‑server.cfg לשיפור תאימות הסקריפטים!",
  TRY_START = "מנסה להפעיל ^3%s^0 (ניסיון: %d)^0",
  START_FAILED = "נכשל בהפעלת ^3%s^1 (מספר ניסיונות: %d)",
  CONFIG_ERROR_MISSING = "\\27[31m[שגיאת תצורת FIVEGUARD]: '%s' חסר במקטע '%s'\\27[0m",
  DEBUG_GRANTED = "[DEBUG] הוענקו %s:%s ל‑%s (%d)",
  DEBUG_REVOKED = "[DEBUG] נשללו %s:%s מ‑%s (%d)",
  CONFIG_WARNING_INVALID_SECTION = "\\27[33m[אזהרת תצורה FIVEGUARD]: המקטע '%s' אינו טבלה חוקית!\\27[0m",
}

Locale.strings['fa'] = {
  FG_NOT_FOUND = "این یک افزونه برای FiveGuard است اما پیدا نشد. آن را در https://fiveguard.net/#pricing تهیه کنید",
  FG_IS = "‏Fiveguard: ^3%s^0",
  LINKED_SUCCESS = "‏Fiveguard با ^2موفقیت^0 متصل شد!",
  BAD_RESOURCENAME_WARNING = "\\27[31m[هشدار FIVEGUARD]: نام منبع شما 'fiveguard_temporary_permissions' است. لطفاً آن را به نامی کمتر واضح تغییر دهید!\\27[0m",
  FG_NOT_STARTED = "به نظر می‌رسد شما ^3%s^1 را قبل از این منبع اجرا نکرده‌اید\\nاطمینان حاصل کنید که ^3%s^0 را زودتر در server.cfg اجرا کنید تا سازگاری بهتری با اسکریپت‌ها داشته باشید!",
  TRY_START = "در حال تلاش برای اجرای ^3%s^0 (تلاش: %d)^0",
  START_FAILED = "اجرای ^3%s^1 ناموفق بود (تعداد تلاش‌ها: %d)",
  CONFIG_ERROR_MISSING = "\\27[31m[خطای تنظیمات FIVEGUARD]: '%s' در بخش '%s' وجود ندارد\\27[0m",
  DEBUG_GRANTED = "[DEBUG] ‏%s:%s به %s (%d) اعطا شد",
  DEBUG_REVOKED = "[DEBUG] ‏%s:%s از %s (%d) بازپس‌گرفته شد",
  CONFIG_WARNING_INVALID_SECTION = "\\27[33m[هشدار تنظیمات FIVEGUARD]: بخش '%s' یک جدول معتبر نیست!\\27[0m",
}

Locale.strings['ur'] = {
  FG_NOT_FOUND = "یہ FiveGuard کے لیے ایک ایڈون ہے، لیکن نہیں ملا۔ اسے https://fiveguard.net/#pricing سے خریدیں",
  FG_IS = "‏Fiveguard: ^3%s^0",
  LINKED_SUCCESS = "Fiveguard ^2کامیابی^0 سے منسلک ہوگیا!",
  BAD_RESOURCENAME_WARNING = "\\27[31m[FIVEGUARD وارننگ]: آپ کے ریسورس کا نام 'fiveguard_temporary_permissions' ہے۔ براہِ کرم اسے کم نمایاں نام میں تبدیل کریں!\\27[0m",
  FG_NOT_STARTED = "لگتا ہے آپ نے اس ریسورس سے پہلے ^3%s^1 شروع نہیں کیا\\nاسکرپٹس کے بہتر موافقت کے لیے یقینی بنائیں کہ ^3%s^0 کو اپنی server.cfg میں پہلے شروع کریں!",
  TRY_START = "^3%s^0 شروع کرنے کی کوشش (کوشش: %d)^0",
  START_FAILED = "^3%s^1 شروع کرنے میں ناکامی (کوششوں کی تعداد: %d)",
  CONFIG_ERROR_MISSING = "\\27[31m[FIVEGUARD کنفیگ ایرر]: '%s' سیکشن '%s' میں موجود نہیں\\27[0m",
  DEBUG_GRANTED = "[DEBUG] ‏%s:%s ‏%s (%d) کو دیے گئے",
  DEBUG_REVOKED = "[DEBUG] ‏%s:%s ‏%s (%d) سے واپس لے لیے گئے",
  CONFIG_WARNING_INVALID_SECTION = "\\27[33m[FIVEGUARD کنفیگ وارننگ]: سیکشن '%s' ایک درست جدول نہیں!\\27[0m",
}

Locale.strings['hi'] = {
  FG_NOT_FOUND = "यह FiveGuard के लिए एक ऐडऑन है, लेकिन नहीं मिला। इसे https://fiveguard.net/#pricing से खरीदें",
  FG_IS = "Fiveguard है: ^3%s^0",
  LINKED_SUCCESS = "Fiveguard ^2सफलतापूर्वक^0 कनेक्ट हो गया!",
  BAD_RESOURCENAME_WARNING = "\\27[31m[FIVEGUARD चेतावनी]: आपके संसाधन का नाम 'fiveguard_temporary_permissions' है। कृपया इसे कम स्पष्ट नाम में बदलें!\\27[0m",
  FG_NOT_STARTED = "ऐसा लगता है कि आपने इस संसाधन से पहले ^3%s^1 शुरू नहीं किया\\nबेहतर अनुकूलता के लिए सुनिश्चित करें कि आप ^3%s^0 को server.cfg में पहले शुरू करें!",
  TRY_START = "^3%s^0 शुरू करने का प्रयास (प्रयास: %d)^0",
  START_FAILED = "^3%s^1 शुरू करने में विफल (प्रयासों की संख्या: %d)",
  CONFIG_ERROR_MISSING = "\\27[31m[FIVEGUARD कॉन्फ़िग त्रुटि]: '%s' सेक्शन '%s' में गायब है\\27[0m",
  DEBUG_GRANTED = "[DEBUG] %s:%s %s (%d) को प्रदान किया गया",
  DEBUG_REVOKED = "[DEBUG] %s:%s %s (%d) से वापस लिया गया",
  CONFIG_WARNING_INVALID_SECTION = "\\27[33m[FIVEGUARD कॉन्फ़िग चेतावनी]: सेक्शन '%s' एक वैध टेबल नहीं है!\\27[0m",
}

Locale.strings['bn'] = {
  FG_NOT_FOUND = "এটি FiveGuard এর জন্য একটি অ্যাডঅন, কিন্তু এটি পাওয়া যায়নি। https://fiveguard.net/#pricing থেকে কিনুন",
  FG_IS = "Fiveguard হলো: ^3%s^0",
  LINKED_SUCCESS = "Fiveguard ^2সফলভাবে^0 সংযুক্ত হয়েছে!",
  BAD_RESOURCENAME_WARNING = "\\27[31m[FIVEGUARD সতর্কতা]: আপনার রিসোর্সের নাম 'fiveguard_temporary_permissions'। অনুগ্রহ করে এটিকে কম স্পষ্ট কোনো নামে পরিবর্তন করুন!\\27[0m",
  FG_NOT_STARTED = "মনে হচ্ছে আপনি এই রিসোর্সটির আগে ^3%s^1 চালু করেননি\\nউন্নত সামঞ্জস্যের জন্য server.cfg তে ^3%s^0 আগে চালু করুন!",
  TRY_START = "^3%s^0 চালু করার চেষ্টা (চেষ্টা: %d)^0",
  START_FAILED = "^3%s^1 চালু করতে ব্যর্থ (চেষ্টার সংখ্যা: %d)",
  CONFIG_ERROR_MISSING = "\\27[31m[FIVEGUARD কনফিগ ত্রুটি]: '%s' '%s' সেকশনে অনুপস্থিত\\27[0m",
  DEBUG_GRANTED = "[DEBUG] %s:%s %s (%d)-কে প্রদান করা হয়েছে",
  DEBUG_REVOKED = "[DEBUG] %s:%s %s (%d)-থেকে প্রত্যাহার করা হয়েছে",
  CONFIG_WARNING_INVALID_SECTION = "\\27[33m[FIVEGUARD কনফিগ সতর্কতা]: '%s' সেকশনটি একটি বৈধ টেবিল নয়!\\27[0m",
}

Locale.strings['id'] = {
  FG_NOT_FOUND = "Ini adalah addon untuk FiveGuard, tetapi tidak ditemukan. Beli di https://fiveguard.net/#pricing",
  FG_IS = "Fiveguard adalah: ^3%s^0",
  LINKED_SUCCESS = "Fiveguard terhubung ^2berhasil^0!",
  BAD_RESOURCENAME_WARNING = "\\27[31m[PERINGATAN FIVEGUARD]: Nama resource Anda adalah 'fiveguard_temporary_permissions'. Harap ubah ke nama yang tidak terlalu jelas!\\27[0m",
  FG_NOT_STARTED = "Sepertinya Anda tidak memulai ^3%s^1 sebelum resource ini\\nPastikan untuk memulai ^3%s^0 lebih awal di server.cfg Anda untuk kompatibilitas yang lebih baik dengan skrip!",
  TRY_START = "Mencoba memulai ^3%s^0 (percobaan: %d)^0",
  START_FAILED = "Gagal memulai ^3%s^1 (jumlah percobaan: %d)",
  CONFIG_ERROR_MISSING = "\\27[31m[KESALAHAN KONFIG FIVEGUARD]: '%s' hilang pada bagian '%s'\\27[0m",
  DEBUG_GRANTED = "[DEBUG] Diberikan %s:%s kepada %s (%d)",
  DEBUG_REVOKED = "[DEBUG] Dicabut %s:%s dari %s (%d)",
  CONFIG_WARNING_INVALID_SECTION = "\\27[33m[PERINGATAN KONFIG FIVEGUARD]: Bagian '%s' bukan tabel yang valid!\\27[0m",
}

Locale.strings['ms'] = {
  FG_NOT_FOUND = "Ini ialah addon untuk FiveGuard, tetapi ia tidak ditemui. Beli di https://fiveguard.net/#pricing",
  FG_IS = "Fiveguard ialah: ^3%s^0",
  LINKED_SUCCESS = "Fiveguard berjaya ^2disambungkan^0!",
  BAD_RESOURCENAME_WARNING = "\\27[31m[AMARAN FIVEGUARD]: Nama sumber anda ialah 'fiveguard_temporary_permissions'. Sila tukar kepada nama yang kurang jelas!\\27[0m",
  FG_NOT_STARTED = "Nampaknya anda tidak memulakan ^3%s^1 sebelum sumber ini\\nPastikan anda memulakan ^3%s^0 lebih awal dalam server.cfg untuk keserasian skrip yang lebih baik!",
  TRY_START = "Mencuba untuk memulakan ^3%s^0 (cubaan: %d)^0",
  START_FAILED = "Gagal memulakan ^3%s^1 (bilangan cubaan: %d)",
  CONFIG_ERROR_MISSING = "\\27[31m[RALAT KONFIGURASI FIVEGUARD]: '%s' tiada dalam seksyen '%s'\\27[0m",
  DEBUG_GRANTED = "[DEBUG] Diberikan %s:%s kepada %s (%d)",
  DEBUG_REVOKED = "[DEBUG] Ditarik balik %s:%s daripada %s (%d)",
  CONFIG_WARNING_INVALID_SECTION = "\\27[33m[AMARAN KONFIGURASI FIVEGUARD]: Seksyen '%s' bukan jadual yang sah!\\27[0m",
}

Locale.strings['vi'] = {
  FG_NOT_FOUND = "Đây là một addon cho FiveGuard, nhưng không tìm thấy. Mua tại https://fiveguard.net/#pricing",
  FG_IS = "Fiveguard là: ^3%s^0",
  LINKED_SUCCESS = "Fiveguard đã kết nối ^2thành công^0!",
  BAD_RESOURCENAME_WARNING = "\\27[31m[CẢNH BÁO FIVEGUARD]: Tên tài nguyên của bạn là 'fiveguard_temporary_permissions'. Hãy đổi thành tên ít lộ liễu hơn!\\27[0m",
  FG_NOT_STARTED = "Có vẻ bạn chưa khởi động ^3%s^1 trước tài nguyên này\\nHãy đảm bảo khởi động ^3%s^0 sớm hơn trong server.cfg để tương thích tốt hơn với script!",
  TRY_START = "Đang cố khởi động ^3%s^0 (lần thử: %d)^0",
  START_FAILED = "Không thể khởi động ^3%s^1 (số lần thử: %d)",
  CONFIG_ERROR_MISSING = "\\27[31m[LỖI CẤU HÌNH FIVEGUARD]: Thiếu '%s' trong mục '%s'\\27[0m",
  DEBUG_GRANTED = "[DEBUG] Cấp %s:%s cho %s (%d)",
  DEBUG_REVOKED = "[DEBUG] Thu hồi %s:%s từ %s (%d)",
  CONFIG_WARNING_INVALID_SECTION = "\\27[33m[CẢNH BÁO CẤU HÌNH FIVEGUARD]: Mục '%s' không phải là bảng hợp lệ!\\27[0m",
}

Locale.strings['th'] = {
  FG_NOT_FOUND = "นี่คือแอดออนสำหรับ FiveGuard แต่ไม่พบ โปรดซื้อได้ที่ https://fiveguard.net/#pricing",
  FG_IS = "Fiveguard คือ: ^3%s^0",
  LINKED_SUCCESS = "เชื่อมต่อ Fiveguard ^2สำเร็จ^0!",
  BAD_RESOURCENAME_WARNING = "\\27[31m[คำเตือน FIVEGUARD]: ชื่อรีซอร์สของคุณคือ 'fiveguard_temporary_permissions' กรุณาเปลี่ยนเป็นชื่อที่ไม่เด่นชัด!\\27[0m",
  FG_NOT_STARTED = "ดูเหมือนว่าคุณยังไม่ได้เริ่ม ^3%s^1 ก่อนรีซอร์สนี้\\nโปรดเริ่ม ^3%s^0 ให้เร็วขึ้นใน server.cfg เพื่อความเข้ากันได้ที่ดีกับสคริปต์ของคุณ!",
  TRY_START = "กำลังพยายามเริ่ม ^3%s^0 (ครั้งที่: %d)^0",
  START_FAILED = "ไม่สามารถเริ่ม ^3%s^1 ได้ (จำนวนครั้ง: %d)",
  CONFIG_ERROR_MISSING = "\\27[31m[ข้อผิดพลาดการตั้งค่า FIVEGUARD]: ขาด '%s' ในส่วน '%s'\\27[0m",
  DEBUG_GRANTED = "[DEBUG] อนุญาต %s:%s ให้กับ %s (%d)",
  DEBUG_REVOKED = "[DEBUG] เพิกถอน %s:%s จาก %s (%d)",
  CONFIG_WARNING_INVALID_SECTION = "\\27[33m[คำเตือนการตั้งค่า FIVEGUARD]: ส่วน '%s' ไม่ใช่ตารางที่ถูกต้อง!\\27[0m",
}

Locale.strings['ja'] = {
  FG_NOT_FOUND = "これは FiveGuard 用のアドオンですが、見つかりませんでした。https://fiveguard.net/#pricing で購入してください",
  FG_IS = "Fiveguard は: ^3%s^0",
  LINKED_SUCCESS = "Fiveguard の接続に ^2成功^0 しました！",
  BAD_RESOURCENAME_WARNING = "\\27[31m[FIVEGUARD 警告]: リソース名が 'fiveguard_temporary_permissions' です。より目立たない名前に変更してください！\\27[0m",
  FG_NOT_STARTED = "このリソースの前に ^3%s^1 を起動していないようです\\nスクリプトとの互換性向上のため、server.cfg で ^3%s^0 を先に起動してください！",
  TRY_START = "^3%s^0 の起動を試行中（試行回数: %d）^0",
  START_FAILED = "^3%s^1 の起動に失敗しました（試行回数: %d）",
  CONFIG_ERROR_MISSING = "\\27[31m[FIVEGUARD 設定エラー]: セクション '%s' に '%s' がありません\\27[0m",
  DEBUG_GRANTED = "[DEBUG] %s:%s を %s (%d) に付与",
  DEBUG_REVOKED = "[DEBUG] %s:%s を %s (%d) から取り消し",
  CONFIG_WARNING_INVALID_SECTION = "\\27[33m[FIVEGUARD 設定警告]: セクション '%s' は有効なテーブルではありません！\\27[0m",
}

Locale.strings['ko'] = {
  FG_NOT_FOUND = "FiveGuard용 애드온이지만 찾을 수 없습니다. https://fiveguard.net/#pricing 에서 구매하세요",
  FG_IS = "Fiveguard: ^3%s^0",
  LINKED_SUCCESS = "Fiveguard가 ^2성공적으로^0 연결되었습니다!",
  BAD_RESOURCENAME_WARNING = "\\27[31m[FIVEGUARD 경고]: 리소스 이름이 'fiveguard_temporary_permissions'입니다. 덜 눈에 띄는 이름으로 변경하세요!\\27[0m",
  FG_NOT_STARTED = "이 리소스 전에 ^3%s^1 을(를) 시작하지 않은 것 같습니다\\n스크립트와의 호환성을 위해 server.cfg에서 ^3%s^0 을(를) 먼저 시작하세요!",
  TRY_START = "^3%s^0 시작 시도 중 (시도: %d)^0",
  START_FAILED = "^3%s^1 시작 실패 (시도 횟수: %d)",
  CONFIG_ERROR_MISSING = "\\27[31m[FIVEGUARD 설정 오류]: '%s' 가 섹션 '%s' 에 없습니다\\27[0m",
  DEBUG_GRANTED = "[DEBUG] %s:%s 을(를) %s (%d) 에 부여",
  DEBUG_REVOKED = "[DEBUG] %s:%s 을(를) %s (%d) 에서 회수",
  CONFIG_WARNING_INVALID_SECTION = "\\27[33m[FIVEGUARD 설정 경고]: 섹션 '%s' 은(는) 올바른 테이블이 아닙니다!\\27[0m",
}

Locale.strings['zh-CN'] = {
  FG_NOT_FOUND = "这是 FiveGuard 的插件，但未找到。请在 https://fiveguard.net/#pricing 购买",
  FG_IS = "Fiveguard 为：^3%s^0",
  LINKED_SUCCESS = "Fiveguard 已^2成功^0连接！",
  BAD_RESOURCENAME_WARNING = "\\27[31m[FIVEGUARD 警告]：你的资源名称为 'fiveguard_temporary_permissions'。请更改为不那么明显的名称！\\27[0m",
  FG_NOT_STARTED = "您似乎没有在此资源之前启动 ^3%s^1\\n请确保在 server.cfg 中更早启动 ^3%s^0，以提高与脚本的兼容性！",
  TRY_START = "尝试启动 ^3%s^0（尝试：%d）^0",
  START_FAILED = "启动 ^3%s^1 失败（尝试次数：%d）",
  CONFIG_ERROR_MISSING = "\\27[31m[FIVEGUARD 配置错误]：章节 '%s' 中缺少 '%s'\\27[0m",
  DEBUG_GRANTED = "[DEBUG] 已向 %s（%d）授予 %s:%s",
  DEBUG_REVOKED = "[DEBUG] 已从 %s（%d）撤销 %s:%s",
  CONFIG_WARNING_INVALID_SECTION = "\\27[33m[FIVEGUARD 配置警告]：章节 '%s' 不是有效的表！\\27[0m",
}

Locale.strings['zh-TW'] = {
  FG_NOT_FOUND = "這是 FiveGuard 的外掛，但找不到。請至 https://fiveguard.net/#pricing 購買",
  FG_IS = "Fiveguard 為：^3%s^0",
  LINKED_SUCCESS = "Fiveguard 已^2成功^0連線！",
  BAD_RESOURCENAME_WARNING = "\\27[31m[FIVEGUARD 警告]：你的資源名稱是 'fiveguard_temporary_permissions'。請更改為不那麼明顯的名稱！\\27[0m",
  FG_NOT_STARTED = "看起來你沒有在此資源之前啟動 ^3%s^1\\n請確保在 server.cfg 中更早啟動 ^3%s^0，以提高與腳本的相容性！",
  TRY_START = "嘗試啟動 ^3%s^0（嘗試：%d）^0",
  START_FAILED = "啟動 ^3%s^1 失敗（嘗試次數：%d）",
  CONFIG_ERROR_MISSING = "\\27[31m[FIVEGUARD 設定錯誤]：在 '%s' 區段中缺少 '%s'\\27[0m",
  DEBUG_GRANTED = "[DEBUG] 已授予 %s:%s 給 %s（%d）",
  DEBUG_REVOKED = "[DEBUG] 已自 %s（%d）撤銷 %s:%s",
  CONFIG_WARNING_INVALID_SECTION = "\\27[33m[FIVEGUARD 設定警告]：區段 '%s' 不是有效的表格！\\27[0m",
}

Locale.strings['tl'] = {
  FG_NOT_FOUND = "Ito ay isang addon para sa FiveGuard, ngunit hindi ito natagpuan. Bilhin sa https://fiveguard.net/#pricing",
  FG_IS = "Ang Fiveguard ay: ^3%s^0",
  LINKED_SUCCESS = "Matagumpay na ^2naikonekta^0 ang Fiveguard!",
  BAD_RESOURCENAME_WARNING = "\\27[31m[BABALA FIVEGUARD]: Ang pangalan ng iyong resource ay 'fiveguard_temporary_permissions'. Pakibago sa mas hindi halatang pangalan!\\27[0m",
  FG_NOT_STARTED = "Mukhang hindi mo sinimulan ang ^3%s^1 bago ang resource na ito\\nSiguraduhing simulan ang ^3%s^0 nang mas maaga sa iyong server.cfg para sa mas magandang compatibility sa scripts!",
  TRY_START = "Sinusubukang simulan ang ^3%s^0 (pagsubok: %d)^0",
  START_FAILED = "Nabigong simulan ang ^3%s^1 (bilang ng pagsubok: %d)",
  CONFIG_ERROR_MISSING = "\\27[31m[MALI SA CONFIG FIVEGUARD]: Nawawala ang '%s' sa seksyong '%s'\\27[0m",
  DEBUG_GRANTED = "[DEBUG] Iginawad ang %s:%s kay %s (%d)",
  DEBUG_REVOKED = "[DEBUG] Binawi ang %s:%s mula kay %s (%d)",
  CONFIG_WARNING_INVALID_SECTION = "\\27[33m[BABALA SA CONFIG FIVEGUARD]: Ang seksyong '%s' ay hindi wastong talahanayan!\\27[0m",
}

Locale.strings['af'] = {
  FG_NOT_FOUND = "Dit is 'n byvoeging vir FiveGuard, maar dit is nie gevind nie. Koop dit by https://fiveguard.net/#pricing",
  FG_IS = "Fiveguard is: ^3%s^0",
  LINKED_SUCCESS = "Fiveguard is ^2suksesvol^0 gekoppel!",
  BAD_RESOURCENAME_WARNING = "\\27[31m[FIVEGUARD WAARSKUWING]: Jou hulpbron se naam is 'fiveguard_temporary_permissions'. Verander dit asseblief na iets minder voor die hand liggend!\\27[0m",
  FG_NOT_STARTED = "Dit lyk asof jy nie ^3%s^1 voor hierdie hulpbron begin het nie\\nMaak seker jy begin ^3%s^0 vroeër in jou server.cfg vir beter verenigbaarheid met jou skripte!",
  TRY_START = "Probeer om ^3%s^0 te begin (poging: %d)^0",
  START_FAILED = "Kon nie ^3%s^1 begin nie (pogings: %d)",
  CONFIG_ERROR_MISSING = "\\27[31m[FIVEGUARD KONFIG FOUT]: '%s' ontbreek in afdeling '%s'\\27[0m",
  DEBUG_GRANTED = "[DEBUG] %s:%s toegeken aan %s (%d)",
  DEBUG_REVOKED = "[DEBUG] %s:%s van %s (%d) herroep",
  CONFIG_WARNING_INVALID_SECTION = "\\27[33m[FIVEGUARD KONFIG WAARSKUWING]: Afdeling '%s' is nie 'n geldige tabel nie!\\27[0m",
}

Locale.strings['en']['WEBHOOK_TITLE_GRANTED'] = "🟢 Temporary Permission Granted"
Locale.strings['en']['WEBHOOK_TITLE_REVOKED'] = "🔴 Temporary Permission Revoked"
Locale.strings['en']['WEBHOOK_EMBED_GRANTED'] = "**Player:** %s\n**Steam:** `%s`\n**Discord:** `%s`\n**License:** `%s`\n**Permission:** `%s`\n**Category:** `%s`\n**Action:** Granted Temporary Access"
Locale.strings['en']['WEBHOOK_EMBED_REVOKED'] = "**Player:** %s\n**Steam:** `%s`\n**Discord:** `%s`\n**License:** `%s`\n**Permission:** `%s`\n**Category:** `%s`\n**Action:** Revoked Temporary Access"
Locale.strings['it']['WEBHOOK_TITLE_GRANTED'] = "🟢 Permesso Temporaneo Concesso"
Locale.strings['it']['WEBHOOK_TITLE_REVOKED'] = "🔴 Permesso Temporaneo Revocato"
Locale.strings['it']['WEBHOOK_EMBED_GRANTED'] = "**Giocatore:** %s\n**Steam:** `%s`\n**Discord:** `%s`\n**Licenza:** `%s`\n**Permesso:** `%s`\n**Categoria:** `%s`\n**Azione:** Accesso Temporaneo Concesso"
Locale.strings['it']['WEBHOOK_EMBED_REVOKED'] = "**Giocatore:** %s\n**Steam:** `%s`\n**Discord:** `%s`\n**Licenza:** `%s`\n**Permesso:** `%s`\n**Categoria:** `%s`\n**Azione:** Accesso Temporaneo Revocato"
Locale.strings['es']['WEBHOOK_TITLE_GRANTED'] = "🟢 Permiso Temporal Concedido"
Locale.strings['es']['WEBHOOK_TITLE_REVOKED'] = "🔴 Permiso Temporal Revocado"
Locale.strings['es']['WEBHOOK_EMBED_GRANTED'] = "**Jugador:** %s\n**Steam:** `%s`\n**Discord:** `%s`\n**Licencia:** `%s`\n**Permiso:** `%s`\n**Categoría:** `%s`\n**Acción:** Acceso Temporal Concedido"
Locale.strings['es']['WEBHOOK_EMBED_REVOKED'] = "**Jugador:** %s\n**Steam:** `%s`\n**Discord:** `%s`\n**Licencia:** `%s`\n**Permiso:** `%s`\n**Categoría:** `%s`\n**Acción:** Acceso Temporal Revocado"
Locale.strings['ar']['WEBHOOK_TITLE_GRANTED'] = "🟢 منح صلاحية مؤقتة"
Locale.strings['ar']['WEBHOOK_TITLE_REVOKED'] = "🔴 سحب صلاحية مؤقتة"
Locale.strings['ar']['WEBHOOK_EMBED_GRANTED'] = "**اللاعب:** %s\n**ستيم:** `%s`\n**ديسكورد:** `%s`\n**الترخيص:** `%s`\n**الصلاحية:** `%s`\n**الفئة:** `%s`\n**الإجراء:** تم منح وصول مؤقت"
Locale.strings['ar']['WEBHOOK_EMBED_REVOKED'] = "**اللاعب:** %s\n**ستيم:** `%s`\n**ديسكورد:** `%s`\n**الترخيص:** `%s`\n**الصلاحية:** `%s`\n**الفئة:** `%s`\n**الإجراء:** تم سحب الوصول المؤقت"
Locale.strings['fr']['WEBHOOK_TITLE_GRANTED'] = "🟢 Autorisation Temporaire Accordée"
Locale.strings['fr']['WEBHOOK_TITLE_REVOKED'] = "🔴 Autorisation Temporaire Révoquée"
Locale.strings['fr']['WEBHOOK_EMBED_GRANTED'] = "**Joueur :** %s\n**Steam :** `%s`\n**Discord :** `%s`\n**Licence :** `%s`\n**Permission :** `%s`\n**Catégorie :** `%s`\n**Action :** Accès temporaire accordé"
Locale.strings['fr']['WEBHOOK_EMBED_REVOKED'] = "**Joueur :** %s\n**Steam :** `%s`\n**Discord :** `%s`\n**Licence :** `%s`\n**Permission :** `%s`\n**Catégorie :** `%s`\n**Action :** Accès temporaire révoqué"
Locale.strings['de']['WEBHOOK_TITLE_GRANTED'] = "🟢 Temporäre Berechtigung Erteilt"
Locale.strings['de']['WEBHOOK_TITLE_REVOKED'] = "🔴 Temporäre Berechtigung Widerrufen"
Locale.strings['de']['WEBHOOK_EMBED_GRANTED'] = "**Spieler:** %s\n**Steam:** `%s`\n**Discord:** `%s`\n**Lizenz:** `%s`\n**Berechtigung:** `%s`\n**Kategorie:** `%s`\n**Aktion:** Temporärer Zugriff gewährt"
Locale.strings['de']['WEBHOOK_EMBED_REVOKED'] = "**Spieler:** %s\n**Steam:** `%s`\n**Discord:** `%s`\n**Lizenz:** `%s`\n**Berechtigung:** `%s`\n**Kategorie:** `%s`\n**Aktion:** Temporärer Zugriff widerrufen"
Locale.strings['pt']['WEBHOOK_TITLE_GRANTED'] = "🟢 Permissão Temporária Concedida"
Locale.strings['pt']['WEBHOOK_TITLE_REVOKED'] = "🔴 Permissão Temporária Revogada"
Locale.strings['pt']['WEBHOOK_EMBED_GRANTED'] = "**Jogador:** %s\n**Steam:** `%s`\n**Discord:** `%s`\n**Licença:** `%s`\n**Permissão:** `%s`\n**Categoria:** `%s`\n**Ação:** Acesso temporário concedido"
Locale.strings['pt']['WEBHOOK_EMBED_REVOKED'] = "**Jogador:** %s\n**Steam:** `%s`\n**Discord:** `%s`\n**Licença:** `%s`\n**Permissão:** `%s`\n**Categoria:** `%s`\n**Ação:** Acesso temporário revogado"
Locale.strings['ru']['WEBHOOK_TITLE_GRANTED'] = "🟢 Временный доступ предоставлен"
Locale.strings['ru']['WEBHOOK_TITLE_REVOKED'] = "🔴 Временный доступ отозван"
Locale.strings['ru']['WEBHOOK_EMBED_GRANTED'] = "**Игрок:** %s\n**Steam:** `%s`\n**Discord:** `%s`\n**Лицензия:** `%s`\n**Разрешение:** `%s`\n**Категория:** `%s`\n**Действие:** Временный доступ предоставлен"
Locale.strings['ru']['WEBHOOK_EMBED_REVOKED'] = "**Игрок:** %s\n**Steam:** `%s`\n**Discord:** `%s`\n**Лицензия:** `%s`\n**Разрешение:** `%s`\n**Категория:** `%s`\n**Действие:** Временный доступ отозван"
Locale.strings['zh-CN']['WEBHOOK_TITLE_GRANTED'] = "🟢 已授予临时权限"
Locale.strings['zh-CN']['WEBHOOK_TITLE_REVOKED'] = "🔴 已撤销临时权限"
Locale.strings['zh-CN']['WEBHOOK_EMBED_GRANTED'] = "**玩家：** %s\n**Steam：** `%s`\n**Discord：** `%s`\n**许可：** `%s`\n**权限：** `%s`\n**分类：** `%s`\n**操作：** 已授予临时访问"
Locale.strings['zh-CN']['WEBHOOK_EMBED_REVOKED'] = "**玩家：** %s\n**Steam：** `%s`\n**Discord：** `%s`\n**许可：** `%s`\n**权限：** `%s`\n**分类：** `%s`\n**操作：** 已撤销临时访问"
Locale.strings['ja']['WEBHOOK_TITLE_GRANTED'] = "🟢 一時的な権限を付与"
Locale.strings['ja']['WEBHOOK_TITLE_REVOKED'] = "🔴 一時的な権限を解除"
Locale.strings['ja']['WEBHOOK_EMBED_GRANTED'] = "**プレイヤー:** %s\n**Steam:** `%s`\n**Discord:** `%s`\n**ライセンス:** `%s`\n**権限:** `%s`\n**カテゴリ:** `%s`\n**操作:** 一時アクセスを付与"
Locale.strings['ja']['WEBHOOK_EMBED_REVOKED'] = "**プレイヤー:** %s\n**Steam:** `%s`\n**Discord:** `%s`\n**ライセンス:** `%s`\n**権限:** `%s`\n**カテゴリ:** `%s`\n**操作:** 一時アクセスを解除"
Locale.strings['ko']['WEBHOOK_TITLE_GRANTED'] = "🟢 임시 권한 부여"
Locale.strings['ko']['WEBHOOK_TITLE_REVOKED'] = "🔴 임시 권한 회수"
Locale.strings['ko']['WEBHOOK_EMBED_GRANTED'] = "**플레이어:** %s\n**Steam:** `%s`\n**Discord:** `%s`\n**라이선스:** `%s`\n**권한:** `%s`\n**카테고리:** `%s`\n**작업:** 임시 액세스 부여"
Locale.strings['ko']['WEBHOOK_EMBED_REVOKED'] = "**플레이어:** %s\n**Steam:** `%s`\n**Discord:** `%s`\n**라이선스:** `%s`\n**권한:** `%s`\n**카테고리:** `%s`\n**작업:** 임시 액세스 회수"
Locale.strings['pt-BR']['WEBHOOK_TITLE_GRANTED'] = "🟢 Permissão Temporária Concedida"
Locale.strings['pt-BR']['WEBHOOK_TITLE_REVOKED'] = "🔴 Permissão Temporária Revogada"
Locale.strings['pt-BR']['WEBHOOK_EMBED_GRANTED'] = "**Jogador:** %s\\n**Steam:** `%s`\\n**Discord:** `%s`\\n**Licença:** `%s`\\n**Permissão:** `%s`\\n**Categoria:** `%s`\\n**Ação:** Acesso temporário concedido"
Locale.strings['pt-BR']['WEBHOOK_EMBED_REVOKED'] = "**Jogador:** %s\\n**Steam:** `%s`\\n**Discord:** `%s`\\n**Licença:** `%s`\\n**Permissão:** `%s`\\n**Categoria:** `%s`\\n**Ação:** Acesso temporário revogado"
Locale.strings['nl']['WEBHOOK_TITLE_GRANTED'] = "🟢 Tijdelijke Toestemming Toegekend"
Locale.strings['nl']['WEBHOOK_TITLE_REVOKED'] = "🔴 Tijdelijke Toestemming Ingetrokken"
Locale.strings['nl']['WEBHOOK_EMBED_GRANTED'] = "**Speler:** %s\\n**Steam:** `%s`\\n**Discord:** `%s`\\n**Licentie:** `%s`\\n**Toestemming:** `%s`\\n**Categorie:** `%s`\\n**Actie:** Tijdelijke toegang toegekend"
Locale.strings['nl']['WEBHOOK_EMBED_REVOKED'] = "**Speler:** %s\\n**Steam:** `%s`\\n**Discord:** `%s`\\n**Licentie:** `%s`\\n**Toestemming:** `%s`\\n**Categorie:** `%s`\\n**Actie:** Tijdelijke toegang ingetrokken"
Locale.strings['pl']['WEBHOOK_TITLE_GRANTED'] = "🟢 Przyznano Tymczasowe Uprawnienie"
Locale.strings['pl']['WEBHOOK_TITLE_REVOKED'] = "🔴 Cofnięto Tymczasowe Uprawnienie"
Locale.strings['pl']['WEBHOOK_EMBED_GRANTED'] = "**Gracz:** %s\\n**Steam:** `%s`\\n**Discord:** `%s`\\n**Licencja:** `%s`\\n**Uprawnienie:** `%s`\\n**Kategoria:** `%s`\\n**Działanie:** Przyznano dostęp tymczasowy"
Locale.strings['pl']['WEBHOOK_EMBED_REVOKED'] = "**Gracz:** %s\\n**Steam:** `%s`\\n**Discord:** `%s`\\n**Licencja:** `%s`\\n**Uprawnienie:** `%s`\\n**Kategoria:** `%s`\\n**Działanie:** Cofnięto dostęp tymczasowy"
Locale.strings['ro']['WEBHOOK_TITLE_GRANTED'] = "🟢 Permisiune Temporară Acordată"
Locale.strings['ro']['WEBHOOK_TITLE_REVOKED'] = "🔴 Permisiune Temporară Revocată"
Locale.strings['ro']['WEBHOOK_EMBED_GRANTED'] = "**Jucător:** %s\\n**Steam:** `%s`\\n**Discord:** `%s`\\n**Licență:** `%s`\\n**Permisiune:** `%s`\\n**Categorie:** `%s`\\n**Acțiune:** Acces temporar acordat"
Locale.strings['ro']['WEBHOOK_EMBED_REVOKED'] = "**Jucător:** %s\\n**Steam:** `%s`\\n**Discord:** `%s`\\n**Licență:** `%s`\\n**Permisiune:** `%s`\\n**Categorie:** `%s`\\n**Acțiune:** Acces temporar revocat"
Locale.strings['tr']['WEBHOOK_TITLE_GRANTED'] = "🟢 Geçici İzin Verildi"
Locale.strings['tr']['WEBHOOK_TITLE_REVOKED'] = "🔴 Geçici İzin İptal Edildi"
Locale.strings['tr']['WEBHOOK_EMBED_GRANTED'] = "**Oyuncu:** %s\\n**Steam:** `%s`\\n**Discord:** `%s`\\n**Lisans:** `%s`\\n**İzin:** `%s`\\n**Kategori:** `%s`\\n**İşlem:** Geçici erişim verildi"
Locale.strings['tr']['WEBHOOK_EMBED_REVOKED'] = "**Oyuncu:** %s\\n**Steam:** `%s`\\n**Discord:** `%s`\\n**Lisans:** `%s`\\n**İzin:** `%s`\\n**Kategori:** `%s`\\n**İşlem:** Geçici erişim iptal edildi"
Locale.strings['uk']['WEBHOOK_TITLE_GRANTED'] = "🟢 Надано тимчасовий доступ"
Locale.strings['uk']['WEBHOOK_TITLE_REVOKED'] = "🔴 Скасовано тимчасовий доступ"
Locale.strings['uk']['WEBHOOK_EMBED_GRANTED'] = "**Гравець:** %s\\n**Steam:** `%s`\\n**Discord:** `%s`\\n**Ліцензія:** `%s`\\n**Дозвіл:** `%s`\\n**Категорія:** `%s`\\n**Дія:** Надано тимчасовий доступ"
Locale.strings['uk']['WEBHOOK_EMBED_REVOKED'] = "**Гравець:** %s\\n**Steam:** `%s`\\n**Discord:** `%s`\\n**Ліцензія:** `%s`\\n**Дозвіл:** `%s`\\n**Категорія:** `%s`\\n**Дія:** Скасовано тимчасовий доступ"
Locale.strings['el']['WEBHOOK_TITLE_GRANTED'] = "🟢 Παραχωρήθηκε Προσωρινή Άδεια"
Locale.strings['el']['WEBHOOK_TITLE_REVOKED'] = "🔴 Ανακλήθηκε Προσωρινή Άδεια"
Locale.strings['el']['WEBHOOK_EMBED_GRANTED'] = "**Παίκτης:** %s\\n**Steam:** `%s`\\n**Discord:** `%s`\\n**Άδεια:** `%s`\\n**Δικαίωμα:** `%s`\\n**Κατηγορία:** `%s`\\n**Ενέργεια:** Παραχωρήθηκε προσωρινή πρόσβαση"
Locale.strings['el']['WEBHOOK_EMBED_REVOKED'] = "**Παίκτης:** %s\\n**Steam:** `%s`\\n**Discord:** `%s`\\n**Άδεια:** `%s`\\n**Δικαίωμα:** `%s`\\n**Κατηγορία:** `%s`\\n**Ενέργεια:** Ανακλήθηκε προσωρινή πρόσβαση"
Locale.strings['cs']['WEBHOOK_TITLE_GRANTED'] = "🟢 Uděleno dočasné oprávnění"
Locale.strings['cs']['WEBHOOK_TITLE_REVOKED'] = "🔴 Odebráno dočasné oprávnění"
Locale.strings['cs']['WEBHOOK_EMBED_GRANTED'] = "**Hráč:** %s\\n**Steam:** `%s`\\n**Discord:** `%s`\\n**Licence:** `%s`\\n**Oprávnění:** `%s`\\n**Kategorie:** `%s`\\n**Akce:** Udělen dočasný přístup"
Locale.strings['cs']['WEBHOOK_EMBED_REVOKED'] = "**Hráč:** %s\\n**Steam:** `%s`\\n**Discord:** `%s`\\n**Licence:** `%s`\\n**Oprávnění:** `%s`\\n**Kategorie:** `%s`\\n**Akce:** Odebrán dočasný přístup"
Locale.strings['sk']['WEBHOOK_TITLE_GRANTED'] = "🟢 Udelené dočasné oprávnenie"
Locale.strings['sk']['WEBHOOK_TITLE_REVOKED'] = "🔴 Odňaté dočasné oprávnenie"
Locale.strings['sk']['WEBHOOK_EMBED_GRANTED'] = "**Hráč:** %s\\n**Steam:** `%s`\\n**Discord:** `%s`\\n**Licencia:** `%s`\\n**Oprávnenie:** `%s`\\n**Kategória:** `%s`\\n**Akcia:** Udelený dočasný prístup"
Locale.strings['sk']['WEBHOOK_EMBED_REVOKED'] = "**Hráč:** %s\\n**Steam:** `%s`\\n**Discord:** `%s`\\n**Licencia:** `%s`\\n**Oprávnenie:** `%s`\\n**Kategória:** `%s`\\n**Akcia:** Odňatý dočasný prístup"
Locale.strings['hu']['WEBHOOK_TITLE_GRANTED'] = "🟢 Ideiglenes jogosultság megadva"
Locale.strings['hu']['WEBHOOK_TITLE_REVOKED'] = "🔴 Ideiglenes jogosultság visszavonva"
Locale.strings['hu']['WEBHOOK_EMBED_GRANTED'] = "**Játékos:** %s\\n**Steam:** `%s`\\n**Discord:** `%s`\\n**Licenc:** `%s`\\n**Jogosultság:** `%s`\\n**Kategória:** `%s`\\n**Művelet:** Ideiglenes hozzáférés megadva"
Locale.strings['hu']['WEBHOOK_EMBED_REVOKED'] = "**Játékos:** %s\\n**Steam:** `%s`\\n**Discord:** `%s`\\n**Licenc:** `%s`\\n**Jogosultság:** `%s`\\n**Kategória:** `%s`\\n**Művelet:** Ideiglenes hozzáférés visszavonva"
Locale.strings['sv']['WEBHOOK_TITLE_GRANTED'] = "🟢 Tillfällig behörighet beviljad"
Locale.strings['sv']['WEBHOOK_TITLE_REVOKED'] = "🔴 Tillfällig behörighet återkallad"
Locale.strings['sv']['WEBHOOK_EMBED_GRANTED'] = "**Spelare:** %s\\n**Steam:** `%s`\\n**Discord:** `%s`\\n**Licens:** `%s`\\n**Behörighet:** `%s`\\n**Kategori:** `%s`\\n**Åtgärd:** Tillfällig åtkomst beviljad"
Locale.strings['sv']['WEBHOOK_EMBED_REVOKED'] = "**Spelare:** %s\\n**Steam:** `%s`\\n**Discord:** `%s`\\n**Licens:** `%s`\\n**Behörighet:** `%s`\\n**Kategori:** `%s`\\n**Åtgärd:** Tillfällig åtkomst återkallad"
Locale.strings['da']['WEBHOOK_TITLE_GRANTED'] = "🟢 Midlertidig tilladelse givet"
Locale.strings['da']['WEBHOOK_TITLE_REVOKED'] = "🔴 Midlertidig tilladelse tilbagekaldt"
Locale.strings['da']['WEBHOOK_EMBED_GRANTED'] = "**Spiller:** %s\\n**Steam:** `%s`\\n**Discord:** `%s`\\n**Licens:** `%s`\\n**Tilladelse:** `%s`\\n**Kategori:** `%s`\\n**Handling:** Midlertidig adgang givet"
Locale.strings['da']['WEBHOOK_EMBED_REVOKED'] = "**Spiller:** %s\\n**Steam:** `%s`\\n**Discord:** `%s`\\n**Licens:** `%s`\\n**Tilladelse:** `%s`\\n**Kategori:** `%s`\\n**Handling:** Midlertidig adgang tilbagekaldt"
Locale.strings['nb']['WEBHOOK_TITLE_GRANTED'] = "🟢 Midlertidig tillatelse gitt"
Locale.strings['nb']['WEBHOOK_TITLE_REVOKED'] = "🔴 Midlertidig tillatelse tilbakekalt"
Locale.strings['nb']['WEBHOOK_EMBED_GRANTED'] = "**Spiller:** %s\\n**Steam:** `%s`\\n**Discord:** `%s`\\n**Lisens:** `%s`\\n**Tillatelse:** `%s`\\n**Kategori:** `%s`\\n**Handling:** Midlertidig tilgang gitt"
Locale.strings['nb']['WEBHOOK_EMBED_REVOKED'] = "**Spiller:** %s\\n**Steam:** `%s`\\n**Discord:** `%s`\\n**Lisens:** `%s`\\n**Tillatelse:** `%s`\\n**Kategori:** `%s`\\n**Handling:** Midlertidig tilgang tilbakekalt"
Locale.strings['fi']['WEBHOOK_TITLE_GRANTED'] = "🟢 Väliaikainen oikeus myönnetty"
Locale.strings['fi']['WEBHOOK_TITLE_REVOKED'] = "🔴 Väliaikainen oikeus peruutettu"
Locale.strings['fi']['WEBHOOK_EMBED_GRANTED'] = "**Pelaaja:** %s\\n**Steam:** `%s`\\n**Discord:** `%s`\\n**Lisenssi:** `%s`\\n**Oikeus:** `%s`\\n**Kategoria:** `%s`\\n**Toiminto:** Väliaikainen käyttöoikeus myönnetty"
Locale.strings['fi']['WEBHOOK_EMBED_REVOKED'] = "**Pelaaja:** %s\\n**Steam:** `%s`\\n**Discord:** `%s`\\n**Lisenssi:** `%s`\\n**Oikeus:** `%s`\\n**Kategoria:** `%s`\\n**Toiminto:** Väliaikainen käyttöoikeus peruutettu"
Locale.strings['bg']['WEBHOOK_TITLE_GRANTED'] = "🟢 Временно разрешение предоставено"
Locale.strings['bg']['WEBHOOK_TITLE_REVOKED'] = "🔴 Временно разрешение отнето"
Locale.strings['bg']['WEBHOOK_EMBED_GRANTED'] = "**Играч:** %s\\n**Steam:** `%s`\\n**Discord:** `%s`\\n**Лиценз:** `%s`\\n**Разрешение:** `%s`\\n**Категория:** `%s`\\n**Действие:** Предоставен временен достъп"
Locale.strings['bg']['WEBHOOK_EMBED_REVOKED'] = "**Играч:** %s\\n**Steam:** `%s`\\n**Discord:** `%s`\\n**Лиценз:** `%s`\\n**Разрешение:** `%s`\\n**Категория:** `%s`\\n**Действие:** Отнет временен достъп"
Locale.strings['hr']['WEBHOOK_TITLE_GRANTED'] = "🟢 Privremeno dopuštenje odobreno"
Locale.strings['hr']['WEBHOOK_TITLE_REVOKED'] = "🔴 Privremeno dopuštenje opozvano"
Locale.strings['hr']['WEBHOOK_EMBED_GRANTED'] = "**Igrač:** %s\\n**Steam:** `%s`\\n**Discord:** `%s`\\n**Licenca:** `%s`\\n**Dopuštenje:** `%s`\\n**Kategorija:** `%s`\\n**Radnja:** Privremeni pristup odobren"
Locale.strings['hr']['WEBHOOK_EMBED_REVOKED'] = "**Igrač:** %s\\n**Steam:** `%s`\\n**Discord:** `%s`\\n**Licenca:** `%s`\\n**Dopuštenje:** `%s`\\n**Kategorija:** `%s`\\n**Radnja:** Privremeni pristup opozvan"
Locale.strings['sr']['WEBHOOK_TITLE_GRANTED'] = "🟢 Додељена привремена дозвола"
Locale.strings['sr']['WEBHOOK_TITLE_REVOKED'] = "🔴 Опозвана привремена дозвола"
Locale.strings['sr']['WEBHOOK_EMBED_GRANTED'] = "**Играч:** %s\\n**Steam:** `%s`\\n**Discord:** `%s`\\n**Лиценца:** `%s`\\n**Дозвола:** `%s`\\n**Категорија:** `%s`\\n**Акција:** Додељен привремени приступ"
Locale.strings['sr']['WEBHOOK_EMBED_REVOKED'] = "**Играч:** %s\\n**Steam:** `%s`\\n**Discord:** `%s`\\n**Лиценца:** `%s`\\n**Дозвола:** `%s`\\n**Категорија:** `%s`\\n**Акција:** Опозван привремени приступ"
Locale.strings['sl']['WEBHOOK_TITLE_GRANTED'] = "🟢 Začasno dovoljenje odobreno"
Locale.strings['sl']['WEBHOOK_TITLE_REVOKED'] = "🔴 Začasno dovoljenje preklicano"
Locale.strings['sl']['WEBHOOK_EMBED_GRANTED'] = "**Igralec:** %s\\n**Steam:** `%s`\\n**Discord:** `%s`\\n**Licenca:** `%s`\\n**Dovoljenje:** `%s`\\n**Kategorija:** `%s`\\n**Dejanje:** Začasen dostop odobren"
Locale.strings['sl']['WEBHOOK_EMBED_REVOKED'] = "**Igralec:** %s\\n**Steam:** `%s`\\n**Discord:** `%s`\\n**Licenca:** `%s`\\n**Dovoljenje:** `%s`\\n**Kategorija:** `%s`\\n**Dejanje:** Začasen dostop preklican"
Locale.strings['hi']['WEBHOOK_TITLE_GRANTED'] = "🟢 अस्थायी अनुमति प्रदान"
Locale.strings['hi']['WEBHOOK_TITLE_REVOKED'] = "🔴 अस्थायी अनुमति रद्द"
Locale.strings['hi']['WEBHOOK_EMBED_GRANTED'] = "**खिलाड़ी:** %s\\n**Steam:** `%s`\\n**Discord:** `%s`\\n**लाइसेंस:** `%s`\\n**अनुमति:** `%s`\\n**श्रेणी:** `%s`\\n**कार्रवाई:** अस्थायी पहुँच प्रदान की गई"
Locale.strings['hi']['WEBHOOK_EMBED_REVOKED'] = "**खिलाड़ी:** %s\\n**Steam:** `%s`\\n**Discord:** `%s`\\n**लाइसेंस:** `%s`\\n**अनुमति:** `%s`\\n**श्रेणी:** `%s`\\n**कार्रवाई:** अस्थायी पहुँच रद्द की गई"
Locale.strings['bn']['WEBHOOK_TITLE_GRANTED'] = "🟢 অস্থায়ী অনুমতি প্রদান"
Locale.strings['bn']['WEBHOOK_TITLE_REVOKED'] = "🔴 অস্থায়ী অনুমতি বাতিল"
Locale.strings['bn']['WEBHOOK_EMBED_GRANTED'] = "**খেলোয়াড়:** %s\\n**Steam:** `%s`\\n**Discord:** `%s`\\n**লাইসেন্স:** `%s`\\n**অনুমতি:** `%s`\\n**বিভাগ:** `%s`\\n**কর্ম:** অস্থায়ী প্রবেশাধিকার প্রদান"
Locale.strings['bn']['WEBHOOK_EMBED_REVOKED'] = "**খেলোয়াড়:** %s\\n**Steam:** `%s`\\n**Discord:** `%s`\\n**লাইসেন্স:** `%s`\\n**অনুমতি:** `%s`\\n**বিভাগ:** `%s`\\n**কর্ম:** অস্থায়ী প্রবেশাধিকার বাতিল"
Locale.strings['id']['WEBHOOK_TITLE_GRANTED'] = "🟢 Izin Sementara Diberikan"
Locale.strings['id']['WEBHOOK_TITLE_REVOKED'] = "🔴 Izin Sementara Dicabut"
Locale.strings['id']['WEBHOOK_EMBED_GRANTED'] = "**Pemain:** %s\\n**Steam:** `%s`\\n**Discord:** `%s`\\n**Lisensi:** `%s`\\n**Izin:** `%s`\\n**Kategori:** `%s`\\n**Tindakan:** Akses sementara diberikan"
Locale.strings['id']['WEBHOOK_EMBED_REVOKED'] = "**Pemain:** %s\\n**Steam:** `%s`\\n**Discord:** `%s`\\n**Lisensi:** `%s`\\n**Izin:** `%s`\\n**Kategori:** `%s`\\n**Tindakan:** Akses sementara dicabut"
Locale.strings['ms']['WEBHOOK_TITLE_GRANTED'] = "🟢 Kebenaran Sementara Diberikan"
Locale.strings['ms']['WEBHOOK_TITLE_REVOKED'] = "🔴 Kebenaran Sementara Ditarik Balik"
Locale.strings['ms']['WEBHOOK_EMBED_GRANTED'] = "**Pemain:** %s\\n**Steam:** `%s`\\n**Discord:** `%s`\\n**Lesen:** `%s`\\n**Kebenaran:** `%s`\\n**Kategori:** `%s`\\n**Tindakan:** Akses sementara diberikan"
Locale.strings['ms']['WEBHOOK_EMBED_REVOKED'] = "**Pemain:** %s\\n**Steam:** `%s`\\n**Discord:** `%s`\\n**Lesen:** `%s`\\n**Kebenaran:** `%s`\\n**Kategori:** `%s`\\n**Tindakan:** Akses sementara ditarik balik"
Locale.strings['vi']['WEBHOOK_TITLE_GRANTED'] = "🟢 Cấp quyền tạm thời"
Locale.strings['vi']['WEBHOOK_TITLE_REVOKED'] = "🔴 Thu hồi quyền tạm thời"
Locale.strings['vi']['WEBHOOK_EMBED_GRANTED'] = "**Người chơi:** %s\\n**Steam:** `%s`\\n**Discord:** `%s`\\n**Giấy phép:** `%s`\\n**Quyền hạn:** `%s`\\n**Danh mục:** `%s`\\n**Hành động:** Đã cấp quyền truy cập tạm thời"
Locale.strings['vi']['WEBHOOK_EMBED_REVOKED'] = "**Người chơi:** %s\\n**Steam:** `%s`\\n**Discord:** `%s`\\n**Giấy phép:** `%s`\\n**Quyền hạn:** `%s`\\n**Danh mục:** `%s`\\n**Hành động:** Đã thu hồi quyền truy cập tạm thời"
Locale.strings['th']['WEBHOOK_TITLE_GRANTED'] = "🟢 ให้สิทธิ์ชั่วคราวแล้ว"
Locale.strings['th']['WEBHOOK_TITLE_REVOKED'] = "🔴 เพิกถอนสิทธิ์ชั่วคราว"
Locale.strings['th']['WEBHOOK_EMBED_GRANTED'] = "**ผู้เล่น:** %s\\n**Steam:** `%s`\\n**Discord:** `%s`\\n**ไลเซนส์:** `%s`\\n**สิทธิ์:** `%s`\\n**หมวดหมู่:** `%s`\\n**การกระทำ:** ให้สิทธิ์การเข้าถึงชั่วคราว"
Locale.strings['th']['WEBHOOK_EMBED_REVOKED'] = "**ผู้เล่น:** %s\\n**Steam:** `%s`\\n**Discord:** `%s`\\n**ไลเซनส์:** `%s`\\n**สิทธิ์:** `%s`\\n**หมวดหมู่:** `%s`\\n**การกระทำ:** เพิกถอนสิทธิ์การเข้าถึงชั่วคราว"
Locale.strings['zh-TW']['WEBHOOK_TITLE_GRANTED'] = "🟢 已授予臨時權限"
Locale.strings['zh-TW']['WEBHOOK_TITLE_REVOKED'] = "🔴 已撤銷臨時權限"
Locale.strings['zh-TW']['WEBHOOK_EMBED_GRANTED'] = "**玩家：** %s\\n**Steam：** `%s`\\n**Discord：** `%s`\\n**授權：** `%s`\\n**權限：** `%s`\\n**分類：** `%s`\\n**動作：** 已授予臨時存取"
Locale.strings['zh-TW']['WEBHOOK_EMBED_REVOKED'] = "**玩家：** %s\\n**Steam：** `%s`\\n**Discord：** `%s`\\n**授權：** `%s`\\n**權限：** `%s`\\n**分類：** `%s`\\n**動作：** 已撤銷臨時存取"
Locale.strings['tl']['WEBHOOK_TITLE_GRANTED'] = "🟢 Nabigyan ng pansamantalang pahintulot"
Locale.strings['tl']['WEBHOOK_TITLE_REVOKED'] = "🔴 Na-revoke ang pansamantalang pahintulot"
Locale.strings['tl']['WEBHOOK_EMBED_GRANTED'] = "**Manlalaro:** %s\\n**Steam:** `%s`\\n**Discord:** `%s`\\n**Lisensya:** `%s`\\n**Pahintulot:** `%s`\\n**Kategorya:** `%s`\\n**Aksyon:** Naibigay ang pansamantalang access"
Locale.strings['tl']['WEBHOOK_EMBED_REVOKED'] = "**Manlalaro:** %s\\n**Steam:** `%s`\\n**Discord:** `%s`\\n**Lisensya:** `%s`\\n**Pahintulot:** `%s`\\n**Kategorya:** `%s`\\n**Aksyon:** Na-revoke ang pansamantalang access"
Locale.strings['af']['WEBHOOK_TITLE_GRANTED'] = "🟢 Tydelike toestemming toegestaan"
Locale.strings['af']['WEBHOOK_TITLE_REVOKED'] = "🔴 Tydelike toestemming onttrek"
Locale.strings['af']['WEBHOOK_EMBED_GRANTED'] = "**Speler:** %s\\n**Steam:** `%s`\\n**Discord:** `%s`\\n**Lisensie:** `%s`\\n**Toestemming:** `%s`\\n**Kategorie:** `%s`\\n**Aksie:** Tydelike toegang toegestaan"
Locale.strings['af']['WEBHOOK_EMBED_REVOKED'] = "**Speler:** %s\\n**Steam:** `%s`\\n**Discord:** `%s`\\n**Lisensie:** `%s`\\n**Toestemming:** `%s`\\n**Kategorie:** `%s`\\n**Aksie:** Tydelike toegang onttrek"
Locale.strings['en']['CLIENT_DEBUG_START'] = "[DEBUG] Starting event triggered for resource: %s"
Locale.strings['en']['CLIENT_DEBUG_STOP'] = "[DEBUG] Stopping event triggered for resource: %s (Wait: %s seconds)"
Locale.strings['it']['CLIENT_DEBUG_START'] = "[DEBUG] Evento di avvio triggerato per la risorsa: %s"
Locale.strings['it']['CLIENT_DEBUG_STOP'] = "[DEBUG] Evento di stop triggerato per la risorsa: %s (Attesa: %s secondi)"
Locale.strings['es']['CLIENT_DEBUG_START'] = "[DEBUG] Evento de inicio activado para el recurso: %s"
Locale.strings['es']['CLIENT_DEBUG_STOP'] = "[DEBUG] Evento de parada activado para el recurso: %s (Espera: %s segundos)"
Locale.strings['ar']['CLIENT_DEBUG_START'] = "[DEBUG] تم تشغيل حدث البدء للمورد: %s"
Locale.strings['ar']['CLIENT_DEBUG_STOP'] = "[DEBUG] تم تشغيل حدث الإيقاف للمورد: %s (الانتظار: %s ثوانٍ)"
Locale.strings['fr']['CLIENT_DEBUG_START'] = "[DEBUG] Événement de démarrage déclenché pour la ressource : %s"
Locale.strings['fr']['CLIENT_DEBUG_STOP'] = "[DEBUG] Événement d'arrêt déclenché pour la ressource : %s (Attente : %s secondes)"
Locale.strings['de']['CLIENT_DEBUG_START'] = "[DEBUG] Start-Ereignis für Ressource ausgelöst: %s"
Locale.strings['de']['CLIENT_DEBUG_STOP'] = "[DEBUG] Stopp-Ereignis für Ressource ausgelöst: %s (Wartezeit: %s Sekunden)"
Locale.strings['pt']['CLIENT_DEBUG_START'] = "[DEBUG] Evento de início acionado para o recurso: %s"
Locale.strings['pt']['CLIENT_DEBUG_STOP'] = "[DEBUG] Evento de parada acionado para o recurso: %s (Espera: %s segundos)"
Locale.strings['pt-BR']['CLIENT_DEBUG_START'] = "[DEBUG] Evento de início acionado para o recurso: %s"
Locale.strings['pt-BR']['CLIENT_DEBUG_STOP'] = "[DEBUG] Evento de parada acionado para o recurso: %s (Espera: %s segundos)"
Locale.strings['nl']['CLIENT_DEBUG_START'] = "[DEBUG] Startgebeurtenis geactiveerd voor resource: %s"
Locale.strings['nl']['CLIENT_DEBUG_STOP'] = "[DEBUG] Stopgebeurtenis geactiveerd voor resource: %s (Wachttijd: %s seconden)"
Locale.strings['pl']['CLIENT_DEBUG_START'] = "[DEBUG] Zdarzenie startu wywołane dla zasobu: %s"
Locale.strings['pl']['CLIENT_DEBUG_STOP'] = "[DEBUG] Zdarzenie zatrzymania wywołane dla zasobu: %s (Czekanie: %s s)"
Locale.strings['ro']['CLIENT_DEBUG_START'] = "[DEBUG] Eveniment de pornire declanșat pentru resursa: %s"
Locale.strings['ro']['CLIENT_DEBUG_STOP'] = "[DEBUG] Eveniment de oprire declanșat pentru resursa: %s (Așteptare: %s secunde)"
Locale.strings['tr']['CLIENT_DEBUG_START'] = "[DEBUG] Başlatma olayı kaynak için tetiklendi: %s"
Locale.strings['tr']['CLIENT_DEBUG_STOP'] = "[DEBUG] Durdurma olayı kaynak için tetiklendi: %s (Bekleme: %s saniye)"
Locale.strings['ru']['CLIENT_DEBUG_START'] = "[DEBUG] Событие запуска вызвано для ресурса: %s"
Locale.strings['ru']['CLIENT_DEBUG_STOP'] = "[DEBUG] Событие остановки вызвано для ресурса: %s (Ожидание: %s сек.)"
Locale.strings['uk']['CLIENT_DEBUG_START'] = "[DEBUG] Подію запуску викликано для ресурсу: %s"
Locale.strings['uk']['CLIENT_DEBUG_STOP'] = "[DEBUG] Подію зупинки викликано для ресурсу: %s (Очікування: %s с)"
Locale.strings['el']['CLIENT_DEBUG_START'] = "[DEBUG] Εκκίνηση συμβάντος για τον πόρο: %s"
Locale.strings['el']['CLIENT_DEBUG_STOP'] = "[DEBUG] Σταμάτημα συμβάντος για τον πόρο: %s (Αναμονή: %s δευτ.)"
Locale.strings['cs']['CLIENT_DEBUG_START'] = "[DEBUG] Spuštěna událost startu pro resource: %s"
Locale.strings['cs']['CLIENT_DEBUG_STOP'] = "[DEBUG] Spuštěna událost zastavení pro resource: %s (Čekání: %s s)"
Locale.strings['sk']['CLIENT_DEBUG_START'] = "[DEBUG] Spustená udalosť štartu pre zdroj: %s"
Locale.strings['sk']['CLIENT_DEBUG_STOP'] = "[DEBUG] Spustená udalosť zastavenia pre zdroj: %s (Čakanie: %s s)"
Locale.strings['hu']['CLIENT_DEBUG_START'] = "[DEBUG] Indítási esemény kiváltva ehhez az erőforráshoz: %s"
Locale.strings['hu']['CLIENT_DEBUG_STOP'] = "[DEBUG] Leállítási esemény kiváltva ehhez az erőforráshoz: %s (Várakozás: %s mp)"
Locale.strings['sv']['CLIENT_DEBUG_START'] = "[DEBUG] Start-händelse utlöst för resurs: %s"
Locale.strings['sv']['CLIENT_DEBUG_STOP'] = "[DEBUG] Stopp-händelse utlöst för resurs: %s (Väntan: %s sekunder)"
Locale.strings['da']['CLIENT_DEBUG_START'] = "[DEBUG] Start-hændelse udløst for resource: %s"
Locale.strings['da']['CLIENT_DEBUG_STOP'] = "[DEBUG] Stop-hændelse udløst for resource: %s (Ventetid: %s sek.)"
Locale.strings['nb']['CLIENT_DEBUG_START'] = "[DEBUG] Startehendelse utløst for ressurs: %s"
Locale.strings['nb']['CLIENT_DEBUG_STOP'] = "[DEBUG] Stoppehendelse utløst for ressurs: %s (Ventetid: %s sekunder)"
Locale.strings['fi']['CLIENT_DEBUG_START'] = "[DEBUG] Käynnistystapahtuma laukaistu resurssille: %s"
Locale.strings['fi']['CLIENT_DEBUG_STOP'] = "[DEBUG] Pysäytystapahtuma laukaistu resurssille: %s (Odotus: %s s)"
Locale.strings['bg']['CLIENT_DEBUG_START'] = "[DEBUG] Стартиране на събитие за ресурса: %s"
Locale.strings['bg']['CLIENT_DEBUG_STOP'] = "[DEBUG] Спиране на събитие за ресурса: %s (Изчакване: %s сек.)"
Locale.strings['hr']['CLIENT_DEBUG_START'] = "[DEBUG] Pokretanje događaja okinuto za resurs: %s"
Locale.strings['hr']['CLIENT_DEBUG_STOP'] = "[DEBUG] Zaustavljanje događaja okinuto za resurs: %s (Čekanje: %s s)"
Locale.strings['sr']['CLIENT_DEBUG_START'] = "[DEBUG] Покретање догађаја окинуто за ресурс: %s"
Locale.strings['sr']['CLIENT_DEBUG_STOP'] = "[DEBUG] Заустављање догађаја окинуто за ресурс: %s (Чекање: %s с)"
Locale.strings['sl']['CLIENT_DEBUG_START'] = "[DEBUG] Začetni dogodek sprožen za vir: %s"
Locale.strings['sl']['CLIENT_DEBUG_STOP'] = "[DEBUG] Ustavitveni dogodek sprožen za vir: %s (Čakanje: %s s)"
Locale.strings['he']['CLIENT_DEBUG_START'] = "[DEBUG] Starting event triggered for resource: %s"
Locale.strings['he']['CLIENT_DEBUG_STOP'] = "[DEBUG] Stopping event triggered for resource: %s (Wait: %s seconds)"
Locale.strings['fa']['CLIENT_DEBUG_START'] = "[DEBUG] Starting event triggered for resource: %s"
Locale.strings['fa']['CLIENT_DEBUG_STOP'] = "[DEBUG] Stopping event triggered for resource: %s (Wait: %s seconds)"
Locale.strings['ur']['CLIENT_DEBUG_START'] = "[DEBUG] Starting event triggered for resource: %s"
Locale.strings['ur']['CLIENT_DEBUG_STOP'] = "[DEBUG] Stopping event triggered for resource: %s (Wait: %s seconds)"
Locale.strings['hi']['CLIENT_DEBUG_START'] = "[DEBUG] संसाधन के लिए स्टार्ट इवेंट ट्रिगर हुआ: %s"
Locale.strings['hi']['CLIENT_DEBUG_STOP'] = "[DEBUG] संसाधन के लिए स्टॉप इवेंट ट्रिगर हुआ: %s (प्रतीक्षा: %s सेकंड)"
Locale.strings['bn']['CLIENT_DEBUG_START'] = "[DEBUG] রিসোর্সের জন্য শুরু ইভেন্ট ট্রিগার হয়েছে: %s"
Locale.strings['bn']['CLIENT_DEBUG_STOP'] = "[DEBUG] রিসোর্সের জন্য থামানো ইভেন্ট ট্রিগার হয়েছে: %s (অপেক্ষা: %s সেকেন্ড)"
Locale.strings['id']['CLIENT_DEBUG_START'] = "[DEBUG] Event mulai dipicu untuk resource: %s"
Locale.strings['id']['CLIENT_DEBUG_STOP'] = "[DEBUG] Event berhenti dipicu untuk resource: %s (Tunggu: %s detik)"
Locale.strings['ms']['CLIENT_DEBUG_START'] = "[DEBUG] Peristiwa mula dicetus untuk sumber: %s"
Locale.strings['ms']['CLIENT_DEBUG_STOP'] = "[DEBUG] Peristiwa henti dicetus untuk sumber: %s (Menunggu: %s saat)"
Locale.strings['vi']['CLIENT_DEBUG_START'] = "[DEBUG] Sự kiện khởi động được kích hoạt cho tài nguyên: %s"
Locale.strings['vi']['CLIENT_DEBUG_STOP'] = "[DEBUG] Sự kiện dừng được kích hoạt cho tài nguyên: %s (Chờ: %s giây)"
Locale.strings['th']['CLIENT_DEBUG_START'] = "[DEBUG] มีการทริกเกอร์อีเวนต์เริ่มต้นสำหรับรีซอร์ส: %s"
Locale.strings['th']['CLIENT_DEBUG_STOP'] = "[DEBUG] มีการทริกเกอร์อีเวนต์หยุดสำหรับรีซอร์ส: %s (รอ: %s วินาที)"
Locale.strings['ja']['CLIENT_DEBUG_START'] = "[DEBUG] リソースの開始イベントがトリガーされました: %s"
Locale.strings['ja']['CLIENT_DEBUG_STOP'] = "[DEBUG] リソースの停止イベントがトリガーされました: %s (待機: %s 秒)"
Locale.strings['ko']['CLIENT_DEBUG_START'] = "[DEBUG] 리소스 시작 이벤트가 트리거됨: %s"
Locale.strings['ko']['CLIENT_DEBUG_STOP'] = "[DEBUG] 리소스 중지 이벤트가 트리거됨: %s (대기: %s초)"
Locale.strings['zh-CN']['CLIENT_DEBUG_START'] = "[DEBUG] 资源的启动事件已触发：%s"
Locale.strings['zh-CN']['CLIENT_DEBUG_STOP'] = "[DEBUG] 资源的停止事件已触发：%s（等待：%s 秒）"
Locale.strings['zh-TW']['CLIENT_DEBUG_START'] = "[DEBUG] 已觸發資源的啟動事件：%s"
Locale.strings['zh-TW']['CLIENT_DEBUG_STOP'] = "[DEBUG] 已觸發資源的停止事件：%s（等待：%s 秒）"
Locale.strings['tl']['CLIENT_DEBUG_START'] = "[DEBUG] Na-trigger ang start event para sa resource: %s"
Locale.strings['tl']['CLIENT_DEBUG_STOP'] = "[DEBUG] Na-trigger ang stop event para sa resource: %s (Hintay: %s segundo)"
Locale.strings['af']['CLIENT_DEBUG_START'] = "[DEBUG] Begingebeurtenis geaktiveer vir hulpbron: %s"
Locale.strings['af']['CLIENT_DEBUG_STOP'] = "[DEBUG] Stopgebeurtenis geaktiveer vir hulpbron: %s (Wag: %s sekondes)"
