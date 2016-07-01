.class public final Lcom/sun/javafx/css/Declaration;
.super Ljava/lang/Object;
.source "Declaration.java"


# instance fields
.field final important:Z

.field final parsedValue:Lcom/sun/javafx/css/ParsedValueImpl;

.field final property:Ljava/lang/String;

.field rule:Lcom/sun/javafx/css/Rule;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/sun/javafx/css/ParsedValueImpl;Z)V
    .locals 8

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/Declaration;
    move-object v1, p1

    .local v1, "propertyName":Ljava/lang/String;
    move-object v2, p2

    .local v2, "parsedValue":Lcom/sun/javafx/css/ParsedValueImpl;
    move v3, p3

    .local v3, "important":Z
    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 46
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/sun/javafx/css/Declaration;->property:Ljava/lang/String;

    .line 47
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/sun/javafx/css/Declaration;->parsedValue:Lcom/sun/javafx/css/ParsedValueImpl;

    .line 48
    move-object v4, v0

    move v5, v3

    iput-boolean v5, v4, Lcom/sun/javafx/css/Declaration;->important:Z

    .line 49
    move-object v4, v1

    if-nez v4, :cond_0

    .line 50
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string v6, "propertyName cannot be null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 52
    :cond_0
    move-object v4, v2

    if-nez v4, :cond_1

    .line 53
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string v6, "parsedValue cannot be null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 55
    :cond_1
    return-void
.end method

.method private getOrigin()Ljavafx/css/StyleOrigin;
    .locals 3

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/Declaration;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/css/Declaration;->getRule()Lcom/sun/javafx/css/Rule;

    move-result-object v2

    move-object v1, v2

    .line 84
    .local v1, "rule":Lcom/sun/javafx/css/Rule;
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 85
    move-object v2, v1

    invoke-virtual {v2}, Lcom/sun/javafx/css/Rule;->getOrigin()Ljavafx/css/StyleOrigin;

    move-result-object v2

    move-object v0, v2

    .line 87
    .end local v0    # "this":Lcom/sun/javafx/css/Declaration;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lcom/sun/javafx/css/Declaration;
    :cond_0
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method

.method static readBinary(ILjava/io/DataInputStream;[Ljava/lang/String;)Lcom/sun/javafx/css/Declaration;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 184
    move v0, p0

    .local v0, "bssVersion":I
    move-object v1, p1

    .local v1, "is":Ljava/io/DataInputStream;
    move-object v2, p2

    .local v2, "strings":[Ljava/lang/String;
    move-object v6, v2

    move-object v7, v1

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readShort()S

    move-result v7

    aget-object v6, v6, v7

    move-object v3, v6

    .line 185
    .local v3, "propertyName":Ljava/lang/String;
    move v6, v0

    move-object v7, v1

    move-object v8, v2

    invoke-static {v6, v7, v8}, Lcom/sun/javafx/css/ParsedValueImpl;->readBinary(ILjava/io/DataInputStream;[Ljava/lang/String;)Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v6

    move-object v4, v6

    .line 186
    .local v4, "parsedValue":Lcom/sun/javafx/css/ParsedValueImpl;
    move-object v6, v1

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v6

    move v5, v6

    .line 187
    .local v5, "important":Z
    new-instance v6, Lcom/sun/javafx/css/Declaration;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v3

    move-object v9, v4

    move v10, v5

    invoke-direct {v7, v8, v9, v10}, Lcom/sun/javafx/css/Declaration;-><init>(Ljava/lang/String;Lcom/sun/javafx/css/ParsedValueImpl;Z)V

    move-object v0, v6

    .end local v0    # "bssVersion":I
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/Declaration;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    if-ne v3, v4, :cond_0

    .line 97
    const/4 v3, 0x1

    move v0, v3

    .line 118
    .end local v0    # "this":Lcom/sun/javafx/css/Declaration;
    :goto_0
    return v0

    .line 99
    .restart local v0    # "this":Lcom/sun/javafx/css/Declaration;
    :cond_0
    move-object v3, v1

    if-nez v3, :cond_1

    .line 100
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 102
    :cond_1
    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_2

    .line 103
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 105
    :cond_2
    move-object v3, v1

    check-cast v3, Lcom/sun/javafx/css/Declaration;

    move-object v2, v3

    .line 106
    .local v2, "other":Lcom/sun/javafx/css/Declaration;
    move-object v3, v0

    iget-boolean v3, v3, Lcom/sun/javafx/css/Declaration;->important:Z

    move-object v4, v2

    iget-boolean v4, v4, Lcom/sun/javafx/css/Declaration;->important:Z

    if-eq v3, v4, :cond_3

    .line 107
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 109
    :cond_3
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/javafx/css/Declaration;->getOrigin()Ljavafx/css/StyleOrigin;

    move-result-object v3

    move-object v4, v2

    invoke-direct {v4}, Lcom/sun/javafx/css/Declaration;->getOrigin()Ljavafx/css/StyleOrigin;

    move-result-object v4

    if-eq v3, v4, :cond_4

    .line 110
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 112
    :cond_4
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/css/Declaration;->property:Ljava/lang/String;

    if-nez v3, :cond_6

    move-object v3, v2

    iget-object v3, v3, Lcom/sun/javafx/css/Declaration;->property:Ljava/lang/String;

    if-eqz v3, :cond_7

    .line 113
    :cond_5
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 112
    :cond_6
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/css/Declaration;->property:Ljava/lang/String;

    move-object v4, v2

    iget-object v4, v4, Lcom/sun/javafx/css/Declaration;->property:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 115
    :cond_7
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/css/Declaration;->parsedValue:Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v4, v2

    iget-object v4, v4, Lcom/sun/javafx/css/Declaration;->parsedValue:Lcom/sun/javafx/css/ParsedValueImpl;

    if-eq v3, v4, :cond_9

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/css/Declaration;->parsedValue:Lcom/sun/javafx/css/ParsedValueImpl;

    if-eqz v3, :cond_8

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/css/Declaration;->parsedValue:Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v4, v2

    iget-object v4, v4, Lcom/sun/javafx/css/Declaration;->parsedValue:Lcom/sun/javafx/css/ParsedValueImpl;

    invoke-virtual {v3, v4}, Lcom/sun/javafx/css/ParsedValueImpl;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 116
    :cond_8
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 118
    :cond_9
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0
.end method

.method fixUrl(Ljava/lang/String;)V
    .locals 13

    .prologue
    .line 149
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/Declaration;
    move-object v1, p1

    .local v1, "stylesheetUrl":Ljava/lang/String;
    move-object v6, v1

    if-nez v6, :cond_0

    .line 171
    :goto_0
    return-void

    .line 151
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/css/Declaration;->parsedValue:Lcom/sun/javafx/css/ParsedValueImpl;

    invoke-virtual {v6}, Lcom/sun/javafx/css/ParsedValueImpl;->getConverter()Ljavafx/css/StyleConverter;

    move-result-object v6

    move-object v2, v6

    .line 154
    .local v2, "converter":Ljavafx/css/StyleConverter;
    move-object v6, v2

    invoke-static {}, Lcom/sun/javafx/css/converters/URLConverter;->getInstance()Ljavafx/css/StyleConverter;

    move-result-object v7

    if-ne v6, v7, :cond_2

    .line 156
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/css/Declaration;->parsedValue:Lcom/sun/javafx/css/ParsedValueImpl;

    invoke-virtual {v6}, Lcom/sun/javafx/css/ParsedValueImpl;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljavafx/css/ParsedValue;

    check-cast v6, [Ljavafx/css/ParsedValue;

    move-object v3, v6

    .line 157
    .local v3, "values":[Ljavafx/css/ParsedValue;
    move-object v6, v3

    const/4 v7, 0x1

    new-instance v8, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v1

    const/4 v11, 0x0

    invoke-direct {v9, v10, v11}, Lcom/sun/javafx/css/ParsedValueImpl;-><init>(Ljava/lang/Object;Ljavafx/css/StyleConverter;)V

    aput-object v8, v6, v7

    .line 159
    .line 171
    .end local v3    # "values":[Ljavafx/css/ParsedValue;
    :cond_1
    goto :goto_0

    .line 159
    :cond_2
    move-object v6, v2

    invoke-static {}, Lcom/sun/javafx/css/converters/URLConverter$SequenceConverter;->getInstance()Lcom/sun/javafx/css/converters/URLConverter$SequenceConverter;

    move-result-object v7

    if-ne v6, v7, :cond_1

    .line 161
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/css/Declaration;->parsedValue:Lcom/sun/javafx/css/ParsedValueImpl;

    .line 162
    invoke-virtual {v6}, Lcom/sun/javafx/css/ParsedValueImpl;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljavafx/css/ParsedValue;

    check-cast v6, [Ljavafx/css/ParsedValue;

    move-object v3, v6

    .line 164
    .local v3, "layers":[Ljavafx/css/ParsedValue;, "[Ljavafx/css/ParsedValue<[Ljavafx/css/ParsedValue;Ljava/lang/String;>;"
    const/4 v6, 0x0

    move v4, v6

    .local v4, "layer":I
    :goto_1
    move v6, v4

    move-object v7, v3

    array-length v7, v7

    if-ge v6, v7, :cond_1

    .line 165
    move-object v6, v3

    move v7, v4

    aget-object v6, v6, v7

    invoke-virtual {v6}, Ljavafx/css/ParsedValue;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljavafx/css/ParsedValue;

    move-object v5, v6

    .line 166
    .local v5, "values":[Ljavafx/css/ParsedValue;
    move-object v6, v5

    const/4 v7, 0x1

    new-instance v8, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v1

    const/4 v11, 0x0

    invoke-direct {v9, v10, v11}, Lcom/sun/javafx/css/ParsedValueImpl;-><init>(Ljava/lang/Object;Ljavafx/css/StyleConverter;)V

    aput-object v8, v6, v7

    .line 164
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method public getParsedValue()Ljavafx/css/ParsedValue;
    .locals 2

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/Declaration;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/css/Declaration;->parsedValue:Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/css/Declaration;
    return-object v0
.end method

.method getParsedValueImpl()Lcom/sun/javafx/css/ParsedValueImpl;
    .locals 2

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/Declaration;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/css/Declaration;->parsedValue:Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/css/Declaration;
    return-object v0
.end method

.method public getProperty()Ljava/lang/String;
    .locals 2

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/Declaration;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/css/Declaration;->property:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/css/Declaration;
    return-object v0
.end method

.method public getRule()Lcom/sun/javafx/css/Rule;
    .locals 2

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/Declaration;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/css/Declaration;->rule:Lcom/sun/javafx/css/Rule;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/css/Declaration;
    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 123
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/Declaration;
    const/4 v2, 0x5

    move v1, v2

    .line 124
    .local v1, "hash":I
    const/16 v2, 0x59

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/css/Declaration;->property:Ljava/lang/String;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/css/Declaration;->property:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v2, v3

    move v1, v2

    .line 125
    const/16 v2, 0x59

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/css/Declaration;->parsedValue:Lcom/sun/javafx/css/ParsedValueImpl;

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/css/Declaration;->parsedValue:Lcom/sun/javafx/css/ParsedValueImpl;

    invoke-virtual {v3}, Lcom/sun/javafx/css/ParsedValueImpl;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v2, v3

    move v1, v2

    .line 126
    const/16 v2, 0x59

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-boolean v3, v3, Lcom/sun/javafx/css/Declaration;->important:Z

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    :goto_2
    add-int/2addr v2, v3

    move v1, v2

    .line 127
    move v2, v1

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/css/Declaration;
    return v0

    .line 124
    .restart local v0    # "this":Lcom/sun/javafx/css/Declaration;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 125
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 126
    :cond_2
    const/4 v3, 0x0

    goto :goto_2
.end method

.method public isImportant()Z
    .locals 2

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/Declaration;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/javafx/css/Declaration;->important:Z

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/css/Declaration;
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 131
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/Declaration;
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/css/Declaration;->property:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 132
    .local v1, "sbuf":Ljava/lang/StringBuilder;
    move-object v2, v1

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 133
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/css/Declaration;->parsedValue:Lcom/sun/javafx/css/ParsedValueImpl;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 134
    move-object v2, v0

    iget-boolean v2, v2, Lcom/sun/javafx/css/Declaration;->important:Z

    if-eqz v2, :cond_0

    move-object v2, v1

    const-string v3, " !important"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 135
    :cond_0
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/css/Declaration;
    return-object v0
.end method

.method final writeBinary(Ljava/io/DataOutputStream;Lcom/sun/javafx/css/StringStore;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 176
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/Declaration;
    move-object v1, p1

    .local v1, "os":Ljava/io/DataOutputStream;
    move-object v2, p2

    .local v2, "stringStore":Lcom/sun/javafx/css/StringStore;
    move-object v3, v1

    move-object v4, v2

    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/css/Declaration;->getProperty()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sun/javafx/css/StringStore;->addString(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 177
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/css/Declaration;->getParsedValueImpl()Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v3

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/css/ParsedValueImpl;->writeBinary(Ljava/io/DataOutputStream;Lcom/sun/javafx/css/StringStore;)V

    .line 178
    move-object v3, v1

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/css/Declaration;->isImportant()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 179
    return-void
.end method
