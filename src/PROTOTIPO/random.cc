#include <iostream>
#include <vector>
#include <map>
#include <stdio.h>
#include <stdlib.h>
#include <time.h>   
using namespace std;

int AUTOR_IDS = 100;

vector<string> titles = {"Zombie Predator","Hunting Chronicles","Cloud Tales","Light Nightmare","Emergency Age","Bio Syndrome","Phantom Realm","Celestial Panic","Dragon Alert","Arctic Betrayal","Strife of Lies","Rise of Democracy","Incinerate of Law","Strife of Immunity","Clash of Transgression","Battle of War","Infect of Immunity","Shoot of Deception","Battle of Truth","Chase of Retribution","Decade and World","Embers and Cult","Crime and Force","Maze and Remorse","Year and Command","Ghosts and Year","Land and Nature","Day and Dimension","Invasion and House","Century and Battlefield","Gangs and Reckoning","Destruction and Infinity","Mayhem and Nightmares","Fortune and Heroes","Mortals and Zombies","Disorder and Victory","Despair and Freedom","Heroes and Mayhem","Kings and Doubt","Hope and Awe","Bordershot","Airbot","Brutalreign","Fusionland","Blasterblast","Blocknite","Alterforce","Crosschase","Evercore","Fuselight","Private Breed","Honor Barrage","Infernal Inquisition","Carnivore Castle","Bullet Assault","Crimson Edge","Forbidden Omen","Hunting Impact","Phantom Betrayal","Cloud Survival","Infect of Autonomy","Incinerate of Infringement","Breakout of War","Defeat of Immunity","Crash of Conflict","Guard of Rule","Vengeance of Regulations","Guard of Autonomy","Fight of Campaigns","Fortify of Transgression","Graves and Weapons","Descent and Words","Words and Fight","Thunder and Voyage","Dream and Century","Shadow and Descent","Sons and Graves","Danger and Cult","Sword and Science","Defense and Codename","Liberty and Fortune","Agony and Harmony","Fire and Logic","Hell and Existence","Gangs and Infinity","Reckoning and Infinity","Action and Panic","Oracles and Angels","Evil and Angels","Harmony and Misery","Grimchase","Cloudstorm","Bordersky","Dynadude","Fireshock","Crystalrage","Everdoom","Endorwatch","Exrush","Antipoint","Carnivore Theft","Dark Crusade","Werewolf Age","Obscure Master","Immortal Call","Secret Tales","Forbidden Escape","Ace Master","Bionic Armada","Twilight Elements","Blast of Reason","Blast of Rivalry","Revolt of Friction","Struggle of Treachery","Assault of Violation","Destroy of Reason","Rise of Hypocrisy","Strife of Opportunity","Crash of Violation","Wipe Out of Order","Graves and Sons","Glitch and City","Echoes and Weapons","Command and Order","House and Battle","Embers and Sons","Knights and Danger","Century and Hazard","Quest and Force","Battlefield and Doom","Mayhem and Vampires","Dragons and Truth","Legends and Death","Dread and Androids","Victory and Disorder","Truth and Dust","Solitude and Immortals","Evolution and Nothing","Evolution and Logic","Order and Vampires","Blockblast","Bioreign","Masterlust","Clustercraze","Airnite","Deadsite","Demonnite","Archewind","Hellwatch","Bladeflight","Silver Elements","Zombie Tombs","Death Invasion","Armageddon Omen","Werewolf Vendetta","Atomic Panic","Shadow Experiment","Red State","Human Tombs","Secret Universe","Breakout of Order","Chase of Betrayal","Destroy of Salvation","Resist of Immunity","Besiege of Vengeance","Plan of Prosecution","Rule of Autonomy","Attack of Wrath","Strike of Combat","Counter of Trickery","Invasion and Revenge","Science and Embers","Born and Galaxy","Death and Treasures","Law and Game","Revenge and Rush","Sons and Chase","Born and Revenge","Paradise and Age","Quest and Genesis","Prototypes and Evil","Misery and Lies","Evolution and Death","Disarray and Dragons","Riddles and Honor","Infinity and Resistance","Valor and Disarray","Salvation and Immortals","Heroes and Androids","Nature and Pain","Excry","Bordersky","Evohunt","Farback","Fuselust","Deltashot","Bulletrush","Alterrain","Bulletblast","Brutalshot","Cosmic Freedom","Bullet Impact","Ghost Possession","Bio Calamity","Hallowed Kingdom","Atomic Alert","Arctic Cell","Hunting Emergency","Tactical Money","Infernal Rage","Crush of Strife","Rescue of Duplicity","Bombard of Power","Crush of Rule","Vengeance of Rescue","Arm of Power","Breakout of Liberty","Resist of Regulations","Demolish of Transgression","Rise of Resitution","Streets and Decade","Garden and Memories","Garden and Gateway","Rush and Nature","Matter and Science","Chamber and Galaxy","Nature and Thunder","Fight and Edge","City and Ghosts","Fortress and Land","Nature and Havoc","Time and Victory","Heroes and Evolution","Ambition and Revolution","Earth and Innocents","Predators and Pain","Disorder and Domination","Fire and Reckoning","Lies and Doubt","Honor and Dragons","Madzone","Dreaddude","Masterzone","Bladewind","Fusionspace","Mastermania","Antilight","Dreadstar","Clusterback","Warlife","Forgotten Games","Titan Haven","Tactical Cavern","Android Attack","Forgotten Legacy","Bullet Armada","Red Breed","Killing Escape","Parasite Edge","Special Project","Charge of Resitution","Strategize of Strife","Destroy of Campaigns","Conquer of Stipulation","Fortify of Liberty","Strife of Assault","Pillage of Trickery","Retaliate of Duplicity","Resist of Assault","Command of Assault","Law and Journey","Whispers and Weapons","Extinction and Home","Defense and Codename","Apocalypse and Sons","Order and Hunt","Weapons and Life","Echoes and Edge","Thunder and Order","Retribution and Defense","Disorder and Faith","Predators and Sacrifice","Resistance and Freedom","Rage and Terror","Mayhem and Souls","Zombies and Infinity","Hell and Awe","Insanity and Lies","Evolution and Skulls","Valor and Victory","Datawatch","Castleback","Warcell","Ultraborne","Dreampoint","Datazone","Firecraft","Emberwind","Endorbot","Deadborne","Just Frontier","Special Prototype","Covert Operation","Armageddon Agent","Alpha Rising","Phantom Crusade","Twilight Conquest","Infinite Apocalypse","Warrior Road","Light Age","Raid of Trickery","Plan of Lies","Struggle of Combat","Strategize of Opportunity","Decimate of Regulations","Attack of Freedom","Divide of Vengeance","Attack of Autonomy","Infect of Redemption","Rule of Violation","Destruction and Power","Fortress and Land","Gateway and Cult","Contract and Spells","Murder and Dimension","Memories and Codename","Destruction and Symphony","Extinction and Year","Hunt and Codename","Guns and Garden","Salvation and War","Mutants and Dread","Prototypes and Disarray","Warfare and Disarray","Ambition and Oracles","Vampires and Immortals","Innocents and Souls","Insanity and Truth","Armor and Valor","Nightmares and Blood","Astroheart","Datarush","Evercraze","Fusionfight","Crossforce","Cyberfire","Dreadspace","Battlerush","Blocklust","Deltawind","Solitary Curse","Cannibal Resurrection","Enemy Hazard","Blood Heart","Just Collapse","Blood Invasion","Tactical Premonition","Death Aftermath","Saint Vendetta","Cold Syndrome","Besiege of Conflict","Arm of Campaigns","Strife of Democracy","Attack of Freedom","Run of Heroics","Raid of Heroes","Crash of Law","Demolish of Resitution","Hunt of Campaigns","Counter of Prosecution","Fortress and Extinction","Paradise and Maze","City and Battlefield","Murder and Force","Spells and Renegade","Empire and Raid","Crime and Voyage","Land and Embers","Force and Streets","Fortress and Force","Disorder and Gangs","Frenzy and Existence","Infinity and Nature","Havoc and Conflict","Misery and Fire","Explosions and Androids","Zombies and Time","Vampires and Panic","Logic and Agony","Awe and Nothing","Ultradude","Chromaplan","Clusterworks","Grimland","Alterside","Bloodbot","Crossrage","Blasterlife","Endorwind","Cybernite"};
vector<string> autores = {"Rhoda Christensen","Hung Wilcox","Rigoberto Mccall","Saundra Preston","Adela Mcneil","Owen Chung","Lacey Bradley","Ora Delgado","Brandy Stanton","Alvin Diaz","Dana Hobbs","Cecilia Macias","Pedro Weeks","Tanner Benitez","Donny Hardin","Deena Knight","Hiram Savage","Matilda Pollard","Araceli Buckley","Ila Melendez","Geraldo Faulkner","Eldridge Allison","Frankie Walsh","Horacio Chan","Brittany Bauer","Shon Poole","Tabitha Mack","Manuel Munoz","Hollie West","Carol Callahan","Edmundo Cameron","Amy Villa","Jeanie Graham","Antione Bell","Von Lynn","Heath Oliver","Shaun Rubio","Amos Deleon","Sid Massey","Nicholas Huerta","Carson Rodriguez","Rodrigo Holland","Terry Avery","Katharine Zavala","Isabella Dudley","Freda Estrada","Georgette Henson","Lucinda Kirk","Wilson Ferrell","Derek Leonard","Meagan Gates","Damien Curry","Vonda Parks","Ines Christensen","Kieth Thompson","Hattie Franklin","Enoch Schultz","Maribel Jarvis","Guy Mclean","Maxine Crawford","Geraldine Mcpherson","Nolan Abbott","Warren Saunders","Joyce Novak","Consuelo Odom","Russel Flores","Tracy Hodge","Hugh Mosley","Geoffrey Choi","Jonah Nichols","Buster Bowers","Reuben Bradshaw","Sarah Livingston","Natalia Owens","Timothy Conrad","Marissa Wall","Samantha Steele","Abram Coffey","Kellie Lane","Martina Walls","Quinton Hutchinson","Lessie Lloyd","Barry Lam","Britney Woods","Emily Barr","Vickie Mcguire","Clifton Rhodes","Deloris Yates","Brandi Clark","Felicia Gay","Shelly Perkins","Liza Houston","Taylor Underwood","Janine Huffman","Joni Huff","Len Bush","Edmundo Beard","Marcos Spencer","Lewis Welch","Beulah Khan","Ernesto Howell","Demarcus Wang","Suzette Douglas","Brant Miranda","Tabitha Hopkins","Horace Flowers","Clint Blackwell","Krista Harrell","Michele Brennan","Aaron Richardson","Luann Macdonald","Kirk Ewing","Huey Gamble","Chad Pennington","Truman Dominguez","Fran Kaiser","Aisha Avila","Kennith Eaton","Trinidad Kemp","Ilene Walter","Kelley Mosley","Anita Harper","Antoinette Wright","Roberto Benjamin","Mac Wall","Lola Vincent","Shannon Ward","Victoria Chan","Dino Armstrong","Antonia Marks","Buford Sanchez","Millard Cameron","Nigel Berry","Fidel Church","Marcelo Wilcox","Joshua Burns","Mari Hays","Faith Randall","Earl Griffin","Brandy Bolton","Randi Herring","Cleo Wood","Miranda Short","Bryan Rhodes","Elvia Clark","Noemi Jarvis","Loren Rice","Katie Roberson","Earline Ortiz","Xavier Owen"};
vector<string> generos = {"Accion","Aventura","CienciaFiccion","Comedia","Drama","Fantasia","Misterio","Romance","Sobrenatural","Suspense","Terror"};
vector<string> temas = {"Crimen_organizado","Espacial","Medieval","Militar","Mitologia","Oeste","Pirata","Policiaco","Psicologico","Samurai","Superheroes","Supervivencia","Urbano","Vampiros","Viajes_en_el_tiempo","Vikingos"};
vector<string> dificultad = {"Facil","Dificil","Intermedia"};
vector<string> demografia = {"Adulta_masculina", "Adulta_femenina", "Juvenil_masculina", "Juvenil_femenina", "Infantil"};
vector<string> popularidad = {"Nada_popular", "Conocido", "BestSeller"};
vector<string> tamano = {"Grande", "Pequeno"};
map<int,vector<int>> autorBooks;

/*
    ([autor0] of Autor
         (haEscrito  [libro0])
         (nombre  "Nicolas Longueira")
    )

    ([libro0] of NovelaFiccion
         (tieneCaracteristica  [autor0] [Adulta_masculina] [Aventura] [Dificil] [Fantasia] [Viajes_en_el_tiempo])
         (titulo  "Las desgracias del elfo adulto")
    )
*/

void newAuthor(int iAuthor) {
    map<int,vector<int>>::iterator it;
    it = autorBooks.find(iAuthor);
    if (it == autorBooks.end()) return;

    cout << "    ([autor" << iAuthor << "] of Autor" << endl;
    cout << "        (haEscrito  ";
    
    int books = (*it).second.size();

    for(int i=0; i < books; ++i) {
        cout << "[libro" << (*it).second[i] << "] ";
    }

    cout << ")" << endl;

    cout << "        (nombre  " << '"' << autores[iAuthor] << '"' << ")" << endl << "    )" << endl <<  endl;
}

void newBook(int iBook) {

    int aut = rand() % AUTOR_IDS;
    int dem = rand() % demografia.size();
    int gen1 = rand() % generos.size();
    int gen2 = rand() % generos.size();
    while (gen1 == gen2) gen2 = rand() % generos.size();
    int tem1 = rand() % temas.size();
    int tem2 = rand() % temas.size();
    while (tem1 == tem2) tem2 = rand() % generos.size();
    int dif = rand() % dificultad.size();
    int popu = rand() % popularidad.size();
    int tam = rand() % tamano.size();
    int val = rand() % 6;

    map<int,vector<int>>::iterator it;
    it = autorBooks.find(aut);
    if (it == autorBooks.end()) 
        autorBooks.insert(pair<int,vector<int>>(aut, vector<int>(1, iBook)));
    else 
        (*it).second.push_back(iBook);


    cout << "    ([libro" << iBook << "] of NovelaFiccion" << endl;
    cout << "        (tieneCaracteristica  " << "[autor"<< aut << "] " << "[" << demografia[dem] << "] ";
    cout << "[" << generos[gen1] << "] " << "["<< generos[gen2] << "] " << "[" << dificultad[dif] << "] "; 
    cout << "[" << temas[tem1] << "] " << "[" << temas[tem2] << "] " << "[" << popularidad[popu] << "] ";
    cout << "[" << tamano[tam] << "] ";
    cout << ")"<< endl;
    cout << "        (titulo  "<< '"' << titles[iBook] << '"' << ")" <<  endl;
    cout << "        (valoracion " << val << ")" << endl;
    cout << "    )" << endl <<  endl;

}


int main() {

    srand (time(NULL));

    for(int i=0; i < titles.size(); ++i) 
        newBook(i);

    //map<int,vector<int>>::iterator it = autorBooks.begin();
    //while (it != autorBooks.end()) {
    //    cout << "Autor" << (*it).first << " ";
    //    for(int i=0; i < (*it).second.size() ; ++i) cout << (*it).second[i] << " ";
    //    cout << endl;
    //    ++it;
    //}
    
    for(int i=0; i < AUTOR_IDS; ++i) 
        newAuthor(i);

}
