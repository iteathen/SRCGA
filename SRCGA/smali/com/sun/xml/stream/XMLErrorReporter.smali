.class public Lcom/sun/xml/stream/XMLErrorReporter;
.super Ljava/lang/Object;
.source "XMLErrorReporter.java"

# interfaces
.implements Lorg/apache/xerces/xni/parser/XMLComponent;


# static fields
.field protected static final CONTINUE_AFTER_FATAL_ERROR:Ljava/lang/String; = "http://apache.org/xml/features/continue-after-fatal-error"

.field protected static final ERROR_HANDLER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-handler"

.field private static final FEATURE_DEFAULTS:[Ljava/lang/Boolean;

.field private static final PROPERTY_DEFAULTS:[Ljava/lang/Object;

.field private static final RECOGNIZED_FEATURES:[Ljava/lang/String;

.field private static final RECOGNIZED_PROPERTIES:[Ljava/lang/String;

.field public static final SEVERITY_ERROR:S = 0x1s

.field public static final SEVERITY_FATAL_ERROR:S = 0x2s

.field public static final SEVERITY_WARNING:S


# instance fields
.field protected fContinueAfterFatalError:Z

.field protected fDefaultErrorHandler:Lorg/apache/xerces/xni/parser/XMLErrorHandler;

.field protected fErrorHandler:Lorg/apache/xerces/xni/parser/XMLErrorHandler;

.field protected fLocale:Ljava/util/Locale;

.field protected fLocator:Lorg/apache/xerces/xni/XMLLocator;

.field protected fMessageFormatters:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 159
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const-string v3, "http://apache.org/xml/features/continue-after-fatal-error"

    aput-object v3, v1, v2

    sput-object v0, Lcom/sun/xml/stream/XMLErrorReporter;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    .line 164
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    sput-object v0, Lcom/sun/xml/stream/XMLErrorReporter;->FEATURE_DEFAULTS:[Ljava/lang/Boolean;

    .line 169
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const-string v3, "http://apache.org/xml/properties/internal/error-handler"

    aput-object v3, v1, v2

    sput-object v0, Lcom/sun/xml/stream/XMLErrorReporter;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    .line 174
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    sput-object v0, Lcom/sun/xml/stream/XMLErrorReporter;->PROPERTY_DEFAULTS:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    .line 210
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLErrorReporter;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 227
    move-object v1, v0

    new-instance v2, Ljava/util/Hashtable;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    iput-object v2, v1, Lcom/sun/xml/stream/XMLErrorReporter;->fMessageFormatters:Ljava/util/Hashtable;

    .line 229
    return-void
.end method


# virtual methods
.method public getErrorHandler()Lorg/apache/xerces/xni/parser/XMLErrorHandler;
    .locals 2

    .prologue
    .line 578
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLErrorReporter;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLErrorReporter;->fErrorHandler:Lorg/apache/xerces/xni/parser/XMLErrorHandler;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/XMLErrorReporter;
    return-object v0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    .prologue
    .line 482
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLErrorReporter;
    move-object v1, p1

    .local v1, "featureId":Ljava/lang/String;
    move-object v3, v1

    const-string v4, "http://apache.org/xml/features/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 483
    move-object v3, v1

    const-string v4, "http://apache.org/xml/features/"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 489
    .local v2, "feature":Ljava/lang/String;
    move-object v3, v2

    const-string v4, "continue-after-fatal-error"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 490
    move-object v3, v0

    iget-boolean v3, v3, Lcom/sun/xml/stream/XMLErrorReporter;->fContinueAfterFatalError:Z

    move v0, v3

    .line 493
    .end local v0    # "this":Lcom/sun/xml/stream/XMLErrorReporter;
    .end local v2    # "feature":Ljava/lang/String;
    :goto_0
    return v0

    .restart local v0    # "this":Lcom/sun/xml/stream/XMLErrorReporter;
    :cond_0
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method public getFeatureDefault(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 5

    .prologue
    .line 548
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLErrorReporter;
    move-object v1, p1

    .local v1, "featureId":Ljava/lang/String;
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    sget-object v4, Lcom/sun/xml/stream/XMLErrorReporter;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    array-length v4, v4

    if-ge v3, v4, :cond_1

    .line 549
    sget-object v3, Lcom/sun/xml/stream/XMLErrorReporter;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    move v4, v2

    aget-object v3, v3, v4

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 550
    sget-object v3, Lcom/sun/xml/stream/XMLErrorReporter;->FEATURE_DEFAULTS:[Ljava/lang/Boolean;

    move v4, v2

    aget-object v3, v3, v4

    move-object v0, v3

    .line 553
    .end local v0    # "this":Lcom/sun/xml/stream/XMLErrorReporter;
    :goto_1
    return-object v0

    .line 548
    .restart local v0    # "this":Lcom/sun/xml/stream/XMLErrorReporter;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 553
    :cond_1
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_1
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 2

    .prologue
    .line 250
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLErrorReporter;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLErrorReporter;->fLocale:Ljava/util/Locale;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/XMLErrorReporter;
    return-object v0
.end method

.method public getMessageFormatter(Ljava/lang/String;)Lorg/apache/xerces/util/MessageFormatter;
    .locals 4

    .prologue
    .line 285
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLErrorReporter;
    move-object v1, p1

    .local v1, "domain":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLErrorReporter;->fMessageFormatters:Ljava/util/Hashtable;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xerces/util/MessageFormatter;

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/xml/stream/XMLErrorReporter;
    return-object v0
.end method

.method public getPropertyDefault(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 566
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLErrorReporter;
    move-object v1, p1

    .local v1, "propertyId":Ljava/lang/String;
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    sget-object v4, Lcom/sun/xml/stream/XMLErrorReporter;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    array-length v4, v4

    if-ge v3, v4, :cond_1

    .line 567
    sget-object v3, Lcom/sun/xml/stream/XMLErrorReporter;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    move v4, v2

    aget-object v3, v3, v4

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 568
    sget-object v3, Lcom/sun/xml/stream/XMLErrorReporter;->PROPERTY_DEFAULTS:[Ljava/lang/Object;

    move v4, v2

    aget-object v3, v3, v4

    move-object v0, v3

    .line 571
    .end local v0    # "this":Lcom/sun/xml/stream/XMLErrorReporter;
    :goto_1
    return-object v0

    .line 566
    .restart local v0    # "this":Lcom/sun/xml/stream/XMLErrorReporter;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 571
    :cond_1
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_1
.end method

.method public getRecognizedFeatures()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 435
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLErrorReporter;
    sget-object v1, Lcom/sun/xml/stream/XMLErrorReporter;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    invoke-virtual {v1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    check-cast v1, [Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/XMLErrorReporter;
    return-object v0
.end method

.method public getRecognizedProperties()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 503
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLErrorReporter;
    sget-object v1, Lcom/sun/xml/stream/XMLErrorReporter;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    invoke-virtual {v1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    check-cast v1, [Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/XMLErrorReporter;
    return-object v0
.end method

.method public putMessageFormatter(Ljava/lang/String;Lorg/apache/xerces/util/MessageFormatter;)V
    .locals 6

    .prologue
    .line 275
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLErrorReporter;
    move-object v1, p1

    .local v1, "domain":Ljava/lang/String;
    move-object v2, p2

    .local v2, "messageFormatter":Lorg/apache/xerces/util/MessageFormatter;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLErrorReporter;->fMessageFormatters:Ljava/util/Hashtable;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 276
    return-void
.end method

.method public removeMessageFormatter(Ljava/lang/String;)Lorg/apache/xerces/util/MessageFormatter;
    .locals 4

    .prologue
    .line 295
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLErrorReporter;
    move-object v1, p1

    .local v1, "domain":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLErrorReporter;->fMessageFormatters:Ljava/util/Hashtable;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xerces/util/MessageFormatter;

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/xml/stream/XMLErrorReporter;
    return-object v0
.end method

.method public reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 315
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLErrorReporter;
    move-object v1, p1

    .local v1, "domain":Ljava/lang/String;
    move-object v2, p2

    .local v2, "key":Ljava/lang/String;
    move-object v3, p3

    .local v3, "arguments":[Ljava/lang/Object;
    move v4, p4

    .local v4, "severity":S
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLErrorReporter;->fLocator:Lorg/apache/xerces/xni/XMLLocator;

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    move v10, v4

    invoke-virtual/range {v5 .. v10}, Lcom/sun/xml/stream/XMLErrorReporter;->reportError(Lorg/apache/xerces/xni/XMLLocator;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    .line 316
    return-void
.end method

.method public reportError(Lorg/apache/xerces/xni/XMLLocator;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 340
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLErrorReporter;
    move-object/from16 v1, p1

    .local v1, "location":Lorg/apache/xerces/xni/XMLLocator;
    move-object/from16 v2, p2

    .local v2, "domain":Ljava/lang/String;
    move-object/from16 v3, p3

    .local v3, "key":Ljava/lang/String;
    move-object/from16 v4, p4

    .local v4, "arguments":[Ljava/lang/Object;
    move/from16 v5, p5

    .local v5, "severity":S
    move-object v11, v0

    move-object v12, v2

    invoke-virtual {v11, v12}, Lcom/sun/xml/stream/XMLErrorReporter;->getMessageFormatter(Ljava/lang/String;)Lorg/apache/xerces/util/MessageFormatter;

    move-result-object v11

    move-object v6, v11

    .line 342
    .local v6, "messageFormatter":Lorg/apache/xerces/util/MessageFormatter;
    move-object v11, v6

    if-eqz v11, :cond_3

    .line 343
    move-object v11, v6

    move-object v12, v0

    iget-object v12, v12, Lcom/sun/xml/stream/XMLErrorReporter;->fLocale:Ljava/util/Locale;

    move-object v13, v3

    move-object v14, v4

    invoke-interface {v11, v12, v13, v14}, Lorg/apache/xerces/util/MessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    move-object v7, v11

    .line 362
    .local v7, "message":Ljava/lang/String;
    :goto_0
    new-instance v11, Lorg/apache/xerces/xni/parser/XMLParseException;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    move-object v13, v1

    move-object v14, v7

    invoke-direct {v12, v13, v14}, Lorg/apache/xerces/xni/parser/XMLParseException;-><init>(Lorg/apache/xerces/xni/XMLLocator;Ljava/lang/String;)V

    move-object v8, v11

    .line 366
    .local v8, "parseException":Lorg/apache/xerces/xni/parser/XMLParseException;
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/xml/stream/XMLErrorReporter;->fErrorHandler:Lorg/apache/xerces/xni/parser/XMLErrorHandler;

    move-object v9, v11

    .line 367
    .local v9, "errorHandler":Lorg/apache/xerces/xni/parser/XMLErrorHandler;
    move-object v11, v9

    if-nez v11, :cond_1

    .line 368
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/xml/stream/XMLErrorReporter;->fDefaultErrorHandler:Lorg/apache/xerces/xni/parser/XMLErrorHandler;

    if-nez v11, :cond_0

    .line 369
    move-object v11, v0

    new-instance v12, Lorg/apache/xerces/util/DefaultErrorHandler;

    move-object v15, v12

    move-object v12, v15

    move-object v13, v15

    invoke-direct {v13}, Lorg/apache/xerces/util/DefaultErrorHandler;-><init>()V

    iput-object v12, v11, Lcom/sun/xml/stream/XMLErrorReporter;->fDefaultErrorHandler:Lorg/apache/xerces/xni/parser/XMLErrorHandler;

    .line 371
    :cond_0
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/xml/stream/XMLErrorReporter;->fDefaultErrorHandler:Lorg/apache/xerces/xni/parser/XMLErrorHandler;

    move-object v9, v11

    .line 375
    :cond_1
    move v11, v5

    packed-switch v11, :pswitch_data_0

    .line 393
    :cond_2
    :goto_1
    return-void

    .line 346
    .end local v7    # "message":Ljava/lang/String;
    .end local v8    # "parseException":Lorg/apache/xerces/xni/parser/XMLParseException;
    .end local v9    # "errorHandler":Lorg/apache/xerces/xni/parser/XMLErrorHandler;
    :cond_3
    new-instance v11, Ljava/lang/StringBuffer;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    move-object v8, v11

    .line 347
    .local v8, "str":Ljava/lang/StringBuffer;
    move-object v11, v8

    move-object v12, v2

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    .line 348
    move-object v11, v8

    const/16 v12, 0x23

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v11

    .line 349
    move-object v11, v8

    move-object v12, v3

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    .line 350
    move-object v11, v4

    if-eqz v11, :cond_5

    move-object v11, v4

    array-length v11, v11

    :goto_2
    move v9, v11

    .line 351
    .local v9, "argCount":I
    move v11, v9

    if-lez v11, :cond_6

    .line 352
    move-object v11, v8

    const/16 v12, 0x3f

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v11

    .line 353
    const/4 v11, 0x0

    move v10, v11

    .local v10, "i":I
    :goto_3
    move v11, v10

    move v12, v9

    if-ge v11, v12, :cond_6

    .line 354
    move-object v11, v8

    move-object v12, v4

    move v13, v10

    aget-object v12, v12, v13

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v11

    .line 355
    move v11, v10

    move v12, v9

    const/4 v13, 0x1

    add-int/lit8 v12, v12, -0x1

    if-ge v11, v12, :cond_4

    .line 356
    move-object v11, v8

    const/16 v12, 0x26

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v11

    .line 353
    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 350
    .end local v9    # "argCount":I
    .end local v10    # "i":I
    :cond_5
    const/4 v11, 0x0

    goto :goto_2

    .line 360
    .restart local v9    # "argCount":I
    :cond_6
    move-object v11, v8

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    move-object v7, v11

    .restart local v7    # "message":Ljava/lang/String;
    goto :goto_0

    .line 377
    .local v8, "parseException":Lorg/apache/xerces/xni/parser/XMLParseException;
    .local v9, "errorHandler":Lorg/apache/xerces/xni/parser/XMLErrorHandler;
    :pswitch_0
    move-object v11, v9

    move-object v12, v2

    move-object v13, v3

    move-object v14, v8

    invoke-interface {v11, v12, v13, v14}, Lorg/apache/xerces/xni/parser/XMLErrorHandler;->warning(Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/xni/parser/XMLParseException;)V

    .line 378
    goto :goto_1

    .line 381
    :pswitch_1
    move-object v11, v9

    move-object v12, v2

    move-object v13, v3

    move-object v14, v8

    invoke-interface {v11, v12, v13, v14}, Lorg/apache/xerces/xni/parser/XMLErrorHandler;->error(Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/xni/parser/XMLParseException;)V

    .line 382
    goto :goto_1

    .line 385
    :pswitch_2
    move-object v11, v9

    move-object v12, v2

    move-object v13, v3

    move-object v14, v8

    invoke-interface {v11, v12, v13, v14}, Lorg/apache/xerces/xni/parser/XMLErrorHandler;->fatalError(Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/xni/parser/XMLParseException;)V

    .line 386
    move-object v11, v0

    iget-boolean v11, v11, Lcom/sun/xml/stream/XMLErrorReporter;->fContinueAfterFatalError:Z

    if-nez v11, :cond_2

    .line 387
    move-object v11, v8

    throw v11

    .line 375
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public reset(Lorg/apache/xerces/xni/parser/XMLComponentManager;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 418
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLErrorReporter;
    move-object v1, p1

    .local v1, "componentManager":Lorg/apache/xerces/xni/parser/XMLComponentManager;
    move-object v3, v0

    move-object v4, v1

    :try_start_0
    const-string v5, "http://apache.org/xml/features/continue-after-fatal-error"

    invoke-interface {v4, v5}, Lorg/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v3, Lcom/sun/xml/stream/XMLErrorReporter;->fContinueAfterFatalError:Z
    :try_end_0
    .catch Lorg/apache/xerces/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_0

    .line 422
    .line 425
    :goto_0
    move-object v3, v0

    move-object v4, v1

    const-string v5, "http://apache.org/xml/properties/internal/error-handler"

    invoke-interface {v4, v5}, Lorg/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/xerces/xni/parser/XMLErrorHandler;

    iput-object v4, v3, Lcom/sun/xml/stream/XMLErrorReporter;->fErrorHandler:Lorg/apache/xerces/xni/parser/XMLErrorHandler;

    .line 427
    return-void

    .line 420
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 421
    .local v2, "e":Lorg/apache/xerces/xni/XNIException;
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sun/xml/stream/XMLErrorReporter;->fContinueAfterFatalError:Z

    goto :goto_0
.end method

.method public setDocumentLocator(Lorg/apache/xerces/xni/XMLLocator;)V
    .locals 4

    .prologue
    .line 259
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLErrorReporter;
    move-object v1, p1

    .local v1, "locator":Lorg/apache/xerces/xni/XMLLocator;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/xml/stream/XMLErrorReporter;->fLocator:Lorg/apache/xerces/xni/XMLLocator;

    .line 260
    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    .prologue
    .line 460
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLErrorReporter;
    move-object v1, p1

    .local v1, "featureId":Ljava/lang/String;
    move v2, p2

    .local v2, "state":Z
    move-object v4, v1

    const-string v5, "http://apache.org/xml/features/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 461
    move-object v4, v1

    const-string v5, "http://apache.org/xml/features/"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 467
    .local v3, "feature":Ljava/lang/String;
    move-object v4, v3

    const-string v5, "continue-after-fatal-error"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 468
    move-object v4, v0

    move v5, v2

    iput-boolean v5, v4, Lcom/sun/xml/stream/XMLErrorReporter;->fContinueAfterFatalError:Z

    .line 472
    .end local v3    # "feature":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 4

    .prologue
    .line 241
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLErrorReporter;
    move-object v1, p1

    .local v1, "locale":Ljava/util/Locale;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/xml/stream/XMLErrorReporter;->fLocale:Ljava/util/Locale;

    .line 242
    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    .prologue
    .line 528
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLErrorReporter;
    move-object v1, p1

    .local v1, "propertyId":Ljava/lang/String;
    move-object v2, p2

    .local v2, "value":Ljava/lang/Object;
    move-object v4, v1

    const-string v5, "http://apache.org/xml/properties/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 529
    move-object v4, v1

    const-string v5, "http://apache.org/xml/properties/"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 531
    .local v3, "property":Ljava/lang/String;
    move-object v4, v3

    const-string v5, "internal/error-handler"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 532
    move-object v4, v0

    move-object v5, v2

    check-cast v5, Lorg/apache/xerces/xni/parser/XMLErrorHandler;

    iput-object v5, v4, Lcom/sun/xml/stream/XMLErrorReporter;->fErrorHandler:Lorg/apache/xerces/xni/parser/XMLErrorHandler;

    .line 536
    .end local v3    # "property":Ljava/lang/String;
    :cond_0
    return-void
.end method
