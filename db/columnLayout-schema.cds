using {cuid} from '@sap/cds/common';


entity EntityA : cuid {
    description : String;
    subEntityA1 : Composition of many EntityA1
                      on subEntityA1.entityA = $self;
}

entity EntityA1 : cuid {
    entityA       : Association to EntityA;
    description   : String;
    subEntityA1_2 : Composition of many EntityA1_2
                        on subEntityA1_2.entityA1 = $self;
}

entity EntityA1_2 : cuid {
    entityA1      : Association to EntityA1;
    description   : String;
    subEntityA1_3 : Composition of many EntityA1_3
                        on subEntityA1_3.entityA1_2 = $self;
}

entity EntityA1_3 : cuid {
    entityA1_2  : Association to EntityA1_2;
    description : String;
}
