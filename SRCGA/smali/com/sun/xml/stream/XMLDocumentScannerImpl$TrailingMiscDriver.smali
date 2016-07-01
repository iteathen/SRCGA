.class public final Lcom/sun/xml/stream/XMLDocumentScannerImpl$TrailingMiscDriver;
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
    name = "TrailingMiscDriver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;


# direct methods
.method protected constructor <init>(Lcom/sun/xml/stream/XMLDocumentScannerImpl;)V
    .locals 4

    .prologue
    .line 1249
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDocumentScannerImpl$TrailingMiscDriver;
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/xml/stream/XMLDocumentScannerImpl;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl$TrailingMiscDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public next()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 1257
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDocumentScannerImpl$TrailingMiscDriver;
    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl$TrailingMiscDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    iget v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fScannerState:I

    const/16 v3, 0x22

    if-ne v2, v3, :cond_0

    .line 1258
    const/16 v2, 0x8

    move v0, v2

    .line 1371
    .end local v0    # "this":Lcom/sun/xml/stream/XMLDocumentScannerImpl$TrailingMiscDriver;
    .local v1, "e":Ljava/io/EOFException;
    :goto_0
    return v0

    .line 1261
    .end local v1    # "e":Ljava/io/EOFException;
    .restart local v0    # "this":Lcom/sun/xml/stream/XMLDocumentScannerImpl$TrailingMiscDriver;
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl$TrailingMiscDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    iget v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fScannerState:I

    sparse-switch v2, :sswitch_data_0

    .line 1303
    :goto_1
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl$TrailingMiscDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    iget v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fScannerState:I

    const/16 v3, 0x15

    if-eq v2, v3, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl$TrailingMiscDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    iget v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fScannerState:I

    const/16 v3, 0x2c

    if-eq v2, v3, :cond_0

    .line 1307
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl$TrailingMiscDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    iget v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fScannerState:I

    sparse-switch v2, :sswitch_data_1

    .line 1354
    new-instance v2, Lorg/apache/xerces/xni/XNIException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Scanner State "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/XMLDocumentScannerImpl$TrailingMiscDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    iget v5, v5, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fScannerState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not Recognized "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/xerces/xni/XNIException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1358
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 1362
    .restart local v1    # "e":Ljava/io/EOFException;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl$TrailingMiscDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    iget v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fMarkupDepth:I

    if-eqz v2, :cond_9

    .line 1363
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl$TrailingMiscDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    const-string v3, "PrematureEOF"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1364
    const/4 v2, -0x1

    move v0, v2

    goto :goto_0

    .line 1264
    .end local v1    # "e":Ljava/io/EOFException;
    :sswitch_0
    move-object v2, v0

    :try_start_1
    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl$TrailingMiscDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v2}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipSpaces()Z

    move-result v2

    .line 1267
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl$TrailingMiscDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    iget v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fScannerState:I

    const/16 v3, 0x22

    if-ne v2, v3, :cond_1

    .line 1268
    const/16 v2, 0x8

    move v0, v2

    goto :goto_0

    .line 1270
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl$TrailingMiscDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    const/16 v3, 0x3c

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1271
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl$TrailingMiscDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    const/16 v3, 0x15

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->setScannerState(I)V

    goto/16 :goto_1

    .line 1274
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl$TrailingMiscDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    const/16 v3, 0x16

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->setScannerState(I)V

    .line 1276
    goto/16 :goto_1

    .line 1279
    :sswitch_1
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl$TrailingMiscDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    iget v3, v3, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fMarkupDepth:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fMarkupDepth:I

    .line 1280
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl$TrailingMiscDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    const/16 v3, 0x3f

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1281
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl$TrailingMiscDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    const/16 v3, 0x17

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->setScannerState(I)V

    goto/16 :goto_1

    .line 1283
    :cond_3
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl$TrailingMiscDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    const/16 v3, 0x21

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1284
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl$TrailingMiscDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    const/16 v3, 0x1b

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->setScannerState(I)V

    goto/16 :goto_1

    .line 1286
    :cond_4
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl$TrailingMiscDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1287
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl$TrailingMiscDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    const-string v3, "MarkupNotRecognizedInMisc"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1290
    :cond_5
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl$TrailingMiscDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v2}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->peekChar()I

    move-result v2

    invoke-static {v2}, Lorg/apache/xerces/util/XMLChar;->isNameStart(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1291
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl$TrailingMiscDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    const-string v3, "MarkupNotRecognizedInMisc"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1293
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl$TrailingMiscDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    invoke-virtual {v2}, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->scanStartElement()Z

    move-result v2

    .line 1294
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl$TrailingMiscDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    const/16 v3, 0x16

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->setScannerState(I)V

    goto/16 :goto_1

    .line 1297
    :cond_6
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl$TrailingMiscDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    const-string v3, "MarkupNotRecognizedInMisc"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1310
    :sswitch_2
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl$TrailingMiscDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fContentBuffer:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v2}, Lorg/apache/xerces/util/XMLStringBuffer;->clear()V

    .line 1311
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl$TrailingMiscDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDocumentScannerImpl$TrailingMiscDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fContentBuffer:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->scanPI(Lorg/apache/xerces/util/XMLStringBuffer;)V

    .line 1312
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl$TrailingMiscDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->setScannerState(I)V

    .line 1313
    const/4 v2, 0x3

    move v0, v2

    goto/16 :goto_0

    .line 1316
    :sswitch_3
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl$TrailingMiscDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    sget-object v3, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->COMMENTSTRING:[C

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipString([C)Z

    move-result v2

    if-nez v2, :cond_7

    .line 1317
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl$TrailingMiscDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    const-string v3, "InvalidCommentStart"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1319
    :cond_7
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl$TrailingMiscDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    invoke-virtual {v2}, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->scanComment()V

    .line 1320
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl$TrailingMiscDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->setScannerState(I)V

    .line 1321
    const/4 v2, 0x5

    move v0, v2

    goto/16 :goto_0

    .line 1324
    :sswitch_4
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl$TrailingMiscDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v2}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->peekChar()I

    move-result v2

    move v1, v2

    .line 1325
    .local v1, "ch":I
    move v2, v1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_8

    .line 1326
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl$TrailingMiscDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    const/16 v3, 0x22

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->setScannerState(I)V

    .line 1327
    const/16 v2, 0x8

    move v0, v2

    goto/16 :goto_0

    .line 1330
    :cond_8
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl$TrailingMiscDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    const-string v3, "ContentIllegalInTrailingMisc"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1332
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl$TrailingMiscDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v2}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->scanChar()I

    move-result v2

    .line 1333
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl$TrailingMiscDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->setScannerState(I)V

    .line 1334
    const/4 v2, 0x4

    move v0, v2

    goto/16 :goto_0

    .line 1339
    .end local v1    # "ch":I
    :sswitch_5
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl$TrailingMiscDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    const-string v3, "ReferenceIllegalInTrailingMisc"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1341
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl$TrailingMiscDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->setScannerState(I)V

    .line 1342
    const/16 v2, 0x9

    move v0, v2

    goto/16 :goto_0

    .line 1347
    :sswitch_6
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl$TrailingMiscDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    const/16 v3, 0x30

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->setScannerState(I)V

    .line 1349
    const/16 v2, 0x8

    move v0, v2

    goto/16 :goto_0

    .line 1352
    :sswitch_7
    new-instance v2, Ljava/util/NoSuchElementException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string v4, "No more events to be parsed"

    invoke-direct {v3, v4}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1367
    .local v1, "e":Ljava/io/EOFException;
    :cond_9
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "EOFException thrown"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1368
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl$TrailingMiscDriver;->this$0:Lcom/sun/xml/stream/XMLDocumentScannerImpl;

    const/16 v3, 0x22

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->setScannerState(I)V

    .line 1371
    const/16 v2, 0x8

    move v0, v2

    goto/16 :goto_0

    .line 1261
    nop

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_1
        0x2c -> :sswitch_0
    .end sparse-switch

    .line 1307
    :sswitch_data_1
    .sparse-switch
        0x16 -> :sswitch_4
        0x17 -> :sswitch_2
        0x1b -> :sswitch_3
        0x1c -> :sswitch_5
        0x22 -> :sswitch_6
        0x30 -> :sswitch_7
    .end sparse-switch
.end method
