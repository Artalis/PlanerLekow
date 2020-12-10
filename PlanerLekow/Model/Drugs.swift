//
//  Drugs.swift
//  PlanerLekow
//
//  Created by Aleksandra Kodroń on 30/11/2020.
//

import Foundation




enum Drugs{
    case APAP
    case IBUPROM
    
    
    var drug: Drug{
        switch self {
        case .APAP:
            return Drug(
                name: "APAP",
                purpose: "APAP jako substancję czynną zawiera paracetamol i jest lekiem przeciwbólowym i przeciwgorączkowym.\n" +
                    "Wskazaniem do stosowania leku są bóle różnego pochodzenia: głowy (w tym napięciowe bóle głowy), " +
                    "menstruacyjne, zębów, mięśni, kostno-stawowe, gardła, nerwobóle oraz gorączka, np. w przeziębieniu " +
                    "i grypie.\n" +
                    "APAP jest wskazany do stosowania u dorosłych i młodzieży w wieku powyżej 12 lat.",
                dosage: "Ten lek należy zawsze przyjmować dokładnie tak, jak to opisano w ulotce dla pacjenta lub według " +
                    "zaleceń lekarza lub farmaceuty. W razie wątpliwości należy zwrócić się do lekarza lub farmaceuty.\n" +
                    "Zazwyczaj stosowana dawka leku to:\n" +
                    "- dorośli: 1-2 tabletki powlekane (500-1000 mg paracetmolu), w razie konieczności 3-4 razy na dobę " +
                    "(maksymalnie 8 tabletek powlekanych w ciągu doby, czyli 4 g paracetamolu na dobę). Należy " +
                    "przestrzegać co najmniej 4 godzinnego odstępu między kolejnymi dawkami.\n" +
                    "- młodzież w wieku powyżej 12 lat: 1 tabletka powlekana, czyli 500 mg paracetamolu, w razie " +
                    "konieczności 3 do 4 razy na dobę.\n" +
                    "Należy przestrzegać co najmniej 4 godzinnego odstępu między kolejnymi dawkami.\n" +
                    "Bez konsultacji z lekarzem nie należy stosować leku, jeśli ból utrzymuje się dłużej niż 5 dni, " +
                    "a gorączka dłużej niż 3 dni.\n" +
                    "Zaleca się stosowanie leku na czczo, gdyż pozwala to na przyspieszenie jego działania " +
                    "przeciwbólowego i przeciwgorączkowego.\n" +
                    "W przypadku wrażenia, że działanie leku jest za mocne lub za słabe, należy zwrócić się do lekarza.\n \n" +
                    "Stosowanie u dzieci:\n" +
                    "Nie należy podawać dzieciom w wieku poniżej 12 lat (ograniczenie wynika z postaci leku).\n \n" +
                    "Przyjęcie większej niż zalecana dawki leku APAP\n" +
                    "W każdym przypadku zażycia dawki większej niż zalecana należy natychmiast zasięgnąć porady " +
                    "lekarskiej, nawet gdy samopoczucie chorego jest dobre, ze względu na ryzyko wystąpienia " +
                    "opóźnionego, ciężkiego uszkodzenia wątroby.\n" +
                    "W ciągu kilku do kilkunastu godzin po przyjęciu leku mogą wystąpić: nudności, wymioty, nadmierna " +
                    "potliwość, senność i ogólne osłabienie. Objawy te mogą ustąpić następnego dnia, mimo że zaczyna się " +
                    "rozwijać uszkodzenie wątroby, które następnie daje o sobie znać rozpieraniem w nadbrzuszu, " +
                    "powrotem nudności i żółtaczką.\n" +
                    "W każdym przypadku przyjęcia jednorazowo paracetamolu w dawce 5 g lub więcej trzeba " +
                    "sprowokować wymioty, jeśli od spożycia nie upłynęło więcej czasu niż godzina " +
                    "i skontaktować się natychmiast z lekarzem. Warto podać 60-100 g węgla aktywnego doustnie, " +
                    "najlepiej rozmieszanego z wodą w celu związania pozostałości leku obecnej w żołądku.\n" +
                    "Pominięcie przyjęcia leku APAP\n" +
                    "Lek podaje się doraźnie, gdy wystąpią objawy, zgodnie z ww. zaleconym dawkowaniem i częstością " +
                    "podawania leku.\n" +
                    "Przerwanie stosowania leku APAP\n" +
                    "APAP przeznaczony jest do doraźnego leczenia bólu i gorączki, więc jego stosowanie może zostać " +
                    "przerwane w dowolnym momencie.",
                ingredients: "Paracetamolum (paracetamol) 500,0 mg",
                sideEffects: "Jak każdy lek, lek ten może powodować działania niepożądane, chociaż nie u każdego one wystąpią.\n" +
                    "Jeśli wystąpią poniższe objawy nie należy przyjmować leku i natychmiast skontaktować się " +
                    "z lekarzem. Są to stany zagrażające życiu. Występują bardzo rzadko.\n" +
                    "- obrzęk naczynioruchowy (obrzęk twarzy, warg, języka, gardła, trudności w oddychaniu), wstrząs " +
                    "anafilaktyczny (zawroty głowy, zaburzenia świadomości, przyspieszenie czynności serca, spadek " +
                    "ciśnienia krwi),\n" +
                    "- ciężkie reakcje skórne.\n" +
                    "Pozostałe działania niepożądane\n" +
                    "występujące rzadko (u 1 do 10 na 10 000 pacjentów stosujących lek):\n" +
                    "- reakcje nadwrażliwości, pokrzywka, rumień, wysypka,\n" +
                    "- nudności, wymioty, zaburzenia trawienia,\n" +
                    "występujące bardzo rzadko (rzadziej niż u 1 na 10 000 pacjentów stosujących lek):\n" +
                    "- trombocytopenia (zmniejszenie liczby płytek krwi),\n" +
                    "- agranulocytoza (zmniejszenie liczby granulocytów -rodzaj białych krwinek, do całkowitego ich " +
                    "braku włącznie)\n" +
                    "- skurcz oskrzeli u pacjentów z nadwrażliwością na kwas acetylosalicylowy i inne niesteroidowe leki " +
                    "przeciwzapalne,\n" +
                    "- ostre uszkodzenie wątroby występująca najczęściej w wyniku przedawkowania,\n" +
                    "- plamica barwnikowa.\n" +
                    "Zgłaszanie działań niepożądanych\n" +
                    "Jeśli wystąpią jakiekolwiek objawy niepożądane, w tym wszelkie objawy niepożądane niewymienione " +
                    "w ulotce, należy powiedzieć o tym lekarzowi lub farmaceucie. Działania niepożądane można zgłaszać " +
                    "bezpośrednio do Departamentu Monitorowania Niepożądanych Działań Produktów Leczniczych " +
                    "Urzędu Rejestracji Produktów Leczniczych, Wyrobów Medycznych i Produktów Biobójczych. \n" +
                    "Działania niepożądane można zgłaszać również podmiotowi odpowiedzialnemu.\n" +
                    "Dzięki zgłaszaniu działań niepożądanych można będzie zgromadzić więcej informacji na temat " +
                    "bezpieczeństwa stosowania leku.",
                contraindications:  "Kiedy nie przyjmować leku APAP:\n" +
                        "Jeśli u pacjenta:\n" +
                        " - wcześniej stwierdzono uczulenie na paracetamol lub którykolwiek z pozostałych składników tego " +
                        "leku (wymienionych w punkcie 6),\n" +
                        "- występuje ciężka niewydolność wątroby lub nerek,\n" +
                        "- występuje wrodzony niedobór dehydrogenazy glukozo-6-fosforanowej lub reduktazy " +
                        "methemoglobinowej,\n" +
                        "- u dzieci w wieku poniżej 12 lat.\n" +
                        "Ostrzeżenia i środki ostrożności\n" +
                        "Ze względu na ryzyko przedawkowania należy upewnić się, że inne przyjmowane leki nie zawierają " +
                        "paracetamolu. W razie zastosowania dawki większej niż zalecana pacjent powinien natychmiast " +
                        "skontaktować się z lekarzem, nawet jeśli nie wystąpiły żadne objawy, ponieważ może dojść " +
                        "do zagrażającego życiu uszkodzenia wątroby.\n" +
                        "Przed rozpoczęciem stosowania leku Apap należy omówić to z lekarzem lub farmaceutą u osób " +
                        "z niewydolnością wątroby lub nerek oraz astmą oskrzelową.\n" +
                        "Stosowanie leku przez osoby z niewydolnością wątroby, nadużywające alkoholu oraz niedożywione " +
                        "stwarza ryzyko uszkodzenia wątroby. W czasie przyjmowania leku nie wolno pić alkoholu ze względu " +
                        "na ryzyko toksycznego uszkodzenia wątroby.\n" +
                        "Dzieci i młodzież\n" +
                        "Nie należy podawać dzieciom w wieku poniżej 12 lat (ograniczenie wynika z postaci leku).\n" +
                        "Lek APAP a inne leki\n" +
                        "Należy powiedzieć lekarzowi lub farmaceucie o wszystkich lekach przyjmowanych przez pacjenta " +
                        "obecnie lub ostatnio, a także o lekach, które pacjent planuje przyjmować.\n" +
                        "Leku nie należy stosować równocześnie z innymi lekami zawierającymi paracetamol, inhibitorami " +
                        "MAO (leki stosowane m.in. w depresji), oraz w okresie do 2 tygodni od zaprzestania " +
                        "ich przyjmowania oraz z zydowudyną (lek przeciwwirusowy, stosowany " +
                        "w zakażeniu wirusem HIV). W przypadku jednoczesnego stosowania doustnych leków " +
                        "przeciwzakrzepowych (warfaryny, kumaryny), ryfampicyny i izoniazydu (leki stosowane " +
                        "w leczeniu gruźlicy), leków przeciwpadaczkowych, barbituranów (leki o działaniu uspokajającym " +
                        "i nasennym), diflunisalu (lek przeciwbólowy), sulfinpirazonu (lek stosowany w leczeniu dny " +
                        "moczanowej) lub innych leków indukujących enzymy mikrosomowe wątroby przed przyjęciem leku " +
                        "należy zasięgnąć opinii lekarza. Kofeina nasila przeciwbólowe działanie paracetamolu.\n" +
                        "Stosowanie leku APAP z jedzeniem i piciem i alkoholem\n" +
                        "Zaleca się przyjmowanie leku na czczo, gdyż pozwala to na uzyskanie szybszego działania " +
                        "przeciwbólowego i przeciwgorączkowego.\n" +
                        "Podczas stosowania paracetamolu nie należy spożywać alkoholu ze względu na zwiększone ryzyko " +
                        "uszkodzenia wątroby. Szczególne ryzyko uszkodzenia wątroby istnieje u osób niedożywionych, " +
                        "regularnie pijących alkohol i u pacjentów z alkoholową chorobą wątroby bez marskości.\n" +
                        "Ciąża i karmienie piersią i wpływ na płodność\n" +
                        "Jeśli pacjentka jest w ciąży lub karmi piersią, przypuszcza że może być w ciąży lub gdy planuje mieć " +
                        "dziecko, powinna poradzić się lekarza przed zastosowaniem tego leku.\n" +
                        "Lek Apap można podawać kobietom w ciąży, jeśli jest to konieczne. Należy stosować możliwie " +
                        "najmniejszą dawkę skutecznie łagodzącą ból lub obniżającą gorączkę i przyjmować lek przez " +
                        "możliwie jak najkrótszy czas.\n" +
                        "Jeżeli ból nie zostanie złagodzony lub gorączka się nie obniży lub jeżeli konieczne będzie zwiększenie " +
                        "częstości przyjmowania leku, należy skonsultować się z lekarzem.\n" +
                        "Prowadzenie pojazdów i obsługiwanie maszyn " +
                        "Przyjmowanie leku nie wpływa na sprawność psychomotoryczną."
            )
        case .IBUPROM:
            return Drug(
                name:"Ibuprom",
                purpose:"Lek IBUPROM jest lekiem działającym przeciwbólowo. Stosowany jest w leczeniu stanu zapalnego, " +
                        "który jest jedną z przyczyn bólu. Lek obniża gorączkę.\n" +
                        "Wskazaniem do stosowania leku są dolegliwości bólowe różnego pochodzenia o nasileniu słabym do " +
                        "umiarkowanego, w tym: bóle głowy, bóle zębów, bóle mięśniowe, bóle okolicy lędźwiowo-krzyżowej, " +
                        "bóle kostne i stawowe. Bolesne miesiączkowanie. Gorączka (między innymi w przebiegu grypy, " +
                        "przeziębienia lub innych chorób zakaźnych).",
                dosage:"Ten lek należy zawsze stosować zgodnie z opisem w ulotce dla pacjenta lub według wskazań lekarza " +
                        "lub farmaceuty. W razie wątpliwości należy zwrócić się do lekarza lub farmaceuty.\n" +
                        "Dzieci od 6 do 9 lat (masa ciała 20 - 29 kg)\n" +
                        "W doraźnym leczeniu 1 tabletka doustnie co 6 - 8 godzin po posiłkach. Nie należy stosować dawki " +
                        "większej niż 3 tabletki na dobę (maksymalna dawka dobowa 600 mg w dawkach podzielonych);\n" +
                        "Dzieci od 10 do 12 lat (masa ciała 30 - 39 kg)\n" +
                        "W doraźnym leczeniu 1 tabletka doustnie co 6 godzin po posiłkach. Nie należy stosować dawki " +
                        "większej niż 4 tabletki na dobę (maksymalna dawka dobowa 800 mg w dawkach podzielonych);\n" +
                        "Dorośli i dzieci powyżej 12 lat\n" +
                        "W doraźnym leczeniu 1 do 2 tabletek doustnie co 4 godziny po posiłkach. Nie należy stosować dawki " +
                        "większej niż 6 tabletek na dobę (maksymalna dawka dobowa 1200 mg w dawkach podzielonych).\n" +
                        "Leku nie należy stosować u dzieci w wieku poniżej 6 lat.\n" +
                        "Nie należy zwiększać zalecanej dawki.\n" +
                        "W przypadku wrażenia, że działanie leku jest za mocne lub za słabe, należy zwrócić się do lekarza.\n" +
                        "Lek przeznaczony jest do krótkotrwałego stosowania. Jeżeli objawy utrzymują się lub nasilają lub jeśli " +
                        "wystąpią nowe objawy, należy skontaktować się z lekarzem.\n" +
                        "Nie wolno przyjmować leku przez okres ponad 3 dni bez konsultacji z lekarzem.\n" +
                        "Zastosowanie większej niż zalecana dawki leku IBUPROM\n" +
                        "Jeśli pacjent zastosował większą niż zalecana dawkę leku IBUPROM lub jeśli dziecko przypadkowo " +
                        "przyjęło lek, należy zawsze zwrócić się do lekarza lub zgłosić do najbliższego szpitala, aby uzyskać " +
                        "opinię o możliwym zagrożeniu dla zdrowia i poradę na temat działań, jakie należy w takim przypadku " +
                        "podjąć.\n" +
                        "U większości pacjentów objawy mogą obejmować nudności, bóle żołądka, biegunkę, wymioty (mogą " +
                        "występować ślady krwi). Mogą też wystąpić bóle głowy, dzwonienie w uszach, dezorientacja " +
                        "i oczopląs. Po przyjęciu dużej dawki występowała senność, ból w klatce piersiowej, kołatanie serca, " +
                        "utrata przytomności, drgawki (głównie u dzieci), osłabienie i zawroty głowy, krew w moczu, uczucie " +
                        "zimna i problemy z oddychaniem. Podczas ciężkich zatruć może wystąpić kwasica metaboliczna, " +
                        "a czas protrombinowy (INR) może być zwiększony. Mogą wystąpić: ostra niewydolność nerek lub " +
                        "uszkodzenie wątroby. U pacjentów z astmą może wystąpić zaostrzenie objawów astmy.\n" +
                        "Nie ma swoistego antidotum. Lekarz zastosuje leczenie objawowe i podtrzymujące.\n" +
                        "Pominięcie zastosowania leku IBUPROM\n" +
                        "Nie należy stosować dawki podwójnej w celu uzupełnienia pominiętej dawki.",
                ingredients:"200 mg ibuprofenu",
                sideEffects:"Jak każdy lek, lek ten może powodować działania niepożądane, chociaż nie u każdego one występują.\n" +
                        "Działania niepożądane występujące niezbyt często (u 1 do 10 na 1000 pacjentów stosujących lek):\n" +
                        "− ból głowy, niestrawność, ból brzucha, nudności, pokrzywka, świąd.\n" +
                        "Działania niepożądane występujące rzadko (u 1 do 10 na 10 000 pacjentów stosujących lek):\n" +
                        "− biegunka, wzdęcia, zaparcia, wymioty, zapalenie błony śluzowej żołądka, zawroty głowy, " +
                        "bezsenność, pobudzenie, drażliwość i uczucie zmęczenia,\n" +
                        "− obrzęki wynikające z zaburzeń nerek i dróg moczowych.\n" +
                        "Działania niepożądane występujące bardzo rzadko (rzadziej niż u 1 na 10 000 pacjentów " +
                        "stosujących lek):\n" +
                        "− smoliste stolce, krwiste wymioty, wrzodziejące zapalenie błony śluzowej jamy ustnej, zaostrzenie " +
                        "zapalenia okrężnicy i choroby Crohna,\n" +
                        "− choroba wrzodowa żołądka i (lub) dwunastnicy, krwawienie z przewodu pokarmowego " +
                        "i perforacja, czasem ze skutkiem śmiertelnym, szczególnie u osób w podeszłym wieku,\n" +
                        "− w pojedynczych przypadkach opisywano: depresję, reakcje psychotyczne i szumy uszne, jałowe " +
                        "zapalenie opon mózgowo-rdzeniowych,\n" +
                        "− zmniejszenie ilości wydalanego moczu, obrzęk, ostra niewydolność nerek, martwica brodawek " +
                        "nerkowych, zwiększenie stężenia sodu w surowicy (retencja sodu),\n" +
                        "− zaburzenia czynności wątroby, szczególnie podczas długotrwałego stosowania,\n" +
                        "− nieprawidłowości morfologii krwi (anemia - niedokrwistość, leukopenia - zmniejszenie liczby " +
                        "leukocytów, trombocytopenia - zmniejszenie liczby płytek krwi, pancytopenia - zaburzenie " +
                        "hematologiczne polegające na niedoborze wszystkich prawidłowych elementów morfotycznych " +
                        "krwi: erytrocytów i trombocytów, agranulocytoza - obniżenie liczby granulocytów). Pierwszymi " +
                        "objawami są: gorączka, ból gardła, powierzchowne owrzodzenia błony śluzowej jamy ustnej, " +
                        "objawy grypopodobne, zmęczenie, skaza krwotoczna (np. siniaki, wybroczyny, plamica, " +
                        "krwawienie z nosa),\n" +
                        "− rumień wielopostaciowy, zespół Stevensa-Johnsona, toksyczne martwicze oddzielanie się " +
                        "naskórka,\n" +
                        "− ciężkie reakcje nadwrażliwości takie jak: obrzęk twarzy, języka i krtani, duszność, tachykardia - " +
                        "zaburzenia rytmu serca, hipotensja - nagłe zmniejszenie ciśnienia tętniczego krwi, wstrząs; " +
                        "zaostrzenie astmy i skurcz oskrzeli,\n" +
                        "− u pacjentów z istniejącymi chorobami autoimmunologicznymi (toczeń rumieniowaty układowy, " +
                        "mieszana choroba tkanki łącznej) podczas leczenia ibuprofenem odnotowano pojedyncze " +
                        "przypadki objawów występujących w aseptycznym zapaleniu opon mózgowo-rdzeniowych takie " +
                        "jak sztywność karku, ból głowy, nudności, wymioty, gorączka, dezorientacja.\n" +
                        "Mogą wystąpić ciężkie reakcje skórne znane jako zespół DRESS. Do objawów zespołu DRESS " +
                        "należą: wysypka skórna, gorączka, obrzęk węzłów chłonnych oraz zwiększenie liczby eozynofilów " +
                        "(rodzaj białych krwinek).\n" +
                        "W związku z leczeniem NLPZ zgłaszano występowanie obrzęków, nadciśnienia i niewydolności serca.\n" +
                        "Przyjmowanie takich leków, jak IBUPROM może być związane z niewielkim zwiększeniem ryzyka " +
                        "ataku serca (zawał serca) lub udaru.\n" +
                        "W przypadku doraźnego stosowania leku działania niepożądane występują rzadko.\n" +
                        "U pacjentów w podeszłym wieku istnieje zwiększone ryzyko wystąpienia działań niepożądanych " +
                        "związanych ze stosowaniem ibuprofenu niż u pacjentów młodszych. Częstość występowania oraz " +
                        "nasilenie działań niepożądanych można zmniejszyć stosując najmniejszą dawkę terapeutyczną przez " +
                        "możliwie najkrótszy okres.",
                contraindications:"Kiedy nie stosować leku IBUPROM:\n" +
                        "− jeśli pacjent ma uczulenie na ibuprofen lub którykolwiek z pozostałych składników tego leku " +
                        "(wymienione w punkcie 6) oraz na inne niesteroidowe leki przeciwzapalne (NLPZ),\n" +
                        "− jeśli po przyjęciu kwasu acetylosalicylowego lub innych niesteroidowych leków przeciwzapalnych " +
                        "występowały kiedykolwiek w przeszłości objawy alergii w postaci kataru, pokrzywki lub astmy " +
                        "oskrzelowej,\n" +
                        "− u pacjentów z chorobą wrzodową żołądka i (lub) dwunastnicy czynną lub przebytą, perforacją lub " +
                        "krwawieniem, również z tymi występującymi po zastosowaniu NLPZ,\n" +
                        "− u pacjentów z ciężką niewydolnością wątroby, ciężką niewydolnością nerek lub ciężką " +
                        "niewydolnością serca,\n" +
                        "− u pacjentów przyjmujących jednocześnie inne niesteroidowe leki przeciwzapalne, w tym inhibitory " +
                        "COX-2 (zwiększone ryzyko wystąpienia działań niepożądanych),\n" +
                        "− w III trymestrze ciąży,\n" +
                        "− w przypadku skazy krwotocznej.\n" +
                        "Ostrzeżenia i środki ostrożności\n" +
                        "Przed rozpoczęciem stosowania leku Ibuprom należy omówić to z lekarzem lub farmaceutą.\n" +
                        "Należy zachować szczególną ostrożność stosując lek:\n" +
                        "− jeśli u pacjenta stwierdzono toczeń rumieniowaty oraz mieszaną chorobę tkanki łącznej,\n" +
                        "− jeśli występują objawy reakcji alergicznych po przyjęciu kwasu acetylosalicylowego,\n" +
                        "− jeśli u pacjenta stwierdzono choroby układu pokarmowego oraz przewlekłe zapalne choroby jelit " +
                        "(wrzodziejące zapalenie jelita grubego, chorobę Leśniowskiego i Crohna),\n" +
                        "− jeśli u pacjenta stwierdzono nadciśnienie tętnicze i (lub) zaburzenie czynności serca,\n" +
                        "− jeśli u pacjenta stwierdzono zaburzenia czynności nerek,\n" +
                        "− jeśli u pacjenta stwierdzono zaburzenia czynności wątroby,\n" +
                        "− jeśli u pacjenta stwierdzono zaburzenia krzepnięcia krwi,\n" +
                        "− jeśli u pacjenta stwierdzono czynną lub przebytą astmę oskrzelową lub objawy reakcji alergicznych " +
                        "w przeszłości; po zażyciu leku może wystąpić skurcz oskrzeli,\n" +
                        "− jeśli pacjent przyjmuje inne leki (szczególnie leki przeciwzakrzepowe, moczopędne, " +
                        "nasercowe, kortykosteroidy).\n" +
                        "Istnieje ryzyko wystąpienia krwotoku z przewodu pokarmowego, owrzodzenia lub perforacji, które " +
                        "może być śmiertelne i które niekoniecznie musi być poprzedzone objawami ostrzegawczymi lub może " +
                        "wystąpić u pacjentów, u których takie objawy ostrzegawcze występowały. W razie wystąpienia " +
                        "krwotoku z przewodu pokarmowego czy owrzodzenia, należy natychmiast odstawić lek. Pacjenci z " +
                        "chorobami przewodu pokarmowego w wywiadzie, szczególnie osoby w wieku podeszłym, powinni " +
                        "poinformować lekarza o wszelkich nietypowych objawach dotyczących układu pokarmowego " +
                        "(szczególnie o krwawieniu), zwłaszcza w początkowym okresie terapii.\n" +
                        "Jednoczesne, długotrwałe stosowanie różnych leków przeciwbólowych może prowadzić do " +
                        "uszkodzenia nerek z ryzykiem niewydolności nerek (nefropatia postanalgetyczna).\n" +
                        "Stosowanie leku przez pacjentów odwodnionych (dzieci i młodzież) zwiększa ryzyko zaburzenia " +
                        "czynności nerek.\n" +
                        "Przyjmowanie leków przeciwzapalnych/przeciwbólowych, takich jak ibuprofen, może wiązać się z " +
                        "niewielkim wzrostem ryzyka zawału serca lub udaru, w szczególności gdy są stosowane w dużych " +
                        "dawkach. Nie należy przekraczać zalecanej dawki i czasu trwania leczenia.\n" +
                        "Przed zastosowaniem leku Ibuprom pacjent powinien omówić leczenie z lekarzem lub farmaceutą, " +
                        "jeśli:\n" +
                        "− u pacjenta występują choroby serca, takie jak niewydolność serca, dławica piersiowa (ból w klatce " +
                        "piersiowej), pacjent miał atak serca, operację pomostowania, występuje u pacjenta choroba tętnic " +
                        "obwodowych (słabe krążenie krwi w nogach z powodu zwężenia lub zablokowania tętnic) lub jeśli " +
                        "pacjent przeszedł jakikolwiek udar (w tym mini-udar lub przemijający atak niedokrwienny – TIA),\n" +
                        "− pacjent choruje na nadciśnienie tętnicze, cukrzycę, występuje u niego zwiększone stężenie " +
                        "cholesterolu, w rodzinie pacjenta występowała choroba serca lub udar, lub jeśli pacjent pali tytoń.\n" +
                        "Nie należy stosować większych dawek i dłuższego czasu leczenia niż zalecane. Jeśli objawy się " +
                        "utrzymują, nasilają lub nie ustąpią po 3 dniach lub, jeśli wystąpią nowe objawy, należy skontaktować " +
                        "się z lekarzem.\n" +
                        "Ciężkie reakcje skórne, niektóre z nich śmiertelne, włączając zapalenie skóry złuszczające, zespół " +
                        "Stevensa-Johnsona i toksyczne martwicze oddzielanie się naskórka były bardzo rzadko raportowane " +
                        "w związku ze stosowaniem leków z grupy NLPZ. Największe ryzyko wystąpienia tych ciężkich " +
                        "reakcji występuje na początku terapii, w większości przypadków w pierwszym miesiącu stosowania " +
                        "leku. Należy zaprzestać stosowania leku po wystąpieniu pierwszych objawów: wysypka skórna, " +
                        "uszkodzenia błony śluzowej lub inne objawy nadwrażliwości.\n" +
                        "Lek ten należy do grupy leków (niesteroidowe leki przeciwzapalne), które mogą niekorzystnie " +
                        "wpływać na płodność u kobiet. Jest to działanie przemijające i ustępuje po zakończeniu terapii.\n" +
                        "W przypadku trudności w zajściu w ciążę, należy skontaktować się z lekarzem przed przyjęciem " +
                        "ibuprofenu.\n" +
                        "Należy skonsultować się z lekarzem, nawet jeśli powyższe ostrzeżenia dotyczą sytuacji występujących " +
                        "w przeszłości.\n" +
                        "Dzieci\n" +
                        "Lek nie jest wskazany dla dzieci w wieku poniżej 6 lat.\n" +
                        "Lek IBUPROM a inne leki\n" +
                        "Należy powiedzieć lekarzowi lub farmaceucie o wszystkich lekach przyjmowanych obecnie lub " +
                        "ostatnio a także o lekach, które pacjent planuje stosować.\n" +
                        "Nie należy przyjmować leku Ibuprom jednocześnie z innymi lekami z grupy niesteroidowych leków " +
                        "przeciwzapalnych (w tym inhibitorów cyklooksygenazy 2, takich jak celekoksyb lub etorikoksyb), " +
                        "innymi lekami przeciwbólowymi albo kwasem acetylosalicylowym (w dawkach przeciwbólowych).\n" +
                        "Jednoczesne stosowanie leku Ibuprom z tymi lekami zwiększa ryzyko wystąpienia działań " +
                        "niepożądanych.\n" +
                        "Lek Ibuprom może wpływać na działanie innych leków lub też inne leki mogą wpływać na działanie " +
                        "leku Ibuprom, na przykład:\n" +
                        "− leki o działaniu przeciwzakrzepowym (tj. rozrzedzające krew/zapobiegające powstawaniu " +
                        "zakrzepów, takie jak aspiryna/kwas acetylosalicylowy, warfaryna, tyklopidyna)\n" +
                        "− leki obniżające ciśnienie krwi (inhibitory ACE, takie jak kaptopril, leki beta-adrenolityczne, takie " +
                        "jak leki zawierające atenolol, leki będące antagonistami receptora angiotensyny II, takie jak " +
                        "losartan)\n" +
                        "− leki moczopędne\n" +
                        "− kortykosteroidy (takie jak np.: prednizolon lub deksametazon)\n" +
                        "− metotreksat (lek przeciwnowotworowy)\n" +
                        "− lit (lek przeciwdepresyjny)\n" +
                        "− zydowudyna (lek przeciwwirusowy).\n" +
                        "Także niektóre inne leki mogą ulegać wpływowi lub mieć wpływ na leczenie lekiem Ibuprom.\n" +
                        "Dlatego też przed zastosowaniem leku Ibuprom z innymi lekami zawsze należy poradzić się lekarza " +
                        "lub farmaceuty.\n" +
                        "IBUPROM z jedzeniem i piciem\n" +
                        "Zaleca się przyjmowanie leku po posiłku.\n" +
                        "Ciąża i karmienie piersią\n" +
                        "W ciąży i w okresie karmienia piersią lub gdy istnieje podejrzenie, że kobieta jest w ciąży, lub gdy " +
                        "planuje ciążę, przed zastosowaniem tego leku należy poradzić się lekarza lub farmaceuty.\n" +
                        "W ciągu pierwszych 6 miesięcy ciąży nie zaleca się stosowania leku. Nie należy stosować leku u " +
                        "kobiet w III trymestrze ciąży, ponieważ mogłoby to zwiększać ryzyko wystąpienia powikłań u matki i " +
                        "dziecka w okresie okołoporodowym.\n" +
                        "Ibuprofen przenika do mleka kobiet karmiących piersią w bardzo małej ilości i nie są znane przypadki " +
                        "wystąpienia działań niepożądanych u niemowląt karmionych piersią. Nie ma konieczności " +
                        "przerywania karmienia piersią w przypadku krótkotrwałego stosowania ibuprofenu w małych " +
                        "dawkach.\n" +
                        "Prowadzenie pojazdów i obsługiwanie maszyn\n" +
                        "Brak danych dotyczących wpływu leku na zdolność prowadzenia pojazdów mechanicznych, obsługę " +
                        "urządzeń mechanicznych w ruchu i sprawność psychofizyczną podczas stosowania leku w zalecanych " +
                        "dawkach i przez zalecany okres.\n" +
                        "Ważne informacje o niektórych składnikach leku\n" +
                        "Jeżeli stwierdzono wcześniej u pacjenta nietolerancję niektórych cukrów, pacjent powinien " +
                        "skontaktować się z lekarzem przed przyjęciem leku"
            )
        
        }
    }
}
