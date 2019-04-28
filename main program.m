%TOLONG DIPERHATIKAN : Kode program dibawah tidak akan berjalan jika di-run
%dengan versi matlab dibawah/lebih usang dari versi R2018a

%import data train dan data test
dataTrain = readtable('TrainsetTugas1ML.xlsx');
dataTest = readtable('TestsetTugas1ML.xlsx');

%inisialisasi variabel yang akan dibutuhkan
i = 1;
jumLebih = 0;
jumKurang = 0;

jumYoungL = 0;
jumYoungK = 0;
jumAdultL = 0;
jumAdultK = 0;
jumOldL = 0;
jumOldK = 0;

jumPrivL = 0;
jumPrivK = 0;
jumLocL = 0;
jumLocK = 0;
jumSelL = 0;
jumSelK = 0;

jumBachL = 0;
jumBachK = 0;
jumHsgL = 0;
jumHsgK = 0;
jumScolL = 0;
jumScolK = 0;

jumMarriedL = 0;
jumMarriedK = 0;
jumNmarriedL = 0;
jumNmarriedK = 0;
jumDivL = 0;
jumDivK = 0;

jumProfsL = 0;
jumProfsK = 0;
jumExecmL = 0;
jumExecmK = 0;
jumCraftL = 0;
jumCraftK = 0;

jumHusbandL = 0;
jumHusbandK = 0;
jumNotinfL = 0;
jumNotinfK = 0;
jumOwncL = 0;
jumOwncK = 0;

jumNormalL = 0;
jumNormalK = 0;
jumLowL = 0;
jumLowK = 0;
jumManyL = 0;
jumManyK = 0;

%perulangan untuk data train
while(i<161)
    % mencari total/jumlah masing-masing income
    if( table2array(dataTrain(i,9)) == ">50K" )
        jumLebih = jumLebih + 1;
    else
        jumKurang = jumKurang + 1;
    end
    
    % menghitung banyaknya kategori-kategori dalam age
    if( table2array(dataTrain(i,2)) == "young" )
        if( table2array(dataTrain(i,9)) == ">50K" )
            jumYoungL = jumYoungL + 1;
        else
            jumYoungK = jumYoungK + 1;
        end
    elseif( table2array(dataTrain(i,2)) == "adult" )
        if( table2array(dataTrain(i,9)) == ">50K" )
            jumAdultL = jumAdultL + 1;
        else
            jumAdultK = jumAdultK + 1;
        end
    elseif( table2array(dataTrain(i,2)) == "old" )
        if( table2array(dataTrain(i,9)) == ">50K" )
            jumOldL = jumOldL + 1;
        else
            jumOldK = jumOldK + 1;
        end
    end
    
    % menghitung banyaknya kategori-kategori dalam workclass
    if( table2array(dataTrain(i,3)) == "Private" )
        if( table2array(dataTrain(i,9)) == ">50K" )
            jumPrivL = jumPrivL + 1;
        else
            jumPrivK = jumPrivK + 1;
        end
    elseif( table2array(dataTrain(i,3)) == "Local-gov" )
        if( table2array(dataTrain(i,9)) == ">50K" )
            jumLocL = jumLocL + 1;
        else
            jumLocK = jumLocK + 1;
        end
    elseif( table2array(dataTrain(i,3)) == "Self-emp-not-inc" )
        if( table2array(dataTrain(i,9)) == ">50K" )
            jumSelL = jumSelL + 1;
        else
            jumSelK = jumSelK + 1;
        end
    end
    
    % menghitung banyaknya kategori-kategori dalam education
    if( table2array(dataTrain(i,4)) == "Bachelors" )
        if( table2array(dataTrain(i,9)) == ">50K" )
            jumBachL = jumBachL + 1;
        else
            jumBachK = jumBachK + 1;
        end
    elseif( table2array(dataTrain(i,4)) == "HS-grad" )
        if( table2array(dataTrain(i,9)) == ">50K" )
            jumHsgL = jumHsgL + 1;
        else
            jumHsgK = jumHsgK + 1;
        end
    elseif( table2array(dataTrain(i,4)) == "Some-college" )
        if( table2array(dataTrain(i,9)) == ">50K" )
            jumScolL = jumScolL + 1;
        else
            jumScolK = jumScolK + 1;
        end
    end
    
    % menghitung banyaknya kategori-kategori dalam marital status
    if( table2array(dataTrain(i,5)) == "Married-civ-spouse" )
        if( table2array(dataTrain(i,9)) == ">50K" )
            jumMarriedL = jumMarriedL + 1;
        else
            jumMarriedK = jumMarriedK + 1;
        end
    elseif( table2array(dataTrain(i,5)) == "Never-married" )
        if( table2array(dataTrain(i,9)) == ">50K" )
            jumNmarriedL = jumNmarriedL + 1;
        else
            jumNmarriedK = jumNmarriedK + 1;
        end
    elseif( table2array(dataTrain(i,5)) == "Divorced" )
        if( table2array(dataTrain(i,9)) == ">50K" )
            jumDivL = jumDivL + 1;
        else
            jumDivK = jumDivK + 1;
        end
    end
    
    % menghitung banyaknya kategori-kategori dalam dalam occupation
    if( table2array(dataTrain(i,6)) == "Prof-specialty" )
        if( table2array(dataTrain(i,9)) == ">50K" )
            jumProfsL = jumProfsL + 1;
        else
            jumProfsK = jumProfsK + 1;
        end
    elseif( table2array(dataTrain(i,6)) == "Exec-managerial" )
        if( table2array(dataTrain(i,9)) == ">50K" )
            jumExecmL = jumExecmL + 1;
        else
            jumExecmK = jumExecmK + 1;
        end
    elseif( table2array(dataTrain(i,6)) == "Craft-repair" )
        if( table2array(dataTrain(i,9)) == ">50K" )
            jumCraftL = jumCraftL + 1;
        else
            jumCraftK = jumCraftK + 1;
        end
    end
    
    % menghitung banyaknya kategori-kategori dalam Relationship
    if( table2array(dataTrain(i,7)) == "Husband" )
        if( table2array(dataTrain(i,9)) == ">50K" )
            jumHusbandL = jumHusbandL + 1;
        else
            jumHusbandK = jumHusbandK + 1;
        end
    elseif( table2array(dataTrain(i,7)) == "Not-in-family" )
        if( table2array(dataTrain(i,9)) == ">50K" )
            jumNotinfL = jumNotinfL + 1;
        else
            jumNotinfK = jumNotinfK + 1;
        end
    elseif( table2array(dataTrain(i,7)) == "Own-child" )
        if( table2array(dataTrain(i,9)) == ">50K" )
            jumOwncL = jumOwncL + 1;
        else
            jumOwncK = jumOwncK + 1;
        end
    end
    
    % menghitung banyaknya kategori-kategori dalam hours per week
    if( table2array(dataTrain(i,8)) == "normal" )
        if( table2array(dataTrain(i,9)) == ">50K" )
            jumNormalL = jumNormalL + 1;
        else
            jumNormalK = jumNormalK + 1;
        end
    elseif( table2array(dataTrain(i,8)) == "low" )
        if( table2array(dataTrain(i,9)) == ">50K" )
            jumLowL = jumLowL + 1;
        else
            jumLowK = jumLowK + 1;
        end
    elseif( table2array(dataTrain(i,8)) == "many" )
        if( table2array(dataTrain(i,9)) == ">50K" )
            jumManyL = jumManyL + 1;
        else
            jumManyK = jumManyK + 1;
        end
    end
    
    i = i+1;
end

%mencari peluang masing-masing income
peluangLebih = jumLebih/(jumLebih+jumKurang); % peluang >50K
peluangKurang = jumKurang/(jumLebih+jumKurang); % peluang <=50k

i=1;

while(i<41)
    
    % menentukan jumlah peluang dalam atribut age
    if( table2array(dataTest(i,2)) == "young" )
        peluangAgeLebih = jumYoungL/jumLebih;
        peluangAgeKurang = jumYoungK/jumKurang;
    elseif( table2array(dataTest(i,2)) == "adult" )
        peluangAgeLebih = jumAdultL/jumLebih;
        peluangAgeKurang = jumAdultK/jumKurang;
    elseif( table2array(dataTest(i,2)) == "old" )
        peluangAgeLebih = jumOldL/jumLebih;
        peluangAgeKurang = jumOldK/jumKurang;
    end
    
    % menentukan jumlah peluang dalam atribut workclass
    if( table2array(dataTest(i,3)) == "Private" )
        peluangWcLebih = jumPrivL/jumLebih;
        peluangWcKurang = jumPrivK/jumKurang;
    elseif( table2array(dataTest(i,3)) == "Local-gov" )
        peluangWcLebih = jumLocL/jumLebih;
        peluangAgeKurang = jumLocK/jumKurang;
    elseif( table2array(dataTest(i,3)) == "Self-emp-not-inc" )
        peluangWcLebih = jumSelL/jumLebih;
        peluangWcKurang = jumSelK/jumKurang;
    end
    
    % menentukan jumlah peluang dalam atribut education
    if( table2array(dataTest(i,4)) == "Bachelors" )
        peluangEduLebih = jumBachL/jumLebih;
        peluangEduKurang = jumBachK/jumKurang;
    elseif( table2array(dataTest(i,4)) == "HS-grad" )
        peluangEduLebih = jumHsgL/jumLebih;
        peluangEduKurang = jumHsgK/jumKurang;
    elseif( table2array(dataTest(i,4)) == "Some-college" )
        peluangEduLebih = jumScolL/jumLebih;
        peluangEduKurang = jumScolK/jumKurang;
    end
    
    % menentukan jumlah peluang dalam atribut marital-status
    if( table2array(dataTest(i,5)) == "Married-civ-spouse" )
        peluangMaritalLebih = jumMarriedL/jumLebih;
        peluangMaritalKurang = jumMarriedK/jumKurang;
    elseif( table2array(dataTest(i,5)) == "Never-married" )
        peluangMaritalLebih = jumNmarriedL/jumLebih;
        peluangMaritalKurang = jumNmarriedK/jumKurang;
    elseif( table2array(dataTest(i,5)) == "Divorced" )
        peluangMaritalLebih = jumDivL/jumLebih;
        peluangMaritalKurang = jumDivK/jumKurang;
    end
    
    % menentukan jumlah peluang dalam atribut occupation
    if( table2array(dataTest(i,6)) == "Prof-specialty" )
        peluangOccupLebih = jumProfsL/jumLebih;
        peluangOccupKurang = jumProfsK/jumKurang;
    elseif( table2array(dataTest(i,6)) == "Exec-managerial" )
        peluangOccupLebih = jumExecmL/jumLebih;
        peluangOccupKurang = jumExecmK/jumKurang;
    elseif( table2array(dataTest(i,6)) == "Craft-repair" )
        peluangOccupLebih = jumCraftL/jumLebih;
        peluangOccupKurang = jumCraftK/jumKurang;
    end
    
    % menentukan jumlah peluang dalam atribut relationship
    if( table2array(dataTest(i,7)) == "Husband" )
        peluangRelatLebih = jumHusbandL/jumLebih;
        peluangRelatKurang = jumHusbandK/jumKurang;
    elseif( table2array(dataTest(i,7)) == "Not-in-family" )
        peluangRelatLebih = jumNotinfL/jumLebih;
        peluangRelatKurang = jumNotinfK/jumKurang;
    elseif( table2array(dataTest(i,7)) == "Own-child" )
        peluangRelatLebih = jumOwncL/jumLebih;
        peluangRelatKurang = jumOwncK/jumKurang;
    end
    
    % menentukan jumlah peluang dalam atribut hours-per-week
    if( table2array(dataTest(i,8)) == "normal" )
        peluangHpwLebih = jumNormalL/jumLebih;
        peluangHpwKurang = jumNormalK/jumKurang;
    elseif( table2array(dataTest(i,8)) == "low" )
        peluangHpwLebih = jumLowL/jumLebih;
        peluangHpwKurang = jumLowK/jumKurang;
    elseif( table2array(dataTest(i,8)) == "many" )
        peluangHpwLebih = jumManyL/jumLebih;
        peluangHpwKurang = jumManyK/jumKurang;
    end
    % peluangXLebih dan peluangXKurang adalah angka peluang yang sebenarnya
    % dicari
    peluangXLebih = peluangLebih * peluangAgeLebih * peluangWcLebih * peluangEduLebih * peluangMaritalLebih * peluangOccupLebih * peluangRelatLebih * peluangHpwLebih;
    peluangXKurang = peluangKurang * peluangAgeKurang * peluangWcKurang * peluangEduKurang * peluangMaritalKurang * peluangOccupKurang * peluangRelatKurang * peluangHpwKurang;
    
    if(peluangXLebih > peluangXKurang)
        income(i) = ">50K";
    else
        income(i) = "<=50K";
    end
    
    i=i+1;
end
% membuat file excel dari data array income menjadi file xls
Tabel = array2table(income);
writetable(Tabel,'TebakanTugas1ML.xls')