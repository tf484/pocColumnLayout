using {EntityA as schemaEntityA} from '../db/columnLayout-schema';

@path: 'service/columnLayout'
service ColumnLayoutService {
    entity EntityA as projection on schemaEntityA;
    annotate EntityA with @odata.draft.enabled;

}
