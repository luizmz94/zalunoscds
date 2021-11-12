@AbapCatalog.sqlViewName            : 'ZVALUNOS'
@AbapCatalog.compiler.compareFilter : true
@AbapCatalog.preserveKey            : true
@AccessControl.authorizationCheck   : #CHECK
@EndUserText.label                  : 'Treinamento Fiori'
@OData.publish                      : true
define view ZALUNOS_TREINAMENTO_FIORI as
    select from zaluno {

            @UI.lineItem       : [{
                label    : 'Centro',
                position : 10
            }]
            @UI.selectionField : [{position : 10}]
        key zaluno.plant       as Plant,

            @UI.lineItem       : [{
                label    : 'ID',
                position : 10
            }]
            @UI.selectionField : [{position : 20}]
            @EndUserText.label : 'ID Aluno'
        key zaluno.aluno       as Aluno,

            @UI.lineItem       : [{
                label    : 'Nome',
                position : 10
            }]
            @UI.selectionField : [{position : 30}]
            @EndUserText.label : 'Nome do Aluno'
            zaluno.nome        as Nome,

            @UI.lineItem       : [{
                label    : 'Idade',
                position : 20
            }]
            zaluno.idade       as Idade,

            @UI.lineItem       : [{
                label    : 'Aniversário',
                position : 30
            }]
            zaluno.aniversario as Aniversario,

            @UI.lineItem       : [{
                label    : 'Gênero',
                position : 40
            }]
            zaluno.genero      as Genero,

            @UI.lineItem       : [{
                label    : 'Valor',
                position : 50
            }]
            zaluno.valor       as Valor,

            @UI.lineItem       : [{
                label    : 'Status',
                position : 60
            }]
            zaluno.ativo       as Ativo,

            @UI.lineItem       : [{
                label    : 'Criado em',
                position : 70
            }]
            zaluno.created_at  as CreatedAt,

            @UI.lineItem       : [{
                label    : 'Criado por',
                position : 80
            }]
            zaluno.created_by  as CreatedBy
    }
