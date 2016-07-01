.class public final Lcom/sun/xml/stream/XMLDocumentScannerImpl$DTDDriver;
.super Ljava/lang/Object;
.source "XMLDocumentScannerImpl.java"

# interfaces
.implements Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$Driver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/xml/stream/XMLDocumentScannerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "DTDDriver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;


# direct methods
.method protected constructor <init>(Lcom/sun/xml/stream/XMLDocumentScannerImpl;)V
    .locals 4

    .prologue
    .line 993
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDocumentScannerImpl$DTDDriver;
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/xml/stream/XMLDocumentScannerImpl;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatch(Z)Z
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 1032
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDocumentScannerImpl$DTDDriver;
    move/from16 v1, p1

    .local v1, "complete":Z
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    iget-object v9, v9, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fEntityManager:Lcom/sun/xml/stream/XMLEntityManager;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/sun/xml/stream/XMLEntityManager;->setEntityHandler(Lcom/sun/xml/stream/XMLEntityHandler;)V

    .line 1035
    :try_start_0
    new-instance v9, Lorg/apache/xerces/util/XMLResourceIdentifierImpl;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    invoke-direct {v10}, Lorg/apache/xerces/util/XMLResourceIdentifierImpl;-><init>()V

    move-object v3, v9

    .line 1036
    .local v3, "resourceIdentifier":Lorg/apache/xerces/util/XMLResourceIdentifierImpl;
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    iget-object v9, v9, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fDTDScanner:Lorg/apache/xerces/xni/parser/XMLDTDScanner;

    if-nez v9, :cond_0

    .line 1037
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    new-instance v10, Lcom/sun/xml/stream/XMLDTDScannerImpl;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    invoke-direct {v11}, Lcom/sun/xml/stream/XMLDTDScannerImpl;-><init>()V

    iput-object v10, v9, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fDTDScanner:Lorg/apache/xerces/xni/parser/XMLDTDScanner;

    .line 1038
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    iget-object v9, v9, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fPropertyManager:Lcom/sun/xml/stream/PropertyManager;

    if-eqz v9, :cond_0

    .line 1039
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    iget-object v9, v9, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fDTDScanner:Lorg/apache/xerces/xni/parser/XMLDTDScanner;

    check-cast v9, Lcom/sun/xml/stream/XMLDTDScannerImpl;

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/xml/stream/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    iget-object v10, v10, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fPropertyManager:Lcom/sun/xml/stream/PropertyManager;

    invoke-virtual {v9, v10}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->reset(Lcom/sun/xml/stream/PropertyManager;)V

    .line 1043
    :cond_0
    const/4 v9, 0x0

    move v2, v9

    .line 1044
    .local v2, "again":Z
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    iget v9, v9, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fScannerState:I

    packed-switch v9, :pswitch_data_0

    .line 1114
    :pswitch_0
    new-instance v9, Lorg/apache/xerces/xni/XNIException;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    new-instance v11, Ljava/lang/StringBuilder;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "DTDDriver#dispatch: scanner state="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v12, v0

    iget-object v12, v12, Lcom/sun/xml/stream/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    iget v12, v12, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fScannerState:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v12, v0

    iget-object v12, v12, Lcom/sun/xml/stream/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    move-object v13, v0

    iget-object v13, v13, Lcom/sun/xml/stream/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    iget v13, v13, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fScannerState:I

    invoke-virtual {v12, v13}, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->getScannerStateName(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v12, 0x29

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/apache/xerces/xni/XNIException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1121
    .end local v2    # "again":Z
    .end local v3    # "resourceIdentifier":Lorg/apache/xerces/util/XMLResourceIdentifierImpl;
    :catch_0
    move-exception v9

    move-object v2, v9

    .line 1122
    .local v2, "e":Ljava/io/EOFException;
    move-object v9, v2

    :try_start_1
    invoke-virtual {v9}, Ljava/io/EOFException;->printStackTrace()V

    .line 1123
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    const-string v10, "PrematureEOF"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1124
    const/4 v9, 0x0

    move v3, v9

    .line 1130
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    iget-object v9, v9, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fEntityManager:Lcom/sun/xml/stream/XMLEntityManager;

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/xml/stream/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    invoke-virtual {v9, v10}, Lcom/sun/xml/stream/XMLEntityManager;->setEntityHandler(Lcom/sun/xml/stream/XMLEntityHandler;)V

    move v9, v3

    move v0, v9

    .line 1133
    .end local v0    # "this":Lcom/sun/xml/stream/XMLDocumentScannerImpl$DTDDriver;
    .end local v2    # "e":Ljava/io/EOFException;
    :goto_0
    return v0

    .line 1048
    .restart local v0    # "this":Lcom/sun/xml/stream/XMLDocumentScannerImpl$DTDDriver;
    .local v2, "again":Z
    .restart local v3    # "resourceIdentifier":Lorg/apache/xerces/util/XMLResourceIdentifierImpl;
    :pswitch_1
    const/4 v9, 0x1

    move v4, v9

    .line 1050
    .local v4, "completeDTD":Z
    move-object v9, v0

    :try_start_2
    iget-object v9, v9, Lcom/sun/xml/stream/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    iget-object v9, v9, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fDTDScanner:Lorg/apache/xerces/xni/parser/XMLDTDScanner;

    move v10, v4

    move-object v11, v0

    iget-object v11, v11, Lcom/sun/xml/stream/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    iget-boolean v11, v11, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fStandalone:Z

    move-object v12, v0

    iget-object v12, v12, Lcom/sun/xml/stream/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    iget-boolean v12, v12, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fHasExternalDTD:Z

    if-eqz v12, :cond_5

    move-object v12, v0

    iget-object v12, v12, Lcom/sun/xml/stream/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    iget-boolean v12, v12, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fLoadExternalDTD:Z

    if-eqz v12, :cond_5

    const/4 v12, 0x1

    :goto_1
    invoke-interface {v9, v10, v11, v12}, Lorg/apache/xerces/xni/parser/XMLDTDScanner;->scanDTDInternalSubset(ZZZ)Z

    move-result v9

    move v5, v9

    .line 1051
    .local v5, "moreToScan":Z
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    iget-object v9, v9, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v9}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->getCurrentEntity()Lcom/sun/xml/stream/Entity$ScannedEntity;

    move-result-object v9

    move-object v6, v9

    .line 1052
    .local v6, "entity":Lcom/sun/xml/stream/Entity;
    move-object v9, v6

    instance-of v9, v9, Lcom/sun/xml/stream/Entity$ScannedEntity;

    if-eqz v9, :cond_1

    .line 1053
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    move-object v10, v6

    check-cast v10, Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v10, v10, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    iput v10, v9, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fEndPos:I

    .line 1055
    :cond_1
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    const/4 v10, 0x0

    iput-boolean v10, v9, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fReadingDTD:Z

    .line 1056
    move v9, v5

    if-nez v9, :cond_8

    .line 1058
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    iget-object v9, v9, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    const/16 v10, 0x5d

    invoke-virtual {v9, v10}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v9

    if-nez v9, :cond_2

    .line 1059
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    const-string v10, "EXPECTED_SQUARE_BRACKET_TO_CLOSE_INTERNAL_SUBSET"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1062
    :cond_2
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    iget-object v9, v9, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v9}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipSpaces()Z

    move-result v9

    .line 1063
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    iget-object v9, v9, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    const/16 v10, 0x3e

    invoke-virtual {v9, v10}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v9

    if-nez v9, :cond_3

    .line 1064
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    const-string v10, "DoctypedeclUnterminated"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, 0x0

    move-object v14, v0

    iget-object v14, v14, Lcom/sun/xml/stream/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    iget-object v14, v14, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fDoctypeName:Ljava/lang/String;

    aput-object v14, v12, v13

    invoke-virtual {v9, v10, v11}, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1066
    :cond_3
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    iget v10, v10, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fMarkupDepth:I

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    iput v10, v9, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fMarkupDepth:I

    .line 1068
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    iget-boolean v9, v9, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fDisallowDoctype:Z

    if-eqz v9, :cond_6

    .line 1071
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/xml/stream/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    iget-object v10, v10, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fEntityManager:Lcom/sun/xml/stream/XMLEntityManager;

    invoke-virtual {v10}, Lcom/sun/xml/stream/XMLEntityManager;->getEntityStore()Lcom/sun/xml/stream/XMLEntityStorage;

    move-result-object v10

    iput-object v10, v9, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fEntityStore:Lcom/sun/xml/stream/XMLEntityStorage;

    .line 1072
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    iget-object v9, v9, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fEntityStore:Lcom/sun/xml/stream/XMLEntityStorage;

    invoke-virtual {v9}, Lcom/sun/xml/stream/XMLEntityStorage;->reset()V

    .line 1081
    :cond_4
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    invoke-virtual {v9}, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->setEndDTDScanState()V
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1082
    const/4 v9, 0x1

    move v7, v9

    .line 1130
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    iget-object v9, v9, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fEntityManager:Lcom/sun/xml/stream/XMLEntityManager;

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/xml/stream/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    invoke-virtual {v9, v10}, Lcom/sun/xml/stream/XMLEntityManager;->setEntityHandler(Lcom/sun/xml/stream/XMLEntityHandler;)V

    move v9, v7

    move v0, v9

    goto/16 :goto_0

    .line 1050
    .end local v5    # "moreToScan":Z
    .end local v6    # "entity":Lcom/sun/xml/stream/Entity;
    :cond_5
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 1075
    .restart local v5    # "moreToScan":Z
    .restart local v6    # "entity":Lcom/sun/xml/stream/Entity;
    :cond_6
    move-object v9, v0

    :try_start_3
    iget-object v9, v9, Lcom/sun/xml/stream/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    iget-object v9, v9, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fDoctypeSystemId:Ljava/lang/String;

    if-eqz v9, :cond_4

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    iget-boolean v9, v9, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fValidation:Z

    if-nez v9, :cond_7

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    iget-boolean v9, v9, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fLoadExternalDTD:Z

    if-eqz v9, :cond_4

    .line 1076
    :cond_7
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    const/16 v10, 0x2e

    invoke-virtual {v9, v10}, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->setScannerState(I)V
    :try_end_3
    .catch Ljava/io/EOFException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1077
    .line 1117
    .end local v4    # "completeDTD":Z
    .end local v5    # "moreToScan":Z
    .end local v6    # "entity":Lcom/sun/xml/stream/Entity;
    :cond_8
    :goto_2
    move v9, v1

    if-nez v9, :cond_0

    move v9, v2

    if-nez v9, :cond_0

    .line 1130
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    iget-object v9, v9, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fEntityManager:Lcom/sun/xml/stream/XMLEntityManager;

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/xml/stream/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    invoke-virtual {v9, v10}, Lcom/sun/xml/stream/XMLEntityManager;->setEntityHandler(Lcom/sun/xml/stream/XMLEntityHandler;)V

    .line 1131
    .line 1133
    const/4 v9, 0x1

    move v0, v9

    goto/16 :goto_0

    .line 1087
    :pswitch_2
    move-object v9, v3

    move-object v10, v0

    :try_start_4
    iget-object v10, v10, Lcom/sun/xml/stream/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    iget-object v10, v10, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fDoctypePublicId:Ljava/lang/String;

    move-object v11, v0

    iget-object v11, v11, Lcom/sun/xml/stream/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    iget-object v11, v11, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fDoctypeSystemId:Ljava/lang/String;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v9, v10, v11, v12, v13}, Lorg/apache/xerces/util/XMLResourceIdentifierImpl;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1088
    const/4 v9, 0x0

    move-object v4, v9

    .line 1090
    .local v4, "xmlInputSource":Lorg/apache/xerces/xni/parser/XMLInputSource;
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    iget-object v9, v9, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fEntityManager:Lcom/sun/xml/stream/XMLEntityManager;

    move-object v10, v3

    invoke-virtual {v9, v10}, Lcom/sun/xml/stream/XMLEntityManager;->resolveEntityAsPerStax(Lorg/apache/xerces/xni/XMLResourceIdentifier;)Lcom/sun/xml/stream/StaxXMLInputSource;

    move-result-object v9

    move-object v5, v9

    .line 1091
    .local v5, "staxInputSource":Lcom/sun/xml/stream/StaxXMLInputSource;
    move-object v9, v5

    invoke-virtual {v9}, Lcom/sun/xml/stream/StaxXMLInputSource;->getXMLInputSource()Lorg/apache/xerces/xni/parser/XMLInputSource;

    move-result-object v9

    move-object v4, v9

    .line 1092
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    iget-object v9, v9, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fDTDScanner:Lorg/apache/xerces/xni/parser/XMLDTDScanner;

    move-object v10, v4

    invoke-interface {v9, v10}, Lorg/apache/xerces/xni/parser/XMLDTDScanner;->setInputSource(Lorg/apache/xerces/xni/parser/XMLInputSource;)V

    .line 1093
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    const/16 v10, 0x2f

    invoke-virtual {v9, v10}, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->setScannerState(I)V

    .line 1094
    const/4 v9, 0x1

    move v2, v9

    .line 1095
    goto :goto_2

    .line 1100
    .end local v4    # "xmlInputSource":Lorg/apache/xerces/xni/parser/XMLInputSource;
    .end local v5    # "staxInputSource":Lcom/sun/xml/stream/StaxXMLInputSource;
    :pswitch_3
    const/4 v9, 0x1

    move v4, v9

    .line 1101
    .local v4, "completeDTD":Z
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    iget-object v9, v9, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fDTDScanner:Lorg/apache/xerces/xni/parser/XMLDTDScanner;

    move v10, v4

    invoke-interface {v9, v10}, Lorg/apache/xerces/xni/parser/XMLDTDScanner;->scanDTDExternalSubset(Z)Z

    move-result v9

    move v5, v9

    .line 1102
    .local v5, "moreToScan":Z
    move v9, v5

    if-nez v9, :cond_8

    .line 1103
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    invoke-virtual {v9}, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->setEndDTDScanState()V
    :try_end_4
    .catch Ljava/io/EOFException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1104
    const/4 v9, 0x1

    move v6, v9

    .line 1130
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    iget-object v9, v9, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fEntityManager:Lcom/sun/xml/stream/XMLEntityManager;

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/xml/stream/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    invoke-virtual {v9, v10}, Lcom/sun/xml/stream/XMLEntityManager;->setEntityHandler(Lcom/sun/xml/stream/XMLEntityHandler;)V

    move v9, v6

    move v0, v9

    goto/16 :goto_0

    .line 1110
    .end local v4    # "completeDTD":Z
    .end local v5    # "moreToScan":Z
    :pswitch_4
    move-object v9, v0

    :try_start_5
    iget-object v9, v9, Lcom/sun/xml/stream/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    invoke-virtual {v9}, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->setEndDTDScanState()V
    :try_end_5
    .catch Ljava/io/EOFException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1111
    const/4 v9, 0x1

    move v4, v9

    .line 1130
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    iget-object v9, v9, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fEntityManager:Lcom/sun/xml/stream/XMLEntityManager;

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/xml/stream/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    invoke-virtual {v9, v10}, Lcom/sun/xml/stream/XMLEntityManager;->setEntityHandler(Lcom/sun/xml/stream/XMLEntityHandler;)V

    move v9, v4

    move v0, v9

    goto/16 :goto_0

    .end local v2    # "again":Z
    .end local v3    # "resourceIdentifier":Lorg/apache/xerces/util/XMLResourceIdentifierImpl;
    :catchall_0
    move-exception v9

    move-object v8, v9

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    iget-object v9, v9, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fEntityManager:Lcom/sun/xml/stream/XMLEntityManager;

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/xml/stream/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    invoke-virtual {v9, v10}, Lcom/sun/xml/stream/XMLEntityManager;->setEntityHandler(Lcom/sun/xml/stream/XMLEntityHandler;)V

    move-object v9, v8

    throw v9

    .line 1044
    :pswitch_data_0
    .packed-switch 0x2b
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public next()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 1006
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDocumentScannerImpl$DTDDriver;
    move-object v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sun/xml/stream/XMLDocumentScannerImpl$DTDDriver;->dispatch(Z)Z

    move-result v1

    .line 1013
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    new-instance v2, Lcom/sun/xml/stream/dtd/DTDGrammarUtil;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    iget-object v4, v4, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fDTDScanner:Lorg/apache/xerces/xni/parser/XMLDTDScanner;

    check-cast v4, Lcom/sun/xml/stream/XMLDTDScannerImpl;

    invoke-virtual {v4}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->getGrammar()Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    iget-object v5, v5, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    iget-object v6, v6, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fNamespaceContext:Lorg/apache/xerces/xni/NamespaceContext;

    invoke-direct {v3, v4, v5, v6}, Lcom/sun/xml/stream/dtd/DTDGrammarUtil;-><init>(Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/xni/NamespaceContext;)V

    iput-object v2, v1, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->dtdGrammarUtil:Lcom/sun/xml/stream/dtd/DTDGrammarUtil;

    .line 1015
    const/16 v1, 0xb

    move v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/XMLDocumentScannerImpl$DTDDriver;
    return v0
.end method
