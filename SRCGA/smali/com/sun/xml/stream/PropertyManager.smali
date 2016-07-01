.class public Lcom/sun/xml/stream/PropertyManager;
.super Ljava/lang/Object;
.source "PropertyManager.java"


# static fields
.field public static final CONTEXT_READER:I = 0x1

.field public static final CONTEXT_WRITER:I = 0x2

.field public static final STAX_ENTITIES:Ljava/lang/String; = "javax.xml.stream.entities"

.field public static final STAX_NOTATIONS:Ljava/lang/String; = "javax.xml.stream.notations"

.field private static final STRING_INTERNING:Ljava/lang/String; = "http://xml.org/sax/features/string-interning"


# instance fields
.field supportedProps:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(I)V
    .locals 6

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/PropertyManager;
    move v1, p1

    .local v1, "context":I
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 69
    move-object v2, v0

    new-instance v3, Ljava/util/HashMap;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v2, Lcom/sun/xml/stream/PropertyManager;->supportedProps:Ljava/util/HashMap;

    .line 76
    move v2, v1

    packed-switch v2, :pswitch_data_0

    .line 86
    :goto_0
    return-void

    .line 78
    :pswitch_0
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/xml/stream/PropertyManager;->initConfigurableReaderProperties()V

    .line 79
    goto :goto_0

    .line 82
    :pswitch_1
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/xml/stream/PropertyManager;->initWriterProps()V

    goto :goto_0

    .line 76
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public constructor <init>(Lcom/sun/xml/stream/PropertyManager;)V
    .locals 7

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/PropertyManager;
    move-object v1, p1

    .local v1, "propertyManager":Lcom/sun/xml/stream/PropertyManager;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 69
    move-object v3, v0

    new-instance v4, Ljava/util/HashMap;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v4, v3, Lcom/sun/xml/stream/PropertyManager;->supportedProps:Ljava/util/HashMap;

    .line 93
    move-object v3, v1

    invoke-direct {v3}, Lcom/sun/xml/stream/PropertyManager;->getProperties()Ljava/util/HashMap;

    move-result-object v3

    move-object v2, v3

    .line 94
    .local v2, "properties":Ljava/util/HashMap;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/PropertyManager;->supportedProps:Ljava/util/HashMap;

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 95
    return-void
.end method

.method private getProperties()Ljava/util/HashMap;
    .locals 2

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/PropertyManager;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/PropertyManager;->supportedProps:Ljava/util/HashMap;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/PropertyManager;
    return-object v0
.end method

.method private initConfigurableReaderProperties()V
    .locals 4

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/PropertyManager;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/PropertyManager;->supportedProps:Ljava/util/HashMap;

    const-string v2, "javax.xml.stream.isNamespaceAware"

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 111
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/PropertyManager;->supportedProps:Ljava/util/HashMap;

    const-string v2, "javax.xml.stream.isValidating"

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 112
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/PropertyManager;->supportedProps:Ljava/util/HashMap;

    const-string v2, "javax.xml.stream.isReplacingEntityReferences"

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 113
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/PropertyManager;->supportedProps:Ljava/util/HashMap;

    const-string v2, "javax.xml.stream.isSupportingExternalEntities"

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 114
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/PropertyManager;->supportedProps:Ljava/util/HashMap;

    const-string v2, "javax.xml.stream.isCoalescing"

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 115
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/PropertyManager;->supportedProps:Ljava/util/HashMap;

    const-string v2, "javax.xml.stream.supportDTD"

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 116
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/PropertyManager;->supportedProps:Ljava/util/HashMap;

    const-string v2, "javax.xml.stream.reporter"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 117
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/PropertyManager;->supportedProps:Ljava/util/HashMap;

    const-string v2, "javax.xml.stream.resolver"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 118
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/PropertyManager;->supportedProps:Ljava/util/HashMap;

    const-string v2, "javax.xml.stream.allocator"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 119
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/PropertyManager;->supportedProps:Ljava/util/HashMap;

    const-string v2, "javax.xml.stream.notations"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 123
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/PropertyManager;->supportedProps:Ljava/util/HashMap;

    const-string v2, "http://xml.org/sax/features/string-interning"

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 125
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/PropertyManager;->supportedProps:Ljava/util/HashMap;

    const-string v2, "http://apache.org/xml/features/allow-java-encodings"

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 126
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/PropertyManager;->supportedProps:Ljava/util/HashMap;

    const-string v2, "reuse-instance"

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 127
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/PropertyManager;->supportedProps:Ljava/util/HashMap;

    const-string v2, "http://java.sun.com/xml/stream/properties/report-cdata-event"

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 128
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/PropertyManager;->supportedProps:Ljava/util/HashMap;

    const-string v2, "http://java.sun.com/xml/stream/properties/ignore-external-dtd"

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 129
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/PropertyManager;->supportedProps:Ljava/util/HashMap;

    const-string v2, "http://apache.org/xml/features/validation/warn-on-duplicate-attdef"

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 130
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/PropertyManager;->supportedProps:Ljava/util/HashMap;

    const-string v2, "http://apache.org/xml/features/warn-on-duplicate-entitydef"

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 131
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/PropertyManager;->supportedProps:Ljava/util/HashMap;

    const-string v2, "http://apache.org/xml/features/validation/warn-on-undeclared-elemdef"

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 132
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/PropertyManager;->supportedProps:Ljava/util/HashMap;

    const-string v2, "http://java.sun.com/xml/stream/properties/implementation-name"

    const-string v3, "sjsxp"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 133
    return-void
.end method

.method private initWriterProps()V
    .locals 4

    .prologue
    .line 136
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/PropertyManager;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/PropertyManager;->supportedProps:Ljava/util/HashMap;

    const-string v2, "javax.xml.stream.isRepairingNamespaces"

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 138
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/PropertyManager;->supportedProps:Ljava/util/HashMap;

    const-string v2, "escapeCharacters"

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 139
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/PropertyManager;->supportedProps:Ljava/util/HashMap;

    const-string v2, "reuse-instance"

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 140
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/PropertyManager;->supportedProps:Ljava/util/HashMap;

    const-string v2, "http://java.sun.com/xml/stream/properties/implementation-name"

    const-string v3, "sjsxp"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 141
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/PropertyManager;->supportedProps:Ljava/util/HashMap;

    const-string v2, "http://java.sun.com/xml/stream/properties/outputstream"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 142
    return-void
.end method


# virtual methods
.method public containsProperty(Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/PropertyManager;
    move-object v1, p1

    .local v1, "property":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/PropertyManager;->supportedProps:Ljava/util/HashMap;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/xml/stream/PropertyManager;
    return v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 154
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/PropertyManager;
    move-object v1, p1

    .local v1, "property":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/PropertyManager;->supportedProps:Ljava/util/HashMap;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/xml/stream/PropertyManager;
    return-object v0
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 10

    .prologue
    .line 158
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/PropertyManager;
    move-object v1, p1

    .local v1, "property":Ljava/lang/String;
    move-object v2, p2

    .local v2, "value":Ljava/lang/Object;
    const/4 v4, 0x0

    move-object v3, v4

    .line 159
    .local v3, "equivalentProperty":Ljava/lang/String;
    move-object v4, v1

    const-string v5, "javax.xml.stream.isNamespaceAware"

    if-eq v4, v5, :cond_0

    move-object v4, v1

    const-string v5, "javax.xml.stream.isNamespaceAware"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 160
    :cond_0
    const-string v4, "http://apache.org/xml/features/namespaces"

    move-object v3, v4

    .line 176
    :cond_1
    :goto_0
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/PropertyManager;->supportedProps:Ljava/util/HashMap;

    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 177
    move-object v4, v3

    if-eqz v4, :cond_2

    .line 178
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/PropertyManager;->supportedProps:Ljava/util/HashMap;

    move-object v5, v3

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 180
    :cond_2
    return-void

    .line 162
    :cond_3
    move-object v4, v1

    const-string v5, "javax.xml.stream.isValidating"

    if-eq v4, v5, :cond_4

    move-object v4, v1

    const-string v5, "javax.xml.stream.isValidating"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 163
    :cond_4
    move-object v4, v2

    instance-of v4, v4, Ljava/lang/Boolean;

    if-eqz v4, :cond_1

    move-object v4, v2

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 164
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const-string v6, "true value of isValidating not supported"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 167
    :cond_5
    move-object v4, v1

    const-string v5, "http://xml.org/sax/features/string-interning"

    if-eq v4, v5, :cond_6

    move-object v4, v1

    const-string v5, "http://xml.org/sax/features/string-interning"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 168
    :cond_6
    move-object v4, v2

    instance-of v4, v4, Ljava/lang/Boolean;

    if-eqz v4, :cond_1

    move-object v4, v2

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_1

    .line 169
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const-string v6, "false value of http://xml.org/sax/features/string-interningfeature is not supported"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 172
    :cond_7
    move-object v4, v1

    const-string v5, "javax.xml.stream.resolver"

    if-eq v4, v5, :cond_8

    move-object v4, v1

    const-string v5, "javax.xml.stream.resolver"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 174
    :cond_8
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/PropertyManager;->supportedProps:Ljava/util/HashMap;

    const-string v5, "http://apache.org/xml/properties/internal/stax-entity-resolver"

    new-instance v6, Lcom/sun/xml/stream/StaxEntityResolverWrapper;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v2

    check-cast v8, Ljavax/xml/stream/XMLResolver;

    invoke-direct {v7, v8}, Lcom/sun/xml/stream/StaxEntityResolverWrapper;-><init>(Ljavax/xml/stream/XMLResolver;)V

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 183
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/PropertyManager;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/PropertyManager;->supportedProps:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/PropertyManager;
    return-object v0
.end method
