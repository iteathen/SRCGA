.class public Lcom/sun/xml/stream/StaxErrorReporter;
.super Lcom/sun/xml/stream/XMLErrorReporter;
.source "StaxErrorReporter.java"


# instance fields
.field protected fXMLReporter:Ljavax/xml/stream/XMLReporter;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/StaxErrorReporter;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/xml/stream/XMLErrorReporter;-><init>()V

    .line 64
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/xml/stream/StaxErrorReporter;->fXMLReporter:Ljavax/xml/stream/XMLReporter;

    .line 78
    move-object v1, v0

    const-string v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    new-instance v3, Lorg/apache/xerces/impl/msg/XMLMessageFormatter;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lorg/apache/xerces/impl/msg/XMLMessageFormatter;-><init>()V

    invoke-virtual {v1, v2, v3}, Lcom/sun/xml/stream/StaxErrorReporter;->putMessageFormatter(Ljava/lang/String;Lorg/apache/xerces/util/MessageFormatter;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Lcom/sun/xml/stream/PropertyManager;)V
    .locals 7

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/StaxErrorReporter;
    move-object v1, p1

    .local v1, "propertyManager":Lcom/sun/xml/stream/PropertyManager;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/xml/stream/XMLErrorReporter;-><init>()V

    .line 64
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/xml/stream/StaxErrorReporter;->fXMLReporter:Ljavax/xml/stream/XMLReporter;

    .line 69
    move-object v2, v0

    const-string v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    new-instance v4, Lorg/apache/xerces/impl/msg/XMLMessageFormatter;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Lorg/apache/xerces/impl/msg/XMLMessageFormatter;-><init>()V

    invoke-virtual {v2, v3, v4}, Lcom/sun/xml/stream/StaxErrorReporter;->putMessageFormatter(Ljava/lang/String;Lorg/apache/xerces/util/MessageFormatter;)V

    .line 70
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/StaxErrorReporter;->reset(Lcom/sun/xml/stream/PropertyManager;)V

    .line 71
    return-void
.end method


# virtual methods
.method convertToStaxLocation(Lorg/apache/xerces/xni/XMLLocator;)Ljavax/xml/stream/Location;
    .locals 7

    .prologue
    .line 175
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/StaxErrorReporter;
    move-object v1, p1

    .local v1, "location":Lorg/apache/xerces/xni/XMLLocator;
    new-instance v2, Lcom/sun/xml/stream/StaxErrorReporter$1;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/sun/xml/stream/StaxErrorReporter$1;-><init>(Lcom/sun/xml/stream/StaxErrorReporter;Lorg/apache/xerces/xni/XMLLocator;)V

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/xml/stream/StaxErrorReporter;
    return-object v0
.end method

.method public reportError(Lorg/apache/xerces/xni/XMLLocator;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 105
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/xml/stream/StaxErrorReporter;
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

    invoke-virtual {v11, v12}, Lcom/sun/xml/stream/StaxErrorReporter;->getMessageFormatter(Ljava/lang/String;)Lorg/apache/xerces/util/MessageFormatter;

    move-result-object v11

    move-object v6, v11

    .line 107
    .local v6, "messageFormatter":Lorg/apache/xerces/util/MessageFormatter;
    move-object v11, v6

    if-eqz v11, :cond_1

    .line 108
    move-object v11, v6

    move-object v12, v0

    iget-object v12, v12, Lcom/sun/xml/stream/StaxErrorReporter;->fLocale:Ljava/util/Locale;

    move-object v13, v3

    move-object v14, v4

    invoke-interface {v11, v12, v13, v14}, Lorg/apache/xerces/util/MessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    move-object v7, v11

    .line 138
    .local v7, "message":Ljava/lang/String;
    :goto_0
    move v11, v5

    packed-switch v11, :pswitch_data_0

    .line 171
    :cond_0
    :goto_1
    return-void

    .line 111
    .end local v7    # "message":Ljava/lang/String;
    :cond_1
    new-instance v11, Ljava/lang/StringBuffer;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    move-object v8, v11

    .line 112
    .local v8, "str":Ljava/lang/StringBuffer;
    move-object v11, v8

    move-object v12, v2

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    .line 113
    move-object v11, v8

    const/16 v12, 0x23

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v11

    .line 114
    move-object v11, v8

    move-object v12, v3

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    .line 115
    move-object v11, v4

    if-eqz v11, :cond_3

    move-object v11, v4

    array-length v11, v11

    :goto_2
    move v9, v11

    .line 116
    .local v9, "argCount":I
    move v11, v9

    if-lez v11, :cond_4

    .line 117
    move-object v11, v8

    const/16 v12, 0x3f

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v11

    .line 118
    const/4 v11, 0x0

    move v10, v11

    .local v10, "i":I
    :goto_3
    move v11, v10

    move v12, v9

    if-ge v11, v12, :cond_4

    .line 119
    move-object v11, v8

    move-object v12, v4

    move v13, v10

    aget-object v12, v12, v13

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v11

    .line 120
    move v11, v10

    move v12, v9

    const/4 v13, 0x1

    add-int/lit8 v12, v12, -0x1

    if-ge v11, v12, :cond_2

    .line 121
    move-object v11, v8

    const/16 v12, 0x26

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v11

    .line 118
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 115
    .end local v9    # "argCount":I
    .end local v10    # "i":I
    :cond_3
    const/4 v11, 0x0

    goto :goto_2

    .line 125
    .restart local v9    # "argCount":I
    :cond_4
    move-object v11, v8

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    move-object v7, v11

    .restart local v7    # "message":Ljava/lang/String;
    goto :goto_0

    .line 141
    .end local v8    # "str":Ljava/lang/StringBuffer;
    .end local v9    # "argCount":I
    :pswitch_0
    move-object v11, v0

    :try_start_0
    iget-object v11, v11, Lcom/sun/xml/stream/StaxErrorReporter;->fXMLReporter:Ljavax/xml/stream/XMLReporter;

    if-eqz v11, :cond_5

    .line 142
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/xml/stream/StaxErrorReporter;->fXMLReporter:Ljavax/xml/stream/XMLReporter;

    move-object v12, v7

    const-string v13, "WARNING"

    const/4 v14, 0x0

    move-object v15, v0

    move-object/from16 v16, v1

    invoke-virtual/range {v15 .. v16}, Lcom/sun/xml/stream/StaxErrorReporter;->convertToStaxLocation(Lorg/apache/xerces/xni/XMLLocator;)Ljavax/xml/stream/Location;

    move-result-object v15

    invoke-interface {v11, v12, v13, v14, v15}, Ljavax/xml/stream/XMLReporter;->report(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/stream/Location;)V
    :try_end_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :cond_5
    goto :goto_1

    .line 144
    :catch_0
    move-exception v11

    move-object v8, v11

    .line 147
    .local v8, "ex":Ljavax/xml/stream/XMLStreamException;
    new-instance v11, Lorg/apache/xerces/xni/XNIException;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    move-object v13, v8

    invoke-direct {v12, v13}, Lorg/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v11

    .line 153
    .end local v8    # "ex":Ljavax/xml/stream/XMLStreamException;
    :pswitch_1
    move-object v11, v0

    :try_start_1
    iget-object v11, v11, Lcom/sun/xml/stream/StaxErrorReporter;->fXMLReporter:Ljavax/xml/stream/XMLReporter;

    if-eqz v11, :cond_6

    .line 154
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/xml/stream/StaxErrorReporter;->fXMLReporter:Ljavax/xml/stream/XMLReporter;

    move-object v12, v7

    const-string v13, "ERROR"

    const/4 v14, 0x0

    move-object v15, v0

    move-object/from16 v16, v1

    invoke-virtual/range {v15 .. v16}, Lcom/sun/xml/stream/StaxErrorReporter;->convertToStaxLocation(Lorg/apache/xerces/xni/XMLLocator;)Ljavax/xml/stream/Location;

    move-result-object v15

    invoke-interface {v11, v12, v13, v14, v15}, Ljavax/xml/stream/XMLReporter;->report(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/stream/Location;)V
    :try_end_1
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_1 .. :try_end_1} :catch_1

    .line 160
    :cond_6
    goto/16 :goto_1

    .line 156
    :catch_1
    move-exception v11

    move-object v8, v11

    .line 159
    .restart local v8    # "ex":Ljavax/xml/stream/XMLStreamException;
    new-instance v11, Lorg/apache/xerces/xni/XNIException;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    move-object v13, v8

    invoke-direct {v12, v13}, Lorg/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v11

    .line 164
    .end local v8    # "ex":Ljavax/xml/stream/XMLStreamException;
    :pswitch_2
    move-object v11, v0

    iget-boolean v11, v11, Lcom/sun/xml/stream/StaxErrorReporter;->fContinueAfterFatalError:Z

    if-nez v11, :cond_0

    .line 165
    new-instance v11, Lorg/apache/xerces/xni/XNIException;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    move-object v13, v7

    invoke-direct {v12, v13}, Lorg/apache/xerces/xni/XNIException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 138
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public reset(Lcom/sun/xml/stream/PropertyManager;)V
    .locals 5

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/StaxErrorReporter;
    move-object v1, p1

    .local v1, "propertyManager":Lcom/sun/xml/stream/PropertyManager;
    move-object v2, v0

    move-object v3, v1

    const-string v4, "javax.xml.stream.reporter"

    invoke-virtual {v3, v4}, Lcom/sun/xml/stream/PropertyManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/xml/stream/XMLReporter;

    iput-object v3, v2, Lcom/sun/xml/stream/StaxErrorReporter;->fXMLReporter:Ljavax/xml/stream/XMLReporter;

    .line 86
    return-void
.end method
