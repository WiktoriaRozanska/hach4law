# frozen_string_literal: true

module BasicCategories
  LIST = [
    { category: 'ZAMÓWIENIA PUBLICZNE', subcategories: [
      { category: 'Korupcja i inne nieuczciwe praktyki w procesie przetargowym',
        description: 'Przykłady zgłoszeń: przestrzegania klauzul antykorupcyjnych | manipulacje w ogłaszaniu przetargów | nieuczciwa konkurencja | nielegalne zachowania związane z przetargami | nieuczciwa ocena ofert | przyznanie kontraktu firmie niespełniającej wymagań' },
      { category: 'Fałszowanie dokumentów',
        description: 'Przykłady zgłoszeń: fałszowanie dokumentacji związanej z przetargami | fałszywe informacje w ofercie przetargu | fałszywe certyfikaty lub referencje przedstawione w celu uzyskania kontraktu' },
      { category: 'Konflikt interesów',
        description: 'Przykłady zgłoszeń: nieobiektywny wybór dostawcy | faworyzowanie konkretnych firm lub ofert ze względu na prywatny interes lub powiązania z kontrahentem' },
      { category: 'Naruszenia postanowień umów i przekształcenia kontraktów',
        description: 'Przykłady zgłoszeń: nieprzestrzeganie postanowień umów i warunków dostaw | nielegalne przekształcenie kontraktów lub zmiana ich treści' }
    ] },
    { category: 'NADUŻYCIA FINANSOWE I PRANIE PIENIĘDZY', subcategories: [
      { category: 'Pranie brudnych pieniędzy',
        description: 'Przykłady zgłoszeń: przechodzenie dużych kwot przez wiele rachunków bankowych w celu ukrycia pochodzenia środków | używanie kont bankowych w tzw. rajach podatkowych | zaniżanie wartości transakcji, aby uniknąć obowiązków raportowania' },
      { category: 'Naruszenia przepisów dotyczących handlu papierami wartościowymi',
        description: 'Przykłady zgłoszeń: Manipulacja rynkiem przez zawyżanie lub zaniżanie cen akcji |rozprowadzanie fałszywych lub zwodniczych informacji na temat spółek, które wpłyną na ceny akcji' },
      { category: 'Naruszenia przepisów dotyczących funduszy inwestycyjnych',
        description: 'Przykłady zgłoszeń: Brak odpowiednich procedur zarządzania ryzykiem | nieprzestrzeganie przepisów dotyczących raportowania i przekazywania informacji inwestorom' },
      { category: 'Naruszenia w zakresie kredytów i pożyczek',
        description: 'Przykłady zgłoszeń: Udzielanie kredytów bez należytej oceny zdolności kredytowej | wprowadzenie klientów w błąd w celu podpisania umów kredytowych |ustalanie nadmiernie wygórowanych odsetek od kredytów.' },
      { category: 'Naruszenia w zakresie zapobiegania praniu brudnych pieniędzy i finansowania terroryzmu',
        description: 'Przykłady zgłoszeń: Nieprzestrzeganie przepisów dotyczących identyfikacji i weryfikacji klientów | Niedopełnienie obowiązków raportowania podejrzanych transakcji w stosownych organach regulacyjnych | brak odpowiednich procedur i szkoleń w zakresie przeciwdziałania praniu brudnych pieniędzy w instytucjach finansowych' },
      { category: 'Naruszenia przepisów dotyczących transakcji międzynarodowych',
        description: 'Przykłady zgłoszeń: Firma uchyla się od przepisów międzynarodowych dotyczących sankcji gospodarczych, prowadząc nielegalne transakcje międzynarodowe' }
    ] },
    { category: 'BEZPIECZEŃSTWO TRANSPORTU', subcategories: [
      { category: 'Naruszenia związane z pojazdami',
        description: 'Przykłady zgłoszeń: wprowadzanie na rynek pojazdów z ukrytymi wadami technicznymi | nieaktualne badania techniczne pojazdu | brak przeglądów technicznych' },
      { category: 'Naruszenia bezpieczeństwa drogowego',
        description: 'Przykłady naruszeń: nieprzestrzeganie przepisów ruchu drogowego ryzykowna jazda | jazda pod wpływem alkoholu lub innych środków odurzających | prowadzenie pojazdu bez odpowiednich uprawnień' },
      { category: 'Naruszenia praw związanych z transportem',
        description: 'Przykłady naruszeń: przewóz nielegalnych produktów | nieprzestrzeganie wymogów sanitarnych' },
      { category: 'Naruszenia związane z transportem morskim lub lotniczym', description: '' }
    ] },
    { category: 'OCHRONA ŚRODOWISKA', subcategories: [
      { category: 'Przestępstwa przeciwko ochronie środowiska',
        description: 'Przykłady naruszeń: nielegalna wycinka lasów | kradzież surowców naturalnych chronionych prawem | zniszczenia ekosystemu' },
      { category: 'Naruszenia przepisów dotyczących środowiska naturalnego i klimatu',
        description: 'Przykłady naruszeń: zwiększona emisja gazów cieplarnianych' },
      { category: 'Nieprawidłowa gospodarka odpadami',
        description: 'Przykłady naruszeń: składowanie odpadów niebezpiecznych na nieodpowiednich składowiskach' },
      { category: 'Zanieczyszczanie wody, powietrza, gleby oraz zanieczyszczenia hałasem',
        description: 'Przykłady naruszeń: wypuszczanie ścieków do rzek | zatruwanie wód | szkody dla fauny i flory' },
      { category: 'Naruszenia przepisów dotyczących ochrony przyrody i różnorodności biologicznej',
        description: 'Przykłady naruszeń: niszczenie siedlisk przyrodniczych chronionych prawem' },
      { category: 'Naruszenia przepisów dotyczących chemikaliów',
        description: 'Przykłady naruszeń: używanie niebezpiecznych substancji bez odpowiednich zezwoleń i zachowywania środków ostrożności' },
      { category: 'Naruszenia przepisów dotyczących produktów ekologicznych',
        description: 'Przykłady naruszeń: Oferowanie produktów oznaczonych jako "ekologiczne" lub "organiczne", które nie spełniają określonych standardów i wymagań, wprowadzając konsumentów w błąd' }
    ] },
    { category: 'BEZPIECZEŃSTWO JĄDROWE', subcategories: [
      { category: 'Naruszenia przepisów dotyczących ram bezpieczeństwa jądrowego',
        description: 'Przykłady naruszeń: brak regularnych testów i kontroli stanu technicznego' },
      { category: 'Naruszenia wymogów bezpieczeństwa związanych z użyciem substancji promieniotwórczych',
        description: 'Przykłady naruszeń: nieodpowiednie oznaczanie i izolowanie źródeł promieniowania podczas zabiegów radioterapii, co naraża personel i pacjentów na promieniowanie' },
      { category: 'Naruszenia w nadzorze i kontroli gospodarowania odpadami promieniotwórczymi',
        description: 'Przykłady naruszeń: składowisko odpadów promieniotwórczych nie jest regularnie monitorowane pod kątem wycieków' }
    ] },
    { category: 'BEZPIECZEŃSTWO ŻYWNOŚCI I ZWIERZĄT', subcategories: [
      { category: 'Naruszenia w produkcji żywności',
        description: 'Przykłady naruszeń: dodawanie substancji nieautoryzowanych do produktów spożywczych | brak lub nieprzestrzeganie odpowiednich standardów higieny podczas produkcji, transportu lub przechowywania żywności | przekraczanie dopuszczalnych poziomów substancji toksycznych' },
      { category: 'Naruszenia w sprzedaży żywności',
        description: 'Przykłady naruszeń: fałszywe informacje odnośnie do składu lub terminu przydatności do spożycia | brak odpowiedniego oznakowania | fałszowanie jakości produktów | niewłaściwe przechowywanie i transport' },
      { category: 'Naruszenia praw zwierząt',
        description: 'Przykłady naruszeń: niehumanitarne traktowanie | naruszenia w zakresie handlu zwierzętami' }
    ] },
    { category: 'ZDROWIE PUBLICZNE', subcategories: [
      {
        category: 'Naruszenia przepisów dotyczących pobierania i przetwarzania materiału biologicznego pochodzenia ludzkiego', description: 'Przykłady naruszeń: niewłaściwe przechowywanie materiału biologicznego (krew, komórki, tkanki, narządy) | niespełnianie standardów pobierania'
      },
      { category: 'Naruszenia w zakresie produktów leczniczych',
        description: 'Przykłady naruszeń: Nieprzestrzeganie procedur i standardów związanych z wydawaniem pozwoleń na produkty lecznicze | niewłaściwa kontrola i nadzór nad produktami leczniczymi stosowanymi u ludzi i do celów weterynaryjnych | wprowadzanie na rynek produktów, które nie spełniają standardów jakości i bezpieczeństwa' },
      { category: 'Naruszenia dotyczące wyrobów tytoniowych',
        description: 'Przykłady naruszeń: sprzedaż naruszając wymogi etykietowania, standardów jakości' },
      { category: 'Naruszenia praw pacjentów',
        description: 'Przykłady naruszeń: niezapewnienie dostępu do opieki zdrowotnej | nieuzasadniona odmowa świadczeń' }
    ] },
    { category: 'OCHRONA KONSUMENTÓW I BEZPIECZEŃSTWO PRODUKTÓW', subcategories: [
      { category: 'Naruszenia praw konsumentów',
        description: 'Przykłady naruszeń: nieuczciwe praktyki handlowe, sprzedaż wadliwego sprzętu | niespełnienie obowiązków związanych z gwarancją' },
      { category: 'Naruszenia w usługach cyfrowych i świadczonych na odległość',
        description: 'Przykłady naruszeń: niedostarczenie warunków zawarcia umowy na trwałym nośniku| niezapewnienie dostępu do treści cyfrowej mimo dokonania opłaty)' },
      { category: 'Wady produktów',
        description: 'Przykłady naruszeń: wady prawne i fizyczne w produktach wypuszczonych na rynek | brak zgodności z przepisami dotyczącymi bezpieczeństwa' },
      { category: 'Wprowadzanie konsumenta w błąd',
        description: 'Przykłady naruszeń: oszustwa w reklamach | brak odpowiednich ostrzeżeń lub instrukcji użytkowania | fałszywe informacje na opakowaniach | wprowadzanie w błąd co do zawartości produktu' },
      { category: 'Nieuczciwe praktyki sprzedażowe i marketingowe',
        description: 'Przykłady naruszeń: manipulacyjne techniki stosowane w reklamach | nieuczciwe oferty | agresywne techniki sprzedażowe' },
      {
        category: 'Naruszenia przepisów dotyczących wprowadzania do obrotu oraz stosowania produktów wrażliwych i niebezpiecznyc', description: 'Przykłady naruszeń: wprowadzenie na rynek produktów medycznych bez wymaganych certyfikatów'
      }
    ] },
    { category: 'OCHRONA PRYWATNOŚCI I DANYCH', subcategories: [
      { category: 'Nieprawidłowe przetwarzanie danych',
        description: 'Przykłady naruszeń: brak wymaganych zgód na zbieranie i przetwarzanie danych | przetwarzania danych mimo wycofania zgód | brak odpowiednich mechanizmów ochrony prywatności | przechowywanie danych po upływie okresu i celu przechowywania' },
      { category: 'Brak odpowiednich zabezpieczeń',
        description: 'Przykłady naruszeń: potencjalne lub realne wycieki danych i naruszenia prywatności | brak ochrony przed cyberatakami' },
      { category: 'Brak możliwości dostępu do danych',
        description: 'Przykłady naruszeń: uniemożliwienie wycofania zgody na przetwarzanie danych | brak dostępu użytkowników do danych' }
    ] },
    { category: 'NARUSZENIA WEWNĘTRZNE', subcategories: [
      { category: 'Dyskryminacja',
        description: 'Definicja: nierówne traktowanie w zakresie nawiązania i rozwiązania stosunku pracy, warunków zatrudnienia, awansowania oraz dostępu do szkolenia w celu podnoszenia kwalifikacji zawodowych, ze względu na płeć, wiek, niepełnosprawność, rasę, religię, narodowość, przekonania polityczne, przynależność związkową, pochodzenie etniczne, wyznanie, orientację seksualną, zatrudnienie na czas określony lub nieokreślony, zatrudnienie w pełnym lub w niepełnym wymiarze czasu pracy' },
      { category: 'Nękanie i mobbing',
        description: 'Definicja: działania lub zachowania dotyczące pracownika lub skierowane przeciwko pracownikowi, polegające na uporczywym i długotrwałym nękaniu lub zastraszaniu pracownika, wywołujące u niego zaniżoną ocenę przydatności zawodowej, powodujące lub mające na celu poniżenie lub ośmieszenie pracownika, izolowanie go lub wyeliminowanie z zespołu współpracowników.' },
      { category: 'Naruszenia poufności lub niedyskrecja',
        description: 'Przykłady naruszeń: ujawnianie poufnych informacji firmy pracownikom lub osobom trzecim bez odpowiedniej autoryzacji | złamanie umowy o poufności poprzez przekazanie poufnych informacji konkurencyjnym firmom' },
      { category: 'Fałszowanie dokumentów',
        description: 'Przykłady naruszeń: świadome fałszowanie dokumentów firmowych, w tym faktur, raportów finansowych lub innych dokumentów służbowych | prezentowanie fałszywych dokumentów w celu uzyskania korzyści finansowych lub przekonania innych do działania w sposób niezgodny z prawdą' },
      { category: 'Naruszenia wewnętrznych zasad bezpieczeństwa',
        description: 'Przykłady naruszeń: Niedopełnianie przepisów bezpieczeństwa w miejscu pracy | stwarzanie zagrożenia dla zdrowia i życia pracowników' },
      { category: 'Konflikt interesów',
        description: 'Przykłady naruszeń: działania osoby, która ma wpływ na decyzje firmy, na rzecz własnego interesu lub interesu innej firmy, co wpływa na obiektywność i uczciwość działań firmy |Ukrywanie konfliktu interesów lub brak odpowiednich działań w celu jego uniknięcia lub zarządzania.' },
      { category: 'Naruszenie regulaminu wewnętrznego',
        description: 'Przykłady naruszeń: naruszenie zasad i przepisów obowiązujących w firmie | odmowa dostosowania się do polityk i regulaminów wewnętrznych firmy' },
      { category: 'Korupcja i łapówkarstwo',
        description: 'Przykłady naruszeń: przyjmowanie łapówki w zamian za szybsze rozpatrywanie lub akceptację projektów | przyjmowanie korzyści majątkowych od partnerów biznesowych w zamian za dostęp do tajnych informacji lub preferencyjne traktowanie w relacjach handlowych | oferowanie łapówek w zamian za niezgłaszanie naruszeń w firmie' },
      { category: 'Oszustwa finansowe',
        description: 'Przykłady naruszeń: Oszustwa wobec klientów | fałszowanie sprawozdań finansowych | przywłaszczanie funduszy firmy ' }
    ] }
  ].freeze
  private_constant :LIST

  def self.add_basic_categories(organization_id)
    LIST.each do |main_category|
      super_cat = Category.create!(title: main_category[:category], organization_id: organization_id)
      main_category[:subcategories].each do |subcategory|
        Category.create!(title: subcategory[:category], description: subcategory[:description],
                         parent_category_id: super_cat.id, organization_id: organization_id)
      end
    end
  end
end
